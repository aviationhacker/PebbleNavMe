.class public Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;
.super Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    invoke-direct {p0, v0}, Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;-><init>(Ljava/util/UUID;)V

    .line 22
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/Long;)V
    .locals 3

    .prologue
    .line 64
    const-string v0, "PebbleDataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService 001 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    const-string v1, "com.pebble.PebbleDataReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    const-string v0, "PebbleDataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService 002 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method private a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 76
    const-string v0, "PebbleDataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService 001 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v1, "com.pebble.PebbleDataReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 81
    const-string v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    const-string v0, "PebbleDataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startService 002 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method


# virtual methods
.method public receiveData(Landroid/content/Context;ILcom/getpebble/android/kit/util/PebbleDictionary;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    .line 26
    invoke-static {p1, p2}, Lcom/getpebble/android/kit/PebbleKit;->sendAckToPebble(Landroid/content/Context;I)V

    .line 29
    const-string v0, "PebbleDataReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiveData transactionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-virtual {p3, v3}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p3, v3}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v3, v0}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p3, v6}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p3, v6}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v6, v0}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p3, v7}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {p3, v7}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v7, v0}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto :goto_0

    .line 36
    :cond_3
    invoke-virtual {p3, v8}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {p3, v8}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v8, v0}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto :goto_0

    .line 38
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 39
    const/4 v0, 0x4

    const/4 v1, 0x4

    invoke-virtual {p3, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto :goto_0

    .line 40
    :cond_5
    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 41
    const/4 v0, 0x5

    const/4 v1, 0x5

    invoke-virtual {p3, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto :goto_0

    .line 42
    :cond_6
    const/4 v0, 0x6

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    const/4 v0, 0x6

    const/4 v1, 0x6

    invoke-virtual {p3, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto :goto_0

    .line 44
    :cond_7
    const/4 v0, 0x7

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 45
    const/4 v0, 0x7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto :goto_0

    .line 46
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 47
    const/16 v0, 0x8

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto/16 :goto_0

    .line 48
    :cond_9
    const/16 v0, 0x9

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    const/16 v0, 0x9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto/16 :goto_0

    .line 50
    :cond_a
    const/16 v0, 0xa

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 51
    const/16 v0, 0xa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto/16 :goto_0

    .line 52
    :cond_b
    const/16 v0, 0xb

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 53
    const/16 v0, 0xb

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto/16 :goto_0

    .line 54
    :cond_c
    const/16 v0, 0xc

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 55
    const/16 v0, 0xc

    const/16 v1, 0xc

    invoke-virtual {p3, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto/16 :goto_0

    .line 56
    :cond_d
    const/16 v0, 0xd

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    const/16 v0, 0xd

    const/16 v1, 0xd

    invoke-virtual {p3, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_e
    const/16 v0, 0xe

    invoke-virtual {p3, v0}, Lcom/getpebble/android/kit/util/PebbleDictionary;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const/16 v0, 0xe

    const/16 v1, 0xe

    invoke-virtual {p3, v1}, Lcom/getpebble/android/kit/util/PebbleDictionary;->getInteger(I)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/batescorp/pebble/nav/listener/PebbleDataReceiver;->a(Landroid/content/Context;ILjava/lang/Long;)V

    goto/16 :goto_0
.end method
