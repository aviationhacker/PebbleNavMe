.class public LCatalano/Statistics/Normalizations;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DecimalScaling([D)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 42
    const-wide/16 v2, 0x0

    move v0, v1

    .line 43
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_0

    .line 44
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const/16 v0, 0xa

    .line 48
    :goto_1
    int-to-double v4, v0

    div-double v4, v2, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 49
    mul-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 52
    :cond_1
    array-length v2, p0

    new-array v2, v2, [D

    .line 53
    :goto_2
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 54
    aget-wide v4, p0, v1

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v2, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 57
    :cond_2
    return-object v2
.end method

.method public static MinMaxNormalization([DDD)[D
    .locals 11

    .prologue
    .line 132
    array-length v0, p0

    new-array v1, v0, [D

    .line 133
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Minimum([D)D

    move-result-wide v2

    .line 134
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Maximum([D)D

    move-result-wide v4

    .line 136
    const/4 v0, 0x0

    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_0

    .line 137
    aget-wide v6, p0, v0

    sub-double/2addr v6, v2

    sub-double v8, v4, v2

    div-double/2addr v6, v8

    sub-double v8, p3, p1

    mul-double/2addr v6, v8

    add-double/2addr v6, p1

    aput-wide v6, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-object v1
.end method

.method public static RangeNormalization([DDDDD)[D
    .locals 7

    .prologue
    .line 72
    array-length v0, p0

    new-array v1, v0, [D

    .line 73
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 74
    sub-double v2, p7, p5

    aget-wide v4, v1, v0

    sub-double/2addr v4, p1

    mul-double/2addr v2, v4

    sub-double v4, p3, p1

    div-double/2addr v2, v4

    add-double/2addr v2, p5

    aput-wide v2, v1, v0

    .line 75
    sub-double v2, p3, p1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 73
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_1
    return-object v1
.end method

.method public static SoftmaxScaling([DD)[D
    .locals 13

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 152
    array-length v0, p0

    new-array v1, v0, [D

    .line 153
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Mean([D)D

    move-result-wide v2

    .line 154
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->StandartDeviation([D)D

    move-result-wide v4

    .line 156
    mul-double/2addr v4, p1

    .line 158
    const/4 v0, 0x0

    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_0

    .line 159
    aget-wide v6, p0, v0

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    .line 160
    const-wide v8, 0x4005bf0a8b145769L    # Math.E

    neg-double v6, v6

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v10

    div-double v6, v10, v6

    aput-wide v6, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    return-object v1
.end method

.method public static StandartNormalDensity([D)[D
    .locals 8

    .prologue
    .line 112
    array-length v0, p0

    new-array v1, v0, [D

    .line 113
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->Mean([D)D

    move-result-wide v2

    .line 114
    invoke-static {p0}, LCatalano/Statistics/DescriptiveStatistics;->StandartDeviation([D)D

    move-result-wide v4

    .line 116
    const/4 v0, 0x0

    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_0

    .line 117
    aget-wide v6, p0, v0

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    aput-wide v6, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-object v1
.end method

.method public static UnitVectorNormalization([D)[D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 88
    array-length v0, p0

    new-array v4, v0, [D

    .line 91
    const-wide/16 v2, 0x0

    move v0, v1

    .line 92
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 93
    aget-wide v6, p0, v0

    aget-wide v8, p0, v0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 98
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 99
    aget-wide v6, p0, v1

    div-double/2addr v6, v2

    aput-wide v6, v4, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_1
    return-object v4
.end method
