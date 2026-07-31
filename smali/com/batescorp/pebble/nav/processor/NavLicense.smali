.class public Lcom/batescorp/pebble/nav/processor/NavLicense;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NAV_LICENSE:Ljava/lang/String;

.field private static a:Ljava/lang/Long;

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/Boolean;


# instance fields
.field private d:Landroid/content/ContextWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->a:Ljava/lang/Long;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->b:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->c:Ljava/lang/Boolean;

    .line 24
    const-string v0, "NAV_LICENSE"

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->NAV_LICENSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()J
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    const-string v2, "NAV_LICENSE_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NAV_LICENSE_START_V41"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NAV_LICENSE_START_V41"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 116
    :goto_0
    return-wide v0

    .line 107
    :cond_1
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->a:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 113
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavLicense;->d:Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavLicense;->d:Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    const-string v1, "NavLicense"

    const-string v2, "Failed to get firstInstallTime"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method private b()J
    .locals 6

    .prologue
    .line 152
    const-wide/32 v0, 0x48190800

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->c()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private c()J
    .locals 4

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NAV_LICENSE_START_V41"

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->a()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private d()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavLicense;->d:Landroid/content/ContextWrapper;

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavLicense;->NAV_LICENSE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavLicense;
    .locals 6

    .prologue
    .line 38
    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavLicense;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    new-instance v2, Lcom/batescorp/pebble/nav/processor/NavLicense;

    invoke-direct {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;-><init>()V

    .line 41
    iput-object p0, v2, Lcom/batescorp/pebble/nav/processor/NavLicense;->d:Landroid/content/ContextWrapper;

    .line 43
    invoke-direct {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    const-string v3, "NAV_LICENSE_START_V41"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 47
    :try_start_1
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/batescorp/pebble/nav/lib/MyRestoreObserver;

    invoke-direct {v3, p0}, Lcom/batescorp/pebble/nav/lib/MyRestoreObserver;-><init>(Landroid/content/ContextWrapper;)V

    invoke-virtual {v0, v3}, Landroid/app/backup/BackupManager;->requestRestore(Landroid/app/backup/RestoreObserver;)I

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/batescorp/pebble/nav/processor/NavLicense;->c:Ljava/lang/Boolean;

    .line 51
    :cond_0
    const-string v3, "NavLicense"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestRestore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    return-object v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string v3, "NavLicense"

    const-string v4, "Failed to restore backup"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->saveStartTime()V

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 58
    :cond_2
    :try_start_3
    invoke-direct {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->a:Ljava/lang/Long;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public checkedForLicense()Z
    .locals 3

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NAV_LICENSE_CHECKED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public expireString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 205
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 206
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, v2

    .line 207
    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 208
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 211
    invoke-virtual {v8, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sub-long v0, v6, v0

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " days "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hours "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minutes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveLicense()Z
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->checkedForLicense()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->isFullLicense()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->isTrialExpired()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullLicense()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public isTrial()Z
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->isFullLicense()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrialExpired()Z
    .locals 4

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveStartTime()V
    .locals 6

    .prologue
    .line 69
    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavLicense;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    const-string v0, "NavLicense"

    const-string v2, "saveStartTime - NavLicense - 001 "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "NAV_LICENSE_START_V41"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 74
    const-string v2, "NavLicense"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveStartTime - NavLicense - 002 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 76
    const-string v3, "NAV_LICENSE_START_V41"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v2, p0, Lcom/batescorp/pebble/nav/processor/NavLicense;->d:Landroid/content/ContextWrapper;

    invoke-direct {v0, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 80
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavLicense;->c:Ljava/lang/Boolean;

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateLicenseCheck(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->d()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 167
    const-string v1, "NAV_LICENSE_CHECKED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v1, "NAV_LICENSE_PAID_FULL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/batescorp/pebble/nav/processor/NavLicense;->d:Landroid/content/ContextWrapper;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 171
    return-void
.end method
