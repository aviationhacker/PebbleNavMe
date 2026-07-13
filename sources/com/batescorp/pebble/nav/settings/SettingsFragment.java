package com.batescorp.pebble.nav.settings;

import android.os.Bundle;
import android.preference.PreferenceFragment;
import com.batescorp.pebble.nav.R;

/* JADX INFO: loaded from: classes.dex */
public class SettingsFragment extends PreferenceFragment {
    @Override // android.preference.PreferenceFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.general_settings);
    }
}
