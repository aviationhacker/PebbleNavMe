.class public LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:D

.field private c:LCatalano/Imaging/FastBitmap;

.field private d:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    .line 43
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b:D

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    .line 43
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b:D

    .line 89
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    .line 90
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    .line 43
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b:D

    .line 98
    iput p1, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    .line 99
    iput-wide p2, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b:D

    .line 100
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->c:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 141
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v1, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->c:LCatalano/Imaging/FastBitmap;

    .line 142
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-direct {v1, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    iput-object v1, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->d:LCatalano/Imaging/FastBitmap;

    .line 144
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Maximum;

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    invoke-direct {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Maximum;-><init>(I)V

    .line 145
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->c:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Maximum;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 147
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Minimum;

    iget v2, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    invoke-direct {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Minimum;-><init>(I)V

    .line 148
    iget-object v2, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->d:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1, v2}, LCatalano/Imaging/Concurrent/Filters/Minimum;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 150
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 152
    new-array v4, v3, [Ljava/lang/Thread;

    .line 153
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 156
    :goto_0
    if-ge v1, v3, :cond_0

    .line 157
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold$a;-><init>(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 158
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 159
    add-int/2addr v2, v5

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 165
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 171
    :cond_1
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)LCatalano/Imaging/FastBitmap;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->d:LCatalano/Imaging/FastBitmap;

    return-object v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;)D
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b:D

    return-wide v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a(LCatalano/Imaging/FastBitmap;)V

    .line 108
    return-void

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bernsen Threshold only work in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContrastThreshold()D
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    return v0
.end method

.method public setContrastThreshold(D)V
    .locals 3

    .prologue
    .line 76
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->b:D

    .line 77
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/BernsenThreshold;->a:I

    .line 61
    return-void
.end method
