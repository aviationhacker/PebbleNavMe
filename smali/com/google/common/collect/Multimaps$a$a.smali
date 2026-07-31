.class Lcom/google/common/collect/Multimaps$a$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$a;)V
    .locals 0

    .prologue
    .line 1751
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    .line 1760
    invoke-static {v0}, Lcom/google/common/collect/Multimaps$a;->a(Lcom/google/common/collect/Multimaps$a;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/Multimaps$a$a$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/Multimaps$a$a$1;-><init>(Lcom/google/common/collect/Multimaps$a$a;)V

    .line 1759
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1771
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$a$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1772
    const/4 v0, 0x0

    .line 1776
    :goto_0
    return v0

    .line 1774
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1775
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$a$a;->a:Lcom/google/common/collect/Multimaps$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Multimaps$a;->a(Ljava/lang/Object;)V

    .line 1776
    const/4 v0, 0x1

    goto :goto_0
.end method
