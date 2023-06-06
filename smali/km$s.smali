.class Lkm$s;
.super Lkm$k;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/SetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$k",
        "<TK;TV;>;",
        "Lcom/google/common/collect/SetMultimap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 752
    invoke-direct {p0, p1, p2}, Lkm$k;-><init>(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V

    .line 753
    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 757
    invoke-super {p0}, Lkm$k;->b()Lcom/google/common/collect/Multimap;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SetMultimap;

    return-object v0
.end method

.method synthetic b()Lcom/google/common/collect/Multimap;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lkm$s;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lkm$s;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lkm$s;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 783
    iget-object v1, p0, Lkm$s;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 784
    :try_start_0
    iget-object v0, p0, Lkm$s;->f:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 785
    invoke-virtual {p0}, Lkm$s;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lkm$s;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lkm$s;->f:Ljava/util/Set;

    .line 787
    :cond_0
    iget-object v0, p0, Lkm$s;->f:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0, p1}, Lkm$s;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 762
    iget-object v1, p0, Lkm$s;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lkm$s;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lkm$s;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 764
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
    .line 747
    invoke-virtual {p0, p1}, Lkm$s;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 769
    iget-object v1, p0, Lkm$s;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 770
    :try_start_0
    invoke-virtual {p0}, Lkm$s;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 771
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
    .line 747
    invoke-virtual {p0, p1, p2}, Lkm$s;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 776
    iget-object v1, p0, Lkm$s;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 777
    :try_start_0
    invoke-virtual {p0}, Lkm$s;->a()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
