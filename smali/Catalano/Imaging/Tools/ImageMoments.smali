.class public final LCatalano/Imaging/Tools/ImageMoments;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCentralMoment(LCatalano/Imaging/FastBitmap;II)D
    .locals 16

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 78
    invoke-virtual/range {p0 .. p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 80
    invoke-static/range {p0 .. p0}, LCatalano/Imaging/Tools/ImageMoments;->getCentroid(LCatalano/Imaging/FastBitmap;)LCatalano/Core/DoublePoint;

    move-result-object v8

    .line 82
    const-wide/16 v4, 0x0

    .line 83
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_1

    .line 84
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_0

    .line 85
    int-to-double v10, v3

    iget-wide v12, v8, LCatalano/Core/DoublePoint;->x:D

    sub-double/2addr v10, v12

    move/from16 v0, p1

    int-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    int-to-double v12, v2

    iget-wide v14, v8, LCatalano/Core/DoublePoint;->y:D

    sub-double/2addr v12, v14

    move/from16 v0, p2

    int-to-double v14, v0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    int-to-double v12, v9

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 83
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 88
    :cond_1
    return-wide v4
.end method

.method public static getCentroid(LCatalano/Imaging/FastBitmap;)LCatalano/Core/DoublePoint;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 97
    invoke-static {p0, v4, v4}, LCatalano/Imaging/Tools/ImageMoments;->getRawMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 98
    invoke-static {p0, v5, v4}, LCatalano/Imaging/Tools/ImageMoments;->getRawMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 99
    invoke-static {p0, v4, v5}, LCatalano/Imaging/Tools/ImageMoments;->getRawMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 100
    div-double/2addr v2, v0

    .line 101
    div-double v0, v4, v0

    .line 102
    new-instance v4, LCatalano/Core/DoublePoint;

    invoke-direct {v4, v2, v3, v0, v1}, LCatalano/Core/DoublePoint;-><init>(DD)V

    return-object v4
.end method

.method public static getCovarianceXY(LCatalano/Imaging/FastBitmap;II)D
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 113
    invoke-static {p0, v0, v0}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 114
    invoke-static {p0, v2, v2}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 115
    div-double v0, v2, v0

    return-wide v0
.end method

.method public static getNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D
    .locals 4

    .prologue
    .line 199
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    .line 200
    invoke-static {p0, p1, p2}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 201
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 202
    div-double v0, v2, v0

    return-wide v0
.end method

.method public static getOrientation(LCatalano/Imaging/FastBitmap;)D
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-static {p0, v0, v0}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 151
    invoke-static {p0, v5, v4}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 152
    invoke-static {p0, v4, v5}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 154
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v8

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    return-wide v0
.end method

.method public static getProjectionKurtosis(LCatalano/Imaging/FastBitmap;)LCatalano/Core/DoublePoint;
    .locals 12

    .prologue
    const/4 v4, 0x4

    const/4 v7, 0x2

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const/4 v6, 0x0

    .line 180
    invoke-static {p0, v4, v6}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 181
    invoke-static {p0, v7, v6}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 182
    invoke-static {p0, v6, v4}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 183
    invoke-static {p0, v6, v7}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v6

    .line 185
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    sub-double/2addr v0, v10

    .line 186
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double v2, v4, v2

    sub-double/2addr v2, v10

    .line 188
    new-instance v4, LCatalano/Core/DoublePoint;

    invoke-direct {v4, v0, v1, v2, v3}, LCatalano/Core/DoublePoint;-><init>(DD)V

    return-object v4
.end method

.method public static getProjectionSkewness(LCatalano/Imaging/FastBitmap;)LCatalano/Core/DoublePoint;
    .locals 10

    .prologue
    const/4 v2, 0x3

    const/4 v7, 0x2

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    const/4 v6, 0x0

    .line 163
    invoke-static {p0, v2, v6}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 164
    invoke-static {p0, v6, v2}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 165
    invoke-static {p0, v7, v6}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 166
    invoke-static {p0, v6, v7}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v6

    .line 168
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v0, v4

    .line 169
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 171
    new-instance v4, LCatalano/Core/DoublePoint;

    invoke-direct {v4, v0, v1, v2, v3}, LCatalano/Core/DoublePoint;-><init>(DD)V

    return-object v4
.end method

.method public static getRawMoment(LCatalano/Imaging/FastBitmap;II)D
    .locals 12

    .prologue
    .line 56
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 57
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    .line 59
    const-wide/16 v2, 0x0

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    .line 61
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_0

    .line 62
    int-to-double v6, v1

    int-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v0

    int-to-double v10, p2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {p0, v1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_1
    return-wide v2
.end method

.method public static getVarianceX(LCatalano/Imaging/FastBitmap;II)D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 126
    invoke-static {p0, v3, v3}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 127
    const/4 v2, 0x2

    invoke-static {p0, v2, v3}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 128
    div-double v0, v2, v0

    return-wide v0
.end method

.method public static getVarianceY(LCatalano/Imaging/FastBitmap;II)D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-static {p0, v3, v3}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 140
    const/4 v2, 0x2

    invoke-static {p0, v3, v2}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 141
    div-double v0, v2, v0

    return-wide v0
.end method

.method public static getZaidNormalizedCentralMoment(LCatalano/Imaging/FastBitmap;II)D
    .locals 10

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 214
    invoke-static {p0, p1, p2}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v0

    .line 215
    invoke-static {p0, v6, v6}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 216
    invoke-static {p0, v7, v6}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 217
    invoke-static {p0, v6, v7}, LCatalano/Imaging/Tools/ImageMoments;->getCentralMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v6

    .line 219
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double/2addr v8, v2

    mul-double/2addr v0, v8

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    add-int v4, p1, p2

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    .line 220
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method
