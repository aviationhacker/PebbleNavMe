package com.batescorp.pebble.nav.processor;

import android.annotation.SuppressLint;
import android.app.backup.BackupManager;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.util.Log;
import com.batescorp.pebble.nav.lib.MyRestoreObserver;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class NavLicense {
    private ContextWrapper d;
    private static Long a = null;
    private static final Object b = new Object();
    private static Boolean c = false;
    public static String NAV_LICENSE = "NAV_LICENSE";

    public static NavLicense getInstance(ContextWrapper contextWrapper) {
        NavLicense navLicense;
        synchronized (b) {
            navLicense = new NavLicense();
            navLicense.d = contextWrapper;
            if (!navLicense.d().contains("NAV_LICENSE_START_V41")) {
                if (!c.booleanValue()) {
                    try {
                        int iRequestRestore = new BackupManager(contextWrapper).requestRestore(new MyRestoreObserver(contextWrapper));
                        if (iRequestRestore == 0) {
                            c = true;
                        }
                        Log.e("NavLicense", "requestRestore : " + iRequestRestore);
                    } catch (Exception e) {
                        Log.e("NavLicense", "Failed to restore backup", e);
                        navLicense.saveStartTime();
                    }
                }
            }
            a = Long.valueOf(navLicense.c());
        }
        return navLicense;
    }

    public void saveStartTime() {
        synchronized (b) {
            Log.d("NavLicense", "saveStartTime - NavLicense - 001 ");
            if (!d().contains("NAV_LICENSE_START_V41")) {
                Long lValueOf = Long.valueOf(a());
                Log.d("NavLicense", "saveStartTime - NavLicense - 002 - " + lValueOf);
                SharedPreferences.Editor editorEdit = d().edit();
                editorEdit.putLong("NAV_LICENSE_START_V41", lValueOf.longValue());
                editorEdit.apply();
                new BackupManager(this.d).dataChanged();
            }
        }
        c = false;
    }

    private long a() {
        Iterator<String> it = d().getAll().keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            String next = it.next();
            if (next.startsWith("NAV_LICENSE_START") && !next.equals("NAV_LICENSE_START_V41")) {
                if (!d().contains("NAV_LICENSE_START_V41")) {
                    return System.currentTimeMillis();
                }
            }
        }
        if (a != null) {
            return a.longValue();
        }
        try {
            return this.d.getPackageManager().getPackageInfo(this.d.getPackageName(), 0).firstInstallTime;
        } catch (Exception e) {
            Log.e("NavLicense", "Failed to get firstInstallTime", e);
            return System.currentTimeMillis();
        }
    }

    public boolean haveLicense() {
        return (checkedForLicense() && !isFullLicense() && isTrialExpired()) ? false : true;
    }

    public boolean checkedForLicense() {
        return d().getBoolean("NAV_LICENSE_CHECKED", false);
    }

    public boolean isTrialExpired() {
        return b() <= 0;
    }

    private long b() {
        return 1209600000 - (System.currentTimeMillis() - c());
    }

    private long c() {
        return d().getLong("NAV_LICENSE_START_V41", a());
    }

    @SuppressLint({"CommitPrefEdits"})
    public void updateLicenseCheck(boolean z) {
        SharedPreferences.Editor editorEdit = d().edit();
        editorEdit.putBoolean("NAV_LICENSE_CHECKED", true);
        editorEdit.putBoolean("NAV_LICENSE_PAID_FULL", z);
        editorEdit.commit();
        new BackupManager(this.d).dataChanged();
    }

    public boolean isFullLicense() {
        return true;
    }

    private SharedPreferences d() {
        return this.d.getSharedPreferences(NAV_LICENSE, 0);
    }

    public boolean isTrial() {
        return !isFullLicense();
    }

    public String expireString() {
        long jB = b() / 1000;
        int days = (int) TimeUnit.SECONDS.toDays(jB);
        return days + " days " + (TimeUnit.SECONDS.toHours(jB) - TimeUnit.DAYS.toHours(days)) + " hours " + (TimeUnit.SECONDS.toMinutes(jB) - TimeUnit.HOURS.toMinutes(TimeUnit.SECONDS.toHours(jB))) + " minutes ";
    }
}
