.class final Lcom/google/common/collect/TreeRangeSet$f;
.super Lhk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
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
.field private final a:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<",
            "Lic",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/NavigableMap;
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

.field private final d:Ljava/util/NavigableMap;
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


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<",
            "Lic",
            "<TC;>;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct {p0}, Lhk;-><init>()V

    .line 670
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    .line 671
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    .line 672
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->c:Ljava/util/NavigableMap;

    .line 673
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$d;

    invoke-direct {v0, p3}, Lcom/google/common/collect/TreeRangeSet$d;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->d:Ljava/util/NavigableMap;

    .line 674
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V
    .locals 0

    .prologue
    .line 649
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/TreeRangeSet$f;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/TreeRangeSet$f;)Lcom/google/common/collect/Range;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    return-object v0
.end method

.method private a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 4
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
    .line 677
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    .line 681
    :goto_0
    return-object v0

    .line 680
    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$f;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    .line 681
    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$f;->c:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/TreeRangeSet$f;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/common/collect/TreeRangeSet$f;)Lcom/google/common/collect/Range;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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

    .line 719
    instance-of v0, p1, Lic;

    if-eqz v0, :cond_3

    .line 722
    :try_start_0
    check-cast p1, Lic;

    .line 723
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    .line 724
    invoke-virtual {p1, v0}, Lic;->a(Lic;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 725
    invoke-virtual {p1, v0}, Lic;->a(Lic;)I

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 743
    :goto_0
    return-object v0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {p1, v0}, Lic;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 729
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->c:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->c(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 730
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v2, v3}, Lic;->a(Lic;)I

    move-result v2

    if-lez v2, :cond_3

    .line 731
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->c:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 735
    if-eqz v0, :cond_3

    .line 736
    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 740
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 743
    goto :goto_0
.end method

.method a()Ljava/util/Iterator;
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
    .line 790
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 804
    :goto_0
    return-object v0

    .line 794
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->c:Lic;

    .line 795
    invoke-static {v2}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    .line 796
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->c:Ljava/util/NavigableMap;

    .line 799
    invoke-virtual {v0}, Lic;->c()Ljava/lang/Comparable;

    move-result-object v2

    .line 800
    invoke-virtual {v0}, Lic;->b()Lcom/google/common/collect/BoundType;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    .line 798
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 801
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 802
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 803
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 804
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$f$2;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$f$2;-><init>(Lcom/google/common/collect/TreeRangeSet$f;Ljava/util/Iterator;)V

    goto :goto_0

    .line 800
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
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
    .line 698
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$f;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

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
    .line 688
    .line 691
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 693
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    .line 689
    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 688
    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$f;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/Iterator;
    .locals 5
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
    const/4 v0, 0x0

    .line 748
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 771
    :goto_0
    return-object v0

    .line 752
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 753
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    goto :goto_0

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->d:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lic;

    .line 757
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    .line 769
    :goto_1
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$f;->b:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->c:Lic;

    .line 770
    invoke-static {v3}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    .line 771
    new-instance v2, Lcom/google/common/collect/TreeRangeSet$f$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/TreeRangeSet$f$1;-><init>(Lcom/google/common/collect/TreeRangeSet$f;Ljava/util/Iterator;Lic;)V

    move-object v0, v2

    goto :goto_0

    .line 760
    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f;->c:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lic;

    .line 763
    invoke-virtual {v2}, Lic;->c()Ljava/lang/Comparable;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeSet$f;->a:Lcom/google/common/collect/Range;

    .line 764
    invoke-virtual {v3}, Lcom/google/common/collect/Range;->lowerBoundType()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    .line 762
    :cond_3
    invoke-interface {v1, v2, v0}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 765
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 766
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
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
    .line 703
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$f;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

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
    .line 708
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 713
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$f;->a(Ljava/lang/Object;)Lcom/google/common/collect/Range;

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
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 649
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$f;->a(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 649
    check-cast p1, Lic;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$f;->a(Lic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$f;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 649
    check-cast p1, Lic;

    check-cast p3, Lic;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$f;->a(Lic;ZLic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 649
    check-cast p1, Lic;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$f;->b(Lic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
