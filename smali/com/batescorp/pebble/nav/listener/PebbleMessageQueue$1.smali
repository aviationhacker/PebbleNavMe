.class Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$1;
.super Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;
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
    .line 31
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$1;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;

    invoke-direct {p0, p2}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;-><init>(Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public receiveData(Landroid/content/Context;ILcom/getpebble/android/kit/util/PebbleDictionary;)V
    .locals 3

    .prologue
    .line 34
    const-string v0, "PebbleMessageQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pebble - Received value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getUnsignedIntegerAsLong(I)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for key: 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$1;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;->getApplicationContext()Landroid/content/ContextWrapper;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/getpebble/android/kit/PebbleKit;->sendAckToPebble(Landroid/content/Context;I)V

    .line 37
    return-void
.end method
