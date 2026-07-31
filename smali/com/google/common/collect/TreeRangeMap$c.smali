.class Lcom/google/common/collect/TreeRangeMap$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/RangeMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeMap$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeRangeMap;

.field private final b:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap;Lcom/google/common/collect/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    .line 337
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$c$1;-><init>(Lcom/google/common/collect/TreeRangeMap$c;)V

    return-object v0
.end method

.method public asMapOfRanges()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 429
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeMap$c$a;-><init>(Lcom/google/common/collect/TreeRangeMap$c;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 409
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 467
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 468
    check-cast p1, Lcom/google/common/collect/RangeMap;

    .line 469
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 350
    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    .line 388
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    const-string v1, "Cannot put range %s into a subRangeMap(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    aput-object v4, v2, v3

    .line 387
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 394
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    .line 398
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    .line 399
    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    const-string v2, "Cannot putAll rangeMap with span %s into a subRangeMap(%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    aput-object v4, v3, v0

    .line 398
    invoke-static {v1, v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap;->putAll(Lcom/google/common/collect/RangeMap;)V

    goto :goto_0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 416
    :cond_0
    return-void
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    .line 361
    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v0

    if-lez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    move-object v1, v0

    .line 373
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    .line 374
    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v2, v2, Lcom/google/common/collect/Range;->c:Lic;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 375
    if-nez v2, :cond_2

    .line 376
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lic;

    .line 367
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v1, v1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0, v1}, Lic;->a(Lic;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 368
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 377
    :cond_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v3, v3, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v0, v3}, Lic;->a(Lic;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 382
    :goto_1
    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    .line 380
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeMap;->b(Lcom/google/common/collect/TreeRangeMap;)Lcom/google/common/collect/RangeMap;

    move-result-object v0

    .line 423
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c;->a:Lcom/google/common/collect/TreeRangeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap$c;->b:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
