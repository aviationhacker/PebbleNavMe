.class Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$3;
.super Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;-><init>(Landroid/content/ContextWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;

    invoke-direct {p0, p2}, Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;-><init>(Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public receiveNack(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 54
    const-string v0, "PebbleMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - Received nack for transaction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;IZ)V

    .line 58
    return-void
.end method
