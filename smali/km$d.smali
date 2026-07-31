.class Lkm$d;
.super Lkm$j;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
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
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation
.end field

.field private transient b:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/collect/BiMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;)V"
        }
    .end annotation

    .prologue
    .line 1167
    invoke-direct {p0, p1, p2}, Lkm$j;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1168
    iput-object p3, p0, Lkm$d;->b:Lcom/google/common/collect/BiMap;

    .line 1169
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;Lkm$1;)V
    .locals 0

    .prologue
    .line 1160
    invoke-direct {p0, p1, p2, p3}, Lkm$d;-><init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;)V

    return-void
.end method


# virtual methods
.method a()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1173
    invoke-super {p0}, Lkm$j;->b()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1159
    invoke-virtual {p0}, Lkm$d;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1159
    invoke-virtual {p0}, Lkm$d;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1188
    iget-object v1, p0, Lkm$d;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1189
    :try_start_0
    invoke-virtual {p0}, Lkm$d;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v1, p0, Lkm$d;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1196
    :try_start_0
    iget-object v0, p0, Lkm$d;->b:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    .line 1197
    new-instance v0, Lkm$d;

    invoke-virtual {p0}, Lkm$d;->a()Lcom/google/common/collect/BiMap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v2

    iget-object v3, p0, Lkm$d;->h:Ljava/lang/Object;

    invoke-direct {v0, v2, v3, p0}, Lkm$d;-><init>(Lcom/google/common/collect/BiMap;Ljava/lang/Object;Lcom/google/common/collect/BiMap;)V

    iput-object v0, p0, Lkm$d;->b:Lcom/google/common/collect/BiMap;

    .line 1199
    :cond_0
    iget-object v0, p0, Lkm$d;->b:Lcom/google/common/collect/BiMap;

    monitor-exit v1

    return-object v0

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1159
    invoke-virtual {p0}, Lkm$d;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1178
    iget-object v1, p0, Lkm$d;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 1179
    :try_start_0
    iget-object v0, p0, Lkm$d;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1180
    invoke-virtual {p0}, Lkm$d;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lkm$d;->h:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkm;->a(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lkm$d;->a:Ljava/util/Set;

    .line 1182
    :cond_0
    iget-object v0, p0, Lkm$d;->a:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
