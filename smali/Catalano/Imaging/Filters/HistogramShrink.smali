.class public LCatalano/Imaging/Filters/HistogramShrink;
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

    .line 35
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    .line 48
    iput p1, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    .line 49
    iput p2, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    .line 50
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    const/4 v0, 0x0

    .line 87
    new-instance v1, LCatalano/Imaging/Tools/ImageStatistics;

    invoke-direct {v1, p1}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 89
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getMax()I

    move-result v2

    int-to-float v2, v2

    .line 91
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getMin()I

    move-result v1

    int-to-float v1, v1

    .line 96
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v3

    .line 97
    :goto_0
    if-ge v0, v3, :cond_1

    .line 98
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    int-to-float v4, v4

    .line 99
    iget v5, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    iget v6, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    sub-float v6, v2, v1

    div-float/2addr v5, v6

    sub-float/2addr v4, v1

    mul-float/2addr v4, v5

    iget v5, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    .line 100
    float-to-int v4, v4

    invoke-virtual {p1, v0, v4}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramRed()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getMax()I

    move-result v2

    int-to-float v2, v2

    .line 105
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGreen()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Imaging/Tools/ImageHistogram;->getMax()I

    move-result v3

    int-to-float v3, v3

    .line 106
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramBlue()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v4

    invoke-virtual {v4}, LCatalano/Imaging/Tools/ImageHistogram;->getMax()I

    move-result v4

    int-to-float v4, v4

    .line 108
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramRed()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v5

    invoke-virtual {v5}, LCatalano/Imaging/Tools/ImageHistogram;->getMin()I

    move-result v5

    int-to-float v5, v5

    .line 109
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGreen()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v6

    invoke-virtual {v6}, LCatalano/Imaging/Tools/ImageHistogram;->getMin()I

    move-result v6

    int-to-float v6, v6

    .line 110
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramBlue()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getMin()I

    move-result v1

    int-to-float v1, v1

    .line 115
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v7

    .line 116
    :goto_1
    if-ge v0, v7, :cond_1

    .line 117
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v8

    int-to-float v8, v8

    .line 118
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v9

    int-to-float v9, v9

    .line 119
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v10

    int-to-float v10, v10

    .line 121
    iget v11, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    iget v12, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float v12, v2, v5

    div-float/2addr v11, v12

    sub-float/2addr v8, v5

    mul-float/2addr v8, v11

    iget v11, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    int-to-float v11, v11

    add-float/2addr v8, v11

    .line 122
    iget v11, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    iget v12, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float v12, v3, v6

    div-float/2addr v11, v12

    sub-float/2addr v9, v6

    mul-float/2addr v9, v11

    iget v11, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    int-to-float v11, v11

    add-float/2addr v9, v11

    .line 123
    iget v11, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    iget v12, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    sub-float v12, v4, v1

    div-float/2addr v11, v12

    sub-float/2addr v10, v1

    mul-float/2addr v10, v11

    iget v11, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 125
    float-to-int v8, v8

    float-to-int v9, v9

    float-to-int v10, v10

    invoke-virtual {p1, v0, v8, v9, v10}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    :cond_1
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    return v0
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, LCatalano/Imaging/Filters/HistogramShrink;->a:I

    .line 66
    return-void
.end method

.method public setMin(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, LCatalano/Imaging/Filters/HistogramShrink;->b:I

    .line 82
    return-void
.end method
