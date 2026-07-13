package com.batescorp.pebble.nav.settings;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.Log;
import com.batescorp.pebble.nav.service.NavProcessingService;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends Activity implements SharedPreferences.OnSharedPreferenceChangeListener {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getFragmentManager().beginTransaction().replace(R.id.content, new SettingsFragment()).commit();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        PreferenceManager.getDefaultSharedPreferences(this).registerOnSharedPreferenceChangeListener(this);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        PreferenceManager.getDefaultSharedPreferences(this).unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        Log.d("SettingsActivity", "onSharedPreferenceChanged - " + str + " : ");
        if ("config_key_default_1_alert".equals(str) || "config_key_default_2_alert".equals(str) || "config_key_left_1_alert".equals(str) || "config_key_left_2_alert".equals(str) || "config_key_right_1_alert".equals(str) || "config_key_right_2_alert".equals(str) || "config_key_generic_alert".equals(str)) {
            Intent intent = new Intent();
            intent.setClass(this, NavProcessingService.class);
            intent.setAction("ALERT_TEST");
            intent.putExtra("alertCode", Integer.valueOf(sharedPreferences.getString(str, "0")).intValue());
            startService(intent);
        }
    }
}
