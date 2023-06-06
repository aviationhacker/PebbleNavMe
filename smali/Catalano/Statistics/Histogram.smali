.class public LCatalano/Statistics/Histogram;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:[I

.field private b:D

.field private c:D

.field private d:D

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:J

.field private j:I


# direct methods
.method public constructor <init>([I)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Statistics/Histogram;->b:D

    .line 35
    iput-wide v0, p0, LCatalano/Statistics/Histogram;->c:D

    .line 36
    iput-wide v0, p0, LCatalano/Statistics/Histogram;->d:D

    .line 37
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/Histogram;->e:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Statistics/Histogram;->j:I

    .line 112
    iput-object p1, p0, LCatalano/Statistics/Histogram;->a:[I

    .line 113
    invoke-direct {p0}, LCatalano/Statistics/Histogram;->a()V

    .line 114
    return-void
.end method

.method public constructor <init>([II)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide v0, p0, LCatalano/Statistics/Histogram;->b:D

    .line 35
    iput-wide v0, p0, LCatalano/Statistics/Histogram;->c:D

    .line 36
    iput-wide v0, p0, LCatalano/Statistics/Histogram;->d:D

    .line 37
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/Histogram;->e:I

    .line 42
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Statistics/Histogram;->j:I

    .line 122
    iput-object p1, p0, LCatalano/Statistics/Histogram;->a:[I

    .line 123
    iput p2, p0, LCatalano/Statistics/Histogram;->j:I

    .line 124
    invoke-direct {p0}, LCatalano/Statistics/Histogram;->a()V

    .line 125
    return-void
.end method

.method public static CDF(LCatalano/Statistics/Histogram;)[D
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/Histogram;->CDF([I)[D

    move-result-object v0

    return-object v0
.end method

.method public static CDF([I)[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 66
    array-length v4, p0

    move v0, v2

    move v3, v2

    .line 69
    :goto_0
    if-ge v0, v4, :cond_0

    .line 70
    aget v1, p0, v0

    add-int/2addr v1, v3

    .line 69
    add-int/lit8 v0, v0, 0x1

    move v3, v1

    goto :goto_0

    .line 73
    :cond_0
    new-array v5, v4, [D

    .line 74
    aget v1, p0, v2

    .line 75
    int-to-double v6, v1

    int-to-double v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v5, v2

    .line 76
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v4, :cond_1

    .line 77
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 78
    int-to-double v6, v1

    int-to-double v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v5, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_1
    return-object v5
.end method

.method public static MatchHistograms(LCatalano/Statistics/Histogram;LCatalano/Statistics/Histogram;)[I
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    iget-object v1, p1, LCatalano/Statistics/Histogram;->a:[I

    invoke-static {v0, v1}, LCatalano/Statistics/Histogram;->MatchHistograms([I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public static MatchHistograms([I[I)[I
    .locals 10

    .prologue
    .line 45
    array-length v2, p0

    .line 46
    invoke-static {p0}, LCatalano/Statistics/Histogram;->CDF([I)[D

    move-result-object v3

    .line 47
    invoke-static {p1}, LCatalano/Statistics/Histogram;->CDF([I)[D

    move-result-object v4

    .line 48
    new-array v5, v2, [I

    .line 50
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 51
    add-int/lit8 v0, v2, -0x1

    .line 53
    :cond_0
    aput v0, v5, v1

    .line 54
    add-int/lit8 v0, v0, -0x1

    .line 55
    if-ltz v0, :cond_1

    aget-wide v6, v3, v1

    aget-wide v8, v4, v0

    cmpg-double v6, v6, v8

    if-lez v6, :cond_0

    .line 50
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 58
    :cond_2
    return-object v5
.end method

.method public static Normalize([I)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 94
    move v0, v1

    move v2, v1

    .line 95
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 96
    aget v3, p0, v0

    add-int/2addr v2, v3

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    array-length v0, p0

    new-array v0, v0, [D

    .line 100
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 101
    aget v3, p0, v1

    int-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v0, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_1
    return-object v0
.end method

.method private a()V
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    array-length v4, v0

    .line 214
    iput v2, p0, LCatalano/Statistics/Histogram;->h:I

    .line 215
    iput v4, p0, LCatalano/Statistics/Histogram;->g:I

    .line 216
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Statistics/Histogram;->i:J

    .line 218
    const v1, -0x7fffffff

    .line 219
    const v0, 0x7fffffff

    move v3, v2

    .line 222
    :goto_0
    if-ge v3, v4, :cond_3

    .line 224
    iget-object v5, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v5, v5, v3

    if-eqz v5, :cond_2

    .line 227
    iget v5, p0, LCatalano/Statistics/Histogram;->h:I

    if-le v3, v5, :cond_0

    .line 228
    iput v3, p0, LCatalano/Statistics/Histogram;->h:I

    .line 230
    :cond_0
    iget v5, p0, LCatalano/Statistics/Histogram;->g:I

    if-ge v3, v5, :cond_1

    .line 231
    iput v3, p0, LCatalano/Statistics/Histogram;->g:I

    .line 233
    :cond_1
    iget-object v5, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v5, v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 234
    iget-object v5, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v5, v5, v3

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    iget-wide v6, p0, LCatalano/Statistics/Histogram;->i:J

    iget-object v5, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v5, v5, v3

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, p0, LCatalano/Statistics/Histogram;->i:J

    .line 222
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_3
    sub-int/2addr v1, v0

    int-to-double v4, v1

    iget v1, p0, LCatalano/Statistics/Histogram;->j:I

    int-to-double v6, v1

    div-double v8, v4, v6

    .line 240
    iget v1, p0, LCatalano/Statistics/Histogram;->j:I

    new-array v10, v1, [I

    move v1, v2

    .line 242
    :goto_1
    iget-object v3, p0, LCatalano/Statistics/Histogram;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_7

    .line 243
    int-to-double v4, v0

    .line 244
    add-double v12, v4, v8

    .line 247
    iget-object v3, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v3, v3, v1

    int-to-double v6, v3

    cmpl-double v3, v6, v4

    if-ltz v3, :cond_4

    iget-object v3, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v3, v3, v1

    int-to-double v6, v3

    cmpg-double v3, v6, v12

    if-gtz v3, :cond_4

    .line 248
    aget v3, v10, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v10, v2

    .line 250
    :cond_4
    add-double v6, v4, v8

    .line 251
    add-double v4, v12, v8

    .line 254
    const/4 v3, 0x1

    :goto_2
    iget v11, p0, LCatalano/Statistics/Histogram;->j:I

    if-ge v3, v11, :cond_6

    .line 255
    iget-object v11, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v11, v11, v1

    int-to-double v12, v11

    cmpl-double v11, v12, v6

    if-lez v11, :cond_5

    iget-object v11, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v11, v11, v1

    int-to-double v12, v11

    cmpg-double v11, v12, v4

    if-gtz v11, :cond_5

    .line 256
    aget v11, v10, v3

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v3

    .line 258
    :cond_5
    add-double/2addr v6, v8

    .line 259
    add-double/2addr v4, v8

    .line 254
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 242
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_7
    iput-object v10, p0, LCatalano/Statistics/Histogram;->a:[I

    .line 265
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Mean([I)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Histogram;->b:D

    .line 266
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    iget-wide v2, p0, LCatalano/Statistics/Histogram;->b:D

    invoke-static {v0, v2, v3}, LCatalano/Statistics/HistogramStatistics;->StdDev([ID)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Histogram;->c:D

    .line 267
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Median([I)I

    move-result v0

    iput v0, p0, LCatalano/Statistics/Histogram;->e:I

    .line 268
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Mode([I)I

    move-result v0

    iput v0, p0, LCatalano/Statistics/Histogram;->f:I

    .line 269
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    invoke-static {v0}, LCatalano/Statistics/HistogramStatistics;->Entropy([I)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Histogram;->d:D

    .line 270
    return-void
.end method


# virtual methods
.method public Normalize()[D
    .locals 6

    .prologue
    .line 277
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    array-length v0, v0

    new-array v1, v0, [D

    .line 278
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 279
    iget-object v2, p0, LCatalano/Statistics/Histogram;->a:[I

    aget v2, v2, v0

    int-to-double v2, v2

    iget-wide v4, p0, LCatalano/Statistics/Histogram;->i:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-object v1
.end method

.method public getBins()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, LCatalano/Statistics/Histogram;->j:I

    return v0
.end method

.method public getEntropy()D
    .locals 2

    .prologue
    .line 156
    iget-wide v0, p0, LCatalano/Statistics/Histogram;->d:D

    return-wide v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, LCatalano/Statistics/Histogram;->h:I

    return v0
.end method

.method public getMean()D
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, LCatalano/Statistics/Histogram;->b:D

    return-wide v0
.end method

.method public getMedian()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, LCatalano/Statistics/Histogram;->e:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, LCatalano/Statistics/Histogram;->g:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, LCatalano/Statistics/Histogram;->f:I

    return v0
.end method

.method public getStdDev()D
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, LCatalano/Statistics/Histogram;->c:D

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 196
    iget-wide v0, p0, LCatalano/Statistics/Histogram;->i:J

    return-wide v0
.end method

.method public getValues()[I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, LCatalano/Statistics/Histogram;->a:[I

    return-object v0
.end method
