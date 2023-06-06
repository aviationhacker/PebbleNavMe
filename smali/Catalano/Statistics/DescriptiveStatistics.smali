.class public final LCatalano/Statistics/DescriptiveStatistics;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Kurtosis([D)D
    .locals 4

    .prologue
    .line 304
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Mean([D)D

    move-result-wide v0

    .line 305
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->StandartDeviation([D)D

    move-result-wide v2

    .line 306
    invoke-static {p0, v0, v1, v2, v3}, LCatalano/Statistics/DescriptiveStatistics;->Kurtosis([DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Kurtosis([DDD)D
    .locals 13

    .prologue
    .line 281
    array-length v0, p0

    int-to-double v4, v0

    .line 283
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    mul-double/2addr v0, v4

    .line 284
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double v6, v4, v6

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    sub-double v6, v4, v6

    mul-double/2addr v2, v6

    div-double v6, v0, v2

    .line 286
    const-wide/16 v2, 0x0

    .line 287
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 288
    aget-wide v8, p0, v0

    sub-double/2addr v8, p1

    div-double v8, v8, p3

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v4, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v0, v8

    .line 292
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    sub-double v8, v4, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    sub-double/2addr v4, v10

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    .line 294
    mul-double/2addr v2, v6

    sub-double v0, v2, v0

    return-wide v0
.end method

.method public static Maximum([D)D
    .locals 6

    .prologue
    .line 172
    const-wide/16 v2, 0x1

    .line 173
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 174
    aget-wide v4, p0, v0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 175
    aget-wide v2, p0, v0

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    return-wide v2
.end method

.method public static Mean([D)D
    .locals 6

    .prologue
    .line 50
    const-wide/16 v2, 0x0

    .line 51
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 52
    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Mean([I)D
    .locals 6

    .prologue
    .line 88
    const-wide/16 v2, 0x0

    .line 89
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 90
    aget v1, p0, v0

    int-to-double v4, v1

    add-double/2addr v2, v4

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Mean([F)F
    .locals 3

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 71
    aget v2, p0, v0

    add-float/2addr v1, v2

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    array-length v0, p0

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public static Median([D)D
    .locals 2

    .prologue
    .line 107
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 108
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    .line 110
    :goto_0
    return-wide v0

    .line 109
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 110
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    aget-wide v0, p0, v0

    goto :goto_0
.end method

.method public static Minimum([D)D
    .locals 6

    .prologue
    .line 156
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 157
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 158
    aget-wide v4, p0, v0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    .line 159
    aget-wide v2, p0, v0

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-wide v2
.end method

.method public static Mode([D)D
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    .line 126
    aget-wide v4, p0, v3

    move v0, v1

    move v2, v3

    move-wide v6, v4

    move v4, v3

    .line 128
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_3

    .line 129
    aget-wide v8, p0, v0

    cmpl-double v5, v8, v6

    if-nez v5, :cond_1

    .line 131
    if-le v1, v2, :cond_0

    move v2, v1

    move v4, v0

    .line 135
    :cond_0
    aget-wide v6, p0, v0

    .line 128
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    if-gez v2, :cond_2

    move v2, v3

    move v4, v0

    .line 143
    :cond_2
    aget-wide v6, p0, v0

    goto :goto_1

    .line 147
    :cond_3
    aget-wide v0, p0, v4

    return-wide v0
.end method

.method public static Range([D)D
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 241
    aget-wide v4, p0, v0

    .line 242
    aget-wide v2, p0, v0

    .line 243
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 244
    aget-wide v6, p0, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 245
    aget-wide v6, p0, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    sub-double v0, v2, v4

    return-wide v0
.end method

.method public static Skewness([D)D
    .locals 4

    .prologue
    .line 337
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Mean([D)D

    move-result-wide v0

    .line 338
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->StandartDeviation([D)D

    move-result-wide v2

    .line 339
    invoke-static {p0, v0, v1, v2, v3}, LCatalano/Statistics/DescriptiveStatistics;->Skewness([DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Skewness([DDD)D
    .locals 11

    .prologue
    .line 318
    array-length v0, p0

    int-to-double v0, v0

    .line 320
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, v2

    div-double v2, v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v0, v4

    mul-double v4, v2, v0

    .line 322
    const-wide/16 v2, 0x0

    .line 323
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 324
    aget-wide v6, p0, v0

    sub-double/2addr v6, p1

    div-double/2addr v6, p3

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    mul-double v0, v4, v2

    return-wide v0
.end method

.method public static StandartDeviation([D)D
    .locals 2

    .prologue
    .line 257
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Variance([D)D

    move-result-wide v0

    .line 258
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static StandartDeviation([DD)D
    .locals 3

    .prologue
    .line 269
    invoke-static {p0, p1, p2}, LCatalano/Statistics/DescriptiveStatistics;->Variance([DD)D

    move-result-wide v0

    .line 270
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Variance([D)D
    .locals 2

    .prologue
    .line 216
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Mean([D)D

    move-result-wide v0

    .line 217
    invoke-static {p0, v0, v1}, LCatalano/Statistics/DescriptiveStatistics;->Variance([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Variance([DD)D
    .locals 9

    .prologue
    .line 189
    const-wide/16 v2, 0x0

    .line 190
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 191
    aget-wide v4, p0, v0

    sub-double/2addr v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Variance([F)F
    .locals 1

    .prologue
    .line 226
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Mean([F)F

    move-result v0

    .line 227
    invoke-static {p0, v0}, LCatalano/Statistics/DescriptiveStatistics;->Variance([FF)F

    move-result v0

    return v0
.end method

.method public static Variance([FF)F
    .locals 8

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 205
    float-to-double v2, v1

    aget v1, p0, v0

    sub-float/2addr v1, p1

    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_0
    array-length v0, p0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    div-float v0, v1, v0

    return v0
.end method
