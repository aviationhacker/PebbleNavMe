.class Lkl$e$a;
.super Lkl$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkl",
        "<TR;TC;TV;>.h<",
        "Ljava/util/Map$Entry",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkl$e;


# direct methods
.method constructor <init>(Lkl$e;)V
    .locals 2

    .prologue
    .line 854
    iput-object p1, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v0, p1, Lkl$e;->a:Lkl;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkl$h;-><init>(Lkl;Lkl$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 874
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 875
    check-cast p1, Ljava/util/Map$Entry;

    .line 876
    iget-object v0, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v0, v0, Lkl$e;->a:Lkl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkl;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 881
    iget-object v1, p0, Lkl$e$a;->a:Lkl$e;

    invoke-virtual {v1, v0}, Lkl$e;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 884
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 857
    iget-object v0, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v0, v0, Lkl$e;->a:Lkl;

    .line 858
    invoke-virtual {v0}, Lkl;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lkl$e$a$1;

    invoke-direct {v1, p0}, Lkl$e$a$1;-><init>(Lkl$e$a;)V

    .line 857
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 889
    invoke-virtual {p0, p1}, Lkl$e$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    check-cast p1, Ljava/util/Map$Entry;

    .line 891
    iget-object v0, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v0, v0, Lkl$e;->a:Lkl;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lkl;->a(Lkl;Ljava/lang/Object;)Ljava/util/Map;

    .line 892
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 905
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 911
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    const/4 v0, 0x0

    .line 913
    iget-object v1, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v1, v1, Lkl$e;->a:Lkl;

    invoke-virtual {v1}, Lkl;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 914
    iget-object v3, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v3, v3, Lkl$e;->a:Lkl;

    invoke-virtual {v3, v2}, Lkl;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 915
    iget-object v0, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v0, v0, Lkl$e;->a:Lkl;

    invoke-static {v0, v2}, Lkl;->a(Lkl;Ljava/lang/Object;)Ljava/util/Map;

    .line 916
    const/4 v0, 0x1

    goto :goto_0

    .line 919
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lkl$e$a;->a:Lkl$e;

    iget-object v0, v0, Lkl$e;->a:Lkl;

    invoke-virtual {v0}, Lkl;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
