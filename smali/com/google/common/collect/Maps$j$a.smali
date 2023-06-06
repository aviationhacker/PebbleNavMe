.class Lcom/google/common/collect/Maps$j$a;
.super Lcom/google/common/collect/Maps$h$b;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$h",
        "<TK;TV;>.b;",
        "Ljava/util/SortedSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/Maps$j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$j;)V
    .locals 0

    .prologue
    .line 2911
    iput-object p1, p0, Lcom/google/common/collect/Maps$j$a;->b:Lcom/google/common/collect/Maps$j;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$h$b;-><init>(Lcom/google/common/collect/Maps$h;)V

    return-void
.end method


# virtual methods
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
    .line 2914
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->b:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$j;->c()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->b:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$j;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2924
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->b:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$j;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2939
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->b:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$j;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->b:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Maps$j;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/google/common/collect/Maps$j$a;->b:Lcom/google/common/collect/Maps$j;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Maps$j;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method
