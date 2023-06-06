.class public LCatalano/Imaging/Tools/ImageHistogram;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>([I)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->b:D

    .line 38
    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->c:D

    .line 39
    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->d:D

    .line 40
    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->e:D

    .line 41
    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->f:D

    .line 42
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->g:I

    .line 116
    iput-object p1, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    .line 117
    invoke-direct {p0}, LCatalano/Imaging/Tools/ImageHistogram;->a()V

    .line 118
    return-void
.end method

.method public static CDF(LCatalano/Imaging/Tools/ImageHistogram;)[D
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    invoke-static {v0}, LCatalano/Imaging/Tools/ImageHistogram;->CDF([I)[D

    move-result-object v0

    return-object v0
.end method

.method public static CDF([I)[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 70
    array-length v4, p0

    move v0, v2

    move v3, v2

    .line 73
    :goto_0
    if-ge v0, v4, :cond_0

    .line 74
    aget v1, p0, v0

    add-int/2addr v1, v3

    .line 73
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_0

    .line 77
    :cond_0
    new-array v5, v4, [D

    .line 78
    aget v1, p0, v2

    .line 79
    int-to-double v6, v1

    int-to-double v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 80
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v4, :cond_1

    .line 81
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 82
    int-to-double v6, v1

    int-to-double v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 85
    :cond_1
    return-object v5
.end method

.method public static MatchHistograms(LCatalano/Imaging/Tools/ImageHistogram;LCatalano/Imaging/Tools/ImageHistogram;)[I
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    iget-object v1, p1, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    invoke-static {v0, v1}, LCatalano/Imaging/Tools/ImageHistogram;->MatchHistograms([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static MatchHistograms([I[I)[I
    .locals 10

    .prologue
    .line 49
    array-length v2, p0

    .line 50
    invoke-static {p0}, LCatalano/Imaging/Tools/ImageHistogram;->CDF([I)[D

    move-result-object v3

    .line 51
    invoke-static {p1}, LCatalano/Imaging/Tools/ImageHistogram;->CDF([I)[D

    move-result-object v4

    .line 52
    new-array v5, v2, [I

    .line 54
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 55
    add-int/lit8 v0, v2, -0x1

    .line 57
    :cond_0
    aput v0, v5, v1

    .line 58
    add-int/lit8 v0, v0, -0x1

    .line 59
    if-ltz v0, :cond_1

    aget-wide v6, v3, v1

    aget-wide v8, v4, v0

    cmpg-double v6, v6, v8

    if-lez v6, :cond_0

    .line 54
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_2
    return-object v5
.end method

.method public static Normalize([I)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 98
    move v0, v1

    move v2, v1

    .line 99
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 100
    aget v3, p0, v0

    add-int/2addr v2, v3

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    array-length v0, p0

    new-array v0, v0, [D

    .line 104
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 105
    aget v3, p0, v1

    int-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v0, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_1
    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->k:J

    .line 214
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 215
    iget-wide v2, p0, LCatalano/Imaging/Tools/ImageHistogram;->k:J

    iget-object v1, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    aget v1, v1, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, LCatalano/Imaging/Tools/ImageHistogram;->k:J

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Mean([I)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->b:D

    .line 219
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    iget-wide v2, p0, LCatalano/Imaging/Tools/ImageHistogram;->b:D

    invoke-static {v0, v2, v3}, LCatalano/Statistics/HistogramStatistics;->StdDev([ID)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->c:D

    .line 220
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    iget-wide v2, p0, LCatalano/Imaging/Tools/ImageHistogram;->b:D

    iget-wide v4, p0, LCatalano/Imaging/Tools/ImageHistogram;->c:D

    invoke-static {v0, v2, v3, v4, v5}, LCatalano/Statistics/HistogramStatistics;->Kurtosis([IDD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->e:D

    .line 221
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    iget-wide v2, p0, LCatalano/Imaging/Tools/ImageHistogram;->b:D

    iget-wide v4, p0, LCatalano/Imaging/Tools/ImageHistogram;->c:D

    invoke-static {v0, v2, v3, v4, v5}, LCatalano/Statistics/HistogramStatistics;->Skewness([IDD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->f:D

    .line 222
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Median([I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->g:I

    .line 223
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Mode([I)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->h:I

    .line 224
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Entropy([I)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->d:D

    .line 225
    return-void
.end method


# virtual methods
.method public Normalize()[D
    .locals 6

    .prologue
    .line 232
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    array-length v0, v0

    new-array v1, v0, [D

    .line 233
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 234
    iget-object v2, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    aget v2, v2, v0

    int-to-double v2, v2

    iget-wide v4, p0, LCatalano/Imaging/Tools/ImageHistogram;->k:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-object v1
.end method

.method public getEntropy()D
    .locals 2

    .prologue
    .line 149
    iget-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->d:D

    return-wide v0
.end method

.method public getKurtosis()D
    .locals 2

    .prologue
    .line 157
    iget-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->e:D

    return-wide v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->j:I

    return v0
.end method

.method public getMean()D
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->b:D

    return-wide v0
.end method

.method public getMedian()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->g:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->i:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->h:I

    return v0
.end method

.method public getSkewness()D
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->f:D

    return-wide v0
.end method

.method public getStdDev()D
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->c:D

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->k:J

    return-wide v0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, LCatalano/Imaging/Tools/ImageHistogram;->a:[I

    return-object v0
.end method
