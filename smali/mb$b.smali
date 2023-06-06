.class public final Lmb$b;
.super Lmb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final d:J

.field private e:D

.field private f:D

.field private g:D


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;JLjava/util/concurrent/TimeUnit;D)V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmb;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;Lmb$1;)V

    .line 215
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    iput-wide v0, p0, Lmb$b;->d:J

    .line 216
    iput-wide p5, p0, Lmb$b;->g:D

    .line 217
    return-void
.end method

.method private a(D)D
    .locals 5

    .prologue
    .line 255
    iget-wide v0, p0, Lmb$b;->c:D

    iget-wide v2, p0, Lmb$b;->e:D

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method a(DD)V
    .locals 11

    .prologue
    .line 221
    iget-wide v0, p0, Lmb$b;->b:D

    .line 222
    iget-wide v2, p0, Lmb$b;->g:D

    mul-double/2addr v2, p3

    .line 223
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    iget-wide v6, p0, Lmb$b;->d:J

    long-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v4, p3

    iput-wide v4, p0, Lmb$b;->f:D

    .line 224
    iget-wide v4, p0, Lmb$b;->f:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget-wide v8, p0, Lmb$b;->d:J

    long-to-double v8, v8

    mul-double/2addr v6, v8

    add-double v8, p3, v2

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lmb$b;->b:D

    .line 226
    sub-double/2addr v2, p3

    iget-wide v4, p0, Lmb$b;->b:D

    iget-wide v6, p0, Lmb$b;->f:D

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    iput-wide v2, p0, Lmb$b;->e:D

    .line 227
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v0, v2

    if-nez v2, :cond_0

    .line 229
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmb$b;->a:D

    .line 235
    :goto_0
    return-void

    .line 231
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-nez v2, :cond_1

    iget-wide v0, p0, Lmb$b;->b:D

    :goto_1
    iput-wide v0, p0, Lmb$b;->a:D

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lmb$b;->a:D

    iget-wide v4, p0, Lmb$b;->b:D

    mul-double/2addr v2, v4

    div-double v0, v2, v0

    goto :goto_1
.end method

.method b()D
    .locals 4

    .prologue
    .line 260
    iget-wide v0, p0, Lmb$b;->d:J

    long-to-double v0, v0

    iget-wide v2, p0, Lmb$b;->b:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method b(DD)J
    .locals 7

    .prologue
    .line 239
    iget-wide v0, p0, Lmb$b;->f:D

    sub-double v2, p1, v0

    .line 240
    const-wide/16 v0, 0x0

    .line 242
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 243
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 245
    invoke-direct {p0, v2, v3}, Lmb$b;->a(D)D

    move-result-wide v0

    sub-double/2addr v2, v4

    .line 246
    invoke-direct {p0, v2, v3}, Lmb$b;->a(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    mul-double/2addr v0, v4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 247
    sub-double/2addr p3, v4

    .line 250
    :cond_0
    long-to-double v0, v0

    iget-wide v2, p0, Lmb$b;->c:D

    mul-double/2addr v2, p3

    add-double/2addr v0, v2

    double-to-long v0, v0

    .line 251
    return-wide v0
.end method
