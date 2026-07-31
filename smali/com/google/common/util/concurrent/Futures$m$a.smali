.class final Lcom/google/common/util/concurrent/Futures$m$a;
.super Llu$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures$m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llu",
        "<TV;",
        "Ljava/util/List",
        "<TV;>;>.a;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/util/concurrent/Futures$m;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$m;Lcom/google/common/collect/ImmutableCollection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;>;Z)V"
        }
    .end annotation

    .prologue
    .line 2086
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$m$a;->c:Lcom/google/common/util/concurrent/Futures$m;

    .line 2087
    invoke-direct {p0, p1, p2, p3}, Llu$a;-><init>(Llu;Lcom/google/common/collect/ImmutableCollection;Z)V

    .line 2088
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2084
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Futures$m$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/base/Optional",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2092
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2093
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 2094
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 2096
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
