.class Lkl$b;
.super Lcom/google/common/collect/Maps$ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl$b$d;,
        Lkl$b$c;,
        Lkl$b$b;,
        Lkl$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ad",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final synthetic b:Lkl;


# direct methods
.method constructor <init>(Lkl;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 402
    iput-object p1, p0, Lkl$b;->b:Lkl;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ad;-><init>()V

    .line 403
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lkl$b;->a:Ljava/lang/Object;

    .line 404
    return-void
.end method


# virtual methods
.method a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lkl$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkl$b$a;-><init>(Lkl$b;Lkl$1;)V

    return-object v0
.end method

.method a(Lcom/google/common/base/Predicate;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 432
    iget-object v1, p0, Lkl$b;->b:Lkl;

    iget-object v1, v1, Lkl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 433
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 436
    iget-object v4, p0, Lkl$b;->a:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 437
    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lkl$b;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const/4 v2, 0x1

    .line 440
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :cond_0
    move v0, v2

    move v2, v0

    .line 444
    goto :goto_0

    .line 445
    :cond_1
    return v2
.end method

.method b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 566
    new-instance v0, Lkl$b$d;

    invoke-direct {v0, p0}, Lkl$b$d;-><init>(Lkl$b;)V

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lkl$b;->b:Lkl;

    iget-object v1, p0, Lkl$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lkl;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lkl$b;->b:Lkl;

    iget-object v1, p0, Lkl$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lkl;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 539
    new-instance v0, Lkl$b$c;

    invoke-direct {v0, p0}, Lkl$b$c;-><init>(Lkl$b;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lkl$b;->b:Lkl;

    iget-object v1, p0, Lkl$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1, p2}, Lkl;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    .line 423
    iget-object v0, p0, Lkl$b;->b:Lkl;

    iget-object v1, p0, Lkl$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lkl;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
