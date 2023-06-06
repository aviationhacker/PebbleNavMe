.class final Lcom/google/common/collect/HashBiMap$b$a;
.super Lcom/google/common/collect/Maps$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$b;)V
    .locals 0

    .prologue
    .line 583
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$b$a;->a:Lcom/google/common/collect/HashBiMap$b;

    .line 584
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    .line 585
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 600
    new-instance v0, Lcom/google/common/collect/HashBiMap$b$a$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$b$a$1;-><init>(Lcom/google/common/collect/HashBiMap$b$a;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 589
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$b$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/google/common/collect/HashBiMap;->b(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v0

    .line 590
    if-nez v0, :cond_0

    .line 591
    const/4 v0, 0x0

    .line 594
    :goto_0
    return v0

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$b$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget-object v1, v1, Lcom/google/common/collect/HashBiMap$b;->a:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1, v0}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$a;)V

    .line 594
    const/4 v0, 0x1

    goto :goto_0
.end method
