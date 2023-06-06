.class final Lcom/google/common/collect/HashBiMap$e;
.super Lcom/google/common/collect/Maps$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$e;->a:Lcom/google/common/collect/HashBiMap;

    .line 434
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    .line 435
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 439
    new-instance v0, Lcom/google/common/collect/HashBiMap$e$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$e$1;-><init>(Lcom/google/common/collect/HashBiMap$e;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 449
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$e;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v0

    .line 450
    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 453
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$e;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$a;)V

    .line 454
    iput-object v2, v0, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    .line 455
    iput-object v2, v0, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    .line 456
    const/4 v0, 0x1

    goto :goto_0
.end method
