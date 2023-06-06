.class Lkl$e$b;
.super Lcom/google/common/collect/Maps$ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ac",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkl$e;


# direct methods
.method constructor <init>(Lkl$e;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lkl$e$b;->a:Lkl$e;

    .line 926
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$ac;-><init>(Ljava/util/Map;)V

    .line 927
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 931
    iget-object v0, p0, Lkl$e$b;->a:Lkl$e;

    invoke-virtual {v0}, Lkl$e;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 932
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    iget-object v1, p0, Lkl$e$b;->a:Lkl$e;

    iget-object v1, v1, Lkl$e;->a:Lkl;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lkl;->a(Lkl;Ljava/lang/Object;)Ljava/util/Map;

    .line 934
    const/4 v0, 0x1

    .line 937
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 942
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    const/4 v0, 0x0

    .line 944
    iget-object v1, p0, Lkl$e$b;->a:Lkl$e;

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

    .line 945
    iget-object v3, p0, Lkl$e$b;->a:Lkl$e;

    iget-object v3, v3, Lkl$e;->a:Lkl;

    invoke-virtual {v3, v2}, Lkl;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 946
    iget-object v0, p0, Lkl$e$b;->a:Lkl$e;

    iget-object v0, v0, Lkl$e;->a:Lkl;

    invoke-static {v0, v2}, Lkl;->a(Lkl;Ljava/lang/Object;)Ljava/util/Map;

    .line 947
    const/4 v0, 0x1

    goto :goto_0

    .line 950
    :cond_1
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
    .line 955
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const/4 v0, 0x0

    .line 957
    iget-object v1, p0, Lkl$e$b;->a:Lkl$e;

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

    .line 958
    iget-object v3, p0, Lkl$e$b;->a:Lkl$e;

    iget-object v3, v3, Lkl$e;->a:Lkl;

    invoke-virtual {v3, v2}, Lkl;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 959
    iget-object v0, p0, Lkl$e$b;->a:Lkl$e;

    iget-object v0, v0, Lkl$e;->a:Lkl;

    invoke-static {v0, v2}, Lkl;->a(Lkl;Ljava/lang/Object;)Ljava/util/Map;

    .line 960
    const/4 v0, 0x1

    goto :goto_0

    .line 963
    :cond_1
    return v0
.end method
