.class Lcom/batescorp/pebble/nav/service/NavProcessingService$c;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/NavProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/service/NavProcessingService;


# direct methods
.method private constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$c;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$1;)V
    .locals 0

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/service/NavProcessingService$c;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 777
    const-string v0, "NavProcessingService"

    const-string v1, "checkServiceNeededTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$c;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->a(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    const-string v0, "NavProcessingService"

    const-string v1, "checkServiceNeededTask : shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$c;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->i(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    .line 786
    :goto_0
    return-void

    .line 784
    :cond_0
    const-string v0, "NavProcessingService"

    const-string v1, "checkServiceNeededTask :  running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
