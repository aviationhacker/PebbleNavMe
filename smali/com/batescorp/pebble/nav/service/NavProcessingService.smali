.class public Lcom/batescorp/pebble/nav/service/NavProcessingService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;,
        Lcom/batescorp/pebble/nav/service/NavProcessingService$b;,
        Lcom/batescorp/pebble/nav/service/NavProcessingService$a;,
        Lcom/batescorp/pebble/nav/service/NavProcessingService$c;,
        Lcom/batescorp/pebble/nav/service/NavProcessingService$e;,
        Lcom/batescorp/pebble/nav/service/NavProcessingService$d;
    }
.end annotation


# static fields
.field public static final NAV_MESSAGE_MGR:Ljava/lang/String; = "NAV_MESSAGE_MGR"

.field public static final NAV_MESSAGE_MGR_LAST_UUID:Ljava/lang/String; = "NAV_MESSAGE_MGR_LAST_UUID"


# instance fields
.field private a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

.field private b:Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;

.field private c:Ljava/util/Timer;

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/Timer;

.field private g:Ljava/lang/Long;

.field private h:Landroid/os/PowerManager$WakeLock;

.field private i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

.field private j:Lcom/batescorp/pebble/nav/listener/NavMeControlListener;

.field private k:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c:Ljava/util/Timer;

    .line 73
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d:Ljava/util/Timer;

    .line 74
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e:Ljava/util/Timer;

    .line 75
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f:Ljava/util/Timer;

    .line 76
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->g:Ljava/lang/Long;

    .line 77
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h:Landroid/os/PowerManager$WakeLock;

    .line 78
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    .line 79
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->j:Lcom/batescorp/pebble/nav/listener/NavMeControlListener;

    .line 83
    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->k:Landroid/widget/Button;

    .line 991
    return-void
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/service/NavProcessingService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method private a()Ljava/lang/Float;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 333
    .line 335
    const-string v2, "gps"

    .line 338
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 339
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 340
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 343
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 345
    const-string v1, "NavProcessingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navData (speed) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_1
    return-object v0

    .line 347
    :cond_0
    const-string v0, "NavProcessingService"

    const-string v2, "navData (speed) : null"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 511
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->disableAlertIfGoogleActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    :goto_0
    return-void

    .line 517
    :cond_0
    const-string v1, "NavProcessingService"

    const-string v2, "sendAlert"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 519
    const-string v1, "NavProcessingService"

    const-string v2, "sendAlert - alert enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->launchNavMeOnAlert()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const-string v0, "NavProcessingService"

    const-string v1, "Starting NAVME 004"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->startAppOnPebble(Landroid/content/Context;Ljava/util/UUID;)V

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0, p1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendAlert(I)V

    goto :goto_0

    .line 527
    :cond_2
    const-string v0, "NavProcessingService"

    const-string v1, "sendAlert - alert disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private a(Lcom/batescorp/pebble/nav/service/NavProcessingService$a;)V
    .locals 6

    .prologue
    .line 794
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->g:Ljava/lang/Long;

    .line 799
    new-instance v0, Ljava/util/Timer;

    const-string v1, "LockScreen-Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f:Ljava/util/Timer;

    .line 800
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f:Ljava/util/Timer;

    new-instance v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;

    invoke-direct {v1, p0, p1}, Lcom/batescorp/pebble/nav/service/NavProcessingService$d;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$a;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method private a(Ljava/util/UUID;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->flashScreen(Ljava/util/UUID;I)V

    .line 326
    return-void
.end method

.method private a(Z)V
    .locals 3

    .prologue
    .line 957
    if-eqz p1, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->k()V

    .line 965
    :goto_0
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NAV_PROCESS_SRV"

    .line 966
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    const/4 v2, 0x0

    .line 965
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 968
    const-string v1, "NAV_PROCESS_SRV_IS_RUNNING"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 969
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 970
    return-void

    .line 960
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->k:Landroid/widget/Button;

    .line 961
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->l()V

    .line 962
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendSpeed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->o()Z

    move-result v0

    return v0
.end method

.method private b()Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;
    .locals 8

    .prologue
    .line 354
    const-string v1, "gps"

    .line 357
    const/4 v0, 0x0

    .line 358
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 359
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 360
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 363
    :cond_0
    const-string v1, "NavProcessingService"

    const-string v2, "getNavGpsAccuracy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 366
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    .line 368
    const-string v2, "NavProcessingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNavGpsAccuracy accuracy - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_2

    .line 373
    :cond_1
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 388
    :goto_0
    return-object v0

    .line 375
    :cond_2
    const/high16 v0, 0x41200000    # 10.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    .line 376
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->EXCELLENT:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    goto :goto_0

    .line 378
    :cond_3
    const/high16 v0, 0x41700000    # 15.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    .line 379
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->HIGH:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    goto :goto_0

    .line 381
    :cond_4
    const/high16 v0, 0x41f00000    # 30.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_5

    .line 382
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->MEDIUM:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    goto :goto_0

    .line 385
    :cond_5
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->LOW:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    goto :goto_0

    .line 388
    :cond_6
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    goto :goto_0
.end method

.method static synthetic b(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Z
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Ljava/lang/Long;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->g:Ljava/lang/Long;

    return-object v0
.end method

.method private c()Z
    .locals 4

    .prologue
    const v3, 0x7f06003f

    .line 500
    const-string v0, "NavProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLaungageSupported = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v0, "true"

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 534
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f()Z

    move-result v0

    .line 537
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e()Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h()V

    return-void
.end method

.method private e()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 543
    const-string v0, "NavProcessingService"

    const-string v3, "checkCurrentApp"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {p0}, Lcom/batescorp/pebble/nav/util/LockUtil;->needToUnlock(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    const-string v0, "NavProcessingService"

    const-string v3, "isGoogleMapActive - screen locked"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_0
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 553
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 556
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    move v0, v1

    .line 579
    :goto_0
    return v0

    .line 560
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 561
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 562
    if-nez v0, :cond_3

    goto :goto_1

    .line 567
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 569
    if-nez v4, :cond_5

    move v0, v1

    .line 570
    goto :goto_0

    .line 573
    :cond_5
    const-string v5, "NavProcessingService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CURRENT Activity ::"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   Package Name :  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v0, "com.google.android.apps.maps"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 576
    goto :goto_0

    :cond_6
    move v0, v1

    .line 579
    goto :goto_0
.end method

.method static synthetic f(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 583
    .line 584
    const/4 v2, 0x0

    .line 587
    :try_start_0
    const-class v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v3, "processState"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 592
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 593
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 594
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 595
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v5, :cond_0

    .line 599
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 604
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 611
    :goto_0
    if-nez v0, :cond_1

    move v0, v1

    .line 620
    :goto_1
    return v0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    const-string v2, "NavProcessingService"

    const-string v3, "Error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 590
    goto :goto_1

    .line 600
    :catch_1
    move-exception v0

    .line 601
    const-string v2, "NavProcessingService"

    const-string v3, "Error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 602
    goto :goto_1

    .line 614
    :cond_1
    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 615
    const-string v5, "NavProcessingService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CURRENT Activity ::   Package Name :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v5, "com.google.android.apps.maps"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 617
    const/4 v0, 0x1

    goto :goto_1

    .line 614
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    .line 620
    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic g(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->b()Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 657
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Ljava/util/UUID;Ljava/lang/Integer;)V

    .line 658
    return-void
.end method

.method static synthetic h(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 814
    :goto_0
    return-void

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 809
    iput-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f:Ljava/util/Timer;

    .line 810
    iput-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->g:Ljava/lang/Long;

    goto :goto_0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 819
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Shutdown-Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d:Ljava/util/Timer;

    .line 824
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d:Ljava/util/Timer;

    new-instance v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService$c;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$1;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0xea60

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->d:Ljava/util/Timer;

    goto :goto_0
.end method

.method static synthetic j(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->n()V

    return-void
.end method

.method private k()V
    .locals 6

    .prologue
    .line 840
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Speed-Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e:Ljava/util/Timer;

    .line 845
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e:Ljava/util/Timer;

    new-instance v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->m()V

    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 854
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->e:Ljava/util/Timer;

    goto :goto_0
.end method

.method private m()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->stop()V

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    .line 932
    :cond_0
    return-void
.end method

.method private n()V
    .locals 1

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->m()V

    .line 937
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    .line 938
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->start()V

    .line 939
    return-void
.end method

.method private o()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 946
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NAV_PROCESS_SRV"

    .line 947
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    .line 946
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 948
    const-string v1, "NAV_PROCESS_SRV_IS_RUNNING"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private p()Ljava/util/UUID;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1012
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "NAV_MESSAGE_MGR"

    .line 1013
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    const/4 v3, 0x0

    .line 1012
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1014
    const-string v2, "NAV_MESSAGE_MGR_LAST_UUID"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1015
    if-nez v1, :cond_0

    .line 1019
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public static processNavCanceled(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1041
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1042
    const-string v1, "PROCESS_NAV_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1044
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1045
    return-void
.end method


# virtual methods
.method protected checkGoogleNavRunning()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 895
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 897
    if-nez v0, :cond_0

    .line 898
    const-string v0, "NavProcessingService"

    const-string v2, "Failed to get ActivityManager"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 924
    :goto_0
    return v0

    .line 902
    :cond_0
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v0

    .line 904
    if-nez v0, :cond_1

    .line 905
    const-string v0, "NavProcessingService"

    const-string v2, "Failed to get Running services"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 906
    goto :goto_0

    .line 909
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 910
    const-string v3, "com.google.android.apps.maps"

    iget-object v4, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 913
    const-string v3, "NavProcessingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 915
    if-nez v0, :cond_3

    .line 916
    const-string v0, "NavProcessingService"

    const-string v3, "Class not found???"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 920
    :cond_3
    const-string v3, ".NavigationService"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 921
    goto :goto_0

    .line 924
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected navCanceled()V
    .locals 5

    .prologue
    .line 627
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v0

    .line 628
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v1

    .line 630
    const-string v2, "NavProcessingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "navCanceled - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->isRunning()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->isInErrorState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 633
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v2

    const v3, 0x7f060043

    invoke-virtual {p0, v3}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v2, v3, v4}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 634
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v2

    iget-object v3, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v2, v3}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 636
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->reportNavCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getGenericAlert()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendAlert(I)V

    .line 640
    :cond_0
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavConfig;->closeWhenDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->g()V

    .line 645
    :cond_1
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->navStop()V

    .line 647
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->reset()V

    .line 648
    return-void
.end method

.method protected navData(Lcom/batescorp/pebble/nav/lib/NotificationData;)V
    .locals 5

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 398
    const-string v1, "NavProcessingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v1

    .line 406
    const-string v2, "NavProcessingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "navData (process): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a()Ljava/lang/Float;

    move-result-object v0

    .line 409
    if-nez v0, :cond_2

    .line 410
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 415
    :cond_2
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavState;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    .line 416
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/batescorp/pebble/nav/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    :cond_3
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavLicense;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavLicense;->haveLicense()Z

    move-result v2

    if-nez v2, :cond_4

    .line 422
    const v0, 0x7f06005a

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v2}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 423
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    goto :goto_0

    .line 425
    :cond_4
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c()Z

    move-result v2

    if-nez v2, :cond_5

    .line 426
    const v0, 0x7f0600bc

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v2}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 427
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    goto :goto_0

    .line 429
    :cond_5
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/NotificationData;->getNavTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 430
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v0

    .line 431
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v1

    const v2, 0x7f06005b

    invoke-virtual {p0, v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v2, v3}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 432
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v1, v2}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 434
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getGenericAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    .line 436
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->navStop()V

    .line 440
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->closeWhenDone()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 441
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->g()V

    .line 444
    :cond_6
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Z)V

    goto/16 :goto_0

    .line 447
    :cond_7
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v2

    .line 448
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->navStart()V

    .line 449
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavHandler;

    move-result-object v1

    .line 450
    sget-object v3, Lcom/batescorp/pebble/nav/service/NavProcessingService$1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0, p1}, Lcom/batescorp/pebble/nav/processor/NavHandler;->processNotificationHandler(FLcom/batescorp/pebble/nav/lib/NotificationData;)Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 477
    :goto_1
    :pswitch_0
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 480
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->startNavTimer()V

    .line 483
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->o()Z

    move-result v0

    if-nez v0, :cond_8

    .line 484
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 488
    :cond_8
    const-string v0, "NavProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check running "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->o()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertOnStart()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->o()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->alertOnStart()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 490
    const-string v0, "NavProcessingService"

    const-string v1, "Starting NAVME 001"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->startAppOnPebble(Landroid/content/Context;Ljava/util/UUID;)V

    .line 494
    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Z)V

    goto/16 :goto_0

    .line 455
    :pswitch_1
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getGenericAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto :goto_1

    .line 458
    :pswitch_2
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getFirstAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto :goto_1

    .line 461
    :pswitch_3
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getSecondAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto :goto_1

    .line 464
    :pswitch_4
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getFirstLeftAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto/16 :goto_1

    .line 467
    :pswitch_5
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getSecondLeftAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto/16 :goto_1

    .line 470
    :pswitch_6
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getFirstRightAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto/16 :goto_1

    .line 473
    :pswitch_7
    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getSecondRightAlert()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto/16 :goto_1

    .line 450
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 87
    const-string v0, "NavProcessingService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 90
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 92
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    .line 93
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->start()V

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string v1, "com.getpebble.action.PEBBLE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v1, "com.getpebble.action.PEBBLE_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    new-instance v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    iput-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;

    .line 100
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;

    invoke-virtual {p0, v1, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->checkGoogleNavRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->startNavTimer()V

    .line 112
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    const-string v1, "com.getpebble.action.app.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    invoke-direct {v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;-><init>()V

    iput-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    .line 115
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    new-instance v0, Lcom/batescorp/pebble/nav/listener/NavMeControlListener;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/listener/NavMeControlListener;-><init>()V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->j:Lcom/batescorp/pebble/nav/listener/NavMeControlListener;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    const-string v1, "com.getpebble.action.app.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string v1, "com.batescorp.pebble.nav.FLASH_NAVME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    new-instance v1, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    invoke-direct {v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;-><init>()V

    iput-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    .line 123
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i()V

    .line 126
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->reset()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    const-string v0, "NavProcessingService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->stop()V

    .line 134
    iput-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iput-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    iput-object v2, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i:Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->stopNavTimer()V

    .line 148
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->j()V

    .line 149
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->l()V

    .line 151
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x1e

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 161
    .line 163
    if-nez p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v7

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "NavProcessingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v1, "com.batescorp.pebble.nav.FLASH_NAVME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    const-string v1, "UUID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    const-string v1, "FLASH_TIME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 178
    if-gez v1, :cond_13

    .line 183
    :goto_1
    if-nez v2, :cond_2

    .line 184
    const-string v0, "NavProcessingService"

    const-string v1, "com.batescorp.pebble.nav.FLASH_NAVME - UUID is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 197
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Ljava/util/UUID;Ljava/lang/Integer;)V

    .line 200
    const-string v0, "NavProcessingService"

    const-string v1, "Starting NAVME 002"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-static {v0, v1}, Lcom/getpebble/android/kit/PebbleKit;->startAppOnPebble(Landroid/content/Context;Ljava/util/UUID;)V

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "NavProcessingService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.batescorp.pebble.nav.FLASH_NAVME - UUID is bad. UUID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 202
    :cond_3
    const-string v0, "com.batescorp.pebble.nav.RELOAD_CONFIG"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->sendConfig()V

    goto/16 :goto_0

    .line 204
    :cond_4
    const-string v0, "com.batescorp.pebble.nav.RELOAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 206
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->resend()V

    .line 208
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->stopNavTimer()V

    goto/16 :goto_0

    .line 211
    :cond_5
    const-string v0, "com.batescorp.pebble.nav.STOP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 214
    const-string v1, "pebble.nav.cancel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 217
    :cond_6
    const-string v0, "com.batescorp.pebble.nav.LOCK_WHEN_STARTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 218
    sget-object v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Lcom/batescorp/pebble/nav/service/NavProcessingService$a;)V

    goto/16 :goto_0

    .line 219
    :cond_7
    const-string v0, "com.batescorp.pebble.nav.START_NAV"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 221
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h()V

    .line 224
    invoke-static {p0}, Lcom/batescorp/pebble/nav/util/LockUtil;->needToUnlock(Landroid/content/ContextWrapper;)Z

    move-result v1

    .line 226
    if-eqz v1, :cond_8

    .line 228
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 229
    const v2, 0x10000006

    const-string v3, "NavMeLocker"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h:Landroid/os/PowerManager$WakeLock;

    .line 231
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 234
    const-string v0, "NavProcessingService"

    const-string v2, "UNLOCK SCREEN"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "map.direction.text"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    if-nez v2, :cond_a

    .line 240
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "map.direction"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 242
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavConfig;->getDestinations()Ljava/util/List;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 249
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    .line 254
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "google.navigation:q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getNavType()Lcom/batescorp/pebble/nav/processor/NavType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batescorp/pebble/nav/processor/NavType;->getGoogleMapMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/batescorp/pebble/nav/MainActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 260
    const/high16 v4, 0x10600000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const-string v4, "type"

    const-string v5, "unlock"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v4, "uri"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v3}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->startActivity(Landroid/content/Intent;)V

    .line 266
    if-eqz v1, :cond_9

    .line 267
    sget-object v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    invoke-direct {p0, v1}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Lcom/batescorp/pebble/nav/service/NavProcessingService$a;)V

    .line 270
    :cond_9
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - waiting on navigation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->NAV:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v1, v0, v2}, Lcom/batescorp/pebble/nav/processor/NavState;->setFinalMessage(Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;)V

    .line 271
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    goto/16 :goto_0

    .line 251
    :cond_a
    new-instance v0, Lcom/batescorp/pebble/nav/activity/DestinationValue;

    const-string v3, "Voice"

    sget-object v4, Lcom/batescorp/pebble/nav/processor/NavType;->DRIVING:Lcom/batescorp/pebble/nav/processor/NavType;

    invoke-direct {v0, v3, v2, v4}, Lcom/batescorp/pebble/nav/activity/DestinationValue;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavType;)V

    goto/16 :goto_2

    .line 272
    :cond_b
    const-string v0, "com.pebble.PebbleDataReceiver"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    const-string v0, "key"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 274
    const-string v1, "NavProcessingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 276
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    const-string v0, "key"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "value"

    .line 278
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    .line 276
    invoke-virtual/range {v1 .. v6}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->pebbleDataReceiver(Landroid/content/Context;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :cond_c
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    const-string v0, "key"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v0, "value"

    .line 281
    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v2, p0

    .line 280
    invoke-virtual/range {v1 .. v6}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->pebbleDataReceiver(Landroid/content/Context;IJLjava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_d
    const-string v0, "CLOSE_NAVME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 285
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->p()Ljava/util/UUID;

    move-result-object v0

    .line 286
    const-string v1, "NavProcessingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLOSE_NAVME - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v0, :cond_e

    sget-object v1, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_SYSTEM_UUID:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->compareTo(Ljava/util/UUID;)I

    move-result v1

    if-nez v1, :cond_f

    .line 289
    :cond_e
    sget-object v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-static {p0, v0}, Lcom/getpebble/android/kit/PebbleKit;->closeAppOnPebble(Landroid/content/Context;Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 292
    :cond_f
    const-string v1, "NavProcessingService"

    const-string v2, "Starting NAVME 003"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {p0, v0}, Lcom/getpebble/android/kit/PebbleKit;->startAppOnPebble(Landroid/content/Context;Ljava/util/UUID;)V

    goto/16 :goto_0

    .line 295
    :cond_10
    const-string v0, "PROCESS_NAV_DATA"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 298
    const-string v0, "navData"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/lib/NotificationData;

    .line 300
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->navData(Lcom/batescorp/pebble/nav/lib/NotificationData;)V

    goto/16 :goto_0

    .line 308
    :cond_11
    const-string v0, "PROCESS_NAV_CANCEL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 309
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->navCanceled()V

    goto/16 :goto_0

    .line 310
    :cond_12
    const-string v0, "ALERT_TEST"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "alertCode"

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 312
    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(I)V

    goto/16 :goto_0

    :cond_13
    move v0, v1

    goto/16 :goto_1
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 664
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->clearState()V

    .line 665
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavState;->clearState()V

    .line 666
    invoke-static {p0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavHandler;->cancel()V

    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Z)V

    .line 668
    return-void
.end method

.method protected startNavTimer()V
    .locals 6

    .prologue
    .line 863
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 872
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Start-Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c:Ljava/util/Timer;

    .line 873
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c:Ljava/util/Timer;

    new-instance v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService$b;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2710

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method protected stopNavTimer()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService;->c:Ljava/util/Timer;

    goto :goto_0
.end method
