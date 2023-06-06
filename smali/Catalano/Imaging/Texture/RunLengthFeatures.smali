.class public final LCatalano/Imaging/Texture/RunLengthFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GrayLevelDistribution([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 209
    const-wide/16 v2, 0x0

    move v0, v1

    .line 210
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 211
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 212
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v2

    .line 211
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 210
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static GrayLevelNonUniformity([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 173
    move v0, v1

    move-wide v4, v2

    .line 175
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_1

    .line 176
    mul-double v6, v2, v2

    add-double/2addr v4, v6

    move v6, v1

    .line 177
    :goto_1
    const/4 v7, 0x0

    aget-object v7, p0, v7

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 178
    aget-object v7, p0, v0

    aget-wide v8, v7, v6

    add-double/2addr v8, v2

    .line 177
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v8

    goto :goto_1

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    int-to-double v0, p1

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static HighGrayLevelEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 93
    const-wide/16 v2, 0x0

    .line 94
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    move v1, v4

    .line 95
    :goto_1
    aget-object v5, p0, v4

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 96
    aget-object v5, p0, v0

    aget-wide v6, v5, v1

    int-to-double v8, v0

    mul-double/2addr v6, v8

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static LongRunEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 60
    const-wide/16 v2, 0x0

    move v0, v1

    .line 61
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 62
    const/4 v4, 0x1

    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 63
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 62
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static LongRunHighGrayLevelEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 157
    const-wide/16 v2, 0x0

    move v0, v1

    .line 158
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 159
    :goto_1
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 160
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v0

    mul-double/2addr v6, v8

    int-to-double v8, v0

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 159
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 158
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static LongRunLowGrayLevelEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 141
    const-wide/16 v2, 0x0

    move v0, v1

    .line 142
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 143
    :goto_1
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 144
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    mul-int v5, v0, v0

    int-to-double v8, v5

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 143
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static LowGrayLevelEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 77
    const-wide/16 v2, 0x0

    .line 78
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    move v1, v4

    .line 79
    :goto_1
    aget-object v5, p0, v4

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 80
    aget-object v5, p0, v0

    aget-wide v6, v5, v1

    mul-int v5, v0, v0

    int-to-double v8, v5

    div-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static RunLenghtDistribution([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 225
    const-wide/16 v2, 0x0

    move v0, v1

    .line 226
    :goto_0
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 227
    :goto_1
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 228
    aget-object v5, p0, v4

    aget-wide v6, v5, v0

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v8, v4

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v2

    .line 227
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static RunLengthNonUniformity([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 191
    move v0, v1

    move-wide v4, v2

    .line 193
    :goto_0
    const/4 v6, 0x0

    aget-object v6, p0, v6

    array-length v6, v6

    if-ge v0, v6, :cond_1

    .line 194
    mul-double v6, v2, v2

    add-double/2addr v4, v6

    move v6, v1

    .line 195
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_0

    .line 196
    aget-object v7, p0, v6

    aget-wide v8, v7, v0

    add-double/2addr v8, v2

    .line 195
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v8

    goto :goto_1

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    int-to-double v0, p1

    div-double v0, v4, v0

    return-wide v0
.end method

.method public static RunPercentage([[DI)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 241
    const-wide/16 v2, 0x0

    move v0, v1

    .line 242
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 243
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 244
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    add-double/2addr v6, v2

    .line 243
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 242
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static ShortRunEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 44
    const-wide/16 v2, 0x0

    move v0, v1

    .line 45
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 46
    const/4 v4, 0x1

    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 47
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    mul-int v5, v4, v4

    int-to-double v8, v5

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 46
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static ShortRunHighGrayLevelEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 125
    const-wide/16 v2, 0x0

    move v0, v1

    .line 126
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 127
    :goto_1
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 128
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    int-to-double v8, v0

    mul-double/2addr v6, v8

    int-to-double v8, v0

    mul-double/2addr v6, v8

    mul-int v5, v4, v4

    int-to-double v8, v5

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 127
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static ShortRunLowGrayLevelEmphasis([[DI)D
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 109
    const-wide/16 v2, 0x0

    move v0, v1

    .line 110
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 111
    :goto_1
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 112
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    mul-int v5, v0, v0

    mul-int v8, v4, v4

    mul-int/2addr v5, v8

    int-to-double v8, v5

    div-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 111
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_1
    int-to-double v0, p1

    div-double v0, v2, v0

    return-wide v0
.end method
