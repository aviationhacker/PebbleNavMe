.class public final Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field private final a:Lgy;

.field private final b:Lgy;

.field private final c:Lgy;

.field private final d:Lgy;

.field private final e:Lgy;

.field private final f:Lgy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {}, Lgz;->a()Lgy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->a:Lgy;

    .line 206
    invoke-static {}, Lgz;->a()Lgy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->b:Lgy;

    .line 207
    invoke-static {}, Lgz;->a()Lgy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->c:Lgy;

    .line 208
    invoke-static {}, Lgz;->a()Lgy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->d:Lgy;

    .line 209
    invoke-static {}, Lgz;->a()Lgy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lgy;

    .line 210
    invoke-static {}, Lgz;->a()Lgy;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->f:Lgy;

    .line 215
    return-void
.end method


# virtual methods
.method public incrementBy(Lcom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 4

    .prologue
    .line 265
    invoke-interface {p1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->snapshot()Lcom/google/common/cache/CacheStats;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->a:Lgy;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->hitCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgy;->a(J)V

    .line 267
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->b:Lgy;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->missCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgy;->a(J)V

    .line 268
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->c:Lgy;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadSuccessCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgy;->a(J)V

    .line 269
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->d:Lgy;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->loadExceptionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgy;->a(J)V

    .line 270
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lgy;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->totalLoadTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgy;->a(J)V

    .line 271
    iget-object v1, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->f:Lgy;

    invoke-virtual {v0}, Lcom/google/common/cache/CacheStats;->evictionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lgy;->a(J)V

    .line 272
    return-void
.end method

.method public recordEviction()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->f:Lgy;

    invoke-interface {v0}, Lgy;->a()V

    .line 248
    return-void
.end method

.method public recordHits(I)V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->a:Lgy;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lgy;->a(J)V

    .line 223
    return-void
.end method

.method public recordLoadException(J)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->d:Lgy;

    invoke-interface {v0}, Lgy;->a()V

    .line 242
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lgy;

    invoke-interface {v0, p1, p2}, Lgy;->a(J)V

    .line 243
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->c:Lgy;

    invoke-interface {v0}, Lgy;->a()V

    .line 236
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lgy;

    invoke-interface {v0, p1, p2}, Lgy;->a(J)V

    .line 237
    return-void
.end method

.method public recordMisses(I)V
    .locals 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->b:Lgy;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lgy;->a(J)V

    .line 231
    return-void
.end method

.method public snapshot()Lcom/google/common/cache/CacheStats;
    .locals 14

    .prologue
    .line 252
    new-instance v1, Lcom/google/common/cache/CacheStats;

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->a:Lgy;

    .line 253
    invoke-interface {v0}, Lgy;->b()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->b:Lgy;

    .line 254
    invoke-interface {v0}, Lgy;->b()J

    move-result-wide v4

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->c:Lgy;

    .line 255
    invoke-interface {v0}, Lgy;->b()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->d:Lgy;

    .line 256
    invoke-interface {v0}, Lgy;->b()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->e:Lgy;

    .line 257
    invoke-interface {v0}, Lgy;->b()J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/common/cache/AbstractCache$SimpleStatsCounter;->f:Lgy;

    .line 258
    invoke-interface {v0}, Lgy;->b()J

    move-result-wide v12

    invoke-direct/range {v1 .. v13}, Lcom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    return-object v1
.end method
