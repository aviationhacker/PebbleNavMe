.class Lcom/google/common/collect/Maps$j;
.super Lcom/google/common/collect/Maps$h;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$j$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$h",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2893
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$h;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 2894
    return-void
.end method


# virtual methods
.method c()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/google/common/collect/Maps$j;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 2945
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->c()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2902
    invoke-super {p0}, Lcom/google/common/collect/Maps$h;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method e()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2907
    new-instance v0, Lcom/google/common/collect/Maps$j$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$j$a;-><init>(Lcom/google/common/collect/Maps$j;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2951
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->d()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic h()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2888
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->e()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2969
    new-instance v0, Lcom/google/common/collect/Maps$j;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->c()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$j;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Maps$j;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 2888
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->d()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2956
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->c()Ljava/util/SortedMap;

    move-result-object v0

    .line 2959
    :goto_0
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    .line 2960
    iget-object v1, p0, Lcom/google/common/collect/Maps$j;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/Maps$j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2961
    return-object v0

    .line 2963
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->c()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    goto :goto_0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2974
    new-instance v0, Lcom/google/common/collect/Maps$j;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->c()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$j;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Maps$j;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2979
    new-instance v0, Lcom/google/common/collect/Maps$j;

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$j;->c()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Maps$j;->b:Lcom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Maps$j;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Predicate;)V

    return-object v0
.end method
