.class public abstract Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/PebbleKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PebbleDataReceiver"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;


# direct methods
.method protected constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 514
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 515
    iput-object p1, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;->a:Ljava/util/UUID;

    .line 516
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 537
    const-string v0, "uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 541
    iget-object v1, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;->a:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    const-string v0, "transaction_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 546
    const-string v1, "msg_data"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 547
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 552
    :try_start_0
    invoke-static {v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->fromJson(Ljava/lang/String;)Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v1

    .line 553
    invoke-virtual {p0, p1, v0, v1}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;->receiveData(Landroid/content/Context;ILcom/getpebble/android/kit/util/PebbleDictionary;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 554
    :catch_0
    move-exception v0

    .line 555
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract receiveData(Landroid/content/Context;ILcom/getpebble/android/kit/util/PebbleDictionary;)V
.end method
