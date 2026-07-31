.class public LCatalano/Imaging/Concurrent/Filters/ImageNormalization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->a:F

    .line 39
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->b:F

    .line 79
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->a:F

    .line 39
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->b:F

    .line 87
    invoke-virtual {p0, p1}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->setMean(F)V

    .line 88
    invoke-virtual {p0, p2}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->setVariance(F)V

    .line 89
    return-void
.end method

.method static synthetic a(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->b:F

    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-static {p1}, LCatalano/Imaging/Tools/ImageStatistics;->Mean(LCatalano/Imaging/FastBitmap;)F

    move-result v1

    iput v1, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->c:F

    .line 102
    invoke-static {p1}, LCatalano/Imaging/Tools/ImageStatistics;->Variance(LCatalano/Imaging/FastBitmap;)F

    move-result v1

    iput v1, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->d:F

    .line 104
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    .line 106
    new-array v4, v3, [Ljava/lang/Thread;

    .line 107
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    div-int v5, v1, v3

    move v1, v0

    move v2, v0

    .line 110
    :goto_0
    if-ge v1, v3, :cond_0

    .line 111
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;

    new-instance v8, LCatalano/Imaging/Concurrent/Share;

    add-int v9, v2, v5

    invoke-direct {v8, p1, v2, v9}, LCatalano/Imaging/Concurrent/Share;-><init>(LCatalano/Imaging/FastBitmap;II)V

    invoke-direct {v7, p0, v8}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization$a;-><init>(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;LCatalano/Imaging/Concurrent/Share;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v6, v4, v1

    .line 112
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 113
    add-int/2addr v2, v5

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    .line 119
    :try_start_0
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 125
    :cond_1
    return-void
.end method

.method static synthetic b(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->c:F

    return v0
.end method

.method static synthetic c(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->d:F

    return v0
.end method

.method static synthetic d(LCatalano/Imaging/Concurrent/Filters/ImageNormalization;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->a:F

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0, p1}, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->a(LCatalano/Imaging/FastBitmap;)V

    .line 97
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageNormalization only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMean()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->a:F

    return v0
.end method

.method public getVariance()F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->b:F

    return v0
.end method

.method public setMean(F)V
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->a:F

    .line 58
    return-void
.end method

.method public setVariance(F)V
    .locals 2

    .prologue
    .line 73
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LCatalano/Imaging/Concurrent/Filters/ImageNormalization;->b:F

    .line 74
    return-void
.end method
