.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 627
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a:Ljava/util/Map;

    .line 633
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 634
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->b:Ljava/util/Map;

    .line 639
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->c:Ljava/lang/String;

    .line 640
    return-void
.end method

.method private a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            ">;)",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 728
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v2

    .line 751
    :cond_0
    :goto_0
    return-object v0

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    .line 732
    if-nez v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 738
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    .line 739
    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    move-result-object v4

    .line 740
    if-eqz v4, :cond_2

    .line 744
    new-instance v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    invoke-direct {v2, v1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;)V

    .line 746
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 747
    invoke-virtual {v2, v4}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v0, v2

    .line 748
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 751
    goto :goto_0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->c:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 669
    if-eq p0, p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Attempted to acquire multiple locks with the same rank %s"

    new-array v1, v1, [Ljava/lang/Object;

    .line 670
    invoke-virtual {p2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 669
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 672
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 714
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 669
    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->b:Ljava/util/Map;

    .line 679
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 680
    if-eqz v0, :cond_2

    .line 684
    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 686
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->getConflictingStackTrace()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    move-result-object v0

    invoke-direct {v1, p2, p0, v0, v5}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    .line 687
    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    goto :goto_1

    .line 692
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v0

    .line 693
    invoke-direct {p2, p0, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Ljava/util/Set;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    move-result-object v0

    .line 695
    if-nez v0, :cond_3

    .line 704
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a:Ljava/util/Map;

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;

    invoke-direct {v1, p2, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 709
    :cond_3
    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    invoke-direct {v1, p2, p0, v0, v5}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    .line 711
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->b:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-interface {p1, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    goto :goto_1
.end method

.method a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 649
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;)V

    .line 648
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 651
    :cond_0
    return-void
.end method
