.class final Lcom/google/common/collect/TreeRangeSet$d;
.super Lhk;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
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

.field private final b:Lcom/google/common/collect/Range;
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
    .line 265
    invoke-direct {p0}, Lhk;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    .line 267
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    .line 268
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V
    .locals 0
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
    .line 271
    invoke-direct {p0}, Lhk;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    .line 273
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    .line 274
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/TreeRangeSet$d;)Lcom/google/common/collect/Range;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

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
    .line 277
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$d;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeRangeSet$d;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/Range;)V

    .line 280
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedMap;->of()Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/google/common/collect/Range;
    .locals 3
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

    .prologue
    const/4 v1, 0x0

    .line 315
    instance-of v0, p1, Lic;

    if-eqz v0, :cond_1

    .line 318
    :try_start_0
    check-cast p1, Lic;

    .line 319
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 330
    :goto_0
    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 323
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0, p1}, Lic;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 327
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 330
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
    .line 375
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    .line 378
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 380
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 384
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lcom/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 385
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    iget-object v2, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 386
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v2, v0}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {v1}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 389
    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$d$2;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$d$2;-><init>(Lcom/google/common/collect/TreeRangeSet$d;Lcom/google/common/collect/PeekingIterator;)V

    return-object v0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
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
    .line 295
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$d;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

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
    .line 287
    .line 289
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 290
    invoke-static {p4}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v1

    .line 288
    invoke-static {p1, v0, p3, v1}, Lcom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 287
    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$d;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

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
    const/4 v3, 0x1

    .line 340
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 356
    :goto_0
    new-instance v1, Lcom/google/common/collect/TreeRangeSet$d$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TreeRangeSet$d$1;-><init>(Lcom/google/common/collect/TreeRangeSet$d;Ljava/util/Iterator;)V

    return-object v1

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    .line 344
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 345
    if-nez v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    iget-object v2, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v2, v0}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    .line 351
    invoke-virtual {v1}, Lcom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 353
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
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
    .line 300
    invoke-static {p2}, Lcom/google/common/collect/BoundType;->a(Z)Lcom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet$d;->a(Lcom/google/common/collect/Range;)Ljava/util/NavigableMap;

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
    .line 305
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
    .line 310
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$d;->a(Ljava/lang/Object;)Lcom/google/common/collect/Range;

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

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeSet$d;->a(Ljava/lang/Object;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lic;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$d;->a(Lic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    .line 414
    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    .line 415
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$d;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->b:Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->size()I

    move-result v0

    .line 408
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$d;->b()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lic;

    check-cast p3, Lic;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/TreeRangeSet$d;->a(Lic;ZLic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 254
    check-cast p1, Lic;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/TreeRangeSet$d;->b(Lic;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method
