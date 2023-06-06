.class public Lkk;
.super Lkl;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/RowSortedTable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkl",
        "<TR;TC;TV;>;",
        "Lcom/google/common/collect/RowSortedTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;Lcom/google/common/base/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Map",
            "<TC;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lkl;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    .line 61
    return-void
.end method

.method static synthetic a(Lkk;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lkk;->h()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lkk;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method


# virtual methods
.method e()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lkk$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkk$a;-><init>(Lkk;Lkk$1;)V

    return-object v0
.end method

.method synthetic f()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lkk;->e()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lkk;->rowKeySet()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p0}, Lkk;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lkk;->rowMap()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 86
    invoke-super {p0}, Lkl;->rowMap()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method
