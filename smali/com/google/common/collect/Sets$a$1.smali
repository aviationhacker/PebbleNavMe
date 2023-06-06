.class final Lcom/google/common/collect/Sets$a$1;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$a;->a(Ljava/util/List;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/google/common/collect/Sets$a$1;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/google/common/collect/Sets$a$1;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 1196
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1183
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$a$1;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/google/common/collect/Sets$a$1;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
