.class Lcom/batescorp/pebble/nav/service/NavProcessingService$e;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/NavProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/service/NavProcessingService;


# direct methods
.method private constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;Lcom/batescorp/pebble/nav/service/NavProcessingService$1;)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;-><init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 753
    const-string v0, "NavProcessingService"

    const-string v1, "sendSpeedTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->f(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Ljava/lang/Float;

    move-result-object v0

    .line 756
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->getInstance(Landroid/content/Context;)Lcom/batescorp/pebble/nav/processor/NavState;

    move-result-object v1

    .line 757
    invoke-virtual {v1}, Lcom/batescorp/pebble/nav/processor/NavState;->getSpeedType()Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    move-result-object v2

    .line 758
    sget-object v3, Lcom/batescorp/pebble/nav/service/NavProcessingService$1;->c:[I

    invoke-virtual {v2}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 766
    const-string v0, "???"

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/processor/NavState;->setSpeed(Ljava/lang/String;)V

    .line 768
    :goto_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->g(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/processor/NavState;->setGpsAccuracy(Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;)V

    .line 770
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$e;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v1}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 771
    return-void

    .line 760
    :pswitch_0
    invoke-static {v0}, Lcom/batescorp/pebble/nav/lib/Constants;->getMPH(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/processor/NavState;->setSpeed(Ljava/lang/String;)V

    goto :goto_0

    .line 763
    :pswitch_1
    invoke-static {v0}, Lcom/batescorp/pebble/nav/lib/Constants;->getKPH(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/processor/NavState;->setSpeed(Ljava/lang/String;)V

    goto :goto_0

    .line 758
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
