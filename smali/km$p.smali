.class Lkm$p;
.super Lkm$e;
.source "SourceFile"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$e",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Queue;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1652
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkm$e;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lkm$1;)V

    .line 1653
    return-void
.end method


# virtual methods
.method synthetic a()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lkm$p;->d()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lkm$p;->d()Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1657
    invoke-super {p0}, Lkm$e;->a()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1662
    iget-object v1, p0, Lkm$p;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1663
    :try_start_0
    invoke-virtual {p0}, Lkm$p;->d()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1664
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 1669
    iget-object v1, p0, Lkm$p;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1670
    :try_start_0
    invoke-virtual {p0}, Lkm$p;->d()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1671
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1676
    iget-object v1, p0, Lkm$p;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1677
    :try_start_0
    invoke-virtual {p0}, Lkm$p;->d()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1678
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1683
    iget-object v1, p0, Lkm$p;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1684
    :try_start_0
    invoke-virtual {p0}, Lkm$p;->d()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1685
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 1690
    iget-object v1, p0, Lkm$p;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1691
    :try_start_0
    invoke-virtual {p0}, Lkm$p;->d()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
