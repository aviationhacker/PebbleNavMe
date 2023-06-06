.class Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/activity/UnlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "checkNavRunningTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/batescorp/pebble/nav/activity/UnlockActivity;


# direct methods
.method private constructor <init>(Lcom/batescorp/pebble/nav/activity/UnlockActivity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;->this$0:Lcom/batescorp/pebble/nav/activity/UnlockActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/batescorp/pebble/nav/activity/UnlockActivity;Lcom/batescorp/pebble/nav/activity/UnlockActivity$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;-><init>(Lcom/batescorp/pebble/nav/activity/UnlockActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 46
    const-string v0, "UnlockActivity"

    const-string v1, "checkNavRunningTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;->this$0:Lcom/batescorp/pebble/nav/activity/UnlockActivity;

    invoke-static {v2}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->access$100(Lcom/batescorp/pebble/nav/activity/UnlockActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;->this$0:Lcom/batescorp/pebble/nav/activity/UnlockActivity;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/util/LockUtil;->needToUnlock(Landroid/content/ContextWrapper;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/UnlockActivity$checkNavRunningTask;->this$0:Lcom/batescorp/pebble/nav/activity/UnlockActivity;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/activity/UnlockActivity;->access$200(Lcom/batescorp/pebble/nav/activity/UnlockActivity;)V

    .line 51
    :cond_1
    return-void
.end method
