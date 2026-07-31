.class public Lgx$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/Cache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/cache/Cache",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final a:Lgx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/cache/CacheBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilder",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4772
    new-instance v0, Lgx;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lgx;-><init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lgx$m;-><init>(Lgx;)V

    .line 4773
    return-void
.end method

.method private constructor <init>(Lgx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4776
    iput-object p1, p0, Lgx$m;->a:Lgx;

    .line 4777
    return-void
.end method

.method synthetic constructor <init>(Lgx;Lgx$1;)V
    .locals 0

    .prologue
    .line 4768
    invoke-direct {p0, p1}, Lgx$m;-><init>(Lgx;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4836
    iget-object v0, p0, Lgx$m;->a:Lgx;

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .prologue
    .line 4851
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0}, Lgx;->s()V

    .line 4852
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable",
            "<+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 4789
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4790
    iget-object v0, p0, Lgx$m;->a:Lgx;

    new-instance v1, Lgx$m$1;

    invoke-direct {v1, p0, p2}, Lgx$m$1;-><init>(Lgx$m;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lgx;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4800
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0, p1}, Lgx;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 4784
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0, p1}, Lgx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 4815
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4816
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0, p1}, Lgx;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4817
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .prologue
    .line 4826
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0}, Lgx;->clear()V

    .line 4827
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4821
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0, p1}, Lgx;->c(Ljava/lang/Iterable;)V

    .line 4822
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 4805
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0, p1, p2}, Lgx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4806
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4810
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0, p1}, Lgx;->putAll(Ljava/util/Map;)V

    .line 4811
    return-void
.end method

.method public size()J
    .locals 2

    .prologue
    .line 4831
    iget-object v0, p0, Lgx$m;->a:Lgx;

    invoke-virtual {v0}, Lgx;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lcom/google/common/cache/CacheStats;
    .locals 5

    .prologue
    .line 4841
    new-instance v1, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;

    invoke-direct {v1}, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;-><init>()V

    .line 4842
    iget-object v0, p0, Lgx$m;->a:Lgx;

    iget-object v0, v0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v1, v0}, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lcom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 4843
    iget-object v0, p0, Lgx$m;->a:Lgx;

    iget-object v2, v0, Lgx;->d:[Lgx$q;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 4844
    iget-object v4, v4, Lgx$q;->n:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v1, v4}, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lcom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 4843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4846
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->snapshot()Lcom/google/common/cache/CacheStats;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 4859
    new-instance v0, Lgx$n;

    iget-object v1, p0, Lgx$m;->a:Lgx;

    invoke-direct {v0, v1}, Lgx$n;-><init>(Lgx;)V

    return-object v0
.end method
