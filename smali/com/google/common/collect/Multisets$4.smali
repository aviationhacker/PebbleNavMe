.class final Lcom/google/common/collect/Multisets$4;
.super Lhj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets;->difference(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
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
    .line 615
    iput-object p1, p0, Lcom/google/common/collect/Multisets$4;->a:Lcom/google/common/collect/Multiset;

    iput-object p2, p0, Lcom/google/common/collect/Multisets$4;->b:Lcom/google/common/collect/Multiset;

    invoke-direct {p0}, Lhj;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .locals 2
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
    .line 624
    iget-object v0, p0, Lcom/google/common/collect/Multisets$4;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 625
    new-instance v1, Lcom/google/common/collect/Multisets$4$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Multisets$4$1;-><init>(Lcom/google/common/collect/Multisets$4;Ljava/util/Iterator;)V

    return-object v1
.end method

.method b()I
    .locals 1

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/google/common/collect/Multisets$4;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 618
    iget-object v1, p0, Lcom/google/common/collect/Multisets$4;->a:Lcom/google/common/collect/Multiset;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 619
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/common/collect/Multisets$4;->b:Lcom/google/common/collect/Multiset;

    invoke-interface {v2, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method
