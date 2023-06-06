.class public Lorg/eclipse/jetty/util/HostMap;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TYPE:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "TTYPE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 49
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TTYPE;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 82
    if-nez p1, :cond_1

    .line 83
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 105
    :cond_0
    return-object v1

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 87
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 89
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_3

    .line 92
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_3
    if-gtz v1, :cond_2

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-super {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 103
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/util/HostMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TTYPE;)TTYPE;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
