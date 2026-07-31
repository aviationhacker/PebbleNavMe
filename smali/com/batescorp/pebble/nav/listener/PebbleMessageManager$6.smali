.class Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$6;
.super Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$6;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {p0, p2}, Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;-><init>(Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public receiveNack(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 404
    const-string v0, "PebbleMessageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - receiveNack - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$6;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->f(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 410
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$6;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->notifyNackReceivedAsync()V

    goto :goto_0
.end method
