.class Lkl$d;
.super Lkl$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkl",
        "<TR;TC;TV;>.h<TC;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkl;


# direct methods
.method private constructor <init>(Lkl;)V
    .locals 1

    .prologue
    .line 615
    iput-object p1, p0, Lkl$d;->a:Lkl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkl$h;-><init>(Lkl;Lkl$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lkl;Lkl$1;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0, p1}, Lkl$d;-><init>(Lkl;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lkl$d;->a:Lkl;

    invoke-virtual {v0, p1}, Lkl;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 618
    iget-object v0, p0, Lkl$d;->a:Lkl;

    invoke-virtual {v0}, Lkl;->g()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 628
    if-nez p1, :cond_0

    .line 642
    :goto_0
    return v0

    .line 632
    :cond_0
    iget-object v1, p0, Lkl$d;->a:Lkl;

    iget-object v1, v1, Lkl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 633
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 634
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 635
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 636
    const/4 v1, 0x1

    .line 637
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_1
    move v0, v1

    move v1, v0

    .line 641
    goto :goto_1

    :cond_2
    move v0, v1

    .line 642
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
    .line 647
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const/4 v0, 0x0

    .line 649
    iget-object v1, p0, Lkl$d;->a:Lkl;

    iget-object v1, v1, Lkl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 650
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 651
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 654
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 655
    const/4 v1, 0x1

    .line 656
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    move v0, v1

    move v1, v0

    .line 660
    goto :goto_0

    .line 661
    :cond_1
    return v1
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
    .line 666
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    const/4 v0, 0x0

    .line 668
    iget-object v1, p0, Lkl$d;->a:Lkl;

    iget-object v1, v1, Lkl;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    .line 669
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 670
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 671
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    const/4 v1, 0x1

    .line 673
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    :cond_0
    move v0, v1

    move v1, v0

    .line 677
    goto :goto_0

    .line 678
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Lkl$d;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
