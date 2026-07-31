.class Lkm$t;
.super Lkm$j;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkm$j",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1099
    invoke-direct {p0, p1, p2}, Lkm$j;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1100
    return-void
.end method


# virtual methods
.method synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1095
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1095
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 1109
    iget-object v1, p0, Lkm$t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1110
    :try_start_0
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1104
    invoke-super {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1116
    iget-object v1, p0, Lkm$t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1117
    :try_start_0
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1123
    iget-object v1, p0, Lkm$t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1124
    :try_start_0
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v2, p0, Lkm$t;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1125
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v1, p0, Lkm$t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1131
    :try_start_0
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1137
    iget-object v1, p0, Lkm$t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1138
    :try_start_0
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v2, p0, Lkm$t;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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
    .line 1144
    iget-object v1, p0, Lkm$t;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1145
    :try_start_0
    invoke-virtual {p0}, Lkm$t;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    iget-object v2, p0, Lkm$t;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
