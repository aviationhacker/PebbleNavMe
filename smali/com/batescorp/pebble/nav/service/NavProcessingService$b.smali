.class Lcom/batescorp/pebble/nav/service/NavProcessingService$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/NavProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/service/NavProcessingService;


# direct methods
.method private constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 972
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$b;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$1;)V
    .locals 0

    .prologue
    .line 972
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/service/NavProcessingService$b;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 974
    const-string v0, "NavProcessingService"

    const-string v1, "checkNavRunningTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$b;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->checkGoogleNavRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "NavProcessingService"

    const-string v1, "checkNavRunningTask - Still Running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :goto_0
    return-void

    .line 980
    :cond_0
    const-string v0, "NavProcessingService"

    const-string v1, "checkNavRunningTask - Not Running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$b;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->navCanceled()V

    .line 982
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$b;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->stopNavTimer()V

    goto :goto_0
.end method
