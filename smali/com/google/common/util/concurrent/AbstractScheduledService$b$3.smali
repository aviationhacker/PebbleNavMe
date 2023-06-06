.class Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$b;->doStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService$b;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->a(Lcom/google/common/util/concurrent/AbstractScheduledService$b;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_0

    .line 249
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->a(Lcom/google/common/util/concurrent/AbstractScheduledService$b;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 255
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->a:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->shutDown()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :try_start_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->a(Lcom/google/common/util/concurrent/AbstractScheduledService$b;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 251
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->notifyStopped()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->notifyFailed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$b$3;->a:Lcom/google/common/util/concurrent/AbstractScheduledService$b;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$b;->a(Lcom/google/common/util/concurrent/AbstractScheduledService$b;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method
