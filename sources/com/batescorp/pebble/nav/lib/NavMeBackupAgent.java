package com.batescorp.pebble.nav.lib;

import android.app.backup.BackupAgentHelper;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.SharedPreferencesBackupHelper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.batescorp.pebble.nav.processor.NavConfig;
import com.batescorp.pebble.nav.processor.NavLicense;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class NavMeBackupAgent extends BackupAgentHelper {
    @Override // android.app.backup.BackupAgent
    public void onCreate() {
        Log.d("NavMeBackupAgent", "Create");
        addHelper("NAV_ME_BACKUP_KEY", new SharedPreferencesBackupHelper(this, NavLicense.NAV_LICENSE, NavConfig.NAV_CONFIG));
    }

    @Override // android.app.backup.BackupAgentHelper, android.app.backup.BackupAgent
    public void onRestore(BackupDataInput backupDataInput, int i, ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        Log.d("NavMeBackupAgent", "onRestore - NavLicense - 001");
        super.onRestore(backupDataInput, i, parcelFileDescriptor);
        Log.d("NavMeBackupAgent", "onRestore - NavLicense - 002 : ");
    }

    @Override // android.app.backup.BackupAgentHelper, android.app.backup.BackupAgent
    public void onBackup(ParcelFileDescriptor parcelFileDescriptor, BackupDataOutput backupDataOutput, ParcelFileDescriptor parcelFileDescriptor2) throws IOException {
        Log.d("NavMeBackupAgent", "onBackup - NavLicense - 001 : ");
        super.onBackup(parcelFileDescriptor, backupDataOutput, parcelFileDescriptor2);
        Log.d("NavMeBackupAgent", "onBackup - NavLicense - 002 : ");
    }
}
