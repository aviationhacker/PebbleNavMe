.class public final LCatalano/Math/Distances/Distance;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ArithmeticGeometricDivergence([D[D)D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    .line 45
    .line 46
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 47
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    mul-double/2addr v6, v8

    .line 48
    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    .line 49
    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    add-double/2addr v8, v10

    .line 50
    div-double v10, v8, v12

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    div-double v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v6, v10

    add-double/2addr v2, v6

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    return-wide v2
.end method

.method public static Bhattacharyya([D[D)D
    .locals 8

    .prologue
    .line 63
    array-length v1, p0

    .line 64
    const-wide/16 v2, 0x0

    .line 66
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 67
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    aget-wide v6, p1, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static BrayCurtis(DDDD)D
    .locals 6

    .prologue
    .line 100
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 101
    add-double v2, p0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double v4, p2, p6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 103
    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static BrayCurtis(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 113
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->BrayCurtis(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static BrayCurtis([D[D)D
    .locals 10

    .prologue
    .line 81
    const-wide/16 v2, 0x0

    .line 83
    const/4 v0, 0x0

    move-wide v4, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 84
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 85
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    div-double v0, v2, v4

    return-wide v0
.end method

.method public static Canberra(DDDD)D
    .locals 8

    .prologue
    .line 143
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 144
    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {p6, p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 146
    return-wide v0
.end method

.method public static Canberra(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 156
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->Canberra(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Canberra([D[D)D
    .locals 10

    .prologue
    .line 123
    const-wide/16 v2, 0x0

    .line 125
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 126
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    aget-wide v6, p0, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    aget-wide v8, p1, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    return-wide v2
.end method

.method public static Chebyshev(DDDD)D
    .locals 4

    .prologue
    .line 185
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 186
    return-wide v0
.end method

.method public static Chebyshev(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 196
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->Chebyshev(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Chebyshev([D[D)D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 166
    aget-wide v0, p0, v2

    aget-wide v2, p1, v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 168
    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 169
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 170
    cmpl-double v1, v4, v2

    if-lez v1, :cond_0

    move-wide v2, v4

    .line 168
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return-wide v2
.end method

.method public static Chessboard(DDDD)D
    .locals 4

    .prologue
    .line 224
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 225
    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 227
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Chessboard(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 237
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->Chessboard(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Chessboard([D[D)D
    .locals 8

    .prologue
    .line 207
    const-wide/16 v2, 0x0

    .line 208
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 209
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-wide v2
.end method

.method public static ChiSquare([D[D)D
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 247
    .line 248
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 249
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    add-double/2addr v6, v8

    .line 250
    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    .line 251
    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double v6, v8, v6

    add-double/2addr v2, v6

    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_1
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static Correlation([D[D)D
    .locals 18

    .prologue
    .line 265
    const-wide/16 v6, 0x0

    .line 266
    const-wide/16 v4, 0x0

    .line 268
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 269
    aget-wide v8, p0, v2

    neg-double v8, v8

    add-double/2addr v6, v8

    .line 270
    aget-wide v8, p1, v2

    neg-double v8, v8

    add-double/2addr v4, v8

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_0
    move-object/from16 v0, p0

    array-length v2, v0

    int-to-double v2, v2

    div-double v10, v6, v2

    .line 274
    move-object/from16 v0, p1

    array-length v2, v0

    int-to-double v2, v2

    div-double v12, v4, v2

    .line 276
    const-wide/16 v8, 0x0

    .line 277
    const-wide/16 v6, 0x0

    .line 278
    const-wide/16 v4, 0x0

    .line 279
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 281
    aget-wide v14, p0, v2

    add-double/2addr v14, v10

    aget-wide v16, p1, v2

    add-double v16, v16, v12

    mul-double v14, v14, v16

    add-double/2addr v8, v14

    .line 283
    aget-wide v14, p0, v2

    add-double/2addr v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    add-double/2addr v6, v14

    .line 284
    aget-wide v14, p1, v2

    add-double/2addr v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    add-double/2addr v4, v14

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    div-double v4, v8, v4

    sub-double/2addr v2, v4

    return-wide v2
.end method

.method public static Cosine(DDDD)D
    .locals 10

    .prologue
    .line 325
    mul-double v0, p0, p4

    mul-double v2, p2, p6

    add-double/2addr v0, v2

    .line 326
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 327
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-static/range {p6 .. p7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 328
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 329
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 331
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    sub-double v0, v6, v0

    .line 332
    return-wide v0
.end method

.method public static Cosine(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 342
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->Cosine(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Cosine([D[D)D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/16 v2, 0x0

    .line 298
    .line 301
    const/4 v0, 0x0

    move-wide v4, v2

    move-wide v6, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 302
    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 303
    aget-wide v8, p0, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 304
    aget-wide v8, p1, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 310
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    div-double v0, v6, v0

    sub-double v0, v4, v0

    .line 312
    return-wide v0
.end method

.method public static Euclidean(DDDD)D
    .locals 4

    .prologue
    .line 364
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 365
    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 367
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Euclidean(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 377
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->Euclidean(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Euclidean([D[D)D
    .locals 2

    .prologue
    .line 352
    invoke-static {p0, p1}, LCatalano/Math/Distances/Distance;->SquaredEuclidean([D[D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Hamming(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 388
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of string must be the same."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    .line 392
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 393
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 392
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_2
    return v1
.end method

.method public static JDivergence([D[D)D
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 436
    move-wide v2, v4

    move v1, v0

    .line 439
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_1

    .line 440
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_0

    aget-wide v6, p1, v0

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_0

    .line 441
    const/4 v1, 0x1

    .line 442
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    sub-double/2addr v6, v8

    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 439
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    if-eqz v1, :cond_2

    .line 449
    :goto_1
    return-wide v2

    :cond_2
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1
.end method

.method public static JaccardDistance([D[D)D
    .locals 10

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 405
    move v1, v0

    move v2, v0

    .line 408
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_3

    .line 410
    aget-wide v6, p0, v0

    cmpl-double v3, v6, v4

    if-nez v3, :cond_0

    aget-wide v6, p1, v0

    cmpl-double v3, v6, v4

    if-eqz v3, :cond_2

    .line 412
    :cond_0
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    cmpl-double v3, v6, v8

    if-nez v3, :cond_1

    .line 414
    add-int/lit8 v2, v2, 0x1

    .line 417
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 408
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    :cond_3
    if-eqz v1, :cond_4

    .line 422
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v2

    int-to-double v0, v1

    div-double v0, v2, v0

    sub-double v0, v4, v0

    .line 426
    :goto_1
    return-wide v0

    :cond_4
    move-wide v0, v4

    .line 424
    goto :goto_1
.end method

.method public static JensenDifferenceDivergence([D[D)D
    .locals 12

    .prologue
    .line 459
    const/4 v1, 0x0

    .line 460
    const-wide/16 v2, 0x0

    .line 462
    const/4 v0, 0x0

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 463
    aget-wide v4, p0, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    aget-wide v4, p1, v0

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_0

    .line 464
    const/4 v1, 0x1

    .line 465
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    add-double/2addr v4, v6

    .line 466
    aget-wide v6, p0, v0

    aget-wide v8, p0, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aget-wide v8, p1, v0

    aget-wide v10, p1, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v8, v4, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    sub-double v4, v6, v4

    add-double/2addr v2, v4

    .line 462
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    :cond_1
    if-eqz v1, :cond_2

    .line 473
    :goto_1
    return-wide v2

    :cond_2
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1
.end method

.method public static JensenShannonDivergence([D[D)D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 483
    array-length v0, p0

    new-array v1, v0, [D

    .line 484
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 485
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    add-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, v1, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_0
    invoke-static {p0, v1}, LCatalano/Math/Distances/Distance;->KullbackLeiblerDivergence([D[D)D

    move-result-wide v2

    invoke-static {p1, v1}, LCatalano/Math/Distances/Distance;->KullbackLeiblerDivergence([D[D)D

    move-result-wide v0

    add-double/2addr v0, v2

    div-double/2addr v0, v6

    return-wide v0
.end method

.method public static KDivergence([D[D)D
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    .line 498
    .line 499
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 500
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    add-double/2addr v6, v8

    .line 501
    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    aget-wide v8, p0, v0

    cmpl-double v1, v8, v4

    if-eqz v1, :cond_0

    .line 502
    aget-wide v8, p0, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget-wide v12, p0, v0

    mul-double/2addr v10, v12

    div-double v6, v10, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 499
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 505
    :cond_1
    return-wide v2
.end method

.method public static KullbackLeiblerDivergence([D[D)D
    .locals 12

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    .line 531
    move-wide v2, v4

    move v1, v0

    .line 534
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_1

    .line 535
    aget-wide v6, p0, v0

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_0

    aget-wide v6, p1, v0

    cmpl-double v6, v6, v4

    if-eqz v6, :cond_0

    .line 536
    const/4 v1, 0x1

    .line 537
    aget-wide v6, p0, v0

    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 534
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_1
    if-eqz v1, :cond_2

    .line 544
    :goto_1
    return-wide v2

    :cond_2
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1
.end method

.method public static KumarJohnsonDivergence([D[D)D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    .line 515
    .line 516
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 517
    aget-wide v6, p0, v0

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    aget-wide v6, p1, v0

    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    .line 518
    aget-wide v6, p0, v0

    aget-wide v8, p0, v0

    mul-double/2addr v6, v8

    aget-wide v8, p1, v0

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v6, v12

    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_1
    return-wide v2
.end method

.method public static Mahalanobis([[D[[D)D
    .locals 20

    .prologue
    .line 555
    const/4 v2, 0x0

    aget-object v2, p0, v2

    array-length v2, v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 556
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The number of columns of both matrix must be equals."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 558
    :cond_0
    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v3, 0x0

    aget-object v3, p0, v3

    array-length v3, v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 559
    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 562
    const/4 v4, 0x0

    aget-object v4, p0, v4

    array-length v4, v4

    new-array v7, v4, [D

    .line 563
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    aget-object v5, p0, v5

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 564
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    array-length v6, v0

    if-ge v5, v6, :cond_1

    .line 565
    aget-wide v8, v7, v4

    aget-object v6, p0, v5

    aget-wide v10, v6, v4

    add-double/2addr v8, v10

    aput-wide v8, v7, v4

    .line 564
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 567
    :cond_1
    aget-wide v8, v7, v4

    move-object/from16 v0, p0

    array-length v5, v0

    int-to-double v10, v5

    div-double/2addr v8, v10

    aput-wide v8, v7, v4

    .line 568
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    array-length v6, v0

    if-ge v5, v6, :cond_2

    .line 569
    aget-object v6, v2, v5

    aget-object v8, p0, v5

    aget-wide v8, v8, v4

    aget-wide v10, v7, v4

    sub-double/2addr v8, v10

    aput-wide v8, v6, v4

    .line 568
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 563
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 574
    :cond_3
    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    new-array v8, v4, [D

    .line 575
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x0

    aget-object v5, p1, v5

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 576
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v5, v6, :cond_4

    .line 577
    aget-wide v10, v8, v4

    aget-object v6, p1, v5

    aget-wide v12, v6, v4

    add-double/2addr v10, v12

    aput-wide v10, v8, v4

    .line 576
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 579
    :cond_4
    aget-wide v10, v8, v4

    move-object/from16 v0, p1

    array-length v5, v0

    int-to-double v12, v5

    div-double/2addr v10, v12

    aput-wide v10, v8, v4

    .line 580
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p1

    array-length v6, v0

    if-ge v5, v6, :cond_5

    .line 581
    aget-object v6, v3, v5

    aget-object v9, p1, v5

    aget-wide v10, v9, v4

    aget-wide v12, v8, v4

    sub-double/2addr v10, v12

    aput-wide v10, v6, v4

    .line 580
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 575
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 586
    :cond_6
    invoke-static {v2}, LCatalano/Math/Distances/Distance;->a([[D)[[D

    move-result-object v9

    .line 587
    invoke-static {v3}, LCatalano/Math/Distances/Distance;->a([[D)[[D

    move-result-object v10

    .line 590
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    int-to-double v12, v4

    .line 591
    array-length v4, v9

    const/4 v5, 0x0

    aget-object v5, v9, v5

    array-length v5, v5

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 592
    const/4 v5, 0x0

    :goto_6
    array-length v6, v4

    if-ge v5, v6, :cond_8

    .line 593
    const/4 v6, 0x0

    :goto_7
    const/4 v11, 0x0

    aget-object v11, v4, v11

    array-length v11, v11

    if-ge v6, v11, :cond_7

    .line 594
    aget-object v11, v4, v5

    aget-object v14, v9, v5

    aget-wide v14, v14, v6

    array-length v0, v2

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v16, v12

    mul-double v14, v14, v16

    aget-object v16, v10, v5

    aget-wide v16, v16, v6

    array-length v0, v3

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v18, v18, v12

    mul-double v16, v16, v18

    add-double v14, v14, v16

    aput-wide v14, v11, v6

    .line 593
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 592
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 599
    :cond_8
    invoke-static {v4}, LCatalano/Math/Matrix;->Inverse([[D)[[D

    move-result-object v3

    .line 602
    const/4 v2, 0x0

    aget-object v2, p0, v2

    array-length v2, v2

    new-array v4, v2, [D

    .line 603
    const/4 v2, 0x0

    :goto_8
    array-length v5, v4

    if-ge v2, v5, :cond_9

    .line 604
    aget-wide v10, v7, v2

    aget-wide v12, v8, v2

    sub-double/2addr v10, v12

    aput-wide v10, v4, v2

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 607
    :cond_9
    invoke-static {v3, v4}, LCatalano/Math/Matrix;->MultiplyByTranspose([[D[D)[D

    move-result-object v2

    invoke-static {v2, v4}, LCatalano/Math/Matrix;->InnerProduct([D[D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public static Manhattan(DDDD)D
    .locals 4

    .prologue
    .line 671
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 672
    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 674
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static Manhattan(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 684
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->Manhattan(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Manhattan([D[D)D
    .locals 8

    .prologue
    .line 655
    const-wide/16 v2, 0x0

    .line 656
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 657
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    return-wide v2
.end method

.method public static Minkowski(DDDDI)D
    .locals 6

    .prologue
    .line 697
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    int-to-double v2, p8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 698
    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    .line 699
    const/4 v2, 0x1

    div-int/2addr v2, p8

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Minkowski(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;I)D
    .locals 9

    .prologue
    .line 710
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    move v8, p2

    invoke-static/range {v0 .. v8}, LCatalano/Math/Distances/Distance;->Minkowski(DDDDI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Minkowski([D[DD)D
    .locals 8

    .prologue
    .line 721
    const-wide/16 v2, 0x0

    .line 722
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 723
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static QuasiEuclidean(DDDD)D
    .locals 6

    .prologue
    const-wide v4, 0x3fda827999fcef34L    # 0.41421356237309515

    .line 738
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 739
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 741
    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, p0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    sub-double v2, p2, p6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static QuasiEuclidean(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 8

    .prologue
    .line 752
    iget v0, p0, LCatalano/Core/IntPoint;->x:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Core/IntPoint;->y:I

    int-to-double v2, v2

    iget v4, p1, LCatalano/Core/IntPoint;->x:I

    int-to-double v4, v4

    iget v6, p1, LCatalano/Core/IntPoint;->y:I

    int-to-double v6, v6

    invoke-static/range {v0 .. v7}, LCatalano/Math/Distances/Distance;->QuasiEuclidean(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static SquaredEuclidean(DDDD)D
    .locals 4

    .prologue
    .line 783
    sub-double v0, p4, p0

    .line 784
    sub-double v2, p6, p2

    .line 785
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static SquaredEuclidean(LCatalano/Core/IntPoint;LCatalano/Core/IntPoint;)D
    .locals 4

    .prologue
    .line 797
    iget v0, p1, LCatalano/Core/IntPoint;->x:I

    iget v1, p0, LCatalano/Core/IntPoint;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    .line 798
    iget v2, p1, LCatalano/Core/IntPoint;->y:I

    iget v3, p0, LCatalano/Core/IntPoint;->y:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    .line 799
    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static SquaredEuclidean([D[D)D
    .locals 8

    .prologue
    .line 762
    const-wide/16 v2, 0x0

    .line 764
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 766
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    .line 767
    mul-double/2addr v4, v4

    add-double/2addr v2, v4

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_0
    return-wide v2
.end method

.method public static SymmetricChiSquareDivergence([D[D)D
    .locals 14

    .prologue
    const-wide/16 v4, 0x0

    .line 810
    .line 811
    const/4 v0, 0x0

    move-wide v2, v4

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 812
    aget-wide v6, p0, v0

    aget-wide v8, p1, v0

    mul-double/2addr v6, v8

    .line 813
    cmpl-double v1, v6, v4

    if-eqz v1, :cond_0

    .line 814
    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    sub-double/2addr v8, v10

    .line 815
    aget-wide v10, p0, v0

    aget-wide v12, p1, v0

    add-double/2addr v10, v12

    .line 816
    mul-double/2addr v8, v8

    mul-double/2addr v8, v10

    div-double v6, v8, v6

    add-double/2addr v2, v6

    .line 811
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 820
    :cond_1
    return-wide v2
.end method

.method public static Taneja([D[D)D
    .locals 14

    .prologue
    .line 830
    const-wide/16 v2, 0x0

    .line 831
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 832
    aget-wide v4, p0, v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_0

    aget-wide v4, p1, v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_0

    .line 833
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    add-double/2addr v4, v6

    .line 834
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v6, v4, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    aget-wide v10, p0, v0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 831
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    :cond_1
    return-wide v2
.end method

.method public static TopsoeDivergence([D[D)D
    .locals 14

    .prologue
    .line 847
    const-wide/16 v2, 0x0

    .line 848
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 849
    aget-wide v4, p0, v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_0

    aget-wide v4, p1, v0

    const-wide/16 v6, 0x0

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_0

    .line 850
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    add-double/2addr v4, v6

    .line 851
    aget-wide v6, p0, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    aget-wide v10, p0, v0

    mul-double/2addr v8, v10

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    aget-wide v8, p1, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    aget-wide v12, p1, v0

    mul-double/2addr v10, v12

    div-double v4, v10, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 848
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 854
    :cond_1
    return-wide v2
.end method

.method private static a([D[DDD)D
    .locals 8

    .prologue
    .line 612
    const-wide/16 v2, 0x0

    .line 613
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 614
    aget-wide v4, p0, v0

    sub-double/2addr v4, p2

    aget-wide v6, p1, v0

    sub-double/2addr v6, p4

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    array-length v0, p0

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method private static a([[D)[[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 621
    aget-object v0, p0, v1

    array-length v0, v0

    new-array v3, v0, [D

    move v0, v1

    .line 622
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 623
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v2, v4, :cond_0

    .line 624
    aget-wide v4, v3, v2

    aget-object v6, p0, v0

    aget-wide v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 623
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_1
    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 629
    aget-wide v4, v3, v1

    array-length v0, v3

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v3, v1

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 632
    :cond_2
    invoke-static {p0, v3}, LCatalano/Math/Distances/Distance;->a([[D[D)[[D

    move-result-object v0

    return-object v0
.end method

.method private static a([[D[D)[[D
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 636
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

    .line 638
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    move v9, v8

    .line 639
    :goto_1
    aget-object v0, v6, v8

    array-length v0, v0

    if-ge v9, v0, :cond_0

    .line 640
    aget-object v10, v6, v7

    invoke-static {p0, v7}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v0

    invoke-static {p0, v9}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v1

    aget-wide v2, p1, v7

    aget-wide v4, p1, v9

    invoke-static/range {v0 .. v5}, LCatalano/Math/Distances/Distance;->a([D[DDD)D

    move-result-wide v0

    aput-wide v0, v10, v9

    .line 639
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 638
    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 644
    :cond_1
    return-object v6
.end method
