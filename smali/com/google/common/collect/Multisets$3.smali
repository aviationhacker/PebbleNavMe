.class final Lcom/google/common/collect/Multisets$3;
.super Lhj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->sum(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhj",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multiset;

.field final synthetic b:Lcom/google/common/collect/Multiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/google/common/collect/Multisets$3;->a:Lcom/google/common/collect/Multiset;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$3;->b:Lcom/google/common/collect/Multiset;

    invoke-direct {p0}, Lhj;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 564
    iget-object v1, p0, Lcom/google/common/collect/Multisets$3;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 565
    new-instance v2, Lcom/google/common/collect/Multisets$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/common/collect/Multisets$3$1;-><init>(Lcom/google/common/collect/Multisets$3;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method b()I
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$3;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$3;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 538
    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$3;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/google/common/collect/Multisets$3;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Multisets$3;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
