.class final Lcom/google/common/collect/Sets$g;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Set",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1327
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1328
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    .line 1329
    iget-object v0, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    .line 1330
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    const/16 v3, 0x1e

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Too many elements to create power set: %s > 30"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 1329
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    return-void

    :cond_0
    move v0, v2

    .line 1330
    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1355
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1356
    check-cast p1, Ljava/util/Set;

    .line 1357
    iget-object v0, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 1359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1364
    instance-of v0, p1, Lcom/google/common/collect/Sets$g;

    if-eqz v0, :cond_0

    .line 1365
    check-cast p1, Lcom/google/common/collect/Sets$g;

    .line 1366
    iget-object v0, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    iget-object v1, p1, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1368
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->keySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1340
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Set",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1345
    new-instance v0, Lcom/google/common/collect/Sets$g$1;

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$g;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Sets$g$1;-><init>(Lcom/google/common/collect/Sets$g;I)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1335
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    shl-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/google/common/collect/Sets$g;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "powerSet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
