.class public final Lmb$a;
.super Lmb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field final d:D


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$a;D)V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmb;-><init>(Lcom/google/common/util/concurrent/RateLimiter$a;Lmb$1;)V

    .line 276
    iput-wide p2, p0, Lmb$a;->d:D

    .line 277
    return-void
.end method


# virtual methods
.method a(DD)V
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 281
    iget-wide v2, p0, Lmb$a;->b:D

    .line 282
    iget-wide v4, p0, Lmb$a;->d:D

    mul-double/2addr v4, p1

    iput-wide v4, p0, Lmb$a;->b:D

    .line 283
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v4, v2, v4

    if-nez v4, :cond_0

    .line 285
    iget-wide v0, p0, Lmb$a;->b:D

    iput-wide v0, p0, Lmb$a;->a:D

    .line 291
    :goto_0
    return-void

    .line 287
    :cond_0
    cmpl-double v4, v2, v0

    if-nez v4, :cond_1

    :goto_1
    iput-wide v0, p0, Lmb$a;->a:D

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lmb$a;->a:D

    iget-wide v4, p0, Lmb$a;->b:D

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    goto :goto_1
.end method

.method b()D
    .locals 2

    .prologue
    .line 300
    iget-wide v0, p0, Lmb$a;->c:D

    return-wide v0
.end method

.method b(DD)J
    .locals 2

    .prologue
    .line 295
    const-wide/16 v0, 0x0

    return-wide v0
.end method
