.class Lkl$g$a;
.super Lkl$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkl",
        "<TR;TC;TV;>.h<",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkl$g;


# direct methods
.method constructor <init>(Lkl$g;)V
    .locals 2

    .prologue
    .line 768
    iput-object p1, p0, Lkl$g$a;->a:Lkl$g;

    iget-object v0, p1, Lkl$g;->b:Lkl;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkl$h;-><init>(Lkl;Lkl$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 788
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 789
    check-cast p1, Ljava/util/Map$Entry;

    .line 790
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 791
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkl$g$a;->a:Lkl$g;

    iget-object v1, v1, Lkl$g;->b:Lkl;

    iget-object v1, v1, Lkl;->a:Ljava/util/Map;

    .line 792
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 794
    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lkl$g$a;->a:Lkl$g;

    iget-object v0, v0, Lkl$g;->b:Lkl;

    iget-object v0, v0, Lkl;->a:Ljava/util/Map;

    .line 772
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lkl$g$a$1;

    invoke-direct {v1, p0}, Lkl$g$a$1;-><init>(Lkl$g$a;)V

    .line 771
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 799
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 800
    check-cast p1, Ljava/util/Map$Entry;

    .line 801
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 802
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lkl$g$a;->a:Lkl$g;

    iget-object v1, v1, Lkl$g;->b:Lkl;

    iget-object v1, v1, Lkl;->a:Ljava/util/Map;

    .line 803
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 805
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lkl$g$a;->a:Lkl$g;

    iget-object v0, v0, Lkl$g;->b:Lkl;

    iget-object v0, v0, Lkl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
