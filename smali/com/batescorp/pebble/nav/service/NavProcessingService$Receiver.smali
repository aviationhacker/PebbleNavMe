.class public Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/NavProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/service/NavProcessingService;


# direct methods
.method public constructor <init>(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()Landroid/content/ContextWrapper;
    .locals 1

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 994
    const-string v0, "NavProcessingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v0, "com.getpebble.action.PEBBLE_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->j(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    .line 998
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;->a()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->clearState()V

    .line 999
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;->a()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/PebbleState;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/PebbleState;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v1}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->h(Lcom/batescorp/pebble/nav/service/NavProcessingService;)Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/PebbleState;->sendToPebble(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    const-string v0, "com.getpebble.action.PEBBLE_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/NavProcessingService$Receiver;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/NavProcessingService;->k(Lcom/batescorp/pebble/nav/service/NavProcessingService;)V

    goto :goto_0
.end method
