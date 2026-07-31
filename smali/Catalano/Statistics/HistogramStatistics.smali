.class public final LCatalano/Statistics/HistogramStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Entropy([I)D
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 46
    array-length v6, p0

    move v1, v0

    move v5, v0

    .line 52
    :goto_0
    if-ge v1, v6, :cond_0

    .line 54
    aget v4, p0, v1

    add-int/2addr v4, v5

    .line 52
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    goto :goto_0

    .line 57
    :cond_0
    if-eqz v5, :cond_2

    move v4, v0

    move-wide v0, v2

    .line 60
    :goto_1
    if-ge v4, v6, :cond_3

    .line 63
    aget v7, p0, v4

    int-to-double v8, v7

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 65
    cmpl-double v7, v8, v2

    if-eqz v7, :cond_1

    .line 66
    neg-double v10, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13}, Ljava/lang/Math;->log10(D)D

    move-result-wide v12

    div-double/2addr v8, v12

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    .line 60
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 69
    :cond_3
    return-wide v0
.end method

.method public static GetRange([ID)LCatalano/Core/IntRange;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 79
    array-length v4, p0

    move v2, v1

    move v0, v1

    .line 82
    :goto_0
    if-ge v2, v4, :cond_0

    .line 85
    aget v3, p0, v2

    add-int/2addr v3, v0

    .line 82
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 89
    :cond_0
    int-to-double v2, v0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, p1

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    add-double/2addr v6, p1

    mul-double/2addr v2, v6

    double-to-int v3, v2

    move v2, v1

    move v1, v0

    .line 92
    :goto_1
    if-ge v2, v4, :cond_1

    .line 94
    aget v5, p0, v2

    sub-int/2addr v1, v5

    .line 95
    if-ge v1, v3, :cond_3

    .line 99
    :cond_1
    add-int/lit8 v1, v4, -0x1

    :goto_2
    if-ltz v1, :cond_2

    .line 101
    aget v4, p0, v1

    sub-int/2addr v0, v4

    .line 102
    if-ge v0, v3, :cond_4

    .line 105
    :cond_2
    new-instance v0, LCatalano/Core/IntRange;

    invoke-direct {v0, v2, v1}, LCatalano/Core/IntRange;-><init>(II)V

    return-object v0

    .line 92
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 99
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public static Kurtosis([I)D
    .locals 4

    .prologue
    .line 114
    invoke-static {p0}, LCatalano/Statistics/HistogramStatistics;->Mean([I)D

    move-result-wide v0

    .line 115
    invoke-static {p0, v0, v1}, LCatalano/Statistics/HistogramStatistics;->StdDev([ID)D

    move-result-wide v2

    .line 116
    invoke-static {p0, v0, v1, v2, v3}, LCatalano/Statistics/HistogramStatistics;->Kurtosis([IDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Kurtosis([IDD)D
    .locals 13

    .prologue
    .line 127
    const-wide/16 v2, 0x0

    .line 128
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 129
    aget v1, p0, v0

    int-to-double v4, v1

    add-double/2addr v2, v4

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    mul-double/2addr v0, v2

    .line 132
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v2, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v6, v2, v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    sub-double v6, v2, v6

    mul-double/2addr v4, v6

    div-double v6, v0, v4

    .line 134
    const-wide/16 v4, 0x0

    .line 135
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 136
    int-to-double v8, v0

    sub-double/2addr v8, p1

    div-double v8, v8, p3

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aget v1, p0, v0

    int-to-double v10, v1

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    :cond_1
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v0, v8

    .line 140
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v8, v2, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v10

    mul-double/2addr v2, v8

    div-double/2addr v0, v2

    .line 142
    mul-double v2, v6, v4

    sub-double v0, v2, v0

    return-wide v0
.end method

.method public static Mean([I)D
    .locals 14

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v0, 0x0

    .line 152
    .line 156
    const/4 v2, 0x0

    array-length v3, p0

    move-wide v4, v0

    move-wide v6, v8

    :goto_0
    if-ge v2, v3, :cond_0

    .line 157
    aget v10, p0, v2

    .line 159
    mul-int v11, v2, v10

    int-to-double v12, v11

    add-double/2addr v4, v12

    .line 161
    int-to-long v10, v10

    add-long/2addr v6, v10

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_0
    cmp-long v2, v6, v8

    if-nez v2, :cond_1

    :goto_1
    return-wide v0

    :cond_1
    long-to-double v0, v6

    div-double v0, v4, v0

    goto :goto_1
.end method

.method public static Median([I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 172
    array-length v3, p0

    move v1, v0

    move v2, v0

    .line 175
    :goto_0
    if-ge v1, v3, :cond_0

    .line 178
    aget v4, p0, v1

    add-int/2addr v2, v4

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_0
    div-int/lit8 v2, v2, 0x2

    move v1, v0

    .line 185
    :goto_1
    if-ge v1, v3, :cond_1

    .line 187
    aget v4, p0, v1

    add-int/2addr v0, v4

    .line 188
    if-lt v0, v2, :cond_2

    .line 192
    :cond_1
    return v1

    .line 185
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static Mode([I)I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 201
    .line 203
    array-length v3, p0

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v2, v3, :cond_1

    .line 205
    aget v4, p0, v2

    if-le v4, v0, :cond_0

    .line 207
    aget v0, p0, v2

    move v1, v2

    .line 203
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 211
    :cond_1
    return v1
.end method

.method public static Skewness([I)D
    .locals 4

    .prologue
    .line 220
    invoke-static {p0}, LCatalano/Statistics/HistogramStatistics;->Mean([I)D

    move-result-wide v0

    .line 221
    invoke-static {p0, v0, v1}, LCatalano/Statistics/HistogramStatistics;->StdDev([ID)D

    move-result-wide v2

    .line 222
    invoke-static {p0, v0, v1, v2, v3}, LCatalano/Statistics/HistogramStatistics;->Skewness([IDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Skewness([IDD)D
    .locals 11

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 233
    move v0, v1

    move-wide v2, v4

    .line 234
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_0

    .line 235
    aget v6, p0, v0

    int-to-double v6, v6

    add-double/2addr v2, v6

    .line 234
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v6, v2, v6

    div-double v6, v2, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v8

    mul-double/2addr v2, v6

    .line 240
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 241
    int-to-double v6, v1

    sub-double/2addr v6, p1

    div-double/2addr v6, p3

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aget v0, p0, v1

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_1
    mul-double v0, v2, v4

    return-wide v0
.end method

.method public static StdDev([I)D
    .locals 2

    .prologue
    .line 253
    invoke-static {p0}, LCatalano/Statistics/HistogramStatistics;->Mean([I)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, LCatalano/Statistics/HistogramStatistics;->StdDev([ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public static StdDev([ID)D
    .locals 13

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 263
    .line 269
    array-length v6, p0

    move v3, v2

    move-wide v4, v0

    :goto_0
    if-ge v2, v6, :cond_0

    .line 271
    aget v7, p0, v2

    .line 272
    int-to-double v8, v2

    sub-double/2addr v8, p1

    .line 274
    mul-double/2addr v8, v8

    int-to-double v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 276
    add-int/2addr v3, v7

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 279
    :cond_0
    if-nez v3, :cond_1

    :goto_1
    return-wide v0

    :cond_1
    add-int/lit8 v0, v3, -0x1

    int-to-double v0, v0

    div-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_1
.end method
