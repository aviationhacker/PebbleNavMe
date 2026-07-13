package com.batescorp.pebble.nav.processor;

import android.content.ContextWrapper;
import android.content.pm.PackageInfo;
import android.support.v7.app.AppCompatDelegate;
import android.util.Log;
import com.batescorp.pebble.nav.R;
import com.batescorp.pebble.nav.util.StringUtil;
import com.google.common.base.Ascii;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class NavHandler {
    private static long d = 0;
    private static boolean e = false;
    private static final Pattern f = Pattern.compile("^\\s*(.*?)\\s*-\\s*(.*)$");
    private static final Pattern g = Pattern.compile("(.*)·(.*)·(.*)");
    private static final Pattern h = Pattern.compile("([0-9]+[.,][0-9]+|[0-9]+)[\\s]*(mi|km|км|m|м|ft|fot|milles|láb|mf|fod|mil|st|pd|pies|pi|pés|vt|мил.|фут.)");
    private static final Pattern i = Pattern.compile("(.*)·[\\s]([0-9]+[,.]*[\\d]*)[\\W]*(.*?)[\\W]*·.*?([\\d]+:[\\d]+[\\s]*[\\w]*)");
    private static final Pattern j = Pattern.compile("([\\d\\.]+)(.*)·(.*)·(.*)");
    private static final Pattern k = Pattern.compile("((\\d+.\\d+).*(AM|am|PM|pm)|((\\d+.\\d+)))");
    private NavState a = null;
    private NavConfig b = null;
    private ContextWrapper c = null;

    public static NavHandler getInstance(ContextWrapper contextWrapper) {
        NavHandler navHandler = new NavHandler();
        navHandler.a = NavState.getInstance(contextWrapper);
        navHandler.b = NavConfig.getInstance(contextWrapper);
        navHandler.c = contextWrapper;
        return navHandler;
    }

    public void cancel() {
        this.a.clearState();
    }

    private boolean a() {
        if (System.currentTimeMillis() - d < 300000) {
            return e;
        }
        try {
            PackageInfo packageInfo = this.c.getPackageManager().getPackageInfo("com.google.android.apps.maps", 128);
            int iCompareVersions = StringUtil.compareVersions(packageInfo.versionName, this.c.getString(R.string.new_map_version));
            Log.d("NavHandler", "Map version : " + packageInfo.versionCode + " : " + packageInfo.versionName + " : " + iCompareVersions);
            d = System.currentTimeMillis();
            e = iCompareVersions < 0;
            if (!e) {
                int iCompareVersions2 = StringUtil.compareVersions(packageInfo.versionName, this.c.getString(R.string.new_map_version2));
                Log.d("NavHandler", "Map version 2 : " + packageInfo.versionCode + " : " + packageInfo.versionName + " : " + iCompareVersions2);
                e = iCompareVersions2 >= 0;
            }
            return e;
        } catch (Throwable th) {
            d = 0L;
            Log.e("NavHandler", "Failed to determine version ", th);
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0132  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.batescorp.pebble.nav.processor.NavHandlerResult processNotificationHandler(float r11, com.batescorp.pebble.nav.lib.NotificationData r12) {
        /*
            Method dump skipped, instruction units count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.batescorp.pebble.nav.processor.NavHandler.processNotificationHandler(float, com.batescorp.pebble.nav.lib.NotificationData):com.batescorp.pebble.nav.processor.NavHandlerResult");
    }

    private String a(String str) {
        Log.d("NavHandler", "getDirectionFromTitle (raw): " + str);
        Matcher matcher = g.matcher(str);
        if (!matcher.find() || matcher.groupCount() != 3) {
            return "---";
        }
        return StringUtil.trim(matcher.group(3));
    }

    private void a(b bVar, String str) {
        Log.d("NavHandler", "processNextDirection (raw): " + str);
        Matcher matcher = h.matcher(str);
        if (matcher.find()) {
            if (matcher.groupCount() != 2) {
                Log.d("NavHandler", "processNextDirection : 0 - " + str);
                return;
            }
            String strTrim = StringUtil.trim(matcher.group(1));
            String strTrim2 = StringUtil.trim(matcher.group(2));
            bVar.c = strTrim2;
            bVar.b = strTrim;
            bVar.a = a(strTrim, strTrim2);
            bVar.g = d(strTrim2);
        }
    }

    class b {
        long a = -1;
        String b = "";
        String c = "";
        String d = "";
        String e = "";
        NavDirectionIcon f = null;
        NavSpeedType g = null;

        b() {
        }
    }

    class a {
        String a = "";
        String b = "";
        String c = "";
        String d = "";
        long e;

        a() {
        }
    }

    private a b(String str) {
        Log.d("NavHandler", "processEst1 : " + str);
        a aVar = new a();
        Matcher matcher = i.matcher(str.trim());
        if (matcher.find()) {
            if (matcher.groupCount() != 4) {
                Log.d("NavHandler", "processEst1 : failed - " + str);
            } else {
                aVar.a = StringUtil.trim(matcher.group(1));
                aVar.b = StringUtil.trim(matcher.group(2));
                aVar.c = StringUtil.trim(matcher.group(3));
                aVar.d = StringUtil.trim(matcher.group(4));
                Log.d("NavHandler", "processEst1 : estTime - " + aVar.a);
                Log.d("NavHandler", "processEst1 : estDist - " + aVar.b);
                Log.d("NavHandler", "processEst1 : estDistUnit - " + aVar.c);
                Log.d("NavHandler", "processEst1 : estArrivalTIme - " + aVar.d);
                aVar.e = a(aVar.b, aVar.c);
            }
        }
        return aVar;
    }

    private a c(String str) {
        Log.d("NavHandler", "processEst2 : " + str);
        a aVar = new a();
        Matcher matcher = j.matcher(str.trim());
        if (matcher.find()) {
            if (matcher.groupCount() != 4) {
                Log.d("NavHandler", "processEst1 : failed - " + str);
            } else {
                aVar.b = StringUtil.trim(matcher.group(1));
                aVar.c = StringUtil.trim(matcher.group(2));
                aVar.d = StringUtil.trim(matcher.group(3));
                Matcher matcher2 = k.matcher(aVar.d);
                if (matcher2.find()) {
                    aVar.d = StringUtil.trim(matcher2.group(1));
                } else {
                    Log.d("NavHandler", "Failed to find time for " + aVar.d);
                }
                aVar.d = aVar.d.replace("ETA", "").trim();
                Log.d("NavHandler", "processEst1 : estTime - " + aVar.a);
                Log.d("NavHandler", "processEst1 : estDist - " + aVar.b);
                Log.d("NavHandler", "processEst1 : estDistUnit - " + aVar.c);
                Log.d("NavHandler", "processEst1 : estArrivalTIme - " + aVar.d);
                aVar.e = a(aVar.b, aVar.c);
            }
        }
        return aVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private NavSpeedType d(String str) {
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1074095670:
                if (str.equals("milles")) {
                    b2 = 2;
                }
                break;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                if (str.equals("m")) {
                    b2 = Ascii.DC2;
                }
                break;
            case 1084:
                if (str.equals("м")) {
                    b2 = 19;
                }
                break;
            case 3278:
                if (str.equals("ft")) {
                    b2 = 4;
                }
                break;
            case 3426:
                if (str.equals("km")) {
                    b2 = Ascii.DLE;
                }
                break;
            case 3481:
                if (str.equals("mf")) {
                    b2 = 9;
                }
                break;
            case 3484:
                if (str.equals("mi")) {
                    b2 = 0;
                }
                break;
            case 3572:
                if (str.equals("pd")) {
                    b2 = Ascii.FF;
                }
                break;
            case 3577:
                if (str.equals("pi")) {
                    b2 = Ascii.SI;
                }
                break;
            case 3681:
                if (str.equals("st")) {
                    b2 = Ascii.VT;
                }
                break;
            case 3774:
                if (str.equals("vt")) {
                    b2 = 8;
                }
                break;
            case 34626:
                if (str.equals("км")) {
                    b2 = 17;
                }
                break;
            case 101563:
                if (str.equals("fod")) {
                    b2 = 6;
                }
                break;
            case 101579:
                if (str.equals("fot")) {
                    b2 = 5;
                }
                break;
            case 108112:
                if (str.equals("mil")) {
                    b2 = 1;
                }
                break;
            case 110861:
                if (str.equals("láb")) {
                    b2 = 10;
                }
                break;
            case 114970:
                if (str.equals("pés")) {
                    b2 = 7;
                }
                break;
            case 3440743:
                if (str.equals("pies")) {
                    b2 = 13;
                }
                break;
            case 33364943:
                if (str.equals("мил.")) {
                    b2 = 3;
                }
                break;
            case 33614059:
                if (str.equals("фут.")) {
                    b2 = Ascii.SO;
                }
                break;
        }
        switch (b2) {
            case 0:
                return NavSpeedType.MPH;
            case 1:
                return NavSpeedType.MPH;
            case 2:
                return NavSpeedType.MPH;
            case 3:
                return NavSpeedType.MPH;
            case 4:
                return NavSpeedType.MPH;
            case 5:
                return NavSpeedType.MPH;
            case 6:
                return NavSpeedType.MPH;
            case 7:
                return NavSpeedType.MPH;
            case 8:
                return NavSpeedType.MPH;
            case 9:
                return NavSpeedType.MPH;
            case 10:
                return NavSpeedType.MPH;
            case 11:
                return NavSpeedType.MPH;
            case 12:
                return NavSpeedType.MPH;
            case 13:
                return NavSpeedType.MPH;
            case 14:
                return NavSpeedType.MPH;
            case 15:
                return NavSpeedType.MPH;
            case 16:
                return NavSpeedType.KPH;
            case 17:
                return NavSpeedType.KPH;
            case 18:
                return NavSpeedType.KPH;
            case 19:
                return NavSpeedType.KPH;
            default:
                Log.e("NavHandler", "covertToSpeedType Unable to process string unknown unit type - " + str);
                return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private long a(String str, String str2) {
        String strReplace = str.replace(",", ".");
        Float fValueOf = Float.valueOf(strReplace);
        byte b2 = -1;
        switch (str2.hashCode()) {
            case -1074095670:
                if (str2.equals("milles")) {
                    b2 = 1;
                }
                break;
            case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                if (str2.equals("m")) {
                    b2 = Ascii.DC2;
                }
                break;
            case 1084:
                if (str2.equals("м")) {
                    b2 = 19;
                }
                break;
            case 3278:
                if (str2.equals("ft")) {
                    b2 = 5;
                }
                break;
            case 3426:
                if (str2.equals("km")) {
                    b2 = Ascii.DLE;
                }
                break;
            case 3481:
                if (str2.equals("mf")) {
                    b2 = 2;
                }
                break;
            case 3484:
                if (str2.equals("mi")) {
                    b2 = 0;
                }
                break;
            case 3572:
                if (str2.equals("pd")) {
                    b2 = 10;
                }
                break;
            case 3577:
                if (str2.equals("pi")) {
                    b2 = Ascii.SO;
                }
                break;
            case 3681:
                if (str2.equals("st")) {
                    b2 = 9;
                }
                break;
            case 3774:
                if (str2.equals("vt")) {
                    b2 = 8;
                }
                break;
            case 34626:
                if (str2.equals("км")) {
                    b2 = 17;
                }
                break;
            case 101563:
                if (str2.equals("fod")) {
                    b2 = 7;
                }
                break;
            case 101579:
                if (str2.equals("fot")) {
                    b2 = 6;
                }
                break;
            case 108112:
                if (str2.equals("mil")) {
                    b2 = 3;
                }
                break;
            case 110861:
                if (str2.equals("láb")) {
                    b2 = Ascii.SI;
                }
                break;
            case 114970:
                if (str2.equals("pés")) {
                    b2 = Ascii.FF;
                }
                break;
            case 3440743:
                if (str2.equals("pies")) {
                    b2 = Ascii.VT;
                }
                break;
            case 33364943:
                if (str2.equals("мил.")) {
                    b2 = 4;
                }
                break;
            case 33614059:
                if (str2.equals("фут.")) {
                    b2 = 13;
                }
                break;
        }
        switch (b2) {
            case 0:
                return (long) (((double) fValueOf.floatValue()) * 1609.34d);
            case 1:
                return (long) (((double) fValueOf.floatValue()) * 1609.34d);
            case 2:
                return (long) (((double) fValueOf.floatValue()) * 1609.34d);
            case 3:
                return (long) (((double) fValueOf.floatValue()) * 1609.34d);
            case 4:
                return (long) (((double) fValueOf.floatValue()) * 1609.34d);
            case 5:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 6:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 7:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 8:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 9:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 10:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 11:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 12:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 13:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 14:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 15:
                return (long) (((double) fValueOf.floatValue()) * 0.3048d);
            case 16:
                return (long) (((double) fValueOf.floatValue()) * 1000.0d);
            case 17:
                return (long) (((double) fValueOf.floatValue()) * 1000.0d);
            case 18:
                return (long) (((double) fValueOf.floatValue()) * 1.0d);
            case 19:
                return (long) (((double) fValueOf.floatValue()) * 1.0d);
            default:
                Log.e("NavHandler", "processNextDirection Unable to process string unknown unit type - " + strReplace + " - [" + str2 + "]");
                return 0L;
        }
    }
}
