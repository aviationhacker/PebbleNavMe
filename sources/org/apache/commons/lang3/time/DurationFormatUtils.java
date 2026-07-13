package org.apache.commons.lang3.time;

import android.support.v7.app.AppCompatDelegate;
import com.batescorp.pebble.nav.R;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes.dex */
public class DurationFormatUtils {
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.S'S'";
    static final Object a = "y";
    static final Object b = "M";
    static final Object c = "d";
    static final Object d = "H";
    static final Object e = "m";
    static final Object f = "s";
    static final Object g = "S";

    public static String formatDurationHMS(long j) {
        return formatDuration(j, "H:mm:ss.SSS");
    }

    public static String formatDurationISO(long j) {
        return formatDuration(j, ISO_EXTENDED_FORMAT_PATTERN, false);
    }

    public static String formatDuration(long j, String str) {
        return formatDuration(j, str, true);
    }

    public static String formatDuration(long j, String str, boolean z) {
        a[] aVarArrA = a(str);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        if (a.a(aVarArrA, c)) {
            i = (int) (j / DateUtils.MILLIS_PER_DAY);
            j -= ((long) i) * DateUtils.MILLIS_PER_DAY;
        }
        if (a.a(aVarArrA, d)) {
            i2 = (int) (j / DateUtils.MILLIS_PER_HOUR);
            j -= ((long) i2) * DateUtils.MILLIS_PER_HOUR;
        }
        if (a.a(aVarArrA, e)) {
            i3 = (int) (j / DateUtils.MILLIS_PER_MINUTE);
            j -= ((long) i3) * DateUtils.MILLIS_PER_MINUTE;
        }
        if (a.a(aVarArrA, f)) {
            i4 = (int) (j / 1000);
            j -= ((long) i4) * 1000;
        }
        if (a.a(aVarArrA, g)) {
            i5 = (int) j;
        }
        return a(aVarArrA, 0, 0, i, i2, i3, i4, i5, z);
    }

    public static String formatDurationWords(long j, boolean z, boolean z2) {
        String duration = formatDuration(j, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (z) {
            String str = " " + duration;
            duration = StringUtils.replaceOnce(str, " 0 days", "");
            if (duration.length() != str.length()) {
                String strReplaceOnce = StringUtils.replaceOnce(duration, " 0 hours", "");
                if (strReplaceOnce.length() != duration.length()) {
                    duration = StringUtils.replaceOnce(strReplaceOnce, " 0 minutes", "");
                    if (duration.length() != duration.length()) {
                        duration = StringUtils.replaceOnce(duration, " 0 seconds", "");
                    }
                }
            } else {
                duration = str;
            }
            if (duration.length() != 0) {
                duration = duration.substring(1);
            }
        }
        if (z2) {
            String strReplaceOnce2 = StringUtils.replaceOnce(duration, " 0 seconds", "");
            if (strReplaceOnce2.length() != duration.length()) {
                duration = StringUtils.replaceOnce(strReplaceOnce2, " 0 minutes", "");
                if (duration.length() != strReplaceOnce2.length()) {
                    String strReplaceOnce3 = StringUtils.replaceOnce(duration, " 0 hours", "");
                    if (strReplaceOnce3.length() != duration.length()) {
                        duration = StringUtils.replaceOnce(strReplaceOnce3, " 0 days", "");
                    }
                } else {
                    duration = strReplaceOnce2;
                }
            }
        }
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(" " + duration, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    public static String formatPeriodISO(long j, long j2) {
        return formatPeriod(j, j2, ISO_EXTENDED_FORMAT_PATTERN, false, TimeZone.getDefault());
    }

    public static String formatPeriod(long j, long j2, String str) {
        return formatPeriod(j, j2, str, true, TimeZone.getDefault());
    }

    public static String formatPeriod(long j, long j2, String str, boolean z, TimeZone timeZone) {
        int actualMaximum;
        int i;
        a[] aVarArrA = a(str);
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(new Date(j));
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTime(new Date(j2));
        int i2 = calendar2.get(14) - calendar.get(14);
        int i3 = calendar2.get(13) - calendar.get(13);
        int i4 = calendar2.get(12) - calendar.get(12);
        int i5 = calendar2.get(11) - calendar.get(11);
        int actualMaximum2 = calendar2.get(5) - calendar.get(5);
        int i6 = calendar2.get(2) - calendar.get(2);
        int i7 = calendar2.get(1) - calendar.get(1);
        while (i2 < 0) {
            i2 += CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
            i3--;
        }
        while (i3 < 0) {
            i3 += 60;
            i4--;
        }
        while (i4 < 0) {
            i4 += 60;
            i5--;
        }
        while (i5 < 0) {
            i5 += 24;
            actualMaximum2--;
        }
        if (a.a(aVarArrA, b)) {
            actualMaximum = actualMaximum2;
            i = i6;
            while (actualMaximum < 0) {
                actualMaximum += calendar.getActualMaximum(5);
                i--;
                calendar.add(2, 1);
            }
            while (i < 0) {
                i += 12;
                i7--;
            }
            if (!a.a(aVarArrA, a) && i7 != 0) {
                while (i7 != 0) {
                    i += i7 * 12;
                    i7 = 0;
                }
            }
        } else {
            if (!a.a(aVarArrA, a)) {
                int i8 = calendar2.get(1);
                if (i6 < 0) {
                    i8--;
                }
                while (calendar.get(1) != i8) {
                    int actualMaximum3 = actualMaximum2 + (calendar.getActualMaximum(6) - calendar.get(6));
                    if ((calendar instanceof GregorianCalendar) && calendar.get(2) == 1 && calendar.get(5) == 29) {
                        actualMaximum3++;
                    }
                    calendar.add(1, 1);
                    actualMaximum2 = actualMaximum3 + calendar.get(6);
                }
                i7 = 0;
            }
            while (calendar.get(2) != calendar2.get(2)) {
                actualMaximum2 += calendar.getActualMaximum(5);
                calendar.add(2, 1);
            }
            actualMaximum = actualMaximum2;
            i = 0;
            while (actualMaximum < 0) {
                actualMaximum += calendar.getActualMaximum(5);
                i--;
                calendar.add(2, 1);
            }
        }
        if (!a.a(aVarArrA, c)) {
            i5 += actualMaximum * 24;
            actualMaximum = 0;
        }
        if (!a.a(aVarArrA, d)) {
            i4 += i5 * 60;
            i5 = 0;
        }
        if (!a.a(aVarArrA, e)) {
            i3 += i4 * 60;
            i4 = 0;
        }
        if (!a.a(aVarArrA, f)) {
            i2 += i3 * CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
            i3 = 0;
        }
        return a(aVarArrA, i7, i, actualMaximum, i5, i4, i3, i2, z);
    }

    static String a(a[] aVarArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        int i8;
        StringBuffer stringBuffer = new StringBuffer();
        boolean z2 = false;
        int i9 = i7;
        for (a aVar : aVarArr) {
            Object objC = aVar.c();
            int iB = aVar.b();
            if (objC instanceof StringBuffer) {
                stringBuffer.append(objC.toString());
            } else if (objC == a) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i), iB, '0') : Integer.toString(i));
                z2 = false;
            } else if (objC == b) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i2), iB, '0') : Integer.toString(i2));
                z2 = false;
            } else if (objC == c) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i3), iB, '0') : Integer.toString(i3));
                z2 = false;
            } else if (objC == d) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i4), iB, '0') : Integer.toString(i4));
                z2 = false;
            } else if (objC == e) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i5), iB, '0') : Integer.toString(i5));
                z2 = false;
            } else if (objC == f) {
                stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i6), iB, '0') : Integer.toString(i6));
                z2 = true;
            } else if (objC == g) {
                if (z2) {
                    int i10 = i9 + CredentialsApi.ACTIVITY_RESULT_ADD_ACCOUNT;
                    stringBuffer.append((z ? StringUtils.leftPad(Integer.toString(i10), iB, '0') : Integer.toString(i10)).substring(1));
                    i8 = i10;
                } else {
                    stringBuffer.append(z ? StringUtils.leftPad(Integer.toString(i9), iB, '0') : Integer.toString(i9));
                    i8 = i9;
                }
                i9 = i8;
                z2 = false;
            }
        }
        return stringBuffer.toString();
    }

    static a[] a(String str) {
        Object obj;
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList(charArray.length);
        a aVar = null;
        StringBuffer stringBuffer = null;
        boolean z = false;
        for (char c2 : charArray) {
            if (z && c2 != '\'') {
                stringBuffer.append(c2);
            } else {
                switch (c2) {
                    case '\'':
                        if (z) {
                            obj = null;
                            stringBuffer = null;
                            z = false;
                        } else {
                            stringBuffer = new StringBuffer();
                            arrayList.add(new a(stringBuffer));
                            z = true;
                            obj = null;
                        }
                        break;
                    case 'H':
                        obj = d;
                        break;
                    case R.styleable.Theme_panelBackground /* 77 */:
                        obj = b;
                        break;
                    case 'S':
                        obj = g;
                        break;
                    case 'd':
                        obj = c;
                        break;
                    case AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY /* 109 */:
                        obj = e;
                        break;
                    case 's':
                        obj = f;
                        break;
                    case 'y':
                        obj = a;
                        break;
                    default:
                        if (stringBuffer == null) {
                            stringBuffer = new StringBuffer();
                            arrayList.add(new a(stringBuffer));
                        }
                        stringBuffer.append(c2);
                        obj = null;
                        break;
                }
                if (obj != null) {
                    if (aVar != null && aVar.c() == obj) {
                        aVar.a();
                    } else {
                        aVar = new a(obj);
                        arrayList.add(aVar);
                    }
                    stringBuffer = null;
                }
            }
        }
        return (a[]) arrayList.toArray(new a[arrayList.size()]);
    }

    static class a {
        private final Object a;
        private int b = 1;

        static boolean a(a[] aVarArr, Object obj) {
            for (a aVar : aVarArr) {
                if (aVar.c() == obj) {
                    return true;
                }
            }
            return false;
        }

        a(Object obj) {
            this.a = obj;
        }

        void a() {
            this.b++;
        }

        int b() {
            return this.b;
        }

        Object c() {
            return this.a;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a.getClass() != aVar.a.getClass() || this.b != aVar.b) {
                return false;
            }
            if (this.a instanceof StringBuffer) {
                return this.a.toString().equals(aVar.a.toString());
            }
            if (this.a instanceof Number) {
                return this.a.equals(aVar.a);
            }
            return this.a == aVar.a;
        }

        public int hashCode() {
            return this.a.hashCode();
        }

        public String toString() {
            return StringUtils.repeat(this.a.toString(), this.b);
        }
    }
}
