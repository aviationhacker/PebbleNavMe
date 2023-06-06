.class Lcom/google/common/collect/TreeRangeMap$c$a;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/TreeRangeMap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$c;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method

.method private a(Lcom/google/common/base/Predicate;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 543
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c$a;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 544
    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 549
    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    iget-object v3, v3, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    goto :goto_1

    .line 551
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/common/collect/TreeRangeMap$c$a;Lcom/google/common/base/Predicate;)Z
    .locals 1

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeMap$c$a;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 600
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 608
    :goto_0
    return-object v0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    .line 605
    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lic;

    .line 604
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    .line 606
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    iget-object v1, v1, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    .line 607
    invoke-static {v1}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 608
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c$a$3;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeMap$c$a$3;-><init>(Lcom/google/common/collect/TreeRangeMap$c$a;Ljava/util/Iterator;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$c;->clear()V

    .line 539
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$c$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c$a$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$c$a$2;-><init>(Lcom/google/common/collect/TreeRangeMap$c$a;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 494
    :try_start_0
    instance-of v0, p1, Lcom/google/common/collect/Range;

    if-eqz v0, :cond_0

    .line 496
    check-cast p1, Lcom/google/common/collect/Range;

    .line 497
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-object v1

    .line 501
    :cond_1
    iget-object v0, p1, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0, v2}, Lic;->a(Lic;)I

    move-result v0

    if-nez v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    .line 504
    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_3

    .line 506
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    .line 512
    :goto_1
    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->a()Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v3}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 514
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->a()Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v3}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    iget-object v0, v0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c$a$1;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$c$a$1;-><init>(Lcom/google/common/collect/TreeRangeMap$c$a;Ljava/util/Map;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap$c$a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_0

    .line 529
    check-cast p1, Lcom/google/common/collect/Range;

    .line 530
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    iget-object v1, v1, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 533
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 628
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c$a$4;

    invoke-direct {v0, p0, p0}, Lcom/google/common/collect/TreeRangeMap$c$a$4;-><init>(Lcom/google/common/collect/TreeRangeMap$c$a;Ljava/util/Map;)V

    return-object v0
.end method
