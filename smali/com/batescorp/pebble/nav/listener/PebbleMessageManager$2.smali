.class Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 94
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 95
    :try_start_0
    const-string v2, "PebbleMessageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAsync - synchronized (isMessagePending) : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    .line 96
    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NA"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 100
    monitor-exit v1

    .line 119
    :goto_1
    return-void

    .line 96
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->b(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_1
    const-string v0, "PebbleMessageManager"

    const-string v2, "consumeAsync - synchronized (messageQueue)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :try_start_1
    const-string v0, "PebbleMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumeAsync - synchronized (messageQueue) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v4}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 107
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 110
    :cond_2
    :try_start_3
    const-string v0, "PebbleMessageManager"

    const-string v3, "consumeAsync - synchronized (messageQueue) : sendDataToPebbleWithTransactionId"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;Ljava/lang/Long;)Ljava/lang/Long;

    .line 114
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->d(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 115
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->e(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Landroid/content/ContextWrapper;

    move-result-object v3

    sget-object v4, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->PEBBLE_NAV_UUID:Ljava/util/UUID;

    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntry;->getPebbleDictionary()Lcom/getpebble/android/kit/util/PebbleDictionary;

    move-result-object v0

    iget-object v5, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v5}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->f(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)I

    move-result v5

    invoke-static {v3, v4, v0, v5}, Lcom/getpebble/android/kit/PebbleKit;->sendDataToPebbleWithTransactionId(Landroid/content/Context;Ljava/util/UUID;Lcom/getpebble/android/kit/util/PebbleDictionary;I)V

    .line 116
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$2;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->g(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 117
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 118
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 117
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
