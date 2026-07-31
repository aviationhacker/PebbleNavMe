.class public LCatalano/Imaging/Concurrent/Filters/RosinThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CalculateThreshold(LCatalano/Imaging/FastBitmap;)I
    .locals 14

    .prologue
    .line 74
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    new-instance v0, LCatalano/Imaging/Tools/ImageStatistics;

    invoke-direct {v0, p1}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 77
    invoke-virtual {v0}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v10

    .line 81
    invoke-static {v10}, LCatalano/Math/Matrix;->MaxIndex([I)I

    move-result v8

    .line 82
    aget v11, v10, v8

    move v0, v8

    move v9, v8

    .line 85
    :goto_0
    array-length v1, v10

    if-ge v0, v1, :cond_0

    .line 86
    aget v1, v10, v0

    if-lez v1, :cond_5

    move v1, v0

    .line 85
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v9, v1

    goto :goto_0

    .line 91
    :cond_0
    aget v12, v10, v9

    .line 93
    int-to-double v0, v8

    int-to-double v2, v11

    int-to-double v4, v9

    int-to-double v6, v12

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->Euclidean(DDDD)D

    move-result-wide v4

    .line 96
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_3

    .line 98
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    move v3, v8

    move v2, v9

    .line 100
    :goto_2
    if-ge v3, v9, :cond_4

    .line 103
    aget v6, v10, v3

    .line 105
    sub-int v7, v9, v8

    sub-int v6, v11, v6

    mul-int/2addr v6, v7

    sub-int v7, v8, v3

    sub-int v13, v12, v11

    mul-int/2addr v7, v13

    sub-int/2addr v6, v7

    int-to-double v6, v6

    .line 106
    div-double/2addr v6, v4

    .line 108
    cmpl-double v13, v6, v0

    if-lez v13, :cond_1

    aget v13, v10, v3

    if-lez v13, :cond_1

    .line 109
    double-to-int v0, v6

    int-to-double v0, v0

    move v2, v3

    .line 100
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rosin Threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v9

    .line 114
    :cond_4
    return v2

    :cond_5
    move v1, v9

    goto :goto_1
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 55
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0, p1}, LCatalano/Imaging/Concurrent/Filters/RosinThreshold;->CalculateThreshold(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 58
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Threshold;

    invoke-direct {v1, v0}, LCatalano/Imaging/Concurrent/Filters/Threshold;-><init>(I)V

    .line 59
    invoke-virtual {v1, p1}, LCatalano/Imaging/Concurrent/Filters/Threshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 65
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rosin Threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
