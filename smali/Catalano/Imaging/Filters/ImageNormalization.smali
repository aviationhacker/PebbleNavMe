.class public LCatalano/Imaging/Filters/ImageNormalization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->a:F

    .line 38
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->b:F

    .line 75
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, 0x43200000    # 160.0f

    iput v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->a:F

    .line 38
    const/high16 v0, 0x43160000    # 150.0f

    iput v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->b:F

    .line 83
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/ImageNormalization;->setMean(F)V

    .line 84
    invoke-virtual {p0, p2}, LCatalano/Imaging/Filters/ImageNormalization;->setVariance(F)V

    .line 85
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 92
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 93
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    .line 95
    invoke-static {p1}, LCatalano/Imaging/Tools/ImageStatistics;->Mean(LCatalano/Imaging/FastBitmap;)F

    move-result v7

    .line 96
    invoke-static {p1, v7}, LCatalano/Imaging/Tools/ImageStatistics;->Variance(LCatalano/Imaging/FastBitmap;F)F

    move-result v8

    move v4, v1

    .line 98
    :goto_0
    if-ge v4, v6, :cond_5

    move v3, v1

    .line 99
    :goto_1
    if-ge v3, v5, :cond_3

    .line 101
    invoke-virtual {p1, v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    .line 102
    iget v9, p0, LCatalano/Imaging/Filters/ImageNormalization;->b:F

    int-to-float v10, v0

    sub-float/2addr v10, v7

    float-to-double v10, v10

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v10, v10

    mul-float/2addr v9, v10

    div-float/2addr v9, v8

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v9, v10

    .line 104
    int-to-float v0, v0

    cmpl-float v0, v0, v7

    if-lez v0, :cond_2

    .line 105
    iget v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->a:F

    add-float/2addr v0, v9

    float-to-int v0, v0

    .line 111
    :goto_2
    if-le v0, v2, :cond_0

    move v0, v2

    .line 112
    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 114
    :cond_1
    invoke-virtual {p1, v4, v3, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 99
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 108
    :cond_2
    iget v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->a:F

    sub-float/2addr v0, v9

    float-to-int v0, v0

    goto :goto_2

    .line 98
    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 119
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageNormalization only works with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_5
    return-void
.end method

.method public getMean()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->a:F

    return v0
.end method

.method public getVariance()F
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->b:F

    return v0
.end method

.method public setMean(F)V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->a:F

    .line 54
    return-void
.end method

.method public setVariance(F)V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/ImageNormalization;->b:F

    .line 70
    return-void
.end method
