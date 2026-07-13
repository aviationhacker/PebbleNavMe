package com.batescorp.pebble.nav.processor;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.batescorp.pebble.nav.R;
import com.batescorp.pebble.nav.activity.DestinationValue;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NavConfig {
    public static String NAV_CONFIG = "NAV_CONFIG";
    private Context a;

    public static NavConfig getInstance(Context context) {
        NavConfig navConfig = new NavConfig();
        navConfig.a = context;
        return navConfig;
    }

    public boolean ignoreStraight() {
        return true;
    }

    public boolean reportNavCanceled() {
        return true;
    }

    public boolean alertEnabled() {
        return a().getBoolean(a(R.string.config_key_alert_enabled), Boolean.valueOf(a(R.string.config_key_alert_default)).booleanValue());
    }

    @SuppressLint({"CommitPrefEdits"})
    public void alertEnabled(boolean z) {
        SharedPreferences.Editor editorEdit = a().edit();
        editorEdit.putBoolean(a(R.string.config_key_alert_enabled), z);
        editorEdit.commit();
    }

    public boolean alertOnStart() {
        return a().getBoolean(a(R.string.config_key_notify_on_start_enabled), Boolean.valueOf(a(R.string.config_key_notify_on_start_default)).booleanValue());
    }

    public int getDestinationVer() {
        return a().getInt("destinations_ver", -1);
    }

    public List<DestinationValue> getDestinations() {
        String string = a().getString("destinations", null);
        return string == null ? new ArrayList() : Arrays.asList((Object[]) new Gson().fromJson(string, DestinationValue[].class));
    }

    @SuppressLint({"CommitPrefEdits"})
    public void updateDestinations(List<DestinationValue> list) {
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        SharedPreferences.Editor editorEdit = a().edit();
        editorEdit.putString("destinations", new Gson().toJson(list));
        editorEdit.putInt("destinations_ver", iCurrentTimeMillis);
        editorEdit.commit();
    }

    public boolean tryQuickLock() {
        return a().getBoolean(a(R.string.config_key_quick_lock_enabled), Boolean.valueOf(a(R.string.config_key_quick_lock_default)).booleanValue());
    }

    public boolean launchNavMeOnAlert() {
        return alertEnabled() && a().getBoolean(a(R.string.config_key_launch_on_alert_enabled), Boolean.valueOf(a(R.string.config_key_launch_on_alert_default)).booleanValue());
    }

    public boolean disableAlertIfGoogleActive() {
        return a().getBoolean(a(R.string.config_key_disable_alert_if_google_active), Boolean.valueOf(a(R.string.config_key_disable_alert_if_google_active_default)).booleanValue());
    }

    public boolean buzzOnAlert() {
        return alertEnabled() && a().getBoolean(a(R.string.config_buzz_on_alert_enabled), Boolean.valueOf(a(R.string.config_buzz_on_alert_default)).booleanValue());
    }

    public boolean smartFlash() {
        return a().getBoolean(a(R.string.config_key_smart_flash_enabled), Boolean.valueOf(a(R.string.config_key_smart_flash_default)).booleanValue());
    }

    public boolean alertOnNewDirection() {
        return alertEnabled() && a().getBoolean(a(R.string.config_key_notify_new_direction_enabled), Boolean.valueOf(a(R.string.config_key_notify_new_direction_default)).booleanValue());
    }

    public boolean closeWhenDone() {
        return a().getBoolean(a(R.string.config_key_close_when_done_enabled), Boolean.valueOf(this.a.getString(R.string.config_key_close_when_done_default)).booleanValue());
    }

    public int getGenericAlert() {
        return Integer.parseInt(a().getString(a(R.string.config_key_generic_alert), "0"));
    }

    public int getFirstAlert() {
        return Integer.parseInt(a().getString(a(R.string.config_key_default_1_alert), "0"));
    }

    public int getSecondAlert() {
        return Integer.parseInt(a().getString(a(R.string.config_key_default_2_alert), "0"));
    }

    public int getFirstLeftAlert() {
        return Integer.parseInt(a().getString(a(R.string.config_key_left_1_alert), "0"));
    }

    public int getSecondLeftAlert() {
        return Integer.parseInt(a().getString(a(R.string.config_key_left_2_alert), "0"));
    }

    public int getFirstRightAlert() {
        return Integer.parseInt(a().getString(a(R.string.config_key_right_1_alert), "0"));
    }

    public int getSecondRightAlert() {
        return Integer.parseInt(a().getString(a(R.string.config_key_right_2_alert), "0"));
    }

    private String a(int i) {
        return this.a.getString(i);
    }

    private SharedPreferences a() {
        return PreferenceManager.getDefaultSharedPreferences(this.a);
    }

    public int checkDistanceForSpeed(float f, long j, long j2) {
        if (j < 0) {
            return -1;
        }
        if (f < 22.0f) {
            Long[] lArr = {153L, 403L};
            int length = lArr.length;
            int i = 0;
            int i2 = 2;
            while (i < length) {
                if (!a(lArr[i].longValue(), j, j2)) {
                    i++;
                    i2--;
                } else {
                    return i2;
                }
            }
        }
        if (f >= 22.0f) {
            Long[] lArr2 = {306L, 3219L};
            int length2 = lArr2.length;
            int i3 = 0;
            int i4 = 2;
            while (i3 < length2) {
                if (!a(lArr2[i3].longValue(), j, j2)) {
                    i3++;
                    i4--;
                } else {
                    return i4;
                }
            }
        }
        return -1;
    }

    private boolean a(long j, long j2, long j3) {
        return j2 <= j && (j3 < 0 || j3 > j);
    }
}
