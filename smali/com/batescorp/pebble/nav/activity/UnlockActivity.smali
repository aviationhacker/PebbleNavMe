.class public Lcom/batescorp/pebble/nav/activity/UnlockActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnlockActivity"


# instance fields
.field private timeoutTimer:Ljava/util/Timer;

.field private timerStart:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timeoutTimer:Ljava/util/Timer;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timerStart:J

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/batescorp/pebble/nav/activity/UnlockActivity;)J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timerStart:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/batescorp/pebble/nav/activity/UnlockActivity;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->done()V

    return-void
.end method

.method private done()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timeoutTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timeoutTimer:Ljava/util/Timer;

    .line 62
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 64
    const/high16 v1, 0x10600000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const-string v1, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->startActivity(Landroid/content/Intent;)V

    .line 69
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->finish()V

    .line 70
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->setContentView(I)V

    .line 28
    const-string v0, "UnlockActivity"

    const-string v1, "Start keyguard dismisser!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-static {p0}, Lcom/batescorp/pebble/nav/util/LockUtil;->needToUnlock(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->done()V

    .line 32
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 33
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->done()V

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 39
    new-instance v0, Ljava/util/Timer;

    const-string v1, "Start-Timer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timeoutTimer:Ljava/util/Timer;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timerStart:J

    .line 41
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->timeoutTimer:Ljava/util/Timer;

    new-instance v1, Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;-><init>(Lcom/batescorp/pebble/nav/activity/UnlockActivity;Lcom/batescorp/pebble/nav/activity/UnlockActivity$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method
