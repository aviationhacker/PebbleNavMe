.class public LCatalano/Imaging/Filters/HistogramStretch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    .line 42
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    .line 52
    const/16 v0, 0xff

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    .line 53
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 126
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    move v1, v0

    .line 129
    :goto_0
    if-ge v1, v2, :cond_1

    .line 130
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    if-le v3, v0, :cond_0

    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    .line 129
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_1
    return v0
.end method

.method private b(LCatalano/Imaging/FastBitmap;)I
    .locals 5

    .prologue
    .line 137
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 139
    const/16 v1, 0xff

    .line 140
    const/4 v0, 0x0

    move v4, v0

    move v0, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_1

    .line 141
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    if-ge v3, v0, :cond_0

    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_1
    return v0
.end method

.method private c(LCatalano/Imaging/FastBitmap;)[F
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 147
    const/4 v0, 0x3

    new-array v5, v0, [F

    .line 148
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v6

    move v3, v4

    move v2, v4

    move v1, v4

    move v0, v4

    .line 151
    :goto_0
    if-ge v3, v6, :cond_3

    .line 152
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v7

    if-le v7, v0, :cond_0

    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 153
    :cond_0
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v7

    if-le v7, v1, :cond_1

    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    .line 154
    :cond_1
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v7

    if-le v7, v2, :cond_2

    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v2

    .line 151
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_3
    int-to-float v0, v0

    aput v0, v5, v4

    .line 157
    const/4 v0, 0x1

    int-to-float v1, v1

    aput v1, v5, v0

    .line 158
    const/4 v0, 0x2

    int-to-float v1, v2

    aput v1, v5, v0

    .line 160
    return-object v5
.end method

.method private d(LCatalano/Imaging/FastBitmap;)[F
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0xff

    .line 164
    const/4 v0, 0x3

    new-array v5, v0, [F

    .line 165
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v6

    move v3, v4

    move v1, v2

    move v0, v2

    .line 168
    :goto_0
    if-ge v3, v6, :cond_3

    .line 169
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v7

    if-ge v7, v0, :cond_0

    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 170
    :cond_0
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v7

    if-ge v7, v1, :cond_1

    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    .line 171
    :cond_1
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v7

    if-ge v7, v2, :cond_2

    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v2

    .line 168
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    :cond_3
    int-to-float v0, v0

    aput v0, v5, v4

    .line 174
    const/4 v0, 0x1

    int-to-float v1, v1

    aput v1, v5, v0

    .line 175
    const/4 v0, 0x2

    int-to-float v1, v2

    aput v1, v5, v0

    .line 177
    return-object v5
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 92
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/HistogramStretch;->a(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    int-to-float v0, v0

    .line 94
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/HistogramStretch;->b(LCatalano/Imaging/FastBitmap;)I

    move-result v3

    int-to-float v3, v3

    .line 98
    :goto_0
    if-ge v1, v2, :cond_1

    .line 99
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    int-to-float v4, v4

    .line 100
    sub-float/2addr v4, v3

    sub-float v5, v0, v3

    div-float/2addr v4, v5

    iget v5, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    iget v6, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 101
    float-to-int v4, v4

    invoke-virtual {p1, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_0
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/HistogramStretch;->c(LCatalano/Imaging/FastBitmap;)[F

    move-result-object v3

    .line 106
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/HistogramStretch;->d(LCatalano/Imaging/FastBitmap;)[F

    move-result-object v4

    move v0, v1

    .line 110
    :goto_1
    if-ge v0, v2, :cond_1

    .line 111
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v5

    int-to-float v5, v5

    .line 112
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    int-to-float v6, v6

    .line 113
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v7

    int-to-float v7, v7

    .line 115
    aget v8, v4, v1

    sub-float/2addr v5, v8

    aget v8, v3, v1

    aget v9, v4, v1

    sub-float/2addr v8, v9

    div-float/2addr v5, v8

    iget v8, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    iget v9, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v5, v8

    iget v8, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    int-to-float v8, v8

    add-float/2addr v5, v8

    .line 116
    aget v8, v4, v10

    sub-float/2addr v6, v8

    aget v8, v3, v10

    aget v9, v4, v10

    sub-float/2addr v8, v9

    div-float/2addr v6, v8

    iget v8, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    iget v9, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v6, v8

    iget v8, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 117
    aget v8, v4, v11

    sub-float/2addr v7, v8

    aget v8, v3, v11

    aget v9, v4, v11

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iget v8, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    iget v9, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget v8, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    .line 119
    float-to-int v5, v5

    float-to-int v6, v6

    float-to-int v7, v7

    invoke-virtual {p1, v0, v5, v6, v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 122
    :cond_1
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    return v0
.end method

.method public setMax(I)V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0xff

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->a:I

    .line 69
    return-void
.end method

.method public setMin(I)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramStretch;->b:I

    .line 85
    return-void
.end method
