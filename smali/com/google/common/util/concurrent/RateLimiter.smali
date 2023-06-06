.class public abstract Lcom/google/common/util/concurrent/RateLimiter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/RateLimiter$a;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/RateLimiter$a;

.field private volatile b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V
    .locals 1

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/RateLimiter$a;

    iput-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->a:Lcom/google/common/util/concurrent/RateLimiter$a;

    .line 207
    return-void
.end method

.method static a(Lcom/google/common/util/concurrent/RateLimiter$a;D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lmb$a;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p0, v2, v3}, Lmb$a;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;D)V

    .line 140
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 141
    return-object v0
.end method

.method static a(Lcom/google/common/util/concurrent/RateLimiter$a;DJLjava/util/concurrent/TimeUnit;D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    new-instance v0, Lmb$b;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p5

    move-wide v5, p6

    invoke-direct/range {v0 .. v6}, Lmb$b;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;JLjava/util/concurrent/TimeUnit;D)V

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 180
    return-object v0
.end method

.method private a(JJ)Z
    .locals 3

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->a(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    cmp-long v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 435
    if-lez p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Requested permits (%s) must be positive"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 436
    return p0

    :cond_0
    move v0, v2

    .line 435
    goto :goto_0
.end method

.method private b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->b:Ljava/lang/Object;

    .line 194
    if-nez v0, :cond_1

    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->b:Ljava/lang/Object;

    .line 197
    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->b:Ljava/lang/Object;

    .line 200
    :cond_0
    monitor-exit p0

    .line 202
    :cond_1
    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static create(D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Lcom/google/common/util/concurrent/RateLimiter$a;->b()Lcom/google/common/util/concurrent/RateLimiter$a;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->a(Lcom/google/common/util/concurrent/RateLimiter$a;D)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public static create(DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "warmupPeriod must not be negative: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {}, Lcom/google/common/util/concurrent/RateLimiter$a;->b()Lcom/google/common/util/concurrent/RateLimiter$a;

    move-result-object v1

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v1 .. v8}, Lcom/google/common/util/concurrent/RateLimiter;->a(Lcom/google/common/util/concurrent/RateLimiter$a;DJLjava/util/concurrent/TimeUnit;D)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 169
    goto :goto_0
.end method


# virtual methods
.method protected abstract a()D
.end method

.method final a(I)J
    .locals 4

    .prologue
    .line 288
    invoke-static {p1}, Lcom/google/common/util/concurrent/RateLimiter;->b(I)I

    .line 289
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->a:Lcom/google/common/util/concurrent/RateLimiter$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/RateLimiter$a;->a()J

    move-result-wide v2

    invoke-virtual {p0, p1, v2, v3}, Lcom/google/common/util/concurrent/RateLimiter;->a(IJ)J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(IJ)J
    .locals 4

    .prologue
    .line 378
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/RateLimiter;->b(IJ)J

    move-result-wide v0

    .line 379
    sub-long/2addr v0, p2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract a(J)J
.end method

.method protected abstract a(DJ)V
.end method

.method public acquire()D
    .locals 2

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/RateLimiter;->acquire(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public acquire(I)D
    .locals 6

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->a(I)J

    move-result-wide v0

    .line 277
    iget-object v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->a:Lcom/google/common/util/concurrent/RateLimiter$a;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$a;->a(J)V

    .line 278
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    long-to-double v0, v0

    mul-double/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method protected abstract b(IJ)J
.end method

.method public final getRate()D
    .locals 4

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/RateLimiter;->a()D

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final setRate(D)V
    .locals 5

    .prologue
    .line 229
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 230
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "rate must be positive"

    .line 229
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 231
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->b()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->a:Lcom/google/common/util/concurrent/RateLimiter$a;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/RateLimiter$a;->a()J

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/common/util/concurrent/RateLimiter;->a(DJ)V

    .line 233
    monitor-exit v1

    .line 234
    return-void

    .line 230
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 401
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v1, "RateLimiter[stableRate=%3.1fqps]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/RateLimiter;->getRate()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .locals 4

    .prologue
    .line 337
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(I)Z
    .locals 3

    .prologue
    .line 323
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    .prologue
    .line 353
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 354
    invoke-static {p1}, Lcom/google/common/util/concurrent/RateLimiter;->b(I)I

    .line 356
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->b()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 357
    :try_start_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/RateLimiter;->a:Lcom/google/common/util/concurrent/RateLimiter$a;

    invoke-virtual {v3}, Lcom/google/common/util/concurrent/RateLimiter$a;->a()J

    move-result-wide v4

    .line 358
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->a(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    const/4 v0, 0x0

    monitor-exit v2

    .line 365
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-virtual {p0, p1, v4, v5}, Lcom/google/common/util/concurrent/RateLimiter;->a(IJ)J

    move-result-wide v0

    .line 363
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    iget-object v2, p0, Lcom/google/common/util/concurrent/RateLimiter;->a:Lcom/google/common/util/concurrent/RateLimiter$a;

    invoke-virtual {v2, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$a;->a(J)V

    .line 365
    const/4 v0, 0x1

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
