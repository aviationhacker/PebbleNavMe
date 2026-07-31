.class final Lgx$f;
.super Lgx$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgx",
        "<TK;TV;>.a<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lgx;


# direct methods
.method constructor <init>(Lgx;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 4565
    iput-object p1, p0, Lgx$f;->c:Lgx;

    .line 4566
    invoke-direct {p0, p1, p2}, Lgx$a;-><init>(Lgx;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4567
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4576
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4586
    :cond_0
    :goto_0
    return v0

    .line 4579
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4580
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4581
    if-eqz v1, :cond_0

    .line 4584
    iget-object v2, p0, Lgx$f;->c:Lgx;

    invoke-virtual {v2, v1}, Lgx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4586
    if-eqz v1, :cond_0

    iget-object v2, p0, Lgx$f;->c:Lgx;

    iget-object v2, v2, Lgx;->g:Lcom/google/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4571
    new-instance v0, Lgx$e;

    iget-object v1, p0, Lgx$f;->c:Lgx;

    invoke-direct {v0, v1}, Lgx$e;-><init>(Lgx;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4591
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 4596
    :cond_0
    :goto_0
    return v0

    .line 4594
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 4595
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 4596
    if-eqz v1, :cond_0

    iget-object v2, p0, Lgx$f;->c:Lgx;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lgx;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
