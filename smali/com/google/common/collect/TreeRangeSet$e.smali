.class final Lcom/google/common/collect/TreeRangeSet$e;
.super Lcom/google/common/collect/TreeRangeSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TreeRangeSet",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/TreeRangeSet;

.field private final c:Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 838
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$e;->b:Lcom/google/common/collect/TreeRangeSet;

    .line 839
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$f;

    .line 840
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/google/common/collect/TreeRangeSet$f;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V

    .line 839
    invoke-direct {p0, v0, v3}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V

    .line 841
    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    .line 842
    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    .line 866
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    const-string v1, "Cannot add range %s to subRangeSet(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    aput-object v4, v2, v3

    .line 865
    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 870
    invoke-super {p0, p1}, Lcom/google/common/collect/TreeRangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 871
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->b:Lcom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 888
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->b:Lcom/google/common/collect/TreeRangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 846
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->b:Lcom/google/common/collect/TreeRangeSet;

    invoke-static {v1, p1}, Lcom/google/common/collect/TreeRangeSet;->a(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 848
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 850
    :cond_0
    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 856
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 860
    :cond_0
    :goto_0
    return-object v0

    .line 859
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->b:Lcom/google/common/collect/TreeRangeSet;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/TreeRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 860
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->b:Lcom/google/common/collect/TreeRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 878
    :cond_0
    return-void
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    :goto_0
    return-object p0

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$e;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$e;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$e;-><init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V

    move-object p0, v0

    goto :goto_0

    .line 897
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    goto :goto_0
.end method
