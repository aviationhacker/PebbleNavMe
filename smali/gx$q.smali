.class Lgx$q;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field final a:Lgx;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field d:I

.field e:I

.field volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final n:Lcom/google/common/cache/AbstractCache$StatsCounter;


# direct methods
.method constructor <init>(Lgx;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx",
            "<TK;TV;>;IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2094
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2074
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lgx$q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2095
    iput-object p1, p0, Lgx$q;->a:Lgx;

    .line 2096
    iput-wide p3, p0, Lgx$q;->g:J

    .line 2097
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 2098
    invoke-virtual {p0, p2}, Lgx$q;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgx$q;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2100
    invoke-virtual {p1}, Lgx;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Lgx$q;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2103
    invoke-virtual {p1}, Lgx;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Lgx$q;->i:Ljava/lang/ref/ReferenceQueue;

    .line 2106
    invoke-virtual {p1}, Lgx;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 2108
    :goto_1
    iput-object v0, p0, Lgx$q;->j:Ljava/util/Queue;

    .line 2110
    invoke-virtual {p1}, Lgx;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lgx$aj;

    invoke-direct {v0}, Lgx$aj;-><init>()V

    .line 2112
    :goto_2
    iput-object v0, p0, Lgx$q;->l:Ljava/util/Queue;

    .line 2114
    invoke-virtual {p1}, Lgx;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lgx$c;

    invoke-direct {v0}, Lgx$c;-><init>()V

    .line 2116
    :goto_3
    iput-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    .line 2117
    return-void

    :cond_1
    move-object v0, v1

    .line 2100
    goto :goto_0

    .line 2108
    :cond_2
    invoke-static {}, Lgx;->q()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2112
    :cond_3
    invoke-static {}, Lgx;->q()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2116
    :cond_4
    invoke-static {}, Lgx;->q()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method a(Ljava/lang/Object;IZ)Lgx$k;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IZ)",
            "Lgx$k",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2411
    .line 2412
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 2414
    :try_start_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2415
    invoke-virtual {p0, v2, v3}, Lgx$q;->c(J)V

    .line 2417
    iget-object v4, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2418
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2419
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    move-object v1, v0

    .line 2422
    :goto_0
    if-eqz v1, :cond_3

    .line 2423
    invoke-interface {v1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2424
    invoke-interface {v1}, Lgx$p;->c()I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v7, p0, Lgx$q;->a:Lgx;

    iget-object v7, v7, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 2425
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2428
    invoke-interface {v1}, Lgx$p;->a()Lgx$z;

    move-result-object v4

    .line 2429
    invoke-interface {v4}, Lgx$z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 2430
    invoke-interface {v1}, Lgx$p;->h()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-wide v6, v0, Lgx;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v6

    if-gez v0, :cond_1

    .line 2434
    :cond_0
    const/4 v0, 0x0

    .line 2453
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2454
    invoke-virtual {p0}, Lgx$q;->m()V

    :goto_1
    return-object v0

    .line 2438
    :cond_1
    :try_start_1
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 2439
    new-instance v0, Lgx$k;

    invoke-direct {v0, v4}, Lgx$k;-><init>(Lgx$z;)V

    .line 2441
    invoke-interface {v1, v0}, Lgx$p;->a(Lgx$z;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2453
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2454
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 2422
    :cond_2
    :try_start_2
    invoke-interface {v1}, Lgx$p;->b()Lgx$p;

    move-result-object v1

    goto :goto_0

    .line 2446
    :cond_3
    iget v1, p0, Lgx$q;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgx$q;->d:I

    .line 2447
    new-instance v1, Lgx$k;

    invoke-direct {v1}, Lgx$k;-><init>()V

    .line 2448
    invoke-virtual {p0, p1, p2, v0}, Lgx$q;->a(Ljava/lang/Object;ILgx$p;)Lgx$p;

    move-result-object v0

    .line 2449
    invoke-interface {v0, v1}, Lgx$p;->a(Lgx$z;)V

    .line 2450
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2453
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2454
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v1

    goto :goto_1

    .line 2453
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2454
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method a(Lgx$p;Lgx$p;)Lgx$p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2143
    invoke-interface {p1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2157
    :cond_0
    :goto_0
    return-object v0

    .line 2148
    :cond_1
    invoke-interface {p1}, Lgx$p;->a()Lgx$z;

    move-result-object v1

    .line 2149
    invoke-interface {v1}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2150
    if-nez v2, :cond_2

    invoke-interface {v1}, Lgx$z;->d()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2155
    :cond_2
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->r:Lgx$d;

    invoke-virtual {v0, p0, p1, p2}, Lgx$d;->a(Lgx$q;Lgx$p;Lgx$p;)Lgx$p;

    move-result-object v0

    .line 2156
    iget-object v3, p0, Lgx$q;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lgx$z;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lgx$p;)Lgx$z;

    move-result-object v1

    invoke-interface {v0, v1}, Lgx$p;->a(Lgx$z;)V

    goto :goto_0
.end method

.method a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;TK;I",
            "Lgx$z",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3266
    invoke-virtual {p0, p3, p4, p5, p6}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    .line 3267
    iget-object v0, p0, Lgx$q;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3268
    iget-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3270
    invoke-interface {p5}, Lgx$z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3271
    const/4 v0, 0x0

    invoke-interface {p5, v0}, Lgx$z;->a(Ljava/lang/Object;)V

    .line 3274
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lgx$q;->b(Lgx$p;Lgx$p;)Lgx$p;

    move-result-object p1

    goto :goto_0
.end method

.method a(Ljava/lang/Object;I)Lgx$p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 2715
    invoke-virtual {p0, p2}, Lgx$q;->b(I)Lgx$p;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2716
    invoke-interface {v0}, Lgx$p;->c()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2715
    :cond_0
    :goto_1
    invoke-interface {v0}, Lgx$p;->b()Lgx$p;

    move-result-object v0

    goto :goto_0

    .line 2720
    :cond_1
    invoke-interface {v0}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2721
    if-nez v1, :cond_2

    .line 2722
    invoke-virtual {p0}, Lgx$q;->a()V

    goto :goto_1

    .line 2726
    :cond_2
    iget-object v2, p0, Lgx$q;->a:Lgx;

    iget-object v2, v2, Lgx;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2731
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method a(Ljava/lang/Object;IJ)Lgx$p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2736
    invoke-virtual {p0, p1, p2}, Lgx$q;->a(Ljava/lang/Object;I)Lgx$p;

    move-result-object v1

    .line 2737
    if-nez v1, :cond_0

    .line 2743
    :goto_0
    return-object v0

    .line 2739
    :cond_0
    iget-object v2, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v2, v1, p3, p4}, Lgx;->b(Lgx$p;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2740
    invoke-virtual {p0, p3, p4}, Lgx$q;->a(J)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2743
    goto :goto_0
.end method

.method a(Ljava/lang/Object;ILgx$p;)Lgx$p;
    .locals 2
    .param p3    # Lgx$p;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2134
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->r:Lgx$d;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lgx$d;->a(Lgx$q;Ljava/lang/Object;ILgx$p;)Lgx$p;

    move-result-object v0

    return-object v0
.end method

.method a(Lgx$p;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;TK;ITV;J",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2369
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lgx$p;->h()J

    move-result-wide v0

    sub-long v0, p5, v0

    iget-object v2, p0, Lgx$q;->a:Lgx;

    iget-wide v2, v2, Lgx;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2370
    invoke-interface {p1}, Lgx$p;->a()Lgx$z;

    move-result-object v0

    invoke-interface {v0}, Lgx$z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2371
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, p7, v0}, Lgx$q;->a(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    move-result-object v0

    .line 2372
    if-eqz v0, :cond_0

    move-object p4, v0

    .line 2376
    :cond_0
    return-object p4
.end method

.method a(Lgx$p;Ljava/lang/Object;Lgx$z;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;TK;",
            "Lgx$z",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2299
    invoke-interface {p3}, Lgx$z;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2300
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2303
    :cond_0
    invoke-static {p1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Recursive load of: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p2, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2306
    :try_start_0
    invoke-interface {p3}, Lgx$z;->e()Ljava/lang/Object;

    move-result-object v0

    .line 2307
    if-nez v0, :cond_2

    .line 2308
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CacheLoader returned null for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2315
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v0

    :cond_1
    move v0, v2

    .line 2303
    goto :goto_0

    .line 2311
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgx$q;->a:Lgx;

    iget-object v2, v2, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v2}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2312
    invoke-virtual {p0, p1, v2, v3}, Lgx$q;->a(Lgx$p;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2315
    iget-object v2, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v2, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object v0
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2179
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    :try_start_0
    iget v0, p0, Lgx$q;->b:I

    if-eqz v0, :cond_1

    .line 2184
    invoke-virtual {p0, p1, p2}, Lgx$q;->a(Ljava/lang/Object;I)Lgx$p;

    move-result-object v2

    .line 2185
    if-eqz v2, :cond_1

    .line 2186
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2187
    invoke-virtual {p0, v2, v6, v7}, Lgx$q;->c(Lgx$p;J)Ljava/lang/Object;

    move-result-object v5

    .line 2188
    if-eqz v5, :cond_0

    .line 2189
    invoke-virtual {p0, v2, v6, v7}, Lgx$q;->a(Lgx$p;J)V

    .line 2190
    iget-object v0, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v8, p3

    .line 2191
    invoke-virtual/range {v1 .. v8}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2211
    invoke-virtual {p0}, Lgx$q;->l()V

    :goto_0
    return-object v0

    .line 2193
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v0

    .line 2194
    invoke-interface {v0}, Lgx$z;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2195
    invoke-virtual {p0, v2, p1, v0}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Lgx$z;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2211
    invoke-virtual {p0}, Lgx$q;->l()V

    goto :goto_0

    .line 2201
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Lgx$q;->b(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 2211
    invoke-virtual {p0}, Lgx$q;->l()V

    goto :goto_0

    .line 2202
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 2203
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 2204
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 2205
    new-instance v1, Lcom/google/common/util/concurrent/ExecutionError;

    check-cast v0, Ljava/lang/Error;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2211
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->l()V

    throw v0

    .line 2206
    :cond_2
    :try_start_4
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_3

    .line 2207
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2209
    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method a(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2387
    .line 2388
    invoke-virtual {p0, p1, p2, p4}, Lgx$q;->a(Ljava/lang/Object;IZ)Lgx$k;

    move-result-object v1

    .line 2389
    if-nez v1, :cond_1

    .line 2401
    :cond_0
    :goto_0
    return-object v0

    .line 2393
    :cond_1
    invoke-virtual {p0, p1, p2, v1, p3}, Lgx$q;->b(Ljava/lang/Object;ILgx$k;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 2394
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2396
    :try_start_0
    invoke-static {v1}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2397
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method a(Ljava/lang/Object;ILgx$k;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$k",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2323
    invoke-virtual {p3, p1, p4}, Lgx$k;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 2324
    invoke-virtual {p0, p1, p2, p3, v0}, Lgx$q;->a(Ljava/lang/Object;ILgx$k;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;ILgx$k;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$k",
            "<TK;TV;>;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2350
    const/4 v1, 0x0

    .line 2352
    :try_start_0
    invoke-static {p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    .line 2353
    if-nez v1, :cond_1

    .line 2354
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x23

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "CacheLoader returned null for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2360
    :catchall_0
    move-exception v0

    if-nez v1, :cond_0

    .line 2361
    iget-object v1, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lgx$k;->f()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2362
    invoke-virtual {p0, p1, p2, p3}, Lgx$q;->a(Ljava/lang/Object;ILgx$k;)Z

    :cond_0
    throw v0

    .line 2356
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lgx$k;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 2357
    invoke-virtual {p0, p1, p2, p3, v1}, Lgx$q;->a(Ljava/lang/Object;ILgx$k;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2360
    if-nez v1, :cond_2

    .line 2361
    iget-object v0, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p3}, Lgx$k;->f()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 2362
    invoke-virtual {p0, p1, p2, p3}, Lgx$q;->a(Ljava/lang/Object;ILgx$k;)Z

    :cond_2
    return-object v1
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 3036
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3038
    :try_start_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 3039
    invoke-virtual {p0, v8, v9}, Lgx$q;->c(J)V

    .line 3041
    iget-object v10, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3042
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v11, p2, v0

    .line 3043
    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx$p;

    move-object v2, v1

    .line 3045
    :goto_0
    if-eqz v2, :cond_3

    .line 3046
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3047
    invoke-interface {v2}, Lgx$p;->c()I

    move-result v0

    if-ne v0, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 3048
    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3049
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v5

    .line 3050
    invoke-interface {v5}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3051
    if-nez v0, :cond_1

    .line 3052
    invoke-interface {v5}, Lgx$z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3054
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3055
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3056
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lgx$q;->a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;

    move-result-object v0

    .line 3058
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3059
    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3060
    iput v1, p0, Lgx$q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3075
    :cond_0
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3076
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v7

    :goto_1
    return-object v0

    .line 3065
    :cond_1
    :try_start_1
    iget v1, p0, Lgx$q;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgx$q;->d:I

    .line 3066
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v1}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-wide v5, v8

    .line 3067
    invoke-virtual/range {v1 .. v6}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3068
    invoke-virtual {p0, v2}, Lgx$q;->a(Lgx$p;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3075
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3076
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 3045
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3075
    :cond_3
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3076
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v7

    goto :goto_1

    .line 3075
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3076
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2840
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 2842
    :try_start_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 2843
    invoke-virtual {p0, v4, v5}, Lgx$q;->c(J)V

    .line 2845
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2846
    iget v1, p0, Lgx$q;->e:I

    if-le v0, v1, :cond_0

    .line 2847
    invoke-virtual {p0}, Lgx$q;->j()V

    .line 2848
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2851
    :cond_0
    iget-object v7, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2852
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 2853
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    move-object v1, v0

    .line 2856
    :goto_0
    if-eqz v1, :cond_5

    .line 2857
    invoke-interface {v1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v2

    .line 2858
    invoke-interface {v1}, Lgx$p;->c()I

    move-result v3

    if-ne v3, p2, :cond_4

    if-eqz v2, :cond_4

    iget-object v3, p0, Lgx$q;->a:Lgx;

    iget-object v3, v3, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 2859
    invoke-virtual {v3, p1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2862
    invoke-interface {v1}, Lgx$p;->a()Lgx$z;

    move-result-object v0

    .line 2863
    invoke-interface {v0}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2865
    if-nez v7, :cond_2

    .line 2866
    iget v2, p0, Lgx$q;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgx$q;->d:I

    .line 2867
    invoke-interface {v0}, Lgx$z;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2868
    sget-object v2, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2869
    invoke-virtual/range {v0 .. v5}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2870
    iget v0, p0, Lgx$q;->b:I

    .line 2875
    :goto_1
    iput v0, p0, Lgx$q;->b:I

    .line 2876
    invoke-virtual {p0, v1}, Lgx$q;->a(Lgx$p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2905
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2906
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v6

    :goto_2
    return-object v0

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2872
    :try_start_1
    invoke-virtual/range {v0 .. v5}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2873
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2878
    :cond_2
    if-eqz p4, :cond_3

    .line 2882
    invoke-virtual {p0, v1, v4, v5}, Lgx$q;->b(Lgx$p;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2905
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2906
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v7

    goto :goto_2

    .line 2886
    :cond_3
    :try_start_2
    iget v2, p0, Lgx$q;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgx$q;->d:I

    .line 2887
    sget-object v2, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v2}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2888
    invoke-virtual/range {v0 .. v5}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2889
    invoke-virtual {p0, v1}, Lgx$q;->a(Lgx$p;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2905
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2906
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v7

    goto :goto_2

    .line 2856
    :cond_4
    :try_start_3
    invoke-interface {v1}, Lgx$p;->b()Lgx$p;

    move-result-object v1

    goto :goto_0

    .line 2896
    :cond_5
    iget v1, p0, Lgx$q;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgx$q;->d:I

    .line 2897
    invoke-virtual {p0, p1, p2, v0}, Lgx$q;->a(Ljava/lang/Object;ILgx$p;)Lgx$p;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .line 2898
    invoke-virtual/range {v0 .. v5}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 2899
    invoke-virtual {v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2900
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2901
    iput v0, p0, Lgx$q;->b:I

    .line 2902
    invoke-virtual {p0, v1}, Lgx$q;->a(Lgx$p;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2905
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2906
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v6

    goto :goto_2

    .line 2905
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2906
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a()V
    .locals 1

    .prologue
    .line 2464
    invoke-virtual {p0}, Lgx$q;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2466
    :try_start_0
    invoke-virtual {p0}, Lgx$q;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2468
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2471
    :cond_0
    return-void

    .line 2468
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    throw v0
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 2612
    invoke-virtual {p0}, Lgx$q;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2614
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lgx$q;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2616
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 2620
    :cond_0
    return-void

    .line 2616
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    throw v0
.end method

.method a(Lgx$p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2668
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2688
    :cond_0
    return-void

    .line 2672
    :cond_1
    invoke-virtual {p0}, Lgx$q;->h()V

    .line 2676
    invoke-interface {p1}, Lgx$p;->a()Lgx$z;

    move-result-object v0

    invoke-interface {v0}, Lgx$z;->a()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lgx$q;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 2677
    invoke-interface {p1}, Lgx$p;->c()I

    move-result v0

    sget-object v1, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0, v1}, Lgx$q;->a(Lgx$p;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2678
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2682
    :cond_2
    iget-wide v0, p0, Lgx$q;->c:J

    iget-wide v2, p0, Lgx$q;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2683
    invoke-virtual {p0}, Lgx$q;->i()Lgx$p;

    move-result-object v0

    .line 2684
    invoke-interface {v0}, Lgx$p;->c()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lgx$q;->a(Lgx$p;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2685
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method a(Lgx$p;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;IJ)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2573
    invoke-virtual {p0}, Lgx$q;->h()V

    .line 2574
    iget-wide v0, p0, Lgx$q;->c:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgx$q;->c:J

    .line 2576
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2577
    invoke-interface {p1, p3, p4}, Lgx$p;->a(J)V

    .line 2579
    :cond_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    invoke-interface {p1, p3, p4}, Lgx$p;->b(J)V

    .line 2582
    :cond_1
    iget-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2583
    iget-object v0, p0, Lgx$q;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2584
    return-void
.end method

.method a(Lgx$p;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2545
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2546
    invoke-interface {p1, p2, p3}, Lgx$p;->a(J)V

    .line 2548
    :cond_0
    iget-object v0, p0, Lgx$q;->j:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2549
    return-void
.end method

.method a(Lgx$p;Lcom/google/common/cache/RemovalCause;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2643
    invoke-interface {p1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lgx$p;->c()I

    move-result v1

    invoke-interface {p1}, Lgx$p;->a()Lgx$z;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    .line 2644
    return-void
.end method

.method a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;TK;TV;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2165
    invoke-interface {p1}, Lgx$p;->a()Lgx$z;

    move-result-object v1

    .line 2166
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->k:Lcom/google/common/cache/Weigher;

    invoke-interface {v0, p2, p3}, Lcom/google/common/cache/Weigher;->weigh(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 2167
    if-ltz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v3, "Weights must be non-negative"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 2169
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->i:Lgx$s;

    .line 2170
    invoke-virtual {v0, p0, p1, p3, v2}, Lgx$s;->a(Lgx$q;Lgx$p;Ljava/lang/Object;I)Lgx$z;

    move-result-object v0

    .line 2171
    invoke-interface {p1, v0}, Lgx$p;->a(Lgx$z;)V

    .line 2172
    invoke-virtual {p0, p1, v2, p4, p5}, Lgx$q;->a(Lgx$p;IJ)V

    .line 2173
    invoke-interface {v1, p3}, Lgx$z;->a(Ljava/lang/Object;)V

    .line 2174
    return-void

    .line 2167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$z",
            "<TK;TV;>;",
            "Lcom/google/common/cache/RemovalCause;",
            ")V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2649
    iget-wide v0, p0, Lgx$q;->c:J

    invoke-interface {p3}, Lgx$z;->a()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lgx$q;->c:J

    .line 2650
    invoke-virtual {p4}, Lcom/google/common/cache/RemovalCause;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2651
    iget-object v0, p0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordEviction()V

    .line 2653
    :cond_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->o:Ljava/util/Queue;

    sget-object v1, Lgx;->v:Ljava/util/Queue;

    if-eq v0, v1, :cond_1

    .line 2654
    invoke-interface {p3}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2655
    invoke-static {p1, v0, p4}, Lcom/google/common/cache/RemovalNotification;->create(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/cache/RemovalCause;)Lcom/google/common/cache/RemovalNotification;

    move-result-object v0

    .line 2656
    iget-object v1, p0, Lgx$q;->a:Lgx;

    iget-object v1, v1, Lgx;->o:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2658
    :cond_1
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2124
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgx$q;->e:I

    .line 2125
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lgx$q;->e:I

    int-to-long v0, v0

    iget-wide v2, p0, Lgx$q;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2127
    iget v0, p0, Lgx$q;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->e:I

    .line 2129
    :cond_0
    iput-object p1, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2130
    return-void
.end method

.method a(Lgx$p;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 3308
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3310
    :try_start_0
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3311
    iget-object v7, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3312
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3313
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx$p;

    move-object v2, v1

    .line 3315
    :goto_0
    if-eqz v2, :cond_1

    .line 3316
    if-ne v2, p1, :cond_0

    .line 3317
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3319
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v5

    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    .line 3318
    invoke-virtual/range {v0 .. v6}, Lgx$q;->a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;

    move-result-object v0

    .line 3320
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3321
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3322
    iput v1, p0, Lgx$q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3323
    const/4 v0, 0x1

    .line 3329
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3330
    invoke-virtual {p0}, Lgx$q;->m()V

    :goto_1
    return v0

    .line 3315
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3327
    :cond_1
    const/4 v0, 0x0

    .line 3329
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3330
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 3329
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3330
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method a(Lgx$p;ILcom/google/common/cache/RemovalCause;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;I",
            "Lcom/google/common/cache/RemovalCause;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3406
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3407
    iget-object v7, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3408
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    .line 3409
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx$p;

    move-object v2, v1

    .line 3411
    :goto_0
    if-eqz v2, :cond_1

    .line 3412
    if-ne v2, p1, :cond_0

    .line 3413
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3415
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v5

    move-object v0, p0

    move v4, p2

    move-object v6, p3

    .line 3414
    invoke-virtual/range {v0 .. v6}, Lgx$q;->a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;

    move-result-object v0

    .line 3416
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3417
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3418
    iput v1, p0, Lgx$q;->b:I

    .line 3419
    const/4 v0, 0x1

    .line 3423
    :goto_1
    return v0

    .line 3411
    :cond_0
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;

    move-result-object v2

    goto :goto_0

    .line 3423
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Ljava/lang/Object;ILgx$k;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$k",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3373
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3375
    :try_start_0
    iget-object v3, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3376
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 3377
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    move-object v2, v0

    .line 3379
    :goto_0
    if-eqz v2, :cond_3

    .line 3380
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v5

    .line 3381
    invoke-interface {v2}, Lgx$p;->c()I

    move-result v6

    if-ne v6, p2, :cond_2

    if-eqz v5, :cond_2

    iget-object v6, p0, Lgx$q;->a:Lgx;

    iget-object v6, v6, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 3382
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3383
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v5

    .line 3384
    if-ne v5, p3, :cond_1

    .line 3385
    invoke-virtual {p3}, Lgx$k;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3386
    invoke-virtual {p3}, Lgx$k;->g()Lgx$z;

    move-result-object v0

    invoke-interface {v2, v0}, Lgx$p;->a(Lgx$z;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3391
    :goto_1
    const/4 v0, 0x1

    .line 3399
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3400
    invoke-virtual {p0}, Lgx$q;->m()V

    :goto_2
    return v0

    .line 3388
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0, v2}, Lgx$q;->b(Lgx$p;Lgx$p;)Lgx$p;

    move-result-object v0

    .line 3389
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3399
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3400
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0

    .line 3399
    :cond_1
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3400
    invoke-virtual {p0}, Lgx$q;->m()V

    move v0, v1

    goto :goto_2

    .line 3379
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3399
    :cond_3
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3400
    invoke-virtual {p0}, Lgx$q;->m()V

    move v0, v1

    goto :goto_2
.end method

.method a(Ljava/lang/Object;ILgx$k;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$k",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3128
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3130
    :try_start_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v4

    .line 3131
    invoke-virtual {p0, v4, v5}, Lgx$q;->c(J)V

    .line 3133
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v7, v0, 0x1

    .line 3134
    iget v0, p0, Lgx$q;->e:I

    if-le v7, v0, :cond_0

    .line 3135
    invoke-virtual {p0}, Lgx$q;->j()V

    .line 3136
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v7, v0, 0x1

    .line 3139
    :cond_0
    iget-object v8, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3140
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3141
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    move-object v1, v0

    .line 3143
    :goto_0
    if-eqz v1, :cond_6

    .line 3144
    invoke-interface {v1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3145
    invoke-interface {v1}, Lgx$p;->c()I

    move-result v10

    if-ne v10, p2, :cond_5

    if-eqz v3, :cond_5

    iget-object v10, p0, Lgx$q;->a:Lgx;

    iget-object v10, v10, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 3146
    invoke-virtual {v10, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3147
    invoke-interface {v1}, Lgx$p;->a()Lgx$z;

    move-result-object v0

    .line 3148
    invoke-interface {v0}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v3

    .line 3151
    if-eq p3, v0, :cond_1

    if-nez v3, :cond_4

    sget-object v8, Lgx;->u:Lgx$z;

    if-eq v0, v8, :cond_4

    .line 3153
    :cond_1
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3154
    invoke-virtual {p3}, Lgx$k;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3155
    if-nez v3, :cond_3

    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 3157
    :goto_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    .line 3158
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    :cond_2
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3160
    invoke-virtual/range {v0 .. v5}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3161
    iput v7, p0, Lgx$q;->b:I

    .line 3162
    invoke-virtual {p0, v1}, Lgx$q;->a(Lgx$p;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3181
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3182
    invoke-virtual {p0}, Lgx$q;->m()V

    move v0, v6

    :goto_2
    return v0

    .line 3155
    :cond_3
    :try_start_1
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    goto :goto_1

    .line 3167
    :cond_4
    new-instance v0, Lgx$ah;

    const/4 v1, 0x0

    invoke-direct {v0, p4, v1}, Lgx$ah;-><init>(Ljava/lang/Object;I)V

    .line 3168
    sget-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v0, v1}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3181
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3182
    invoke-virtual {p0}, Lgx$q;->m()V

    move v0, v2

    goto :goto_2

    .line 3143
    :cond_5
    :try_start_2
    invoke-interface {v1}, Lgx$p;->b()Lgx$p;

    move-result-object v1

    goto :goto_0

    .line 3173
    :cond_6
    iget v1, p0, Lgx$q;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgx$q;->d:I

    .line 3174
    invoke-virtual {p0, p1, p2, v0}, Lgx$q;->a(Ljava/lang/Object;ILgx$p;)Lgx$p;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    .line 3175
    invoke-virtual/range {v0 .. v5}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3176
    invoke-virtual {v8, v9, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3177
    iput v7, p0, Lgx$q;->b:I

    .line 3178
    invoke-virtual {p0, v1}, Lgx$q;->a(Lgx$p;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3181
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3182
    invoke-virtual {p0}, Lgx$q;->m()V

    move v0, v6

    goto :goto_2

    .line 3181
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3182
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILgx$z;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$z",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3338
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3340
    :try_start_0
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3341
    iget-object v7, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3342
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    .line 3343
    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx$p;

    move-object v2, v1

    .line 3345
    :goto_0
    if-eqz v2, :cond_3

    .line 3346
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3347
    invoke-interface {v2}, Lgx$p;->c()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lgx$q;->a:Lgx;

    iget-object v4, v4, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 3348
    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3349
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v4

    .line 3350
    if-ne v4, p3, :cond_1

    .line 3351
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3352
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lgx$q;->a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;

    move-result-object v0

    .line 3354
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3355
    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3356
    iput v1, p0, Lgx$q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3357
    const/4 v0, 0x1

    .line 3365
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3366
    invoke-virtual {p0}, Lgx$q;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3367
    invoke-virtual {p0}, Lgx$q;->m()V

    :cond_0
    :goto_1
    return v0

    .line 3365
    :cond_1
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3366
    invoke-virtual {p0}, Lgx$q;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3367
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 3345
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3365
    :cond_3
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3366
    invoke-virtual {p0}, Lgx$q;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3367
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 3365
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3366
    invoke-virtual {p0}, Lgx$q;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3367
    invoke-virtual {p0}, Lgx$q;->m()V

    :cond_4
    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 2983
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 2985
    :try_start_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v8

    .line 2986
    invoke-virtual {p0, v8, v9}, Lgx$q;->c(J)V

    .line 2988
    iget-object v7, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2989
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    .line 2990
    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx$p;

    move-object v2, v1

    .line 2992
    :goto_0
    if-eqz v2, :cond_4

    .line 2993
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    .line 2994
    invoke-interface {v2}, Lgx$p;->c()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 2995
    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2996
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v5

    .line 2997
    invoke-interface {v5}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2998
    if-nez v0, :cond_1

    .line 2999
    invoke-interface {v5}, Lgx$z;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3001
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3002
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3003
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lgx$q;->a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;

    move-result-object v0

    .line 3005
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3006
    invoke-virtual {v7, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3007
    iput v1, p0, Lgx$q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3009
    :cond_0
    const/4 v0, 0x0

    .line 3029
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3030
    invoke-virtual {p0}, Lgx$q;->m()V

    :goto_1
    return v0

    .line 3012
    :cond_1
    :try_start_1
    iget-object v1, p0, Lgx$q;->a:Lgx;

    iget-object v1, v1, Lgx;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v1, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3013
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3014
    sget-object v0, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, p2, v5, v0}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-wide v5, v8

    .line 3015
    invoke-virtual/range {v1 .. v6}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 3016
    invoke-virtual {p0, v2}, Lgx$q;->a(Lgx$p;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3017
    const/4 v0, 0x1

    .line 3029
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3030
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 3021
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2, v8, v9}, Lgx$q;->b(Lgx$p;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3022
    const/4 v0, 0x0

    .line 3029
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3030
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 2992
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto/16 :goto_0

    .line 3027
    :cond_4
    const/4 v0, 0x0

    .line 3029
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3030
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_1

    .line 3029
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3030
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method b(Ljava/lang/Object;ILgx$k;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lgx$k",
            "<TK;TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2329
    invoke-virtual {p3, p1, p4}, Lgx$k;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 2330
    new-instance v0, Lgx$q$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lgx$q$1;-><init>(Lgx$q;Ljava/lang/Object;ILgx$k;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 2341
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 2330
    invoke-interface {v5, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 2342
    return-object v5
.end method

.method b(I)Lgx$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2707
    iget-object v0, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2708
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    return-object v0
.end method

.method b(Lgx$p;Lgx$p;)Lgx$p;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3282
    iget v2, p0, Lgx$q;->b:I

    .line 3283
    invoke-interface {p2}, Lgx$p;->b()Lgx$p;

    move-result-object v1

    .line 3284
    :goto_0
    if-eq p1, p2, :cond_1

    .line 3285
    invoke-virtual {p0, p1, v1}, Lgx$q;->a(Lgx$p;Lgx$p;)Lgx$p;

    move-result-object v0

    .line 3286
    if-eqz v0, :cond_0

    move v1, v2

    .line 3284
    :goto_1
    invoke-interface {p1}, Lgx$p;->b()Lgx$p;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 3289
    :cond_0
    invoke-virtual {p0, p1}, Lgx$q;->b(Lgx$p;)V

    .line 3290
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 3293
    :cond_1
    iput v2, p0, Lgx$q;->b:I

    .line 3294
    return-object v1
.end method

.method b(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2771
    :try_start_0
    iget v1, p0, Lgx$q;->b:I

    if-eqz v1, :cond_2

    .line 2772
    iget-object v1, p0, Lgx$q;->a:Lgx;

    iget-object v1, v1, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v6

    .line 2773
    invoke-virtual {p0, p1, p2, v6, v7}, Lgx$q;->a(Ljava/lang/Object;IJ)Lgx$p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2774
    if-nez v2, :cond_0

    .line 2787
    invoke-virtual {p0}, Lgx$q;->l()V

    :goto_0
    return-object v0

    .line 2778
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v1

    invoke-interface {v1}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v5

    .line 2779
    if-eqz v5, :cond_1

    .line 2780
    invoke-virtual {p0, v2, v6, v7}, Lgx$q;->a(Lgx$p;J)V

    .line 2781
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v8, v0, Lgx;->t:Lcom/google/common/cache/CacheLoader;

    move-object v1, p0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;ILjava/lang/Object;JLcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 2787
    invoke-virtual {p0}, Lgx$q;->l()V

    goto :goto_0

    .line 2783
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lgx$q;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2787
    :cond_2
    invoke-virtual {p0}, Lgx$q;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->l()V

    throw v0
.end method

.method b(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 2218
    const/4 v7, 0x0

    .line 2219
    const/4 v5, 0x0

    .line 2220
    const/4 v8, 0x1

    .line 2222
    invoke-virtual/range {p0 .. p0}, Lgx$q;->lock()V

    .line 2225
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lgx$q;->a:Lgx;

    iget-object v4, v4, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v10

    .line 2226
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lgx$q;->c(J)V

    .line 2228
    move-object/from16 v0, p0

    iget v4, v0, Lgx$q;->b:I

    add-int/lit8 v12, v4, -0x1

    .line 2229
    move-object/from16 v0, p0

    iget-object v13, v0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2230
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v14, p2, v4

    .line 2231
    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgx$p;

    move-object v6, v4

    .line 2233
    :goto_0
    if-eqz v6, :cond_7

    .line 2234
    invoke-interface {v6}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v15

    .line 2235
    invoke-interface {v6}, Lgx$p;->c()I

    move-result v9

    move/from16 v0, p2

    if-ne v9, v0, :cond_3

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lgx$q;->a:Lgx;

    iget-object v9, v9, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 2236
    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2237
    invoke-interface {v6}, Lgx$p;->a()Lgx$z;

    move-result-object v9

    .line 2238
    invoke-interface {v9}, Lgx$z;->c()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2239
    const/4 v7, 0x0

    move-object v8, v9

    .line 2264
    :goto_1
    if-eqz v7, :cond_6

    .line 2265
    new-instance v5, Lgx$k;

    invoke-direct {v5}, Lgx$k;-><init>()V

    .line 2267
    if-nez v6, :cond_4

    .line 2268
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lgx$q;->a(Ljava/lang/Object;ILgx$p;)Lgx$p;

    move-result-object v4

    .line 2269
    invoke-interface {v4, v5}, Lgx$p;->a(Lgx$z;)V

    .line 2270
    invoke-virtual {v13, v14, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    .line 2276
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lgx$q;->unlock()V

    .line 2277
    invoke-virtual/range {p0 .. p0}, Lgx$q;->m()V

    .line 2280
    if-eqz v7, :cond_5

    .line 2285
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2286
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v4, v3}, Lgx$q;->a(Ljava/lang/Object;ILgx$k;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2289
    move-object/from16 v0, p0

    iget-object v5, v0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 2293
    :goto_3
    return-object v4

    .line 2241
    :cond_0
    :try_start_3
    invoke-interface {v9}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2242
    if-nez v7, :cond_1

    .line 2243
    sget-object v7, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V

    .line 2256
    :goto_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lgx$q;->l:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2257
    move-object/from16 v0, p0

    iget-object v7, v0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2258
    move-object/from16 v0, p0

    iput v12, v0, Lgx$q;->b:I

    move v7, v8

    move-object v8, v9

    .line 2260
    goto :goto_1

    .line 2244
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lgx$q;->a:Lgx;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v10, v11}, Lgx;->b(Lgx$p;J)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 2247
    sget-object v7, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v15, v1, v9, v7}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2276
    :catchall_0
    move-exception v4

    invoke-virtual/range {p0 .. p0}, Lgx$q;->unlock()V

    .line 2277
    invoke-virtual/range {p0 .. p0}, Lgx$q;->m()V

    throw v4

    .line 2249
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v11}, Lgx$q;->b(Lgx$p;J)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2276
    invoke-virtual/range {p0 .. p0}, Lgx$q;->unlock()V

    .line 2277
    invoke-virtual/range {p0 .. p0}, Lgx$q;->m()V

    move-object v4, v7

    goto :goto_3

    .line 2233
    :cond_3
    :try_start_5
    invoke-interface {v6}, Lgx$p;->b()Lgx$p;

    move-result-object v6

    goto/16 :goto_0

    .line 2272
    :cond_4
    invoke-interface {v6, v5}, Lgx$p;->a(Lgx$z;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    .line 2287
    :catchall_1
    move-exception v4

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2289
    :catchall_2
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v4

    .line 2293
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1, v8}, Lgx$q;->a(Lgx$p;Ljava/lang/Object;Lgx$z;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v5

    move-object v5, v6

    goto/16 :goto_2

    :cond_7
    move/from16 v17, v8

    move-object v8, v7

    move/from16 v7, v17

    goto/16 :goto_1
.end method

.method b()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2479
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2480
    invoke-virtual {p0}, Lgx$q;->c()V

    .line 2482
    :cond_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2483
    invoke-virtual {p0}, Lgx$q;->d()V

    .line 2485
    :cond_1
    return-void
.end method

.method b(J)V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2624
    invoke-virtual {p0}, Lgx$q;->h()V

    .line 2627
    :cond_0
    iget-object v0, p0, Lgx$q;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v1, v0, p1, p2}, Lgx;->b(Lgx$p;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2628
    invoke-interface {v0}, Lgx$p;->c()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lgx$q;->a(Lgx$p;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2629
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2632
    :cond_1
    iget-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v1, v0, p1, p2}, Lgx;->b(Lgx$p;J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2633
    invoke-interface {v0}, Lgx$p;->c()I

    move-result v1

    sget-object v2, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v1, v2}, Lgx$q;->a(Lgx$p;ILcom/google/common/cache/RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2634
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2637
    :cond_2
    return-void
.end method

.method b(Lgx$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3299
    sget-object v0, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, p1, v0}, Lgx$q;->a(Lgx$p;Lcom/google/common/cache/RemovalCause;)V

    .line 3300
    iget-object v0, p0, Lgx$q;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3301
    iget-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 3302
    return-void
.end method

.method b(Lgx$p;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2560
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2561
    invoke-interface {p1, p2, p3}, Lgx$p;->a(J)V

    .line 2563
    :cond_0
    iget-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2564
    return-void
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 3187
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3189
    :try_start_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3190
    invoke-virtual {p0, v0, v1}, Lgx$q;->c(J)V

    .line 3192
    iget v0, p0, Lgx$q;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3193
    iget-object v8, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3194
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v9, p2, v0

    .line 3195
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx$p;

    move-object v2, v1

    .line 3197
    :goto_0
    if-eqz v2, :cond_4

    .line 3198
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3199
    invoke-interface {v2}, Lgx$p;->c()I

    move-result v0

    if-ne v0, p2, :cond_3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 3200
    invoke-virtual {v0, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3201
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v5

    .line 3202
    invoke-interface {v5}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3205
    iget-object v4, p0, Lgx$q;->a:Lgx;

    iget-object v4, v4, Lgx;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v4, p3, v0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3206
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3214
    :goto_1
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    move-object v0, p0

    move v4, p2

    .line 3215
    invoke-virtual/range {v0 .. v6}, Lgx$q;->a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;

    move-result-object v0

    .line 3217
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3218
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3219
    iput v1, p0, Lgx$q;->b:I

    .line 3220
    sget-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v0, :cond_2

    const/4 v0, 0x1

    .line 3226
    :goto_2
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3227
    invoke-virtual {p0}, Lgx$q;->m()V

    move v7, v0

    :goto_3
    return v7

    .line 3207
    :cond_0
    if-nez v0, :cond_1

    :try_start_1
    invoke-interface {v5}, Lgx$z;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3208
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3226
    :cond_1
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3227
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_3

    :cond_2
    move v0, v7

    .line 3220
    goto :goto_2

    .line 3197
    :cond_3
    :try_start_2
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3226
    :cond_4
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3227
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_3

    .line 3226
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3227
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method c(Lgx$p;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2751
    invoke-interface {p1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2752
    invoke-virtual {p0}, Lgx$q;->a()V

    .line 2765
    :goto_0
    return-object v0

    .line 2755
    :cond_0
    invoke-interface {p1}, Lgx$p;->a()Lgx$z;

    move-result-object v1

    invoke-interface {v1}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v1

    .line 2756
    if-nez v1, :cond_1

    .line 2757
    invoke-virtual {p0}, Lgx$q;->a()V

    goto :goto_0

    .line 2761
    :cond_1
    iget-object v2, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v2, p1, p2, p3}, Lgx;->b(Lgx$p;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2762
    invoke-virtual {p0, p2, p3}, Lgx$q;->a(J)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 2765
    goto :goto_0
.end method

.method c()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2490
    const/4 v0, 0x0

    move v1, v0

    .line 2491
    :goto_0
    iget-object v0, p0, Lgx$q;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2493
    check-cast v0, Lgx$p;

    .line 2494
    iget-object v2, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v2, v0}, Lgx;->a(Lgx$p;)V

    .line 2495
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2499
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2498
    goto :goto_0
.end method

.method c(J)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3444
    invoke-virtual {p0, p1, p2}, Lgx$q;->d(J)V

    .line 3445
    return-void
.end method

.method c(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2793
    :try_start_0
    iget v1, p0, Lgx$q;->b:I

    if-eqz v1, :cond_2

    .line 2794
    iget-object v1, p0, Lgx$q;->a:Lgx;

    iget-object v1, v1, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2795
    invoke-virtual {p0, p1, p2, v2, v3}, Lgx$q;->a(Ljava/lang/Object;IJ)Lgx$p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2796
    if-nez v1, :cond_0

    .line 2804
    invoke-virtual {p0}, Lgx$q;->l()V

    :goto_0
    return v0

    .line 2799
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lgx$p;->a()Lgx$z;

    move-result-object v1

    invoke-interface {v1}, Lgx$z;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2804
    :cond_1
    invoke-virtual {p0}, Lgx$q;->l()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lgx$q;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->l()V

    throw v0
.end method

.method d(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3082
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3084
    :try_start_0
    iget-object v1, p0, Lgx$q;->a:Lgx;

    iget-object v1, v1, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v1}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 3085
    invoke-virtual {p0, v2, v3}, Lgx$q;->c(J)V

    .line 3087
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3088
    iget-object v8, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3089
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v9, p2, v1

    .line 3090
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgx$p;

    move-object v2, v1

    .line 3092
    :goto_0
    if-eqz v2, :cond_3

    .line 3093
    invoke-interface {v2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v3

    .line 3094
    invoke-interface {v2}, Lgx$p;->c()I

    move-result v4

    if-ne v4, p2, :cond_2

    if-eqz v3, :cond_2

    iget-object v4, p0, Lgx$q;->a:Lgx;

    iget-object v4, v4, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 3095
    invoke-virtual {v4, p1, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3096
    invoke-interface {v2}, Lgx$p;->a()Lgx$z;

    move-result-object v5

    .line 3097
    invoke-interface {v5}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v7

    .line 3100
    if-eqz v7, :cond_0

    .line 3101
    sget-object v6, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 3109
    :goto_1
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    move-object v0, p0

    move v4, p2

    .line 3110
    invoke-virtual/range {v0 .. v6}, Lgx$q;->a(Lgx$p;Lgx$p;Ljava/lang/Object;ILgx$z;Lcom/google/common/cache/RemovalCause;)Lgx$p;

    move-result-object v0

    .line 3112
    iget v1, p0, Lgx$q;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3113
    invoke-virtual {v8, v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3114
    iput v1, p0, Lgx$q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3121
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3122
    invoke-virtual {p0}, Lgx$q;->m()V

    move-object v0, v7

    :goto_2
    return-object v0

    .line 3102
    :cond_0
    :try_start_1
    invoke-interface {v5}, Lgx$z;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3103
    sget-object v6, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3121
    :cond_1
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3122
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_2

    .line 3092
    :cond_2
    :try_start_2
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 3121
    :cond_3
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3122
    invoke-virtual {p0}, Lgx$q;->m()V

    goto :goto_2

    .line 3121
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3122
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method d()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2504
    const/4 v0, 0x0

    move v1, v0

    .line 2505
    :goto_0
    iget-object v0, p0, Lgx$q;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2507
    check-cast v0, Lgx$z;

    .line 2508
    iget-object v2, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v2, v0}, Lgx;->a(Lgx$z;)V

    .line 2509
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2513
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2512
    goto :goto_0
.end method

.method d(J)V
    .locals 3

    .prologue
    .line 3461
    invoke-virtual {p0}, Lgx$q;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3463
    :try_start_0
    invoke-virtual {p0}, Lgx$q;->b()V

    .line 3464
    invoke-virtual {p0, p1, p2}, Lgx$q;->b(J)V

    .line 3465
    iget-object v0, p0, Lgx$q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3467
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3470
    :cond_0
    return-void

    .line 3467
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    throw v0
.end method

.method e()V
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    invoke-virtual {p0}, Lgx$q;->f()V

    .line 2522
    :cond_0
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2523
    invoke-virtual {p0}, Lgx$q;->g()V

    .line 2525
    :cond_1
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 2528
    :cond_0
    iget-object v0, p0, Lgx$q;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2529
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 2532
    :cond_0
    iget-object v0, p0, Lgx$q;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2533
    return-void
.end method

.method h()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2595
    :cond_0
    :goto_0
    iget-object v0, p0, Lgx$q;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    if-eqz v0, :cond_1

    .line 2600
    iget-object v1, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2601
    iget-object v1, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2604
    :cond_1
    return-void
.end method

.method i()Lgx$p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2693
    iget-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    .line 2694
    invoke-interface {v0}, Lgx$p;->a()Lgx$z;

    move-result-object v2

    invoke-interface {v2}, Lgx$z;->a()I

    move-result v2

    .line 2695
    if-lez v2, :cond_0

    .line 2696
    return-object v0

    .line 2699
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method j()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2915
    iget-object v7, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2916
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2917
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v8, v0, :cond_0

    .line 2980
    :goto_0
    return-void

    .line 2931
    :cond_0
    iget v5, p0, Lgx$q;->b:I

    .line 2932
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Lgx$q;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2933
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lgx$q;->e:I

    .line 2934
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2935
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2938
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    .line 2940
    if-eqz v0, :cond_7

    .line 2941
    invoke-interface {v0}, Lgx$p;->b()Lgx$p;

    move-result-object v3

    .line 2942
    invoke-interface {v0}, Lgx$p;->c()I

    move-result v1

    and-int v2, v1, v10

    .line 2945
    if-nez v3, :cond_2

    .line 2946
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2935
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 2953
    :goto_3
    if-eqz v3, :cond_3

    .line 2954
    invoke-interface {v3}, Lgx$p;->c()I

    move-result v1

    and-int/2addr v1, v10

    .line 2955
    if-eq v1, v2, :cond_6

    move-object v2, v3

    .line 2953
    :goto_4
    invoke-interface {v3}, Lgx$p;->b()Lgx$p;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 2961
    :cond_3
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2964
    :goto_5
    if-eq v2, v4, :cond_1

    .line 2965
    invoke-interface {v2}, Lgx$p;->c()I

    move-result v0

    and-int v3, v0, v10

    .line 2966
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    .line 2967
    invoke-virtual {p0, v2, v0}, Lgx$q;->a(Lgx$p;Lgx$p;)Lgx$p;

    move-result-object v0

    .line 2968
    if-eqz v0, :cond_4

    .line 2969
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 2964
    :goto_6
    invoke-interface {v2}, Lgx$p;->b()Lgx$p;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5

    .line 2971
    :cond_4
    invoke-virtual {p0, v2}, Lgx$q;->b(Lgx$p;)V

    .line 2972
    add-int/lit8 v0, v1, -0x1

    goto :goto_6

    .line 2978
    :cond_5
    iput-object v9, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2979
    iput v5, p0, Lgx$q;->b:I

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v4

    goto :goto_4

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method k()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3232
    iget v0, p0, Lgx$q;->b:I

    if-eqz v0, :cond_4

    .line 3233
    invoke-virtual {p0}, Lgx$q;->lock()V

    .line 3235
    :try_start_0
    iget-object v3, p0, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v2, v1

    .line 3236
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 3237
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgx$p;

    :goto_1
    if-eqz v0, :cond_1

    .line 3239
    invoke-interface {v0}, Lgx$p;->a()Lgx$z;

    move-result-object v4

    invoke-interface {v4}, Lgx$z;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3240
    sget-object v4, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    invoke-virtual {p0, v0, v4}, Lgx$q;->a(Lgx$p;Lcom/google/common/cache/RemovalCause;)V

    .line 3237
    :cond_0
    invoke-interface {v0}, Lgx$p;->b()Lgx$p;

    move-result-object v0

    goto :goto_1

    .line 3236
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 3244
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3245
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3244
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3247
    :cond_3
    invoke-virtual {p0}, Lgx$q;->e()V

    .line 3248
    iget-object v0, p0, Lgx$q;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3249
    iget-object v0, p0, Lgx$q;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 3250
    iget-object v0, p0, Lgx$q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3252
    iget v0, p0, Lgx$q;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgx$q;->d:I

    .line 3253
    const/4 v0, 0x0

    iput v0, p0, Lgx$q;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3255
    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3256
    invoke-virtual {p0}, Lgx$q;->m()V

    .line 3259
    :cond_4
    return-void

    .line 3255
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lgx$q;->unlock()V

    .line 3256
    invoke-virtual {p0}, Lgx$q;->m()V

    throw v0
.end method

.method l()V
    .locals 1

    .prologue
    .line 3431
    iget-object v0, p0, Lgx$q;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3432
    invoke-virtual {p0}, Lgx$q;->n()V

    .line 3434
    :cond_0
    return-void
.end method

.method m()V
    .locals 0

    .prologue
    .line 3451
    invoke-virtual {p0}, Lgx$q;->o()V

    .line 3452
    return-void
.end method

.method n()V
    .locals 2

    .prologue
    .line 3455
    iget-object v0, p0, Lgx$q;->a:Lgx;

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    .line 3456
    invoke-virtual {p0, v0, v1}, Lgx$q;->d(J)V

    .line 3457
    invoke-virtual {p0}, Lgx$q;->o()V

    .line 3458
    return-void
.end method

.method o()V
    .locals 1

    .prologue
    .line 3474
    invoke-virtual {p0}, Lgx$q;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3475
    iget-object v0, p0, Lgx$q;->a:Lgx;

    invoke-virtual {v0}, Lgx;->r()V

    .line 3477
    :cond_0
    return-void
.end method
