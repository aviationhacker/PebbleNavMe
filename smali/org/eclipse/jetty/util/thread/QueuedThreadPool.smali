.class public Lorg/eclipse/jetty/util/thread/QueuedThreadPool;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lorg/eclipse/jetty/util/component/Dumpable;
.implements Lorg/eclipse/jetty/util/thread/ThreadPool$SizedThreadPool;


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:I

.field private p:Z

.field private q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->f:Ljava/lang/Object;

    .line 55
    const v0, 0xea60

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->i:I

    .line 56
    const/16 v0, 0xfe

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    .line 57
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->l:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->m:I

    .line 60
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->n:Z

    .line 61
    const/16 v0, 0x64

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->o:I

    .line 62
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->p:Z

    .line 530
    new-instance v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$3;-><init>(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->q:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qtp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->h:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    .line 78
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->setMaxThreads(I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    .line 88
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 89
    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private a(I)Z
    .locals 4

    .prologue
    .line 428
    add-int/lit8 v0, p1, 0x1

    .line 429
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 449
    :goto_0
    return v0

    .line 435
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->q:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    .line 436
    iget-boolean v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 437
    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    const/4 v0, 0x1

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    .line 447
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0
.end method

.method private b()Ljava/lang/Runnable;
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->i:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic c(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->i:I

    return v0
.end method

.method static synthetic d(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic e(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    return v0
.end method

.method static synthetic f(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->d:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic g(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public dispatch(Ljava/lang/Runnable;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 355
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    .line 358
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getIdleThreads()I

    move-result v3

    .line 359
    iget-object v4, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    if-eqz v3, :cond_0

    if-le v2, v3, :cond_1

    .line 364
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 365
    iget v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    if-ge v1, v2, :cond_1

    .line 366
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a(I)Z

    .line 372
    :cond_1
    :goto_0
    return v0

    .line 371
    :cond_2
    sget-object v2, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Dispatched {} to stopped {}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p0, v4, v0

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 372
    goto :goto_0
.end method

.method protected doStart()V
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 101
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->l:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->l:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    :goto_0
    check-cast v0, Ljava/util/concurrent/BlockingQueue;

    iput-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 106
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    if-ge v0, v1, :cond_2

    .line 108
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a(I)Z

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_1

    .line 101
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/util/BlockingArrayQueue;

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    iget v2, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/BlockingArrayQueue;-><init>(II)V

    goto :goto_0

    .line 111
    :cond_2
    return-void
.end method

.method protected doStop()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 121
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->o:I

    div-int/lit8 v0, v0, 0x2

    int-to-long v6, v0

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    .line 122
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 126
    new-instance v3, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$1;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$1;-><init>(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;)V

    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_1

    .line 129
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 133
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 137
    :cond_2
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->o:I

    int-to-long v6, v0

    cmp-long v0, v2, v6

    if-gez v0, :cond_3

    .line 139
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    .line 141
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    .line 143
    if-lez v0, :cond_6

    .line 145
    sget-object v2, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threads could not be stopped"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    sget-object v0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 149
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 151
    sget-object v3, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t stop "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_4
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    .line 154
    sget-object v6, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v1, [Ljava/lang/Object;

    invoke-interface {v6, v5, v7}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 160
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 163
    monitor-exit v1

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 468
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getMaxThreads()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 469
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 471
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 474
    if-eqz v6, :cond_5

    .line 476
    array-length v7, v6

    move v1, v3

    :goto_1
    if-ge v1, v7, :cond_5

    aget-object v8, v6, v1

    .line 478
    const-string v9, "idleJobPoll"

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v1, v2

    .line 487
    :goto_2
    iget-boolean v7, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->p:Z

    if-eqz v7, :cond_1

    .line 489
    new-instance v7, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$2;

    invoke-direct {v7, p0, v0, v1, v6}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool$2;-><init>(Lorg/eclipse/jetty/util/thread/QueuedThreadPool;Ljava/lang/Thread;Z[Ljava/lang/StackTraceElement;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 506
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " @ "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v0, v6

    if-lez v0, :cond_2

    aget-object v0, v6, v3

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    const-string v0, " IDLE"

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v0, "???"

    goto :goto_3

    :cond_3
    const-string v0, ""

    goto :goto_4

    .line 510
    :cond_4
    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 511
    new-array v0, v2, [Ljava/util/Collection;

    aput-object v4, v0, v3

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 513
    return-void

    :cond_5
    move v1, v3

    goto :goto_2
.end method

.method public dumpThread(J)Ljava/lang/String;
    .locals 7

    .prologue
    .line 665
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 667
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 672
    const-string v5, "  at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 676
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->dispatch(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/util/concurrent/RejectedExecutionException;

    invoke-direct {v0}, Ljava/util/concurrent/RejectedExecutionException;-><init>()V

    throw v0

    .line 380
    :cond_0
    return-void
.end method

.method public getIdleThreads()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMaxIdleTimeMs()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->i:I

    return v0
.end method

.method public getMaxQueued()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->l:I

    return v0
.end method

.method public getMaxStopTimeMs()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->o:I

    return v0
.end method

.method public getMaxThreads()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    return v0
.end method

.method public getMinThreads()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected getQueue()Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public getThreads()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getThreadsPriority()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->m:I

    return v0
.end method

.method public interruptThread(J)Z
    .locals 5

    .prologue
    .line 647
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 649
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 651
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 652
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDaemon()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->n:Z

    return v0
.end method

.method public isDetailedDump()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->p:Z

    return v0
.end method

.method public isLowOnThreads()Z
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public join()V
    .locals 2

    .prologue
    .line 388
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 390
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 396
    :cond_1
    return-void
.end method

.method protected newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 455
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method protected runJob(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 608
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 609
    return-void
.end method

.method public setDaemon(Z)V
    .locals 0

    .prologue
    .line 172
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->n:Z

    .line 173
    return-void
.end method

.method public setDetailedDump(Z)V
    .locals 0

    .prologue
    .line 349
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->p:Z

    .line 350
    return-void
.end method

.method public setMaxIdleTimeMs(I)V
    .locals 0

    .prologue
    .line 185
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->i:I

    .line 186
    return-void
.end method

.method public setMaxQueued(I)V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->l:I

    .line 269
    return-void
.end method

.method public setMaxStopTimeMs(I)V
    .locals 0

    .prologue
    .line 194
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->o:I

    .line 195
    return-void
.end method

.method public setMaxThreads(I)V
    .locals 2

    .prologue
    .line 205
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    .line 206
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    if-le v0, v1, :cond_0

    .line 207
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    .line 208
    :cond_0
    return-void
.end method

.method public setMinThreads(I)V
    .locals 2

    .prologue
    .line 218
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    .line 220
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    if-le v0, v1, :cond_0

    .line 221
    iget v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    iput v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->j:I

    .line 223
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 224
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->k:I

    if-ge v0, v1, :cond_1

    .line 226
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->a(I)Z

    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    .line 229
    :cond_1
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->h:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setThreadsPriority(I)V
    .locals 0

    .prologue
    .line 248
    iput p1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->m:I

    .line 249
    return-void
.end method

.method public stopThread(J)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 631
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 633
    invoke-virtual {v0}, Ljava/lang/Thread;->stop()V

    .line 634
    const/4 v0, 0x1

    .line 637
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getMinThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getIdleThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->getMaxThreads()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/QueuedThreadPool;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    goto :goto_0
.end method
