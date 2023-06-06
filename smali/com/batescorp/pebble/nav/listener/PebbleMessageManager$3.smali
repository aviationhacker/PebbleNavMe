.class Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->notifyAckReceivedAsync()V
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
    .line 132
    iput-object p1, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->h(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 137
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;Ljava/lang/Long;)Ljava/lang/Long;

    .line 138
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->a(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;I)I

    .line 140
    const-string v0, "PebbleMessageManager"

    const-string v2, "notifyAckReceivedAsync - synchronized (messageQueue)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    const-string v0, "PebbleMessageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAckReceivedAsync - synchronized (messageQueue) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v4}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->c(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    .line 146
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 148
    iget-object v0, p0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager$3;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;->i(Lcom/batescorp/pebble/nav/listener/PebbleMessageManager;)V

    .line 149
    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 147
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
