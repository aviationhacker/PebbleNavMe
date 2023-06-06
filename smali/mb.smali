.class public abstract Lmb;
.super Lcom/google/common/util/concurrent/RateLimiter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmb$a;,
        Lmb$b;
    }
.end annotation


# instance fields
.field a:D

.field b:D

.field c:D

.field private d:J


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V
    .locals 2

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V

    .line 325
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmb;->d:J

    .line 329
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;Lmb$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lmb;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;)V

    return-void
.end method


# virtual methods
.method final a()D
    .locals 4

    .prologue
    .line 343
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lmb;->c:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method final a(J)J
    .locals 2

    .prologue
    .line 348
    iget-wide v0, p0, Lmb;->d:J

    return-wide v0
.end method

.method abstract a(DD)V
.end method

.method final a(DJ)V
    .locals 5

    .prologue
    .line 333
    invoke-virtual {p0, p3, p4}, Lmb;->b(J)V

    .line 334
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, p1

    .line 335
    iput-wide v0, p0, Lmb;->c:D

    .line 336
    invoke-virtual {p0, p1, p2, v0, v1}, Lmb;->a(DD)V

    .line 337
    return-void
.end method

.method abstract b()D
.end method

.method abstract b(DD)J
.end method

.method final b(IJ)J
    .locals 10

    .prologue
    .line 353
    invoke-virtual {p0, p2, p3}, Lmb;->b(J)V

    .line 354
    iget-wide v0, p0, Lmb;->d:J

    .line 355
    int-to-double v2, p1

    iget-wide v4, p0, Lmb;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 356
    int-to-double v4, p1

    sub-double/2addr v4, v2

    .line 357
    iget-wide v6, p0, Lmb;->a:D

    invoke-virtual {p0, v6, v7, v2, v3}, Lmb;->b(DD)J

    move-result-wide v6

    iget-wide v8, p0, Lmb;->c:D

    mul-double/2addr v4, v8

    double-to-long v4, v4

    add-long/2addr v4, v6

    .line 361
    :try_start_0
    iget-wide v6, p0, Lmb;->d:J

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/math/LongMath;->checkedAdd(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lmb;->d:J
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    iget-wide v4, p0, Lmb;->a:D

    sub-double v2, v4, v2

    iput-wide v2, p0, Lmb;->a:D

    .line 366
    return-wide v0

    .line 362
    :catch_0
    move-exception v4

    .line 363
    const-wide v4, 0x7fffffffffffffffL

    iput-wide v4, p0, Lmb;->d:J

    goto :goto_0
.end method

.method b(J)V
    .locals 9

    .prologue
    .line 389
    iget-wide v0, p0, Lmb;->d:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 390
    iget-wide v0, p0, Lmb;->b:D

    iget-wide v2, p0, Lmb;->a:D

    iget-wide v4, p0, Lmb;->d:J

    sub-long v4, p1, v4

    long-to-double v4, v4

    .line 392
    invoke-virtual {p0}, Lmb;->b()D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 390
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lmb;->a:D

    .line 393
    iput-wide p1, p0, Lmb;->d:J

    .line 395
    :cond_0
    return-void
.end method
