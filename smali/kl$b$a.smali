.class Lkl$b$a;
.super Lcom/google/common/collect/Sets$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Sets$f",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkl$b;


# direct methods
.method private constructor <init>(Lkl$b;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lkl$b$a;->a:Lkl$b;

    invoke-direct {p0}, Lcom/google/common/collect/Sets$f;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lkl$b;Lkl$1;)V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lkl$b$a;-><init>(Lkl$b;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lkl$b$a;->a:Lkl$b;

    invoke-static {}, Lcom/google/common/base/Predicates;->alwaysTrue()Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkl$b;->a(Lcom/google/common/base/Predicate;)Z

    .line 479
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 483
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Ljava/util/Map$Entry;

    .line 485
    iget-object v0, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v0, v0, Lkl$b;->b:Lkl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v2, v2, Lkl$b;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lkl;->a(Lkl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 487
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v0, v0, Lkl$b;->b:Lkl;

    iget-object v1, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v1, v1, Lkl$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkl;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v0, Lkl$b$b;

    iget-object v1, p0, Lkl$b$a;->a:Lkl$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkl$b$b;-><init>(Lkl$b;Lkl$1;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 492
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 493
    check-cast p1, Ljava/util/Map$Entry;

    .line 494
    iget-object v0, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v0, v0, Lkl$b;->b:Lkl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v2, v2, Lkl$b;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lkl;->b(Lkl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lkl$b$a;->a:Lkl$b;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkl$b;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    iget-object v1, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v1, v1, Lkl$b;->b:Lkl;

    iget-object v1, v1, Lkl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 464
    iget-object v3, p0, Lkl$b$a;->a:Lkl$b;

    iget-object v3, v3, Lkl$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 465
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 467
    goto :goto_0

    .line 468
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
