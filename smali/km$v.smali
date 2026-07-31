.class Lkm$v;
.super Lkm$s;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$s",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SortedSetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 805
    invoke-direct {p0, p1, p2}, Lkm$s;-><init>(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)V

    .line 806
    return-void
.end method


# virtual methods
.method synthetic a()Lcom/google/common/collect/SetMultimap;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Lkm$v;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method synthetic b()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Lkm$v;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Lkm$v;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 810
    invoke-super {p0}, Lkm$s;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedSetMultimap;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lkm$v;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lkm$v;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 815
    iget-object v1, p0, Lkm$v;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 816
    :try_start_0
    invoke-virtual {p0}, Lkm$v;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v2, p0, Lkm$v;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 817
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lkm$v;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lkm$v;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 822
    iget-object v1, p0, Lkm$v;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 823
    :try_start_0
    invoke-virtual {p0}, Lkm$v;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 824
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0, p1, p2}, Lkm$v;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0, p1, p2}, Lkm$v;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 829
    iget-object v1, p0, Lkm$v;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 830
    :try_start_0
    invoke-virtual {p0}, Lkm$v;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 836
    iget-object v1, p0, Lkm$v;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 837
    :try_start_0
    invoke-virtual {p0}, Lkm$v;->d()Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
