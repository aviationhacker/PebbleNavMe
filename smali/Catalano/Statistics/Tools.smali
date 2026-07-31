.class public LCatalano/Statistics/Tools;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CoefficientOfVariation([D)D
    .locals 4

    .prologue
    .line 40
    invoke-static {p0}, LCatalano/Statistics/Tools;->Mean([D)D

    move-result-wide v0

    .line 41
    invoke-static {p0, v0, v1}, LCatalano/Statistics/Tools;->Variance([DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 42
    div-double v0, v2, v0

    return-wide v0
.end method

.method public static ContraHarmonicMean([DI)D
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 301
    .line 302
    const/4 v0, 0x0

    move-wide v4, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 303
    aget-wide v6, p0, v0

    add-int/lit8 v1, p1, 0x1

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 304
    aget-wide v6, p0, v0

    int-to-double v8, p1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    div-double v0, v4, v2

    return-wide v0
.end method

.method public static Correlation([[D)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 51
    aget-object v0, p0, v2

    array-length v0, v0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 52
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    move v3, v2

    .line 53
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 54
    if-ne v1, v3, :cond_0

    .line 55
    aget-object v4, v0, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v3

    .line 53
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    :cond_0
    invoke-static {p0, v1}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v4

    .line 59
    invoke-static {p0, v3}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v5

    .line 60
    aget-object v6, v0, v1

    invoke-static {v4, v5}, LCatalano/Statistics/Correlations;->PearsonCorrelation([D[D)D

    move-result-wide v4

    aput-wide v4, v6, v3

    goto :goto_2

    .line 52
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_2
    return-object v0
.end method

.method public static Covariance([D[D)D
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of both matrix needs be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    const/4 v0, 0x0

    move-wide v4, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 79
    aget-wide v6, p0, v0

    add-double/2addr v6, v2

    .line 80
    aget-wide v2, p1, v0

    add-double/2addr v2, v4

    .line 78
    add-int/lit8 v0, v0, 0x1

    move-wide v4, v2

    move-wide v2, v6

    goto :goto_0

    .line 82
    :cond_1
    array-length v0, p0

    int-to-double v0, v0

    div-double/2addr v2, v0

    .line 83
    array-length v0, p1

    int-to-double v0, v0

    div-double/2addr v4, v0

    move-object v0, p0

    move-object v1, p1

    .line 85
    invoke-static/range {v0 .. v5}, LCatalano/Statistics/Tools;->Covariance([D[DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Covariance([D[DDD)D
    .locals 8

    .prologue
    .line 97
    const-wide/16 v2, 0x0

    .line 98
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 99
    aget-wide v4, p0, v0

    sub-double/2addr v4, p2

    aget-wide v6, p1, v0

    sub-double/2addr v6, p4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Covariance([[D)[[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 111
    aget-object v0, p0, v1

    array-length v0, v0

    new-array v3, v0, [D

    move v0, v1

    .line 112
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 113
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 114
    aget-wide v4, v3, v2

    aget-object v6, p0, v0

    aget-wide v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_1
    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 119
    aget-wide v4, v3, v1

    array-length v0, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v3, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 122
    :cond_2
    invoke-static {p0, v3}, LCatalano/Statistics/Tools;->Covariance([[D[D)[[D

    move-result-object v0

    return-object v0
.end method

.method public static Covariance([[D[D)[[D
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 132
    array-length v0, p1

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [[D

    move v7, v8

    .line 134
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    move v9, v8

    .line 135
    :goto_1
    aget-object v0, v6, v8

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 136
    aget-object v10, v6, v7

    invoke-static {p0, v7}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v0

    invoke-static {p0, v9}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v1

    aget-wide v2, p1, v7

    aget-wide v4, p1, v9

    invoke-static/range {v0 .. v5}, LCatalano/Statistics/Tools;->Covariance([D[DDD)D

    move-result-wide v0

    aput-wide v0, v10, v9

    .line 135
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 134
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 140
    :cond_1
    return-object v6
.end method

.method public static Fisher(D)D
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 151
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_0

    cmpl-double v0, p0, v2

    if-ltz v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fisher works with number between -1 < x < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    add-double v0, v2, p0

    sub-double/2addr v2, p0

    div-double/2addr v0, v2

    .line 155
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static GeometricMean([D)D
    .locals 8

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 270
    .line 271
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 272
    aget-wide v6, p0, v0

    mul-double/2addr v2, v6

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v4, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static HarmonicMean([D)D
    .locals 8

    .prologue
    .line 285
    const-wide/16 v2, 0x0

    .line 286
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 287
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aget-wide v6, p0, v0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Inclination([D[D)D
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 165
    array-length v0, p0

    array-length v2, p1

    if-eq v0, v2, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of both matrix needs be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    move-wide v2, v4

    move-wide v6, v4

    .line 169
    :goto_0
    array-length v8, p0

    if-ge v0, v8, :cond_1

    .line 170
    aget-wide v8, p0, v0

    add-double/2addr v6, v8

    .line 171
    aget-wide v8, p1, v0

    add-double/2addr v2, v8

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    array-length v0, p0

    int-to-double v8, v0

    div-double/2addr v6, v8

    .line 175
    array-length v0, p1

    int-to-double v8, v0

    div-double v8, v2, v8

    move-wide v2, v4

    .line 178
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 179
    aget-wide v10, p0, v1

    sub-double/2addr v10, v6

    aget-wide v12, p1, v1

    sub-double/2addr v12, v8

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    .line 180
    aget-wide v10, p0, v1

    sub-double/2addr v10, v6

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v4, v10

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 183
    :cond_2
    div-double v0, v2, v4

    return-wide v0
.end method

.method public static Interception([D[D)D
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 206
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of both matrix needs be equal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    const/4 v0, 0x0

    move-wide v4, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 211
    aget-wide v6, p0, v0

    add-double/2addr v4, v6

    .line 212
    aget-wide v6, p1, v0

    add-double/2addr v2, v6

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v4, v0

    .line 216
    array-length v4, p1

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 218
    invoke-static {p0, p1}, LCatalano/Statistics/Tools;->Inclination([D[D)D

    move-result-wide v4

    .line 219
    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    .line 220
    return-wide v0
.end method

.method public static InverseFisher(D)D
    .locals 8

    .prologue
    const-wide v6, 0x4005bf0a8b145769L    # Math.E

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 192
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v0, p0, v0

    if-lez v0, :cond_0

    cmpl-double v0, p0, v4

    if-ltz v0, :cond_1

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fisher works with number between -1 < x < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_1
    mul-double v0, v2, p0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, v4

    mul-double/2addr v2, p0

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 196
    return-wide v0
.end method

.method public static Max([D)D
    .locals 6

    .prologue
    .line 229
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 230
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 231
    aget-wide v4, p0, v0

    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    aget-wide v2, p0, v0

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-wide v2
.end method

.method public static Mean([D)D
    .locals 6

    .prologue
    .line 242
    const-wide/16 v2, 0x0

    .line 243
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 244
    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Min([D)D
    .locals 6

    .prologue
    .line 256
    const/4 v0, 0x0

    aget-wide v2, p0, v0

    .line 257
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 258
    aget-wide v4, p0, v0

    cmpg-double v1, v4, v2

    if-gez v1, :cond_0

    aget-wide v2, p0, v0

    .line 257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    return-wide v2
.end method

.method public static StandartDeviation([D)D
    .locals 2

    .prologue
    .line 353
    invoke-static {p0}, LCatalano/Statistics/Tools;->Variance([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static StandartDeviation([DD)D
    .locals 3

    .prologue
    .line 363
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Tools;->Variance([DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Sum([D)D
    .locals 6

    .prologue
    .line 316
    const-wide/16 v2, 0x0

    .line 317
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 318
    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    return-wide v2
.end method

.method public static Variance([D)D
    .locals 2

    .prologue
    .line 329
    invoke-static {p0}, LCatalano/Statistics/Tools;->Mean([D)D

    move-result-wide v0

    invoke-static {p0, v0, v1}, LCatalano/Statistics/Tools;->Variance([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Variance([DD)D
    .locals 9

    .prologue
    .line 339
    const-wide/16 v2, 0x0

    .line 340
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 341
    aget-wide v4, p0, v0

    sub-double/2addr v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 340
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    div-double v0, v2, v0

    .line 344
    return-wide v0
.end method
