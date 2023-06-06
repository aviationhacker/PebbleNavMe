.class public LCatalano/Imaging/Tools/ImageStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LCatalano/Imaging/Tools/ImageHistogram;

.field private b:LCatalano/Imaging/Tools/ImageHistogram;

.field private c:LCatalano/Imaging/Tools/ImageHistogram;

.field private d:LCatalano/Imaging/Tools/ImageHistogram;

.field private e:I


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;I)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 101
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 103
    iput v1, p0, LCatalano/Imaging/Tools/ImageStatistics;->e:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->a:LCatalano/Imaging/Tools/ImageHistogram;

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->d:LCatalano/Imaging/Tools/ImageHistogram;

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->c:LCatalano/Imaging/Tools/ImageHistogram;

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->b:LCatalano/Imaging/Tools/ImageHistogram;

    .line 106
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    new-array v5, p2, [I

    move v2, v1

    .line 111
    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    .line 112
    :goto_1
    if-ge v0, v3, :cond_0

    .line 113
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 115
    mul-int/2addr v6, p2

    div-int/lit16 v6, v6, 0x100

    aget v7, v5, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 116
    iget v6, p0, LCatalano/Imaging/Tools/ImageStatistics;->e:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, LCatalano/Imaging/Tools/ImageStatistics;->e:I

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 120
    :cond_1
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v5}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->a:LCatalano/Imaging/Tools/ImageHistogram;

    .line 146
    :cond_2
    :goto_2
    return-void

    .line 123
    :cond_3
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    new-array v5, p2, [I

    .line 125
    new-array v6, p2, [I

    .line 126
    new-array v7, p2, [I

    move v2, v1

    .line 130
    :goto_3
    if-ge v2, v4, :cond_5

    move v0, v1

    .line 131
    :goto_4
    if-ge v0, v3, :cond_4

    .line 132
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v8

    .line 133
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    .line 134
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    .line 136
    mul-int/2addr v8, p2

    div-int/lit16 v8, v8, 0x100

    aget v11, v5, v8

    add-int/lit8 v11, v11, 0x1

    aput v11, v5, v8

    .line 137
    mul-int v8, v9, p2

    div-int/lit16 v8, v8, 0x100

    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 138
    mul-int v8, v10, p2

    div-int/lit16 v8, v8, 0x100

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    .line 139
    iget v8, p0, LCatalano/Imaging/Tools/ImageStatistics;->e:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, LCatalano/Imaging/Tools/ImageStatistics;->e:I

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 130
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 142
    :cond_5
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v5}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->b:LCatalano/Imaging/Tools/ImageHistogram;

    .line 143
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v6}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->c:LCatalano/Imaging/Tools/ImageHistogram;

    .line 144
    new-instance v0, LCatalano/Imaging/Tools/ImageHistogram;

    invoke-direct {v0, v7}, LCatalano/Imaging/Tools/ImageHistogram;-><init>([I)V

    iput-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->d:LCatalano/Imaging/Tools/ImageHistogram;

    goto :goto_2
.end method

.method public static Maximum(LCatalano/Imaging/FastBitmap;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, LCatalano/Imaging/Tools/ImageStatistics;->Maximum(LCatalano/Imaging/FastBitmap;IIII)I

    move-result v0

    return v0
.end method

.method public static Maximum(LCatalano/Imaging/FastBitmap;IIII)I
    .locals 3

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    :goto_0
    if-ge p1, p4, :cond_1

    move v2, p2

    .line 256
    :goto_1
    if-ge v2, p3, :cond_0

    .line 257
    invoke-virtual {p0, p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    .line 258
    if-le v0, v1, :cond_2

    .line 256
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 255
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 263
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static Mean(LCatalano/Imaging/FastBitmap;)F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, LCatalano/Imaging/Tools/ImageStatistics;->Mean(LCatalano/Imaging/FastBitmap;IIII)F

    move-result v0

    return v0
.end method

.method public static Mean(LCatalano/Imaging/FastBitmap;IIII)F
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    :goto_0
    if-ge p1, p4, :cond_1

    move v1, v0

    move v0, p2

    .line 178
    :goto_1
    if-ge v0, p3, :cond_0

    .line 179
    invoke-virtual {p0, p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 177
    :cond_0
    add-int/lit8 p1, p1, 0x1

    move v0, v1

    goto :goto_0

    .line 182
    :cond_1
    mul-int v1, p3, p4

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 185
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageStatistics: Only compute mean in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static Minimum(LCatalano/Imaging/FastBitmap;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 272
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    invoke-static {p0, v2, v2, v0, v1}, LCatalano/Imaging/Tools/ImageStatistics;->Minimum(LCatalano/Imaging/FastBitmap;IIII)I

    move-result v0

    return v0
.end method

.method public static Minimum(LCatalano/Imaging/FastBitmap;IIII)I
    .locals 3

    .prologue
    .line 285
    const/16 v1, 0xff

    .line 286
    :goto_0
    if-ge p1, p4, :cond_1

    move v2, p2

    .line 287
    :goto_1
    if-ge v2, p3, :cond_0

    .line 288
    invoke-virtual {p0, p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    .line 289
    if-ge v0, v1, :cond_2

    .line 287
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 286
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 294
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public static Variance(LCatalano/Imaging/FastBitmap;)F
    .locals 1

    .prologue
    .line 195
    invoke-static {p0}, LCatalano/Imaging/Tools/ImageStatistics;->Mean(LCatalano/Imaging/FastBitmap;)F

    move-result v0

    .line 196
    invoke-static {p0, v0}, LCatalano/Imaging/Tools/ImageStatistics;->Variance(LCatalano/Imaging/FastBitmap;F)F

    move-result v0

    return v0
.end method

.method public static Variance(LCatalano/Imaging/FastBitmap;F)F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v3, v2

    invoke-static/range {v0 .. v5}, LCatalano/Imaging/Tools/ImageStatistics;->Variance(LCatalano/Imaging/FastBitmap;FIIII)F

    move-result v0

    return v0
.end method

.method public static Variance(LCatalano/Imaging/FastBitmap;FIIII)F
    .locals 8

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 222
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    :goto_0
    if-ge p2, p5, :cond_1

    move v1, v0

    move v0, p3

    .line 224
    :goto_1
    if-ge v0, p4, :cond_0

    .line 225
    float-to-double v2, v1

    invoke-virtual {p0, p2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    :cond_0
    add-int/lit8 p2, p2, 0x1

    move v0, v1

    goto :goto_0

    .line 228
    :cond_1
    mul-int v1, p4, p5

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 231
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageStatistics: Only compute variance in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public PixelsCount()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->e:I

    return v0
.end method

.method public getHistogramBlue()LCatalano/Imaging/Tools/ImageHistogram;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->d:LCatalano/Imaging/Tools/ImageHistogram;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Histogram blue is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->d:LCatalano/Imaging/Tools/ImageHistogram;

    return-object v0
.end method

.method public getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->a:LCatalano/Imaging/Tools/ImageHistogram;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Histogram gray is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->a:LCatalano/Imaging/Tools/ImageHistogram;

    return-object v0
.end method

.method public getHistogramGreen()LCatalano/Imaging/Tools/ImageHistogram;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->c:LCatalano/Imaging/Tools/ImageHistogram;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Histogram green is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->c:LCatalano/Imaging/Tools/ImageHistogram;

    return-object v0
.end method

.method public getHistogramRed()LCatalano/Imaging/Tools/ImageHistogram;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->b:LCatalano/Imaging/Tools/ImageHistogram;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Histogram red is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageStatistics;->b:LCatalano/Imaging/Tools/ImageHistogram;

    return-object v0
.end method
