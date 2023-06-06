.class final Lcom/google/common/collect/TreeRangeSet$c;
.super Lhk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Lhk",
        "<",
        "Lic",
        "<TC;>;",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Lic",
            "<TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 432
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/TreeRangeSet$c;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V

    .line 433
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;",
            "Lcom/google/common/collect/Range",
            "<",
            "Lic",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Lhk;-><init>()V

    .line 437
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$c;->a:Ljava/util/NavigableMap;

    .line 438
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$d;

    invoke-direct {v0, p1}, Lcom/google/common/collect/TreeRangeSet$d;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->b:Ljava/util/NavigableMap;

    .line 439
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    .line 440
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/TreeRangeSet$c;)Lcom/google/common/collect/Range;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method private a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Lic",
            "<TC;>;>;)",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 447
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$c;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$c;->a:Ljava/util/NavigableMap;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/TreeRangeSet$c;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 601
    instance-of v0, p1, Lic;

    if-eqz v0, :cond_0

    .line 604
    :try_start_0
    check-cast p1, Lic;

    .line 606
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/TreeRangeSet$c;->b(Lic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 607
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    invoke-virtual {v0, p1}, Lic;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    :goto_0
    return-object v0

    .line 610
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 611
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 614
    goto :goto_0
.end method

.method a()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;>;"
        }
    .end annotation

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    .line 542
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    .line 543
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lic;

    .line 545
    :goto_0
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    .line 546
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    .line 547
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->upperBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    .line 548
    :goto_1
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$c;->b:Ljava/util/NavigableMap;

    .line 551
    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 552
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 553
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 554
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 549
    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v2

    .line 556
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 557
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 558
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    .line 567
    :goto_2
    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    .line 568
    new-instance v1, Lcom/google/common/collect/TreeRangeSet$c$2;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/common/collect/TreeRangeSet$c$2;-><init>(Lcom/google/common/collect/TreeRangeSet$c;Lic;Lcom/google/common/collect/PeekingIterator;)V

    move-object v0, v1

    :goto_3
    return-object v0

    .line 544
    :cond_0
    invoke-static {}, Lic;->e()Lic;

    move-result-object v0

    goto :goto_0

    .line 547
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$c;->a:Ljava/util/NavigableMap;

    .line 559
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-interface {v1, v0}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    goto :goto_2

    .line 560
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    invoke-static {}, Lic;->d()Lic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->a:Ljava/util/NavigableMap;

    .line 561
    invoke-static {}, Lic;->d()Lic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 562
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    goto :goto_3

    .line 564
    :cond_5
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->a:Ljava/util/NavigableMap;

    invoke-static {}, Lic;->d()Lic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    goto :goto_2
.end method

.method public a(Lic;Z)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$c;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public a(Lic;ZLic;Z)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TC;>;Z",
            "Lic",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 454
    .line 456
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 457
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    .line 455
    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 454
    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$c;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;>;"
        }
    .end annotation

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 488
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$c;->b:Ljava/util/NavigableMap;

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    .line 491
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v2

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    .line 492
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 490
    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 493
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 498
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v2

    .line 500
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->c:Lcom/google/common/collect/Range;

    invoke-static {}, Lic;->d()Lic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-static {}, Lic;->d()Lic;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 502
    :cond_0
    invoke-static {}, Lic;->d()Lic;

    move-result-object v0

    .line 508
    :goto_2
    new-instance v1, Lcom/google/common/collect/TreeRangeSet$c$1;

    invoke-direct {v1, p0, v0, v2}, Lcom/google/common/collect/TreeRangeSet$c$1;-><init>(Lcom/google/common/collect/TreeRangeSet$c;Lic;Lcom/google/common/collect/PeekingIterator;)V

    move-object v0, v1

    :goto_3
    return-object v0

    .line 492
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c;->b:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_1

    .line 503
    :cond_3
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    invoke-interface {v2}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    goto :goto_2

    .line 506
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    goto :goto_3
.end method

.method public b(Lic;Z)Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TC;>;Z)",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 467
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$c;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Lic",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 472
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 619
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$c;->a(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$c;->a(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lic;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$c;->a(Lic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$c;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lic;

    check-cast p3, Lic;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$c;->a(Lic;ZLic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 419
    check-cast p1, Lic;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$c;->b(Lic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
