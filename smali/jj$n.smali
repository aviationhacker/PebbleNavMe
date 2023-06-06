.class Ljj$n;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
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
.field final a:Ljj;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:I

.field d:I

.field volatile e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljj$l",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljj$l",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field final k:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljj$l",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljj$l",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljj;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2097
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 2081
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Ljj$n;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2098
    iput-object p1, p0, Ljj$n;->a:Ljj;

    .line 2099
    iput p3, p0, Ljj$n;->f:I

    .line 2100
    invoke-virtual {p0, p2}, Ljj$n;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$n;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    .line 2102
    invoke-virtual {p1}, Ljj;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_0
    iput-object v0, p0, Ljj$n;->g:Ljava/lang/ref/ReferenceQueue;

    .line 2104
    invoke-virtual {p1}, Ljj;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_0
    iput-object v1, p0, Ljj$n;->h:Ljava/lang/ref/ReferenceQueue;

    .line 2107
    invoke-virtual {p1}, Ljj;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljj;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 2109
    :goto_1
    iput-object v0, p0, Ljj$n;->i:Ljava/util/Queue;

    .line 2112
    invoke-virtual {p1}, Ljj;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljj$f;

    invoke-direct {v0}, Ljj$f;-><init>()V

    .line 2114
    :goto_2
    iput-object v0, p0, Ljj$n;->k:Ljava/util/Queue;

    .line 2117
    invoke-virtual {p1}, Ljj;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljj$g;

    invoke-direct {v0}, Ljj$g;-><init>()V

    .line 2119
    :goto_3
    iput-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    .line 2120
    return-void

    :cond_2
    move-object v0, v1

    .line 2102
    goto :goto_0

    .line 2109
    :cond_3
    invoke-static {}, Ljj;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_1

    .line 2114
    :cond_4
    invoke-static {}, Ljj;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_2

    .line 2119
    :cond_5
    invoke-static {}, Ljj;->i()Ljava/util/Queue;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2698
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2700
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->o()V

    .line 2702
    iget-object v4, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2703
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2704
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v3, v0

    .line 2706
    :goto_0
    if-eqz v3, :cond_3

    .line 2707
    invoke-interface {v3}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2708
    invoke-interface {v3}, Ljj$l;->c()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Ljj$n;->a:Ljj;

    iget-object v2, v2, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 2710
    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2713
    invoke-interface {v3}, Ljj$l;->a()Ljj$x;

    move-result-object v7

    .line 2714
    invoke-interface {v7}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2715
    if-nez v2, :cond_1

    .line 2716
    invoke-virtual {p0, v7}, Ljj$n;->a(Ljj$x;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2717
    iget v7, p0, Ljj$n;->b:I

    add-int/lit8 v7, v7, -0x1

    .line 2718
    iget v7, p0, Ljj$n;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljj$n;->c:I

    .line 2719
    sget-object v7, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, v6, p2, v2, v7}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2720
    invoke-virtual {p0, v0, v3}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2721
    iget v2, p0, Ljj$n;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2722
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2723
    iput v2, p0, Ljj$n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2737
    :cond_0
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2738
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v1

    :goto_1
    return-object v0

    .line 2728
    :cond_1
    :try_start_1
    iget v0, p0, Ljj$n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$n;->c:I

    .line 2729
    sget-object v0, Lcom/google/common/collect/MapMaker$d;->b:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, p1, p2, v2, v0}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2730
    invoke-virtual {p0, v3, p3}, Ljj$n;->a(Ljj$l;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2737
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2738
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v2

    goto :goto_1

    .line 2706
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljj$l;->b()Ljj$l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2737
    :cond_3
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2738
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v1

    goto :goto_1

    .line 2737
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2738
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2505
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2507
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->o()V

    .line 2509
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v2, v0, 0x1

    .line 2510
    iget v0, p0, Ljj$n;->d:I

    if-le v2, v0, :cond_0

    .line 2511
    invoke-virtual {p0}, Ljj$n;->l()V

    .line 2512
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v2, v0, 0x1

    .line 2515
    :cond_0
    iget-object v4, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2516
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2517
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v3, v0

    .line 2520
    :goto_0
    if-eqz v3, :cond_6

    .line 2521
    invoke-interface {v3}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2522
    invoke-interface {v3}, Ljj$l;->c()I

    move-result v7

    if-ne v7, p2, :cond_5

    if-eqz v6, :cond_5

    iget-object v7, p0, Ljj$n;->a:Ljj;

    iget-object v7, v7, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 2524
    invoke-virtual {v7, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2527
    invoke-interface {v3}, Ljj$l;->a()Ljj$x;

    move-result-object v4

    .line 2528
    invoke-interface {v4}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2530
    if-nez v0, :cond_3

    .line 2531
    iget v5, p0, Ljj$n;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljj$n;->c:I

    .line 2532
    invoke-virtual {p0, v3, p3}, Ljj$n;->a(Ljj$l;Ljava/lang/Object;)V

    .line 2533
    invoke-interface {v4}, Ljj$x;->b()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2534
    sget-object v2, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, p1, p2, v0, v2}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2535
    iget v2, p0, Ljj$n;->b:I

    .line 2539
    :cond_1
    :goto_1
    iput v2, p0, Ljj$n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2569
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v1

    :goto_2
    return-object v0

    .line 2536
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljj$n;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2537
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    .line 2541
    :cond_3
    if-eqz p4, :cond_4

    .line 2545
    invoke-virtual {p0, v3}, Ljj$n;->b(Ljj$l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2568
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2569
    invoke-virtual {p0}, Ljj$n;->p()V

    goto :goto_2

    .line 2549
    :cond_4
    :try_start_2
    iget v1, p0, Ljj$n;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljj$n;->c:I

    .line 2550
    sget-object v1, Lcom/google/common/collect/MapMaker$d;->b:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, p1, p2, v0, v1}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2551
    invoke-virtual {p0, v3, p3}, Ljj$n;->a(Ljj$l;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2568
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2569
    invoke-virtual {p0}, Ljj$n;->p()V

    goto :goto_2

    .line 2520
    :cond_5
    :try_start_3
    invoke-interface {v3}, Ljj$l;->b()Ljj$l;

    move-result-object v3

    goto :goto_0

    .line 2558
    :cond_6
    iget v3, p0, Ljj$n;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljj$n;->c:I

    .line 2559
    invoke-virtual {p0, p1, p2, v0}, Ljj$n;->a(Ljava/lang/Object;ILjj$l;)Ljj$l;

    move-result-object v0

    .line 2560
    invoke-virtual {p0, v0, p3}, Ljj$n;->a(Ljj$l;Ljava/lang/Object;)V

    .line 2561
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2562
    invoke-virtual {p0}, Ljj$n;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2563
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 2565
    :goto_3
    iput v0, p0, Ljj$n;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2568
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2569
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v1

    goto :goto_2

    .line 2568
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2569
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljj$l",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method a(Ljava/lang/Object;I)Ljj$l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2408
    iget v0, p0, Ljj$n;->b:I

    if-eqz v0, :cond_3

    .line 2409
    invoke-virtual {p0, p2}, Ljj$n;->b(I)Ljj$l;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 2410
    invoke-interface {v0}, Ljj$l;->c()I

    move-result v1

    if-eq v1, p2, :cond_1

    .line 2409
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljj$l;->b()Ljj$l;

    move-result-object v0

    goto :goto_0

    .line 2414
    :cond_1
    invoke-interface {v0}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v1

    .line 2415
    if-nez v1, :cond_2

    .line 2416
    invoke-virtual {p0}, Ljj$n;->a()V

    goto :goto_1

    .line 2420
    :cond_2
    iget-object v2, p0, Ljj$n;->a:Ljj;

    iget-object v2, v2, Ljj;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2426
    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method a(Ljava/lang/Object;ILjj$l;)Ljj$l;
    .locals 1
    .param p3    # Ljj$l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2137
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->o:Ljj$c;

    invoke-virtual {v0, p0, p1, p2, p3}, Ljj$c;->a(Ljj$n;Ljava/lang/Object;ILjj$l;)Ljj$l;

    move-result-object v0

    return-object v0
.end method

.method a(Ljj$l;Ljj$l;)Ljj$l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2146
    invoke-interface {p1}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2160
    :cond_0
    :goto_0
    return-object v0

    .line 2151
    :cond_1
    invoke-interface {p1}, Ljj$l;->a()Ljj$x;

    move-result-object v1

    .line 2152
    invoke-interface {v1}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2153
    if-nez v2, :cond_2

    invoke-interface {v1}, Ljj$x;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2158
    :cond_2
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->o:Ljj$c;

    invoke-virtual {v0, p0, p1, p2}, Ljj$c;->a(Ljj$n;Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2159
    iget-object v3, p0, Ljj$n;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Ljj$x;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljj$l;)Ljj$x;

    move-result-object v1

    invoke-interface {v0, v1}, Ljj$l;->a(Ljj$x;)V

    goto :goto_0
.end method

.method a()V
    .locals 1

    .prologue
    .line 2179
    invoke-virtual {p0}, Ljj$n;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2183
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2186
    :cond_0
    return-void

    .line 2183
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;",
            "Lcom/google/common/collect/MapMaker$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2370
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->m:Ljava/util/Queue;

    sget-object v1, Ljj;->r:Ljava/util/Queue;

    if-eq v0, v1, :cond_0

    .line 2371
    new-instance v0, Lcom/google/common/collect/MapMaker$f;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/common/collect/MapMaker$f;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2372
    iget-object v1, p0, Ljj$n;->a:Ljj;

    iget-object v1, v1, Ljj;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2374
    :cond_0
    return-void
.end method

.method a(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljj$l",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2127
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljj$n;->d:I

    .line 2128
    iget v0, p0, Ljj$n;->d:I

    iget v1, p0, Ljj$n;->f:I

    if-ne v0, v1, :cond_0

    .line 2130
    iget v0, p0, Ljj$n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$n;->d:I

    .line 2132
    :cond_0
    iput-object p1, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2133
    return-void
.end method

.method a(Ljj$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2260
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2261
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-wide v0, v0, Ljj;->k:J

    invoke-virtual {p0, p1, v0, v1}, Ljj$n;->a(Ljj$l;J)V

    .line 2263
    :cond_0
    iget-object v0, p0, Ljj$n;->i:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2264
    return-void
.end method

.method a(Ljj$l;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 2328
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Ljj$l;->a(J)V

    .line 2329
    return-void
.end method

.method a(Ljj$l;Lcom/google/common/collect/MapMaker$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2366
    invoke-interface {p1}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljj$l;->c()I

    move-result v1

    invoke-interface {p1}, Ljj$l;->a()Ljj$x;

    move-result-object v2

    invoke-interface {v2}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p2}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2367
    return-void
.end method

.method a(Ljj$l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2168
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->i:Ljj$q;

    invoke-virtual {v0, p0, p1, p2}, Ljj$q;->a(Ljj$n;Ljj$l;Ljava/lang/Object;)Ljj$x;

    move-result-object v0

    .line 2169
    invoke-interface {p1, v0}, Ljj$l;->a(Ljj$x;)V

    .line 2170
    invoke-virtual {p0, p1}, Ljj$n;->c(Ljj$l;)V

    .line 2171
    return-void
.end method

.method a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2646
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2648
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->o()V

    .line 2650
    iget-object v3, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2651
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2652
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v2, v0

    .line 2654
    :goto_0
    if-eqz v2, :cond_4

    .line 2655
    invoke-interface {v2}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2656
    invoke-interface {v2}, Ljj$l;->c()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Ljj$n;->a:Ljj;

    iget-object v6, v6, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 2658
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2661
    invoke-interface {v2}, Ljj$l;->a()Ljj$x;

    move-result-object v6

    .line 2662
    invoke-interface {v6}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2663
    if-nez v7, :cond_1

    .line 2664
    invoke-virtual {p0, v6}, Ljj$n;->a(Ljj$x;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2665
    iget v6, p0, Ljj$n;->b:I

    add-int/lit8 v6, v6, -0x1

    .line 2666
    iget v6, p0, Ljj$n;->c:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljj$n;->c:I

    .line 2667
    sget-object v6, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, v5, p2, v7, v6}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2668
    invoke-virtual {p0, v0, v2}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2669
    iget v2, p0, Ljj$n;->b:I

    add-int/lit8 v2, v2, -0x1

    .line 2670
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2671
    iput v2, p0, Ljj$n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2692
    :cond_0
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2693
    invoke-virtual {p0}, Ljj$n;->p()V

    move v0, v1

    :goto_1
    return v0

    .line 2676
    :cond_1
    :try_start_1
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2677
    iget v0, p0, Ljj$n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$n;->c:I

    .line 2678
    sget-object v0, Lcom/google/common/collect/MapMaker$d;->b:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, p1, p2, v7, v0}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2679
    invoke-virtual {p0, v2, p4}, Ljj$n;->a(Ljj$l;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2680
    const/4 v0, 0x1

    .line 2692
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2693
    invoke-virtual {p0}, Ljj$n;->p()V

    goto :goto_1

    .line 2684
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2}, Ljj$n;->b(Ljj$l;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2692
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2693
    invoke-virtual {p0}, Ljj$n;->p()V

    move v0, v1

    goto :goto_1

    .line 2654
    :cond_3
    :try_start_3
    invoke-interface {v2}, Ljj$l;->b()Ljj$l;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2692
    :cond_4
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2693
    invoke-virtual {p0}, Ljj$n;->p()V

    move v0, v1

    goto :goto_1

    .line 2692
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2693
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0
.end method

.method a(Ljava/lang/Object;ILjj$x;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljj$x",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2935
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2937
    :try_start_0
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 2938
    iget-object v3, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2939
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2940
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v2, v0

    .line 2942
    :goto_0
    if-eqz v2, :cond_4

    .line 2943
    invoke-interface {v2}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2944
    invoke-interface {v2}, Ljj$l;->c()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Ljj$n;->a:Ljj;

    iget-object v6, v6, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 2946
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2947
    invoke-interface {v2}, Ljj$l;->a()Ljj$x;

    move-result-object v5

    .line 2948
    if-ne v5, p3, :cond_1

    .line 2949
    iget v1, p0, Ljj$n;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljj$n;->c:I

    .line 2950
    invoke-interface {p3}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, p1, p2, v1, v5}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2951
    invoke-virtual {p0, v0, v2}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2952
    iget v1, p0, Ljj$n;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2953
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2954
    iput v1, p0, Ljj$n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2955
    const/4 v0, 0x1

    .line 2963
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2964
    invoke-virtual {p0}, Ljj$n;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2965
    invoke-virtual {p0}, Ljj$n;->p()V

    :cond_0
    :goto_1
    return v0

    .line 2963
    :cond_1
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2964
    invoke-virtual {p0}, Ljj$n;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2965
    invoke-virtual {p0}, Ljj$n;->p()V

    :cond_2
    move v0, v1

    goto :goto_1

    .line 2942
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljj$l;->b()Ljj$l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2963
    :cond_4
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2964
    invoke-virtual {p0}, Ljj$n;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2965
    invoke-virtual {p0}, Ljj$n;->p()V

    :cond_5
    move v0, v1

    goto :goto_1

    .line 2963
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2964
    invoke-virtual {p0}, Ljj$n;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2965
    invoke-virtual {p0}, Ljj$n;->p()V

    :cond_6
    throw v0
.end method

.method a(Ljj$l;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    .prologue
    .line 2904
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2906
    :try_start_0
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 2907
    iget-object v2, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2908
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2909
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v1, v0

    .line 2911
    :goto_0
    if-eqz v1, :cond_1

    .line 2912
    if-ne v1, p1, :cond_0

    .line 2913
    iget v4, p0, Ljj$n;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljj$n;->c:I

    .line 2915
    invoke-interface {v1}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljj$l;->a()Ljj$x;

    move-result-object v5

    invoke-interface {v5}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    .line 2914
    invoke-virtual {p0, v4, p2, v5, v6}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2916
    invoke-virtual {p0, v0, v1}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2917
    iget v1, p0, Ljj$n;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2918
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2919
    iput v1, p0, Ljj$n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2920
    const/4 v0, 0x1

    .line 2926
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2927
    invoke-virtual {p0}, Ljj$n;->p()V

    :goto_1
    return v0

    .line 2911
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljj$l;->b()Ljj$l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2924
    :cond_1
    const/4 v0, 0x0

    .line 2926
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2927
    invoke-virtual {p0}, Ljj$n;->p()V

    goto :goto_1

    .line 2926
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2927
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0
.end method

.method a(Ljj$l;ILcom/google/common/collect/MapMaker$d;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;I",
            "Lcom/google/common/collect/MapMaker$d;",
            ")Z"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3004
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 3005
    iget-object v2, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3006
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 3007
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v1, v0

    .line 3009
    :goto_0
    if-eqz v1, :cond_1

    .line 3010
    if-ne v1, p1, :cond_0

    .line 3011
    iget v4, p0, Ljj$n;->c:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljj$n;->c:I

    .line 3012
    invoke-interface {v1}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Ljj$l;->a()Ljj$x;

    move-result-object v5

    invoke-interface {v5}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, p2, v5, p3}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 3013
    invoke-virtual {p0, v0, v1}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 3014
    iget v1, p0, Ljj$n;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 3015
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3016
    iput v1, p0, Ljj$n;->b:I

    .line 3017
    const/4 v0, 0x1

    .line 3021
    :goto_1
    return v0

    .line 3009
    :cond_0
    invoke-interface {v1}, Ljj$l;->b()Ljj$l;

    move-result-object v1

    goto :goto_0

    .line 3021
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method a(Ljj$x;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3029
    invoke-interface {p1}, Ljj$x;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3032
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b(I)Ljj$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2401
    iget-object v0, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2402
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    return-object v0
.end method

.method b(Ljava/lang/Object;I)Ljj$l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2430
    invoke-virtual {p0, p1, p2}, Ljj$n;->a(Ljava/lang/Object;I)Ljj$l;

    move-result-object v1

    .line 2431
    if-nez v1, :cond_0

    .line 2437
    :goto_0
    return-object v0

    .line 2433
    :cond_0
    iget-object v2, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v2}, Ljj;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v2, v1}, Ljj;->c(Ljj$l;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2434
    invoke-virtual {p0}, Ljj$n;->i()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2437
    goto :goto_0
.end method

.method b(Ljj$l;Ljj$l;)Ljj$l;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2876
    iget-object v0, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2877
    iget-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2879
    iget v2, p0, Ljj$n;->b:I

    .line 2880
    invoke-interface {p2}, Ljj$l;->b()Ljj$l;

    move-result-object v1

    .line 2881
    :goto_0
    if-eq p1, p2, :cond_1

    .line 2882
    invoke-virtual {p0, p1, v1}, Ljj$n;->a(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2883
    if-eqz v0, :cond_0

    move v1, v2

    .line 2881
    :goto_1
    invoke-interface {p1}, Ljj$l;->b()Ljj$l;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2886
    :cond_0
    invoke-virtual {p0, p1}, Ljj$n;->d(Ljj$l;)V

    .line 2887
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 2890
    :cond_1
    iput v2, p0, Ljj$n;->b:I

    .line 2891
    return-object v1
.end method

.method b()V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2194
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    invoke-virtual {p0}, Ljj$n;->c()V

    .line 2197
    :cond_0
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2198
    invoke-virtual {p0}, Ljj$n;->d()V

    .line 2200
    :cond_1
    return-void
.end method

.method b(Ljj$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2275
    iget-object v0, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2276
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2277
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-wide v0, v0, Ljj;->k:J

    invoke-virtual {p0, p1, v0, v1}, Ljj$n;->a(Ljj$l;J)V

    .line 2278
    iget-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2280
    :cond_0
    return-void
.end method

.method b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2787
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2789
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->o()V

    .line 2791
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 2792
    iget-object v4, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2793
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2794
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v3, v0

    .line 2796
    :goto_0
    if-eqz v3, :cond_4

    .line 2797
    invoke-interface {v3}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2798
    invoke-interface {v3}, Ljj$l;->c()I

    move-result v2

    if-ne v2, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Ljj$n;->a:Ljj;

    iget-object v2, v2, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 2800
    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2801
    invoke-interface {v3}, Ljj$l;->a()Ljj$x;

    move-result-object v2

    .line 2802
    invoke-interface {v2}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2805
    iget-object v8, p0, Ljj$n;->a:Ljj;

    iget-object v8, v8, Ljj;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p3, v7}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2806
    sget-object v2, Lcom/google/common/collect/MapMaker$d;->a:Lcom/google/common/collect/MapMaker$d;

    .line 2813
    :goto_1
    iget v8, p0, Ljj$n;->c:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljj$n;->c:I

    .line 2814
    invoke-virtual {p0, v6, p2, v7, v2}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2815
    invoke-virtual {p0, v0, v3}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2816
    iget v3, p0, Ljj$n;->b:I

    add-int/lit8 v3, v3, -0x1

    .line 2817
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2818
    iput v3, p0, Ljj$n;->b:I

    .line 2819
    sget-object v0, Lcom/google/common/collect/MapMaker$d;->a:Lcom/google/common/collect/MapMaker$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 2825
    :goto_2
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2826
    invoke-virtual {p0}, Ljj$n;->p()V

    move v1, v0

    :goto_3
    return v1

    .line 2807
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Ljj$n;->a(Ljj$x;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2808
    sget-object v2, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2825
    :cond_1
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2826
    invoke-virtual {p0}, Ljj$n;->p()V

    goto :goto_3

    :cond_2
    move v0, v1

    .line 2819
    goto :goto_2

    .line 2796
    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljj$l;->b()Ljj$l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2825
    :cond_4
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2826
    invoke-virtual {p0}, Ljj$n;->p()V

    goto :goto_3

    .line 2825
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2826
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0
.end method

.method b(Ljava/lang/Object;ILjj$x;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljj$x",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2974
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2976
    :try_start_0
    iget-object v3, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2977
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2978
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v2, v0

    .line 2980
    :goto_0
    if-eqz v2, :cond_2

    .line 2981
    invoke-interface {v2}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v5

    .line 2982
    invoke-interface {v2}, Ljj$l;->c()I

    move-result v6

    if-ne v6, p2, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Ljj$n;->a:Ljj;

    iget-object v6, v6, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 2984
    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2985
    invoke-interface {v2}, Ljj$l;->a()Ljj$x;

    move-result-object v5

    .line 2986
    if-ne v5, p3, :cond_0

    .line 2987
    invoke-virtual {p0, v0, v2}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2988
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2989
    const/4 v0, 0x1

    .line 2997
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2998
    invoke-virtual {p0}, Ljj$n;->p()V

    :goto_1
    return v0

    .line 2997
    :cond_0
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2998
    invoke-virtual {p0}, Ljj$n;->p()V

    move v0, v1

    goto :goto_1

    .line 2980
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljj$l;->b()Ljj$l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2997
    :cond_2
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2998
    invoke-virtual {p0}, Ljj$n;->p()V

    move v0, v1

    goto :goto_1

    .line 2997
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2998
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0
.end method

.method c(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    .line 2442
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljj$n;->b(Ljava/lang/Object;I)Ljj$l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2443
    if-nez v1, :cond_0

    .line 2444
    const/4 v0, 0x0

    .line 2455
    invoke-virtual {p0}, Ljj$n;->n()V

    :goto_0
    return-object v0

    .line 2447
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljj$l;->a()Ljj$x;

    move-result-object v0

    invoke-interface {v0}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2448
    if-eqz v0, :cond_1

    .line 2449
    invoke-virtual {p0, v1}, Ljj$n;->a(Ljj$l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2455
    :goto_1
    invoke-virtual {p0}, Ljj$n;->n()V

    goto :goto_0

    .line 2451
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Ljj$n;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2455
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->n()V

    throw v0
.end method

.method c()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2205
    const/4 v0, 0x0

    move v1, v0

    .line 2206
    :goto_0
    iget-object v0, p0, Ljj$n;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2208
    check-cast v0, Ljj$l;

    .line 2209
    iget-object v2, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v2, v0}, Ljj;->a(Ljj$l;)V

    .line 2210
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2214
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2213
    goto :goto_0
.end method

.method c(Ljj$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2289
    invoke-virtual {p0}, Ljj$n;->h()V

    .line 2290
    iget-object v0, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2291
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2294
    iget-object v0, p0, Ljj$n;->a:Ljj;

    .line 2295
    invoke-virtual {v0}, Ljj;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-wide v0, v0, Ljj;->k:J

    .line 2296
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Ljj$n;->a(Ljj$l;J)V

    .line 2297
    iget-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2299
    :cond_0
    return-void

    .line 2295
    :cond_1
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-wide v0, v0, Ljj;->l:J

    goto :goto_0
.end method

.method d()V
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2219
    const/4 v0, 0x0

    move v1, v0

    .line 2220
    :goto_0
    iget-object v0, p0, Ljj$n;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2222
    check-cast v0, Ljj$x;

    .line 2223
    iget-object v2, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v2, v0}, Ljj;->a(Ljj$x;)V

    .line 2224
    add-int/lit8 v0, v1, 0x1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 2228
    :cond_0
    return-void

    :cond_1
    move v1, v0

    .line 2227
    goto :goto_0
.end method

.method d(Ljj$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2895
    sget-object v0, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, p1, v0}, Ljj$n;->a(Ljj$l;Lcom/google/common/collect/MapMaker$d;)V

    .line 2896
    iget-object v0, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2897
    iget-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2898
    return-void
.end method

.method d(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2461
    :try_start_0
    iget v1, p0, Ljj$n;->b:I

    if-eqz v1, :cond_2

    .line 2462
    invoke-virtual {p0, p1, p2}, Ljj$n;->b(Ljava/lang/Object;I)Ljj$l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2463
    if-nez v1, :cond_0

    .line 2471
    invoke-virtual {p0}, Ljj$n;->n()V

    :goto_0
    return v0

    .line 2466
    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljj$l;->a()Ljj$x;

    move-result-object v1

    invoke-interface {v1}, Ljj$x;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2471
    :cond_1
    invoke-virtual {p0}, Ljj$n;->n()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljj$n;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->n()V

    throw v0
.end method

.method e(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2743
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2745
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->o()V

    .line 2747
    iget v0, p0, Ljj$n;->b:I

    add-int/lit8 v0, v0, -0x1

    .line 2748
    iget-object v4, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2749
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2750
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    move-object v3, v0

    .line 2752
    :goto_0
    if-eqz v3, :cond_3

    .line 2753
    invoke-interface {v3}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v6

    .line 2754
    invoke-interface {v3}, Ljj$l;->c()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Ljj$n;->a:Ljj;

    iget-object v2, v2, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 2756
    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2757
    invoke-interface {v3}, Ljj$l;->a()Ljj$x;

    move-result-object v7

    .line 2758
    invoke-interface {v7}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2761
    if-eqz v2, :cond_0

    .line 2762
    sget-object v1, Lcom/google/common/collect/MapMaker$d;->a:Lcom/google/common/collect/MapMaker$d;

    .line 2769
    :goto_1
    iget v7, p0, Ljj$n;->c:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljj$n;->c:I

    .line 2770
    invoke-virtual {p0, v6, p2, v2, v1}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/common/collect/MapMaker$d;)V

    .line 2771
    invoke-virtual {p0, v0, v3}, Ljj$n;->b(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2772
    iget v1, p0, Ljj$n;->b:I

    add-int/lit8 v1, v1, -0x1

    .line 2773
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2774
    iput v1, p0, Ljj$n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2781
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2782
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v2

    :goto_2
    return-object v0

    .line 2763
    :cond_0
    :try_start_1
    invoke-virtual {p0, v7}, Ljj$n;->a(Ljj$x;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2764
    sget-object v1, Lcom/google/common/collect/MapMaker$d;->c:Lcom/google/common/collect/MapMaker$d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2781
    :cond_1
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2782
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v1

    goto :goto_2

    .line 2752
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljj$l;->b()Ljj$l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2781
    :cond_3
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2782
    invoke-virtual {p0}, Ljj$n;->p()V

    move-object v0, v1

    goto :goto_2

    .line 2781
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2782
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0
.end method

.method e(Ljj$l;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3040
    invoke-interface {p1}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3041
    invoke-virtual {p0}, Ljj$n;->a()V

    .line 3054
    :goto_0
    return-object v0

    .line 3044
    :cond_0
    invoke-interface {p1}, Ljj$l;->a()Ljj$x;

    move-result-object v1

    invoke-interface {v1}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v1

    .line 3045
    if-nez v1, :cond_1

    .line 3046
    invoke-virtual {p0}, Ljj$n;->a()V

    goto :goto_0

    .line 3050
    :cond_1
    iget-object v2, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v2}, Ljj;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v2, p1}, Ljj;->c(Ljj$l;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3051
    invoke-virtual {p0}, Ljj$n;->i()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3054
    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 2234
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2235
    invoke-virtual {p0}, Ljj$n;->f()V

    .line 2237
    :cond_0
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2238
    invoke-virtual {p0}, Ljj$n;->g()V

    .line 2240
    :cond_1
    return-void
.end method

.method f()V
    .locals 1

    .prologue
    .line 2243
    :cond_0
    iget-object v0, p0, Ljj$n;->g:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2244
    return-void
.end method

.method g()V
    .locals 1

    .prologue
    .line 2247
    :cond_0
    iget-object v0, p0, Ljj$n;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2248
    return-void
.end method

.method h()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2310
    :cond_0
    :goto_0
    iget-object v0, p0, Ljj$n;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    if-eqz v0, :cond_2

    .line 2315
    iget-object v1, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2316
    iget-object v1, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2318
    :cond_1
    iget-object v1, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v1}, Ljj;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2319
    iget-object v1, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2322
    :cond_2
    return-void
.end method

.method i()V
    .locals 1

    .prologue
    .line 2335
    invoke-virtual {p0}, Ljj$n;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2337
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2339
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2343
    :cond_0
    return-void

    .line 2339
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    throw v0
.end method

.method j()V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2347
    invoke-virtual {p0}, Ljj$n;->h()V

    .line 2349
    iget-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2361
    :cond_0
    return-void

    .line 2354
    :cond_1
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v2

    .line 2356
    :cond_2
    iget-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v1, v0, v2, v3}, Ljj;->a(Ljj$l;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2357
    invoke-interface {v0}, Ljj$l;->c()I

    move-result v1

    sget-object v4, Lcom/google/common/collect/MapMaker$d;->d:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, v0, v1, v4}, Ljj$n;->a(Ljj$l;ILcom/google/common/collect/MapMaker$d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2358
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method k()Z
    .locals 3
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2384
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ljj$n;->b:I

    iget v1, p0, Ljj$n;->f:I

    if-lt v0, v1, :cond_1

    .line 2385
    invoke-virtual {p0}, Ljj$n;->h()V

    .line 2387
    iget-object v0, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    .line 2388
    invoke-interface {v0}, Ljj$l;->c()I

    move-result v1

    sget-object v2, Lcom/google/common/collect/MapMaker$d;->e:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, v0, v1, v2}, Ljj$n;->a(Ljj$l;ILcom/google/common/collect/MapMaker$d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2389
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2391
    :cond_0
    const/4 v0, 0x1

    .line 2393
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()V
    .locals 11
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 2578
    iget-object v7, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2579
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 2580
    const/high16 v0, 0x40000000    # 2.0f

    if-lt v8, v0, :cond_0

    .line 2643
    :goto_0
    return-void

    .line 2594
    :cond_0
    iget v5, p0, Ljj$n;->b:I

    .line 2595
    shl-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0}, Ljj$n;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    .line 2596
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Ljj$n;->d:I

    .line 2597
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 2598
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_5

    .line 2601
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    .line 2603
    if-eqz v0, :cond_7

    .line 2604
    invoke-interface {v0}, Ljj$l;->b()Ljj$l;

    move-result-object v3

    .line 2605
    invoke-interface {v0}, Ljj$l;->c()I

    move-result v1

    and-int v2, v1, v10

    .line 2608
    if-nez v3, :cond_2

    .line 2609
    invoke-virtual {v9, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v1, v5

    .line 2598
    :cond_1
    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_2
    move-object v4, v0

    .line 2616
    :goto_3
    if-eqz v3, :cond_3

    .line 2617
    invoke-interface {v3}, Ljj$l;->c()I

    move-result v1

    and-int/2addr v1, v10

    .line 2618
    if-eq v1, v2, :cond_6

    move-object v2, v3

    .line 2616
    :goto_4
    invoke-interface {v3}, Ljj$l;->b()Ljj$l;

    move-result-object v3

    move-object v4, v2

    move v2, v1

    goto :goto_3

    .line 2624
    :cond_3
    invoke-virtual {v9, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    move v1, v5

    .line 2627
    :goto_5
    if-eq v2, v4, :cond_1

    .line 2628
    invoke-interface {v2}, Ljj$l;->c()I

    move-result v0

    and-int v3, v0, v10

    .line 2629
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    .line 2630
    invoke-virtual {p0, v2, v0}, Ljj$n;->a(Ljj$l;Ljj$l;)Ljj$l;

    move-result-object v0

    .line 2631
    if-eqz v0, :cond_4

    .line 2632
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 2627
    :goto_6
    invoke-interface {v2}, Ljj$l;->b()Ljj$l;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    goto :goto_5

    .line 2634
    :cond_4
    invoke-virtual {p0, v2}, Ljj$n;->d(Ljj$l;)V

    .line 2635
    add-int/lit8 v0, v1, -0x1

    goto :goto_6

    .line 2641
    :cond_5
    iput-object v9, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2642
    iput v5, p0, Ljj$n;->b:I

    goto :goto_0

    :cond_6
    move v1, v2

    move-object v2, v4

    goto :goto_4

    :cond_7
    move v1, v5

    goto :goto_2
.end method

.method m()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2831
    iget v0, p0, Ljj$n;->b:I

    if-eqz v0, :cond_4

    .line 2832
    invoke-virtual {p0}, Ljj$n;->lock()V

    .line 2834
    :try_start_0
    iget-object v3, p0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2835
    iget-object v0, p0, Ljj$n;->a:Ljj;

    iget-object v0, v0, Ljj;->m:Ljava/util/Queue;

    sget-object v2, Ljj;->r:Ljava/util/Queue;

    if-eq v0, v2, :cond_2

    move v2, v1

    .line 2836
    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2837
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    :goto_1
    if-eqz v0, :cond_1

    .line 2839
    invoke-interface {v0}, Ljj$l;->a()Ljj$x;

    move-result-object v4

    invoke-interface {v4}, Ljj$x;->b()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2840
    sget-object v4, Lcom/google/common/collect/MapMaker$d;->a:Lcom/google/common/collect/MapMaker$d;

    invoke-virtual {p0, v0, v4}, Ljj$n;->a(Ljj$l;Lcom/google/common/collect/MapMaker$d;)V

    .line 2837
    :cond_0
    invoke-interface {v0}, Ljj$l;->b()Ljj$l;

    move-result-object v0

    goto :goto_1

    .line 2836
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2845
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2846
    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2845
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2848
    :cond_3
    invoke-virtual {p0}, Ljj$n;->e()V

    .line 2849
    iget-object v0, p0, Ljj$n;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2850
    iget-object v0, p0, Ljj$n;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2851
    iget-object v0, p0, Ljj$n;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2853
    iget v0, p0, Ljj$n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljj$n;->c:I

    .line 2854
    const/4 v0, 0x0

    iput v0, p0, Ljj$n;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2856
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2857
    invoke-virtual {p0}, Ljj$n;->p()V

    .line 2860
    :cond_4
    return-void

    .line 2856
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 2857
    invoke-virtual {p0}, Ljj$n;->p()V

    throw v0
.end method

.method n()V
    .locals 1

    .prologue
    .line 3063
    iget-object v0, p0, Ljj$n;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 3064
    invoke-virtual {p0}, Ljj$n;->q()V

    .line 3066
    :cond_0
    return-void
.end method

.method o()V
    .locals 0
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    .line 3076
    invoke-virtual {p0}, Ljj$n;->r()V

    .line 3077
    return-void
.end method

.method p()V
    .locals 0

    .prologue
    .line 3083
    invoke-virtual {p0}, Ljj$n;->s()V

    .line 3084
    return-void
.end method

.method q()V
    .locals 0

    .prologue
    .line 3087
    invoke-virtual {p0}, Ljj$n;->r()V

    .line 3088
    invoke-virtual {p0}, Ljj$n;->s()V

    .line 3089
    return-void
.end method

.method r()V
    .locals 2

    .prologue
    .line 3092
    invoke-virtual {p0}, Ljj$n;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3094
    :try_start_0
    invoke-virtual {p0}, Ljj$n;->b()V

    .line 3095
    invoke-virtual {p0}, Ljj$n;->j()V

    .line 3096
    iget-object v0, p0, Ljj$n;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3098
    invoke-virtual {p0}, Ljj$n;->unlock()V

    .line 3101
    :cond_0
    return-void

    .line 3098
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljj$n;->unlock()V

    throw v0
.end method

.method s()V
    .locals 1

    .prologue
    .line 3105
    invoke-virtual {p0}, Ljj$n;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3106
    iget-object v0, p0, Ljj$n;->a:Ljj;

    invoke-virtual {v0}, Ljj;->j()V

    .line 3108
    :cond_0
    return-void
.end method
