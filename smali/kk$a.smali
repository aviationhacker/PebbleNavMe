.class Lkk$a;
.super Lkl$g;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkl",
        "<TR;TC;TV;>.g;",
        "Ljava/util/SortedMap",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkk;


# direct methods
.method private constructor <init>(Lkk;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lkk$a;->a:Lkk;

    invoke-direct {p0, p1}, Lkl$g;-><init>(Lkl;)V

    return-void
.end method

.method synthetic constructor <init>(Lkk;Lkk$1;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lkk$a;-><init>(Lkk;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0}, Lkl$g;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TR;>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lkk$a;->a:Lkk;

    invoke-static {v0}, Lkk;->a(Lkk;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/google/common/collect/Maps$s;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$s;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lkk$a;->a:Lkk;

    invoke-static {v0}, Lkk;->a(Lkk;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic h()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lkk$a;->d()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lkk;

    iget-object v1, p0, Lkk$a;->a:Lkk;

    invoke-static {v1}, Lkk;->a(Lkk;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lkk$a;->a:Lkk;

    iget-object v2, v2, Lkk;->b:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lkk;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 125
    invoke-virtual {v0}, Lkk;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lkk$a;->c()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lkk$a;->a:Lkk;

    invoke-static {v0}, Lkk;->a(Lkk;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 130
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v0, Lkk;

    iget-object v1, p0, Lkk$a;->a:Lkk;

    invoke-static {v1}, Lkk;->a(Lkk;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lkk$a;->a:Lkk;

    iget-object v2, v2, Lkk;->b:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lkk;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 133
    invoke-virtual {v0}, Lkk;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lkk;

    iget-object v1, p0, Lkk$a;->a:Lkk;

    invoke-static {v1}, Lkk;->a(Lkk;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    iget-object v2, p0, Lkk$a;->a:Lkk;

    iget-object v2, v2, Lkk;->b:Lcom/google/common/base/Supplier;

    invoke-direct {v0, v1, v2}, Lkk;-><init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V

    .line 140
    invoke-virtual {v0}, Lkk;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method
