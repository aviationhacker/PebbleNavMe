.class Lgx$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgx$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lgx$z",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lgx$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<TV;>;"
        }
    .end annotation
.end field

.field final c:Lcom/google/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3489
    invoke-static {}, Lgx;->o()Lgx$z;

    move-result-object v0

    invoke-direct {p0, v0}, Lgx$k;-><init>(Lgx$z;)V

    .line 3490
    return-void
.end method

.method public constructor <init>(Lgx$z;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$z",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3485
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lgx$k;->b:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3486
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createUnstarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lgx$k;->c:Lcom/google/common/base/Stopwatch;

    .line 3493
    iput-object p1, p0, Lgx$k;->a:Lgx$z;

    .line 3494
    return-void
.end method

.method private b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3520
    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 3508
    iget-object v0, p0, Lgx$k;->a:Lgx$z;

    invoke-interface {v0}, Lgx$z;->a()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3539
    :try_start_0
    iget-object v0, p0, Lgx$k;->c:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    .line 3540
    iget-object v0, p0, Lgx$k;->a:Lgx$z;

    invoke-interface {v0}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3541
    if-nez v0, :cond_2

    .line 3542
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3543
    invoke-virtual {p0, v0}, Lgx$k;->b(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lgx$k;->b:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3563
    :cond_0
    :goto_0
    return-object v0

    .line 3543
    :cond_1
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 3545
    :cond_2
    invoke-virtual {p2, p1, v0}, Lcom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 3546
    if-nez v0, :cond_3

    .line 3547
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 3551
    :cond_3
    new-instance v1, Lgx$k$1;

    invoke-direct {v1, p0}, Lgx$k$1;-><init>(Lgx$k;)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->transform(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 3558
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 3559
    invoke-virtual {p0, v1}, Lgx$k;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgx$k;->b:Lcom/google/common/util/concurrent/SettableFuture;

    .line 3560
    :goto_1
    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-eqz v1, :cond_0

    .line 3561
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 3559
    :cond_4
    invoke-direct {p0, v1}, Lgx$k;->b(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)Lgx$z;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3593
    return-object p0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 3525
    if-eqz p1, :cond_0

    .line 3528
    invoke-virtual {p0, p1}, Lgx$k;->b(Ljava/lang/Object;)Z

    .line 3535
    :goto_0
    return-void

    .line 3531
    :cond_0
    invoke-static {}, Lgx;->o()Lgx$z;

    move-result-object v0

    iput-object v0, p0, Lgx$k;->a:Lgx$z;

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 3516
    iget-object v0, p0, Lgx$k;->b:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public b()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3587
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 3512
    iget-object v0, p0, Lgx$k;->b:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 3498
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 3503
    iget-object v0, p0, Lgx$k;->a:Lgx$z;

    invoke-interface {v0}, Lgx$z;->d()Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3573
    iget-object v0, p0, Lgx$k;->b:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 3568
    iget-object v0, p0, Lgx$k;->c:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public g()Lgx$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3582
    iget-object v0, p0, Lgx$k;->a:Lgx$z;

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 3578
    iget-object v0, p0, Lgx$k;->a:Lgx$z;

    invoke-interface {v0}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
