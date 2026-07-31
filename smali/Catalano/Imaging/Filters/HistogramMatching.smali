.class public LCatalano/Imaging/Filters/HistogramMatching;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[I

.field private b:[I

.field private c:[I

.field private d:[I


# direct methods
.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/HistogramMatching;->a(LCatalano/Imaging/FastBitmap;)V

    .line 55
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, LCatalano/Imaging/Tools/ImageStatistics;

    invoke-direct {v0, p1}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 60
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v1

    iput-object v1, p0, LCatalano/Imaging/Filters/HistogramMatching;->a:[I

    .line 63
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {v0}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramRed()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v1

    iput-object v1, p0, LCatalano/Imaging/Filters/HistogramMatching;->b:[I

    .line 65
    invoke-virtual {v0}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGreen()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v1

    iput-object v1, p0, LCatalano/Imaging/Filters/HistogramMatching;->c:[I

    .line 66
    invoke-virtual {v0}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramBlue()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v0

    invoke-virtual {v0}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Filters/HistogramMatching;->d:[I

    .line 68
    :cond_1
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 73
    new-instance v1, LCatalano/Imaging/Tools/ImageStatistics;

    invoke-direct {v1, p1}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 74
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 76
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v1

    .line 82
    iget-object v3, p0, LCatalano/Imaging/Filters/HistogramMatching;->a:[I

    invoke-static {v1, v3}, LCatalano/Statistics/Histogram;->MatchHistograms([I[I)[I

    move-result-object v1

    .line 84
    :goto_0
    if-ge v0, v2, :cond_2

    .line 85
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    .line 86
    aget v3, v1, v3

    .line 87
    invoke-virtual {p1, v0, v3}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramRed()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v3

    .line 95
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGreen()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v4

    invoke-virtual {v4}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v4

    .line 96
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramBlue()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v1

    .line 99
    iget-object v5, p0, LCatalano/Imaging/Filters/HistogramMatching;->b:[I

    invoke-static {v3, v5}, LCatalano/Statistics/Histogram;->MatchHistograms([I[I)[I

    move-result-object v3

    .line 100
    iget-object v5, p0, LCatalano/Imaging/Filters/HistogramMatching;->c:[I

    invoke-static {v4, v5}, LCatalano/Statistics/Histogram;->MatchHistograms([I[I)[I

    move-result-object v4

    .line 101
    iget-object v5, p0, LCatalano/Imaging/Filters/HistogramMatching;->d:[I

    invoke-static {v1, v5}, LCatalano/Statistics/Histogram;->MatchHistograms([I[I)[I

    move-result-object v1

    .line 103
    :goto_1
    if-ge v0, v2, :cond_2

    .line 104
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v5

    .line 105
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    .line 106
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v7

    .line 108
    aget v5, v3, v5

    .line 109
    aget v6, v4, v6

    .line 110
    aget v7, v1, v7

    .line 112
    invoke-virtual {p1, v0, v5, v6, v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Histogram Matching only works with Grayscale and RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2
    return-void
.end method
