.class Lcom/google/common/collect/Sets$g$1;
.super Lhd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$g;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhd",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Sets$g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$g;I)V
    .locals 0

    .prologue
    .line 1345
    iput-object p1, p0, Lcom/google/common/collect/Sets$g$1;->a:Lcom/google/common/collect/Sets$g;

    invoke-direct {p0, p2}, Lhd;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1345
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$g$1;->b(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1348
    new-instance v0, Lcom/google/common/collect/Sets$h;

    iget-object v1, p0, Lcom/google/common/collect/Sets$g$1;->a:Lcom/google/common/collect/Sets$g;

    iget-object v1, v1, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/Sets$h;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-object v0
.end method
