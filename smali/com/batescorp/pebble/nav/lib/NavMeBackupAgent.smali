.class public Lcom/batescorp/pebble/nav/lib/NavMeBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .prologue
    .line 36
    const-string v0, "NavMeBackupAgent"

    const-string v1, "onBackup - NavLicense - 001 : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 38
    const-string v0, "NavMeBackupAgent"

    const-string v1, "onBackup - NavLicense - 002 : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 22
    const-string v0, "NavMeBackupAgent"

    const-string v1, "Create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v0, "NAV_ME_BACKUP_KEY"

    new-instance v1, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/batescorp/pebble/nav/processor/NavLicense;->NAV_LICENSE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/batescorp/pebble/nav/processor/NavConfig;->NAV_CONFIG:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v1, p0, v2}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/batescorp/pebble/nav/lib/NavMeBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 24
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 2

    .prologue
    .line 28
    const-string v0, "NavMeBackupAgent"

    const-string v1, "onRestore - NavLicense - 001"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 31
    const-string v0, "NavMeBackupAgent"

    const-string v1, "onRestore - NavLicense - 002 : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method
