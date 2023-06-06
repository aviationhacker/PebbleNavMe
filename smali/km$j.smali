.class Lkm$j;
.super Lkm$o;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$o;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient e:Ljava/util/Set;
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
.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lkm$o;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 970
    return-void
.end method


# virtual methods
.method b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 975
    invoke-super {p0}, Lkm$o;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 963
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 980
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 982
    monitor-exit v1

    .line 983
    return-void

    .line 982
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 987
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 994
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 995
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 996
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
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
    .line 1001
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_0
    iget-object v0, p0, Lkm$j;->e:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lkm$j;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lkm$j;->e:Ljava/util/Set;

    .line 1005
    :cond_0
    iget-object v0, p0, Lkm$j;->e:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1006
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
    .line 1073
    if-ne p1, p0, :cond_0

    .line 1074
    const/4 v0, 0x1

    .line 1077
    :goto_0
    return v0

    .line 1076
    :cond_0
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1077
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1011
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1013
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1083
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1084
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 1018
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1019
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1020
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1026
    :try_start_0
    iget-object v0, p0, Lkm$j;->c:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lkm$j;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lkm$j;->c:Ljava/util/Set;

    .line 1029
    :cond_0
    iget-object v0, p0, Lkm$j;->c:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1030
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1035
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1037
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1042
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1043
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1044
    monitor-exit v1

    .line 1045
    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 1049
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1050
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1051
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1056
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1057
    :try_start_0
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1058
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1063
    iget-object v1, p0, Lkm$j;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1064
    :try_start_0
    iget-object v0, p0, Lkm$j;->d:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 1065
    invoke-virtual {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lkm$j;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->b(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lkm$j;->d:Ljava/util/Collection;

    .line 1067
    :cond_0
    iget-object v0, p0, Lkm$j;->d:Ljava/util/Collection;

    monitor-exit v1

    return-object v0

    .line 1068
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
