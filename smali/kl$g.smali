.class Lkl$g;
.super Lcom/google/common/collect/Maps$ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl$g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ad",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lkl;


# direct methods
.method constructor <init>(Lkl;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lkl$g;->b:Lkl;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ad;-><init>()V

    .line 767
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lkl$g;->b:Lkl;

    invoke-virtual {v0, p1}, Lkl;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkl$g;->b:Lkl;

    invoke-virtual {v0, p1}, Lkl;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Lkl$g$a;

    invoke-direct {v0, p0}, Lkl$g$a;-><init>(Lkl$g;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 759
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lkl$g;->b:Lkl;

    iget-object v0, v0, Lkl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lkl$g;->b:Lkl;

    invoke-virtual {v0, p1}, Lkl;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lkl$g;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0, p1}, Lkl$g;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
