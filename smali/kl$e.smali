.class Lkl$e;
.super Lcom/google/common/collect/Maps$ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkl$e$b;,
        Lkl$e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ad",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkl;


# direct methods
.method private constructor <init>(Lkl;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lkl$e;->a:Lkl;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ad;-><init>()V

    .line 923
    return-void
.end method

.method synthetic constructor <init>(Lkl;Lkl$1;)V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lkl$e;-><init>(Lkl;)V

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
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 825
    iget-object v0, p0, Lkl$e;->a:Lkl;

    invoke-virtual {v0, p1}, Lkl;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkl$e;->a:Lkl;

    invoke-virtual {v0, p1}, Lkl;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 840
    new-instance v0, Lkl$e$a;

    invoke-direct {v0, p0}, Lkl$e$a;-><init>(Lkl$e;)V

    return-object v0
.end method

.method b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 850
    new-instance v0, Lkl$e$b;

    invoke-direct {v0, p0}, Lkl$e$b;-><init>(Lkl$e;)V

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
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 835
    iget-object v0, p0, Lkl$e;->a:Lkl;

    invoke-virtual {v0, p1}, Lkl;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkl$e;->a:Lkl;

    invoke-static {v0, p1}, Lkl;->a(Lkl;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lkl$e;->a:Lkl;

    invoke-virtual {v0, p1}, Lkl;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lkl$e;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 845
    iget-object v0, p0, Lkl$e;->a:Lkl;

    invoke-virtual {v0}, Lkl;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lkl$e;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
