.class Lkm$b;
.super Lkm$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$r",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 869
    invoke-direct {p0, p1, p2}, Lkm$r;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    .line 870
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 912
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 919
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 920
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 921
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 926
    if-ne p1, p0, :cond_0

    .line 927
    const/4 v0, 0x1

    .line 930
    :goto_0
    return v0

    .line 929
    :cond_0
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 931
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 875
    new-instance v0, Lkm$b$1;

    .line 876
    invoke-super {p0}, Lkm$r;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lkm$b$1;-><init>(Lkm$b;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 936
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 937
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 938
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 943
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 944
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 945
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 950
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 951
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->retainAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 952
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 898
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 900
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 905
    iget-object v1, p0, Lkm$b;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 906
    :try_start_0
    invoke-virtual {p0}, Lkm$b;->e()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
