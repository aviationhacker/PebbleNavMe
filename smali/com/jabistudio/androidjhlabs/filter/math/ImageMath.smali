.class public Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HALF_PI:F = 1.5707964f

.field public static final PI:F = 3.1415927f

.field public static final QUARTER_PI:F = 0.7853982f

.field public static final TWO_PI:F = 6.2831855f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bias(FF)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 53
    div-float v0, v2, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float/2addr v0, v1

    sub-float v1, v2, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    div-float v0, p0, v0

    return v0
.end method

.method public static bilinearInterpolate(FFIIII)I
    .locals 19

    .prologue
    .line 291
    shr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 292
    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 293
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 294
    move/from16 v0, p2

    and-int/lit16 v4, v0, 0xff

    .line 295
    shr-int/lit8 v5, p3, 0x18

    and-int/lit16 v5, v5, 0xff

    .line 296
    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    .line 297
    shr-int/lit8 v7, p3, 0x8

    and-int/lit16 v7, v7, 0xff

    .line 298
    move/from16 v0, p3

    and-int/lit16 v8, v0, 0xff

    .line 299
    shr-int/lit8 v9, p4, 0x18

    and-int/lit16 v9, v9, 0xff

    .line 300
    shr-int/lit8 v10, p4, 0x10

    and-int/lit16 v10, v10, 0xff

    .line 301
    shr-int/lit8 v11, p4, 0x8

    and-int/lit16 v11, v11, 0xff

    .line 302
    move/from16 v0, p4

    and-int/lit16 v12, v0, 0xff

    .line 303
    shr-int/lit8 v13, p5, 0x18

    and-int/lit16 v13, v13, 0xff

    .line 304
    shr-int/lit8 v14, p5, 0x10

    and-int/lit16 v14, v14, 0xff

    .line 305
    shr-int/lit8 v15, p5, 0x8

    and-int/lit16 v15, v15, 0xff

    .line 306
    move/from16 v0, p5

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 308
    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, v17, p0

    .line 309
    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v18, v18, p1

    .line 311
    int-to-float v1, v1

    mul-float v1, v1, v17

    int-to-float v5, v5

    mul-float v5, v5, p0

    add-float/2addr v1, v5

    .line 312
    int-to-float v5, v9

    mul-float v5, v5, v17

    int-to-float v9, v13

    mul-float v9, v9, p0

    add-float/2addr v5, v9

    .line 313
    mul-float v1, v1, v18

    mul-float v5, v5, p1

    add-float/2addr v1, v5

    float-to-int v1, v1

    .line 315
    int-to-float v2, v2

    mul-float v2, v2, v17

    int-to-float v5, v6

    mul-float v5, v5, p0

    add-float/2addr v2, v5

    .line 316
    int-to-float v5, v10

    mul-float v5, v5, v17

    int-to-float v6, v14

    mul-float v6, v6, p0

    add-float/2addr v5, v6

    .line 317
    mul-float v2, v2, v18

    mul-float v5, v5, p1

    add-float/2addr v2, v5

    float-to-int v2, v2

    .line 319
    int-to-float v3, v3

    mul-float v3, v3, v17

    int-to-float v5, v7

    mul-float v5, v5, p0

    add-float/2addr v3, v5

    .line 320
    int-to-float v5, v11

    mul-float v5, v5, v17

    int-to-float v6, v15

    mul-float v6, v6, p0

    add-float/2addr v5, v6

    .line 321
    mul-float v3, v3, v18

    mul-float v5, v5, p1

    add-float/2addr v3, v5

    float-to-int v3, v3

    .line 323
    int-to-float v4, v4

    mul-float v4, v4, v17

    int-to-float v5, v8

    mul-float v5, v5, p0

    add-float/2addr v4, v5

    .line 324
    int-to-float v5, v12

    mul-float v5, v5, v17

    move/from16 v0, v16

    int-to-float v6, v0

    mul-float v6, v6, p0

    add-float/2addr v5, v6

    .line 325
    mul-float v4, v4, v18

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 327
    shl-int/lit8 v1, v1, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    return v1
.end method

.method public static brightnessNTSC(I)I
    .locals 4

    .prologue
    .line 336
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    .line 337
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 338
    and-int/lit16 v2, p0, 0xff

    .line 339
    int-to-float v0, v0

    const v3, 0x3e991687    # 0.299f

    mul-float/2addr v0, v3

    int-to-float v1, v1

    const v3, 0x3f1645a2    # 0.587f

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    int-to-float v1, v2

    const v2, 0x3de978d5    # 0.114f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static circleDown(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 157
    mul-float v0, p0, p0

    sub-float v0, v2, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, v2, v0

    return v0
.end method

.method public static circleUp(F)F
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 147
    sub-float v0, v1, p0

    .line 148
    mul-float/2addr v0, v0

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static clamp(FFF)F
    .locals 1

    .prologue
    .line 168
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0

    .prologue
    .line 179
    if-ge p0, p1, :cond_0

    :goto_0
    return p1

    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static colorSpline(FI[I)I
    .locals 13

    .prologue
    .line 446
    add-int/lit8 v0, p1, -0x3

    .line 450
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(FFF)F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 454
    float-to-int v0, v1

    .line 455
    add-int/lit8 v2, p1, -0x4

    if-le v0, v2, :cond_1

    .line 456
    add-int/lit8 v0, p1, -0x4

    .line 457
    :cond_1
    int-to-float v2, v0

    sub-float v4, v1, v2

    .line 459
    const/4 v2, 0x0

    .line 460
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v2, v1, :cond_4

    .line 461
    mul-int/lit8 v5, v2, 0x8

    .line 463
    aget v1, p2, v0

    shr-int/2addr v1, v5

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    .line 464
    add-int/lit8 v6, v0, 0x1

    aget v6, p2, v6

    shr-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    .line 465
    add-int/lit8 v7, v0, 0x2

    aget v7, p2, v7

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    .line 466
    add-int/lit8 v8, v0, 0x3

    aget v8, p2, v8

    shr-int/2addr v8, v5

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    .line 468
    const/high16 v9, -0x41000000    # -0.5f

    mul-float/2addr v9, v1

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    const/high16 v10, -0x40400000    # -1.5f

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    .line 469
    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v10, v1

    const/high16 v11, -0x3fe00000    # -2.5f

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    const/high16 v11, -0x41000000    # -0.5f

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 470
    const/high16 v11, -0x41000000    # -0.5f

    mul-float/2addr v11, v1

    const/4 v12, 0x0

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    const/4 v12, 0x0

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 471
    const/4 v12, 0x0

    mul-float/2addr v1, v12

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v6, v12

    add-float/2addr v1, v6

    const/4 v6, 0x0

    mul-float/2addr v6, v7

    add-float/2addr v1, v6

    const/4 v6, 0x0

    mul-float/2addr v6, v8

    add-float/2addr v1, v6

    .line 472
    mul-float v6, v9, v4

    add-float/2addr v6, v10

    mul-float/2addr v6, v4

    add-float/2addr v6, v11

    mul-float/2addr v6, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    .line 473
    if-gez v1, :cond_3

    .line 474
    const/4 v1, 0x0

    .line 477
    :cond_2
    :goto_1
    shl-int/2addr v1, v5

    or-int/2addr v3, v1

    .line 460
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 475
    :cond_3
    const/16 v6, 0xff

    if-le v1, v6, :cond_2

    .line 476
    const/16 v1, 0xff

    goto :goto_1

    .line 480
    :cond_4
    return v3
.end method

.method public static colorSpline(II[I[I)I
    .locals 14

    .prologue
    .line 493
    add-int/lit8 v1, p1, -0x3

    .line 497
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 501
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    if-le v2, p0, :cond_4

    .line 503
    :cond_1
    add-int/lit8 v1, p1, -0x3

    if-le v0, v1, :cond_2

    .line 504
    add-int/lit8 v0, p1, -0x3

    .line 505
    :cond_2
    aget v1, p2, v0

    sub-int v1, p0, v1

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    aget v3, p2, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 506
    add-int/lit8 v0, v0, -0x1

    .line 507
    if-gez v0, :cond_7

    .line 508
    const/4 v1, 0x0

    .line 509
    const/4 v0, 0x0

    .line 512
    :goto_1
    const/4 v3, 0x0

    .line 513
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_2
    const/4 v2, 0x4

    if-ge v3, v2, :cond_6

    .line 514
    mul-int/lit8 v5, v3, 0x8

    .line 516
    aget v2, p3, v1

    shr-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    .line 517
    add-int/lit8 v6, v1, 0x1

    aget v6, p3, v6

    shr-int/2addr v6, v5

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    .line 518
    add-int/lit8 v7, v1, 0x2

    aget v7, p3, v7

    shr-int/2addr v7, v5

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    .line 519
    add-int/lit8 v8, v1, 0x3

    aget v8, p3, v8

    shr-int/2addr v8, v5

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    .line 521
    const/high16 v9, -0x41000000    # -0.5f

    mul-float/2addr v9, v2

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    const/high16 v10, -0x40400000    # -1.5f

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    .line 522
    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v10, v2

    const/high16 v11, -0x3fe00000    # -2.5f

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v7

    add-float/2addr v10, v11

    const/high16 v11, -0x41000000    # -0.5f

    mul-float/2addr v11, v8

    add-float/2addr v10, v11

    .line 523
    const/high16 v11, -0x41000000    # -0.5f

    mul-float/2addr v11, v2

    const/4 v12, 0x0

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v12, v7

    add-float/2addr v11, v12

    const/4 v12, 0x0

    mul-float/2addr v12, v8

    add-float/2addr v11, v12

    .line 524
    const/4 v12, 0x0

    mul-float/2addr v2, v12

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float/2addr v6, v12

    add-float/2addr v2, v6

    const/4 v6, 0x0

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    const/4 v6, 0x0

    mul-float/2addr v6, v8

    add-float/2addr v2, v6

    .line 525
    mul-float v6, v9, v0

    add-float/2addr v6, v10

    mul-float/2addr v6, v0

    add-float/2addr v6, v11

    mul-float/2addr v6, v0

    add-float/2addr v2, v6

    float-to-int v2, v2

    .line 526
    if-gez v2, :cond_5

    .line 527
    const/4 v2, 0x0

    .line 530
    :cond_3
    :goto_3
    shl-int/2addr v2, v5

    or-int/2addr v4, v2

    .line 513
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 500
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 528
    :cond_5
    const/16 v6, 0xff

    if-le v2, v6, :cond_3

    .line 529
    const/16 v2, 0xff

    goto :goto_3

    .line 533
    :cond_6
    return v4

    :cond_7
    move v13, v1

    move v1, v0

    move v0, v13

    goto :goto_1
.end method

.method public static gain(FF)F
    .locals 7

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 75
    div-float v0, v6, p1

    sub-float/2addr v0, v1

    mul-float/2addr v1, p0

    sub-float v1, v6, v1

    mul-float/2addr v0, v1

    .line 76
    float-to-double v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 77
    add-float/2addr v0, v6

    div-float v0, p0, v0

    .line 79
    :goto_0
    return v0

    :cond_0
    sub-float v1, v0, p0

    sub-float/2addr v0, v6

    div-float v0, v1, v0

    goto :goto_0
.end method

.method public static lerp(FFF)F
    .locals 1

    .prologue
    .line 245
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method public static lerp(FII)I
    .locals 2

    .prologue
    .line 256
    int-to-float v0, p1

    sub-int v1, p2, p1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static mixColors(FII)I
    .locals 8

    .prologue
    .line 267
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 268
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 269
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 270
    and-int/lit16 v3, p1, 0xff

    .line 271
    shr-int/lit8 v4, p2, 0x18

    and-int/lit16 v4, v4, 0xff

    .line 272
    shr-int/lit8 v5, p2, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 273
    shr-int/lit8 v6, p2, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 274
    and-int/lit16 v7, p2, 0xff

    .line 275
    invoke-static {p0, v0, v4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v0

    .line 276
    invoke-static {p0, v1, v5}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v1

    .line 277
    invoke-static {p0, v2, v6}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v2

    .line 278
    invoke-static {p0, v3, v7}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FII)I

    move-result v3

    .line 279
    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public static mod(DD)D
    .locals 4

    .prologue
    .line 189
    div-double v0, p0, p2

    double-to-int v0, v0

    .line 191
    int-to-double v0, v0

    mul-double/2addr v0, p2

    sub-double v0, p0, v0

    .line 192
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 193
    add-double/2addr v0, p2

    .line 194
    :cond_0
    return-wide v0
.end method

.method public static mod(FF)F
    .locals 2

    .prologue
    .line 204
    div-float v0, p0, p1

    float-to-int v0, v0

    .line 206
    int-to-float v0, v0

    mul-float/2addr v0, p1

    sub-float v0, p0, v0

    .line 207
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 208
    add-float/2addr v0, p1

    .line 209
    :cond_0
    return v0
.end method

.method public static mod(II)I
    .locals 1

    .prologue
    .line 219
    div-int v0, p0, p1

    .line 221
    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    .line 222
    if-gez v0, :cond_0

    .line 223
    add-int/2addr v0, p1

    .line 224
    :cond_0
    return v0
.end method

.method public static premultiply([III)V
    .locals 7

    .prologue
    .line 634
    add-int v0, p2, p1

    .line 635
    :goto_0
    if-ge p1, v0, :cond_0

    .line 636
    aget v1, p0, p1

    .line 637
    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 638
    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    .line 639
    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    .line 640
    and-int/lit16 v1, v1, 0xff

    .line 641
    int-to-float v5, v2

    const v6, 0x3b808081

    mul-float/2addr v5, v6

    .line 642
    int-to-float v3, v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 643
    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 644
    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 645
    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, p0, p1

    .line 635
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 647
    :cond_0
    return-void
.end method

.method public static pulse(FFF)F
    .locals 1

    .prologue
    .line 100
    cmpg-float v0, p2, p0

    if-ltz v0, :cond_0

    cmpl-float v0, p2, p1

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static resample([I[IIII[F)V
    .locals 32

    .prologue
    .line 553
    .line 555
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    .line 558
    add-int/lit8 v2, p2, 0x2

    new-array v0, v2, [F

    move-object/from16 v22, v0

    .line 559
    const/4 v3, 0x0

    .line 560
    const/4 v2, 0x0

    move/from16 v29, v2

    move v2, v3

    move/from16 v3, v29

    :goto_0
    move/from16 v0, p2

    if-ge v3, v0, :cond_1

    .line 561
    :goto_1
    add-int/lit8 v4, v2, 0x1

    aget v4, p5, v4

    int-to-float v5, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 562
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 563
    :cond_0
    int-to-float v4, v2

    int-to-float v5, v3

    aget v6, p5, v2

    sub-float/2addr v5, v6

    add-int/lit8 v6, v2, 0x1

    aget v6, p5, v6

    aget v7, p5, v2

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    aput v4, v22, v3

    .line 560
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    :cond_1
    move/from16 v0, p2

    int-to-float v2, v0

    aput v2, v22, p2

    .line 567
    add-int/lit8 v2, p2, 0x1

    move/from16 v0, p2

    int-to-float v3, v0

    aput v3, v22, v2

    .line 569
    const/high16 v18, 0x3f800000    # 1.0f

    .line 570
    const/4 v2, 0x1

    aget v17, v22, v2

    .line 572
    const/4 v5, 0x0

    .line 573
    aget v2, p0, p3

    .line 574
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v9, v3, 0xff

    .line 575
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v8, v3, 0xff

    .line 576
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v7, v3, 0xff

    .line 577
    and-int/lit16 v6, v2, 0xff

    .line 578
    add-int v3, p3, p4

    .line 579
    aget v2, p0, v3

    .line 580
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v0, v4, 0xff

    move/from16 v16, v0

    .line 581
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v14, v4, 0xff

    .line 582
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v12, v4, 0xff

    .line 583
    and-int/lit16 v10, v2, 0xff

    .line 584
    add-int v4, v3, p4

    .line 585
    const/16 v20, 0x1

    move/from16 v3, p3

    move v11, v5

    move v13, v5

    move v15, v5

    move/from16 v19, v17

    .line 587
    :goto_2
    move/from16 v0, v20

    move/from16 v1, p2

    if-gt v0, v1, :cond_4

    .line 588
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v18

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    add-float v23, v23, v24

    .line 589
    int-to-float v0, v8

    move/from16 v24, v0

    mul-float v24, v24, v18

    const/high16 v25, 0x3f800000    # 1.0f

    sub-float v25, v25, v18

    int-to-float v0, v14

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    .line 590
    int-to-float v0, v7

    move/from16 v25, v0

    mul-float v25, v25, v18

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v26, v26, v18

    int-to-float v0, v12

    move/from16 v27, v0

    mul-float v26, v26, v27

    add-float v25, v25, v26

    .line 591
    int-to-float v0, v6

    move/from16 v26, v0

    mul-float v26, v26, v18

    const/high16 v27, 0x3f800000    # 1.0f

    sub-float v27, v27, v18

    int-to-float v0, v10

    move/from16 v28, v0

    mul-float v27, v27, v28

    add-float v26, v26, v27

    .line 592
    cmpg-float v27, v18, v17

    if-gez v27, :cond_3

    .line 593
    mul-float v6, v23, v18

    add-float v8, v15, v6

    .line 594
    mul-float v6, v24, v18

    add-float v7, v13, v6

    .line 595
    mul-float v6, v25, v18

    add-float/2addr v6, v11

    .line 596
    mul-float v9, v26, v18

    add-float/2addr v5, v9

    .line 597
    sub-float v17, v17, v18

    .line 598
    const/high16 v18, 0x3f800000    # 1.0f

    .line 603
    move/from16 v0, v21

    if-ge v4, v0, :cond_2

    .line 604
    aget v2, p0, v4

    .line 605
    :cond_2
    shr-int/lit8 v9, v2, 0x18

    and-int/lit16 v15, v9, 0xff

    .line 606
    shr-int/lit8 v9, v2, 0x10

    and-int/lit16 v13, v9, 0xff

    .line 607
    shr-int/lit8 v9, v2, 0x8

    and-int/lit16 v11, v9, 0xff

    .line 608
    and-int/lit16 v9, v2, 0xff

    .line 609
    add-int v4, v4, p4

    move/from16 v29, v11

    move v11, v13

    move v13, v10

    move/from16 v10, v29

    move/from16 v30, v15

    move v15, v14

    move v14, v12

    move/from16 v12, v30

    :goto_3
    move/from16 v29, v6

    move v6, v13

    move v13, v7

    move v7, v14

    move v14, v11

    move/from16 v11, v29

    move/from16 v30, v9

    move/from16 v9, v16

    move/from16 v16, v12

    move v12, v10

    move/from16 v10, v30

    move/from16 v31, v15

    move v15, v8

    move/from16 v8, v31

    .line 627
    goto/16 :goto_2

    .line 611
    :cond_3
    mul-float v23, v23, v17

    add-float v15, v15, v23

    .line 612
    mul-float v23, v24, v17

    add-float v13, v13, v23

    .line 613
    mul-float v23, v25, v17

    add-float v11, v11, v23

    .line 614
    mul-float v23, v26, v17

    add-float v5, v5, v23

    .line 615
    div-float v15, v15, v19

    const/high16 v23, 0x437f0000    # 255.0f

    .line 616
    move/from16 v0, v23

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v15

    float-to-int v15, v15

    shl-int/lit8 v15, v15, 0x18

    div-float v13, v13, v19

    const/high16 v23, 0x437f0000    # 255.0f

    .line 617
    move/from16 v0, v23

    invoke-static {v13, v0}, Ljava/lang/Math;->min(FF)F

    move-result v13

    float-to-int v13, v13

    shl-int/lit8 v13, v13, 0x10

    or-int/2addr v13, v15

    div-float v11, v11, v19

    const/high16 v15, 0x437f0000    # 255.0f

    .line 618
    invoke-static {v11, v15}, Ljava/lang/Math;->min(FF)F

    move-result v11

    float-to-int v11, v11

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v11, v13

    div-float v5, v5, v19

    const/high16 v13, 0x437f0000    # 255.0f

    .line 619
    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    or-int/2addr v5, v11

    aput v5, p1, v3

    .line 620
    add-int v3, v3, p4

    .line 621
    const/4 v5, 0x0

    .line 622
    sub-float v13, v18, v17

    .line 623
    add-int/lit8 v11, v20, 0x1

    aget v11, v22, v11

    aget v15, v22, v20

    sub-float/2addr v11, v15

    .line 625
    add-int/lit8 v15, v20, 0x1

    move/from16 v17, v11

    move/from16 v18, v13

    move/from16 v19, v11

    move/from16 v20, v15

    move v11, v14

    move v13, v6

    move v15, v8

    move v14, v7

    move v6, v5

    move v8, v5

    move v7, v5

    move/from16 v29, v12

    move/from16 v12, v16

    move/from16 v16, v9

    move v9, v10

    move/from16 v10, v29

    goto/16 :goto_3

    .line 628
    :cond_4
    return-void
.end method

.method public static smoothPulse(FFFFF)F
    .locals 5

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    cmpg-float v1, p4, p0

    if-ltz v1, :cond_0

    cmpl-float v1, p4, p3

    if-ltz v1, :cond_2

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 122
    :cond_1
    :goto_0
    return v0

    .line 115
    :cond_2
    cmpl-float v1, p4, p1

    if-ltz v1, :cond_3

    .line 116
    cmpg-float v1, p4, p2

    if-ltz v1, :cond_1

    .line 118
    sub-float v1, p4, p2

    sub-float v2, p3, p2

    div-float/2addr v1, v2

    .line 119
    mul-float v2, v1, v1

    mul-float/2addr v1, v3

    sub-float v1, v4, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0

    .line 121
    :cond_3
    sub-float v0, p4, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    .line 122
    mul-float v1, v0, v0

    mul-float/2addr v0, v3

    sub-float v0, v4, v0

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public static smoothStep(FFF)F
    .locals 4

    .prologue
    .line 133
    cmpg-float v0, p2, p0

    if-gez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    cmpl-float v0, p2, p1

    if-ltz v0, :cond_1

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 137
    :cond_1
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    .line 138
    mul-float v1, v0, v0

    const/high16 v2, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public static spline(FI[F)F
    .locals 12

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v8, -0x41000000    # -0.5f

    const/4 v9, 0x0

    .line 369
    add-int/lit8 v0, p1, -0x3

    .line 373
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    invoke-static {p0, v9, v10}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(FFF)F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 377
    float-to-int v0, v1

    .line 378
    add-int/lit8 v2, p1, -0x4

    if-le v0, v2, :cond_1

    .line 379
    add-int/lit8 v0, p1, -0x4

    .line 380
    :cond_1
    int-to-float v2, v0

    sub-float/2addr v1, v2

    .line 382
    aget v2, p2, v0

    .line 383
    add-int/lit8 v3, v0, 0x1

    aget v3, p2, v3

    .line 384
    add-int/lit8 v4, v0, 0x2

    aget v4, p2, v4

    .line 385
    add-int/lit8 v0, v0, 0x3

    aget v0, p2, v0

    .line 387
    mul-float v5, v8, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/high16 v6, -0x40400000    # -1.5f

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    mul-float v6, v11, v0

    add-float/2addr v5, v6

    .line 388
    mul-float v6, v10, v2

    const/high16 v7, -0x3fe00000    # -2.5f

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    mul-float v7, v8, v0

    add-float/2addr v6, v7

    .line 389
    mul-float v7, v8, v2

    mul-float v8, v9, v3

    add-float/2addr v7, v8

    mul-float v8, v11, v4

    add-float/2addr v7, v8

    mul-float v8, v9, v0

    add-float/2addr v7, v8

    .line 390
    mul-float/2addr v2, v9

    mul-float/2addr v3, v10

    add-float/2addr v2, v3

    mul-float v3, v9, v4

    add-float/2addr v2, v3

    mul-float/2addr v0, v9

    add-float/2addr v0, v2

    .line 392
    mul-float v2, v5, v1

    add-float/2addr v2, v6

    mul-float/2addr v2, v1

    add-float/2addr v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public static spline(FI[I[I)F
    .locals 10

    .prologue
    .line 405
    add-int/lit8 v1, p1, -0x3

    .line 409
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Too few knots in spline"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 413
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    int-to-float v2, v2

    cmpl-float v2, v2, p0

    if-lez v2, :cond_3

    .line 415
    :cond_1
    add-int/lit8 v1, p1, -0x3

    if-le v0, v1, :cond_2

    .line 416
    add-int/lit8 v0, p1, -0x3

    .line 417
    :cond_2
    aget v1, p2, v0

    int-to-float v1, v1

    sub-float v1, p0, v1

    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    aget v3, p2, v0

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 418
    add-int/lit8 v0, v0, -0x1

    .line 419
    if-gez v0, :cond_4

    .line 420
    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x0

    .line 424
    :goto_1
    aget v2, p3, v1

    int-to-float v2, v2

    .line 425
    add-int/lit8 v3, v1, 0x1

    aget v3, p3, v3

    int-to-float v3, v3

    .line 426
    add-int/lit8 v4, v1, 0x2

    aget v4, p3, v4

    int-to-float v4, v4

    .line 427
    add-int/lit8 v1, v1, 0x3

    aget v1, p3, v1

    int-to-float v1, v1

    .line 429
    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v5, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    const/high16 v6, -0x40400000    # -1.5f

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    .line 430
    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v6, v2

    const/high16 v7, -0x3fe00000    # -2.5f

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    const/high16 v7, -0x41000000    # -0.5f

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    .line 431
    const/high16 v7, -0x41000000    # -0.5f

    mul-float/2addr v7, v2

    const/4 v8, 0x0

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    const/4 v8, 0x0

    mul-float/2addr v8, v1

    add-float/2addr v7, v8

    .line 432
    const/4 v8, 0x0

    mul-float/2addr v2, v8

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v3, v8

    add-float/2addr v2, v3

    const/4 v3, 0x0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x0

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 434
    mul-float v2, v5, v0

    add-float/2addr v2, v6

    mul-float/2addr v2, v0

    add-float/2addr v2, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0

    .line 412
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1
.end method

.method public static step(FF)F
    .locals 1

    .prologue
    .line 89
    cmpg-float v0, p1, p0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static triangle(F)F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 233
    invoke-static {p0, v6}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(FF)F

    move-result v0

    .line 234
    const/high16 v1, 0x40000000    # 2.0f

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    mul-float/2addr v0, v1

    return v0

    :cond_0
    sub-float v0, v6, v0

    goto :goto_0
.end method

.method public static unpremultiply([III)V
    .locals 8

    .prologue
    const/16 v1, 0xff

    .line 653
    add-int v4, p2, p1

    .line 654
    :goto_0
    if-ge p1, v4, :cond_4

    .line 655
    aget v0, p0, p1

    .line 656
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v5, v2, 0xff

    .line 657
    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 658
    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v6, v3, 0xff

    .line 659
    and-int/lit16 v0, v0, 0xff

    .line 660
    if-eqz v5, :cond_3

    if-eq v5, v1, :cond_3

    .line 661
    const/high16 v3, 0x437f0000    # 255.0f

    int-to-float v7, v5

    div-float v7, v3, v7

    .line 662
    int-to-float v2, v2

    mul-float/2addr v2, v7

    float-to-int v3, v2

    .line 663
    int-to-float v2, v6

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 664
    int-to-float v0, v0

    mul-float/2addr v0, v7

    float-to-int v0, v0

    .line 665
    if-le v3, v1, :cond_0

    move v3, v1

    .line 667
    :cond_0
    if-le v2, v1, :cond_1

    move v2, v1

    .line 669
    :cond_1
    if-le v0, v1, :cond_2

    move v0, v1

    .line 671
    :cond_2
    shl-int/lit8 v5, v5, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    aput v0, p0, p1

    .line 654
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 674
    :cond_4
    return-void
.end method
