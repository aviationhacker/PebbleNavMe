.class public Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;
.implements Lorg/eclipse/jetty/util/thread/ThreadPool;


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v2, 0x100

    .line 62
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 63
    return-void
.end method

.method public constructor <init>(I)V
    .locals 14

    .prologue
    const/16 v8, 0x20

    const-wide/16 v4, 0x3c

    const/16 v2, 0x100

    .line 74
    if-gez p1, :cond_0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    move-object v7, v1

    :goto_0
    invoke-direct {p0, v7}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 77
    return-void

    .line 74
    :cond_0
    if-nez p1, :cond_1

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v13}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move v9, v2

    move-wide v10, v4

    invoke-direct/range {v7 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v13, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v13, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    move v9, v2

    move-wide v10, v4

    invoke-direct/range {v7 .. v13}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    goto :goto_0
.end method

.method public constructor <init>(IIJ)V
    .locals 7

    .prologue
    .line 89
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(IIJLjava/util/concurrent/TimeUnit;)V

    .line 90
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;)V
    .locals 9

    .prologue
    .line 103
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 104
    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    .line 50
    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 131
    sget-object v1, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 132
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doStop()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 183
    return-void
.end method

.method public getIdleThreads()I
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    sub-int v0, v1, v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getThreads()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 153
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isLowOnThreads()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 165
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    sub-int v0, v3, v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 165
    goto :goto_0

    :cond_1
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public join()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/ExecutorThreadPool;->b:Ljava/util/concurrent/ExecutorService;

    const-wide v2, 0x7fffffffffffffffL

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 175
    return-void
.end method
