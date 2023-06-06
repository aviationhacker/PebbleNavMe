.class public abstract Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/getpebble/android/kit/PebbleKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PebbleDataLogReceiver"
.end annotation


# instance fields
.field private final a:Ljava/util/UUID;

.field private b:I


# direct methods
.method protected constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 669
    iput-object p1, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->a:Ljava/util/UUID;

    .line 670
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 7

    .prologue
    .line 758
    const-string v0, "pbl_data_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 759
    if-gez v6, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 761
    :cond_0
    const-string v0, "pebble"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LastDataID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget v0, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->b:I

    if-ne v6, v0, :cond_1

    .line 806
    :goto_0
    return-void

    .line 768
    :cond_1
    const-string v0, "pbl_data_type"

    sget-object v1, Lcom/getpebble/android/kit/Constants$PebbleDataType;->INVALID:Lcom/getpebble/android/kit/Constants$PebbleDataType;

    iget-byte v1, v1, Lcom/getpebble/android/kit/Constants$PebbleDataType;->ord:B

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v0

    invoke-static {v0}, Lcom/getpebble/android/kit/Constants$PebbleDataType;->fromByte(B)Lcom/getpebble/android/kit/Constants$PebbleDataType;

    move-result-object v0

    .line 769
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 771
    :cond_2
    sget-object v1, Lcom/getpebble/android/kit/PebbleKit$1;->a:[I

    invoke-virtual {v0}, Lcom/getpebble/android/kit/Constants$PebbleDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 797
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/getpebble/android/kit/Constants$PebbleDataType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 773
    :pswitch_0
    const-string v0, "pbl_data_object"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 774
    if-nez v5, :cond_3

    .line 775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 778
    invoke-virtual/range {v0 .. v5}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->receiveData(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;[B)V

    .line 800
    :goto_1
    iput v6, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->b:I

    .line 802
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.dl.ACK_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    const-string v1, "data_log_uuid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 804
    const-string v1, "pbl_data_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 781
    :pswitch_1
    const-string v0, "pbl_data_object"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 782
    if-nez v5, :cond_4

    .line 783
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 786
    invoke-virtual/range {v0 .. v5}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->receiveData(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_1

    .line 789
    :pswitch_2
    const-string v0, "pbl_data_object"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 790
    if-nez v0, :cond_5

    .line 791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 794
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->receiveData(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;I)V

    goto :goto_1

    .line 771
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 810
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->onFinishSession(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 811
    return-void
.end method


# virtual methods
.method public onFinishSession(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 818
    const-string v0, "uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    .line 821
    iget-object v1, p0, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->a:Ljava/util/UUID;

    invoke-virtual {v1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    :try_start_0
    const-string v0, "data_log_uuid"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/UUID;

    .line 831
    if-nez v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 833
    :cond_2
    :try_start_1
    const-string v0, "data_log_timestamp"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 834
    if-nez v4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 836
    :cond_3
    const-string v0, "data_log_tag"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 837
    if-nez v5, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 839
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.getpebble.action.dl.RECEIVE_DATA_NEW"

    if-ne v0, v1, :cond_5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 840
    invoke-direct/range {v0 .. v5}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 841
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.getpebble.action.dl.FINISH_SESSION_NEW"

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 842
    invoke-direct/range {v0 .. v5}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;->b(Landroid/content/Context;Landroid/content/Intent;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public receiveData(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 2

    .prologue
    .line 735
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "int handler not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveData(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 691
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "UnsignedInteger handler not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveData(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/Long;Ljava/lang/Long;[B)V
    .locals 2

    .prologue
    .line 714
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Byte array handler not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
