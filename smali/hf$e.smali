.class public Lhf$e;
.super Lhf$h;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableSet"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<TK;TV;>.h;",
        "Ljava/util/NavigableSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lhf;


# direct methods
.method public constructor <init>(Lhf;Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 1049
    iput-object p1, p0, Lhf$e;->b:Lhf;

    .line 1050
    invoke-direct {p0, p1, p2}, Lhf$h;-><init>(Lhf;Ljava/util/SortedMap;)V

    .line 1051
    return-void
.end method


# virtual methods
.method a()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1055
    invoke-super {p0}, Lhf$h;->b()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lhf$e;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1110
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lhf$e;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lhf$e;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method synthetic b()Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1070
    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1095
    invoke-virtual {p0}, Lhf$e;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1090
    new-instance v0, Lhf$e;

    iget-object v1, p0, Lhf$e;->b:Lhf;

    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf$e;-><init>(Lhf;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1065
    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1105
    new-instance v0, Lhf$e;

    iget-object v1, p0, Lhf$e;->b:Lhf;

    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf$e;-><init>(Lhf;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lhf$e;->a(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .prologue
    .line 1060
    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1080
    invoke-virtual {p0}, Lhf$e;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1085
    invoke-virtual {p0}, Lhf$e;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->a(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1116
    new-instance v0, Lhf$e;

    iget-object v1, p0, Lhf$e;->b:Lhf;

    .line 1117
    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf$e;-><init>(Lhf;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0, p1, p2}, Lhf$e;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v0, Lhf$e;

    iget-object v1, p0, Lhf$e;->b:Lhf;

    invoke-virtual {p0}, Lhf$e;->a()Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lhf$e;-><init>(Lhf;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lhf$e;->b(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
