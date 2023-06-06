.class public final Lcom/getpebble/android/kit/PebbleKit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getpebble/android/kit/PebbleKit$1;,
        Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;,
        Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;,
        Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;,
        Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;,
        Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 489
    if-nez p2, :cond_0

    .line 490
    const/4 p2, 0x0

    .line 495
    :goto_0
    return-object p2

    .line 493
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 937
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/getpebble/android/kit/Constants;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_1

    .line 939
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 941
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 942
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 952
    :goto_0
    return-object v0

    .line 947
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 950
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/getpebble/android/kit/Constants;->a:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public static areAppMessagesSupported(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 126
    const/4 v2, 0x0

    .line 128
    :try_start_0
    invoke-static {p0}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 129
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 134
    :cond_0
    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    .line 132
    :cond_3
    const/4 v3, 0x1

    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-ne v3, v0, :cond_4

    .line 134
    :goto_1
    if-eqz v2, :cond_2

    .line 135
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 132
    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 135
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 134
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static closeAppOnPebble(Landroid/content/Context;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.app.STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public static customizeWatchApp(Landroid/content/Context;Lcom/getpebble/android/kit/Constants$PebbleAppType;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x20

    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "app type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "app name exceeds maximum length (%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gt v0, v3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "app icon exceeds maximum dimensions (32px x 32px); got (%dpx x %dpx)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.app.CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    const-string v1, "app_type"

    iget v2, p1, Lcom/getpebble/android/kit/Constants$PebbleAppType;->ord:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "icon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public static getWatchFWVersion(Landroid/content/Context;)Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 153
    .line 155
    :try_start_0
    invoke-static {p0}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 156
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 167
    :cond_0
    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v0

    .line 160
    :cond_2
    const/4 v0, 0x3

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 161
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 162
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 163
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 165
    new-instance v0, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/getpebble/android/kit/PebbleKit$FirmwareVersionInfo;-><init>(IIILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    if-eqz v1, :cond_1

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_3

    .line 168
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 167
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static isDataLoggingSupported(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 186
    const/4 v2, 0x0

    .line 188
    :try_start_0
    invoke-static {p0}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 189
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 194
    :cond_0
    if-eqz v2, :cond_1

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    .line 192
    :cond_3
    const/4 v3, 0x2

    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-ne v3, v0, :cond_4

    .line 194
    :goto_1
    if-eqz v2, :cond_2

    .line 195
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 192
    goto :goto_1

    .line 194
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 195
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 194
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static isWatchConnected(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    const/4 v2, 0x0

    .line 101
    :try_start_0
    invoke-static {p0}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_3

    .line 107
    :cond_0
    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    .line 105
    :cond_3
    const/4 v3, 0x0

    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-ne v3, v0, :cond_4

    .line 107
    :goto_1
    if-eqz v2, :cond_2

    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 105
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 108
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 107
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method public static registerDataLogReceiver(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleDataLogReceiver;)Landroid/content/BroadcastReceiver;
    .locals 2

    .prologue
    .line 869
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 870
    const-string v1, "com.getpebble.action.dl.RECEIVE_DATA_NEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v1, "com.getpebble.action.dl.FINISH_SESSION_NEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 874
    return-object p1
.end method

.method public static registerPebbleConnectedReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 388
    const-string v0, "com.getpebble.action.PEBBLE_CONNECTED"

    invoke-static {p0, v0, p1}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static registerPebbleDisconnectedReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 409
    const-string v0, "com.getpebble.action.PEBBLE_DISCONNECTED"

    invoke-static {p0, v0, p1}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceivedAckHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleAckReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 451
    const-string v0, "com.getpebble.action.app.RECEIVE_ACK"

    invoke-static {p0, v0, p1}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceivedDataHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleDataReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 429
    const-string v0, "com.getpebble.action.app.RECEIVE"

    invoke-static {p0, v0, p1}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceivedNackHandler(Landroid/content/Context;Lcom/getpebble/android/kit/PebbleKit$PebbleNackReceiver;)Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 472
    const-string v0, "com.getpebble.action.app.RECEIVE_NACK"

    invoke-static {p0, v0, p1}, Lcom/getpebble/android/kit/PebbleKit;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method public static requestDataLogsForApp(Landroid/content/Context;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 895
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.dl.REQUEST_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 897
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 898
    return-void
.end method

.method public static sendAckToPebble(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 335
    and-int/lit16 v0, p1, -0x100

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transaction id must be between (0, 255); got \'%d\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.app.ACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    const-string v1, "transaction_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 343
    return-void
.end method

.method public static sendDataToPebble(Landroid/content/Context;Ljava/util/UUID;Lcom/getpebble/android/kit/util/PebbleDictionary;)V
    .locals 1

    .prologue
    .line 272
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/getpebble/android/kit/PebbleKit;->sendDataToPebbleWithTransactionId(Landroid/content/Context;Ljava/util/UUID;Lcom/getpebble/android/kit/util/PebbleDictionary;I)V

    .line 273
    return-void
.end method

.method public static sendDataToPebbleWithTransactionId(Landroid/content/Context;Ljava/util/UUID;Lcom/getpebble/android/kit/util/PebbleDictionary;I)V
    .locals 3

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    if-nez p2, :cond_1

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_1
    invoke-virtual {p2}, Lcom/getpebble/android/kit/util/PebbleDictionary;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 317
    :goto_0
    return-void

    .line 312
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.app.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 314
    const-string v1, "transaction_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v1, "msg_data"

    invoke-virtual {p2}, Lcom/getpebble/android/kit/util/PebbleDictionary;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static sendNackToPebble(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 361
    and-int/lit16 v0, p1, -0x100

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transaction id must be between (0, 255); got \'%d\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.app.NACK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    const-string v1, "transaction_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    return-void
.end method

.method public static startAppOnPebble(Landroid/content/Context;Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uuid cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.getpebble.action.app.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 223
    return-void
.end method
