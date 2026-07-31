.class public abstract Lcom/google/common/collect/Multisets$b;
.super Lcom/google/common/collect/Sets$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Sets$f",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/google/common/collect/Sets$f;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->clear()V

    .line 951
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 970
    new-instance v0, Lcom/google/common/collect/Multisets$b$1;

    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b;->a()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$b$1;-><init>(Lcom/google/common/collect/Multisets$b;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 980
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$b;->a()Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
