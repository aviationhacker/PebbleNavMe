.class public final LCatalano/Math/Functions/Bessel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I(D)D
    .locals 18

    .prologue
    .line 308
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 310
    const-wide/high16 v2, 0x400e000000000000L    # 3.75

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 311
    const-wide/high16 v2, 0x400e000000000000L    # 3.75

    div-double v2, p0, v2

    .line 312
    mul-double/2addr v2, v2

    .line 313
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const-wide v6, 0x3fec1fff5991eca7L    # 0.87890594

    const-wide v8, 0x3fe07ac98fab8428L    # 0.51498869

    const-wide v10, 0x3fc34f07faf62aeaL    # 0.15084934

    const-wide v12, 0x3f9b39b5835a121aL    # 0.02658733

    const-wide v14, 0x3f68b395992ee59cL    # 0.00301532

    const-wide v16, 0x3f353da9d9adb0d3L    # 3.2411E-4

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 322
    :goto_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0

    .line 317
    :cond_1
    const-wide/high16 v2, 0x400e000000000000L    # 3.75

    div-double/2addr v2, v0

    .line 318
    const-wide v4, 0x3f9760a9381d27d9L    # 0.02282967

    const-wide v6, -0x40625a1d01ee6cb0L    # -0.02895312

    const-wide v8, 0x3f924e3a4aa99c71L    # 0.01787654

    const-wide v10, 0x3f7134a34ac8503bL    # 0.00420059

    mul-double/2addr v10, v2

    sub-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    .line 319
    const-wide v6, 0x3fd988453365de00L    # 0.39894228

    const-wide v8, -0x405b94d132e30142L    # -0.03988024

    const-wide v10, -0x409257eea96b73c1L    # -0.00362018

    const-wide v12, 0x3f5ad64fd85a7496L    # 0.00163801

    const-wide v14, -0x407adfae50e0c324L    # -0.01031555

    mul-double/2addr v4, v2

    add-double/2addr v4, v14

    mul-double/2addr v4, v2

    add-double/2addr v4, v12

    mul-double/2addr v4, v2

    add-double/2addr v4, v10

    mul-double/2addr v4, v2

    add-double/2addr v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    .line 320
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, v4, v0

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static I(ID)D
    .locals 21

    .prologue
    .line 332
    if-gez p0, :cond_0

    .line 333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "the variable n out of range."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_0
    if-nez p0, :cond_2

    .line 335
    invoke-static/range {p1 .. p2}, LCatalano/Math/Functions/Bessel;->I0(D)D

    move-result-wide v2

    .line 368
    :cond_1
    :goto_0
    return-wide v2

    .line 336
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p0

    if-ne v0, v2, :cond_3

    .line 337
    invoke-static/range {p1 .. p2}, LCatalano/Math/Functions/Bessel;->I(D)D

    move-result-wide v2

    goto :goto_0

    .line 339
    :cond_3
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_4

    .line 340
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 342
    :cond_4
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    .line 343
    const-wide v10, 0x4202a05f20000000L    # 1.0E10

    .line 344
    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 346
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    div-double v14, v4, v6

    .line 347
    const-wide/16 v8, 0x0

    const-wide/16 v4, 0x0

    .line 348
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 350
    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v2, v2, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int v2, v2, p0

    mul-int/lit8 v2, v2, 0x2

    move/from16 v18, v2

    move-wide v2, v8

    move/from16 v8, v18

    :goto_1
    if-lez v8, :cond_6

    .line 352
    int-to-double v0, v8

    move-wide/from16 v16, v0

    mul-double v16, v16, v14

    mul-double v16, v16, v6

    add-double v2, v2, v16

    .line 356
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v9, v16, v10

    if-lez v9, :cond_7

    .line 358
    mul-double/2addr v4, v12

    .line 359
    mul-double/2addr v2, v12

    .line 360
    mul-double/2addr v6, v12

    move-wide/from16 v18, v2

    move-wide v2, v4

    move-wide v4, v6

    move-wide/from16 v6, v18

    .line 363
    :goto_2
    move/from16 v0, p0

    if-ne v8, v0, :cond_5

    move-wide v2, v4

    .line 350
    :cond_5
    add-int/lit8 v8, v8, -0x1

    move-wide/from16 v18, v2

    move-wide v2, v4

    move-wide/from16 v4, v18

    goto :goto_1

    .line 367
    :cond_6
    invoke-static/range {p1 .. p2}, LCatalano/Math/Functions/Bessel;->I0(D)D

    move-result-wide v2

    div-double/2addr v2, v6

    mul-double/2addr v2, v4

    .line 368
    const-wide/16 v4, 0x0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_1

    rem-int/lit8 v4, p0, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    neg-double v2, v2

    goto :goto_0

    :cond_7
    move-wide/from16 v18, v2

    move-wide v2, v4

    move-wide v4, v6

    move-wide/from16 v6, v18

    goto :goto_2
.end method

.method public static I0(D)D
    .locals 22

    .prologue
    .line 281
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 283
    const-wide/high16 v2, 0x400e000000000000L    # 3.75

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 284
    const-wide/high16 v0, 0x400e000000000000L    # 3.75

    div-double v0, p0, v0

    .line 285
    mul-double/2addr v0, v0

    .line 286
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x400c1ffee6248ca7L    # 3.5156229

    const-wide v6, 0x4008b833b89430a4L    # 3.0899424

    const-wide v8, 0x3ff34ed83fc7962cL    # 1.2067492

    const-wide v10, 0x3fd105b474e732aaL    # 0.2659732

    const-wide v12, 0x3fa278a88849e5fdL    # 0.0360768

    const-wide v14, 0x3f72c3d75ac54874L    # 0.0045813

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 297
    :goto_0
    return-wide v0

    .line 290
    :cond_0
    const-wide/high16 v2, 0x400e000000000000L    # 3.75

    div-double/2addr v2, v0

    .line 291
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double v0, v4, v0

    const-wide v4, 0x3fd988453365de00L    # 0.39894228

    const-wide v6, 0x3f8b35a5ff2d9d1cL    # 0.01328592

    const-wide v8, 0x3f6275482b92d5dbL    # 0.00225319

    const-wide v10, -0x40a62f3eb1ec76b6L    # -0.00157565

    const-wide v12, 0x3f82c3f38a50d154L    # 0.00916281

    const-wide v14, -0x406aedd8e10238eaL    # -0.02057706

    const-wide v16, 0x3f9afce6f0e55ae3L    # 0.02635537

    const-wide v18, -0x406f20d435f7b3abL    # -0.01647633

    const-wide v20, 0x3f70125efd3b7f88L    # 0.00392377

    mul-double v20, v20, v2

    add-double v18, v18, v20

    mul-double v18, v18, v2

    add-double v16, v16, v18

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static J(D)D
    .locals 20

    .prologue
    .line 100
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 101
    mul-double v0, p0, p0

    .line 102
    const-wide v2, 0x4230d925ddd80000L    # 7.2362614232E10

    const-wide v4, -0x3e0296af4dd00000L    # -7.895059235E9

    const-wide v6, 0x41ace55d6a333333L    # 2.423968531E8

    const-wide v8, -0x3eb9521e47ced917L    # -2972611.439

    const-wide v10, 0x40ceac3dc5d63886L    # 15704.4826

    const-wide v12, -0x3fc1d6f23ff8e960L    # -30.16036606

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    mul-double v2, v2, p0

    .line 104
    const-wide v4, 0x4240d925ddcd0000L    # 1.44725228442E11

    const-wide v6, 0x41e123ec31400000L    # 2.300535178E9

    const-wide v8, 0x4171b8f08bd70a3dL    # 1.858330474E7

    const-wide v10, 0x40f84776f16b11c7L    # 99447.43394

    const-wide v12, 0x40778ffc79e8fa2aL    # 376.9991397

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 106
    div-double v0, v2, v0

    .line 121
    :cond_0
    :goto_0
    return-wide v0

    .line 109
    :cond_1
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v0

    .line 110
    const-wide v4, 0x4002d97c7f4ee208L    # 2.356194491

    sub-double v4, v0, v4

    .line 111
    mul-double v6, v2, v2

    .line 113
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, 0x3f5dfffaf78282fdL    # 0.00183105

    const-wide v12, -0x40fd905f5d2ea32dL    # -3.516396496E-5

    const-wide v14, 0x3ec49d7c00df0e15L    # 2.457520174E-6

    const-wide v16, -0x416fdf0a9cb272ecL    # -2.40337019E-7

    mul-double v16, v16, v6

    add-double v14, v14, v16

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    mul-double/2addr v12, v6

    add-double/2addr v10, v12

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    .line 115
    const-wide v10, 0x3fa7ffffff920c81L    # 0.04687499995

    const-wide v12, -0x40d5c015a3a8bc80L    # -2.002690873E-4

    const-wide v14, 0x3ee1b82114d8a643L    # 8.449199096E-6

    const-wide v16, -0x415265300ec7870fL    # -8.8228987E-7

    const-wide v18, 0x3e7c65a7d5438122L    # 1.05787412E-7

    mul-double v18, v18, v6

    add-double v16, v16, v18

    mul-double v16, v16, v6

    add-double v14, v14, v16

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    .line 118
    const-wide v10, 0x3fe45f306d974364L    # 0.636619772

    div-double v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    mul-double/2addr v2, v6

    sub-double v2, v8, v2

    mul-double/2addr v0, v2

    .line 120
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    neg-double v0, v0

    goto :goto_0
.end method

.method public static J(ID)D
    .locals 23

    .prologue
    .line 136
    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    .line 137
    const-wide v14, 0x4202a05f20000000L    # 1.0E10

    .line 138
    const-wide v16, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 140
    if-nez p0, :cond_1

    invoke-static/range {p1 .. p2}, LCatalano/Math/Functions/Bessel;->J0(D)D

    move-result-wide v2

    .line 185
    :cond_0
    :goto_0
    return-wide v2

    .line 141
    :cond_1
    const/4 v4, 0x1

    move/from16 v0, p0

    if-ne v0, v4, :cond_2

    invoke-static/range {p1 .. p2}, LCatalano/Math/Functions/Bessel;->J(D)D

    move-result-wide v2

    goto :goto_0

    .line 143
    :cond_2
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 144
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_3

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 145
    :cond_3
    move/from16 v0, p0

    int-to-double v6, v0

    cmpl-double v6, v4, v6

    if-lez v6, :cond_4

    .line 147
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v8, v2, v4

    .line 148
    invoke-static {v4, v5}, LCatalano/Math/Functions/Bessel;->J0(D)D

    move-result-wide v2

    .line 149
    invoke-static {v4, v5}, LCatalano/Math/Functions/Bessel;->J(D)D

    move-result-wide v4

    .line 150
    const/4 v6, 0x1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    :goto_1
    move/from16 v0, p0

    if-ge v6, v0, :cond_8

    .line 152
    int-to-double v10, v6

    mul-double/2addr v10, v8

    mul-double/2addr v10, v2

    sub-double v4, v10, v4

    .line 150
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v20, v2

    move-wide v2, v4

    move-wide/from16 v4, v20

    goto :goto_1

    .line 160
    :cond_4
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v18, v6, v4

    .line 161
    move/from16 v0, p0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int v2, v2, p0

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v7, v2, 0x2

    .line 162
    const/4 v6, 0x0

    .line 163
    const-wide/16 v2, 0x0

    .line 164
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move v12, v6

    move-wide v8, v2

    move v13, v7

    move-wide v6, v2

    .line 165
    :goto_2
    if-lez v13, :cond_7

    .line 167
    int-to-double v10, v13

    mul-double v10, v10, v18

    mul-double/2addr v10, v4

    sub-double v8, v10, v8

    .line 170
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    cmpl-double v10, v10, v14

    if-lez v10, :cond_a

    .line 172
    mul-double v8, v8, v16

    .line 173
    mul-double v4, v4, v16

    .line 174
    mul-double v2, v2, v16

    .line 175
    mul-double v6, v6, v16

    move-wide v10, v8

    .line 177
    :goto_3
    if-eqz v12, :cond_9

    add-double/2addr v6, v10

    move-wide v8, v6

    .line 178
    :goto_4
    if-nez v12, :cond_6

    const/4 v6, 0x1

    .line 179
    :goto_5
    move/from16 v0, p0

    if-ne v13, v0, :cond_5

    move-wide v2, v4

    .line 165
    :cond_5
    add-int/lit8 v7, v13, -0x1

    move v12, v6

    move v13, v7

    move-wide v6, v8

    move-wide v8, v4

    move-wide v4, v10

    goto :goto_2

    .line 178
    :cond_6
    const/4 v6, 0x0

    goto :goto_5

    .line 181
    :cond_7
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    sub-double v4, v6, v4

    .line 182
    div-double/2addr v2, v4

    .line 185
    :cond_8
    const-wide/16 v4, 0x0

    cmpg-double v4, p1, v4

    if-gez v4, :cond_0

    rem-int/lit8 v4, p0, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    neg-double v2, v2

    goto/16 :goto_0

    :cond_9
    move-wide v8, v6

    goto :goto_4

    :cond_a
    move-wide v10, v8

    goto :goto_3
.end method

.method public static J0(D)D
    .locals 20

    .prologue
    .line 66
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 67
    mul-double v0, p0, p0

    .line 68
    const-wide v2, 0x422aceb2e89c0000L    # 5.7568490574E10

    const-wide v4, -0x3df71c386b700000L    # -1.3362590354E10

    const-wide v6, 0x41c36b769c59999aL    # 6.516196407E8

    const-wide v8, -0x3e9a9c34fa3d70a4L    # -1.121442418E7

    const-wide v10, 0x40f2e50548605682L    # 77392.33017

    const-wide v12, -0x3f98e3083a6124deL    # -184.9052456

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    .line 70
    const-wide v4, 0x422aceb2e7560000L    # 5.7568490411E10

    const-wide v6, 0x41ceaeb69c800000L    # 1.029532985E9

    const-wide v8, 0x41621c1316f9db23L    # 9494680.718

    const-wide v10, 0x40ecf114c0c1fc8fL    # 59272.64853

    const-wide v12, 0x4070bda6ffb3a9e6L    # 267.8532712

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 73
    div-double v0, v2, v0

    .line 86
    :goto_0
    return-wide v0

    .line 76
    :cond_0
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v2, v0

    .line 77
    mul-double v4, v2, v2

    .line 78
    const-wide v6, 0x3fe921fb5496fd7fL    # 0.785398164

    sub-double v6, v0, v6

    .line 79
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide v10, -0x40ae00047e8060f6L    # -0.001098628627

    const-wide v12, 0x3efcac653e340f37L    # 2.734510407E-5

    const-wide v14, -0x413e9b786fd663afL    # -2.073370639E-6

    const-wide v16, 0x3e8c1a8aab292861L    # 2.093887211E-7

    mul-double v16, v16, v4

    add-double v14, v14, v16

    mul-double/2addr v14, v4

    add-double/2addr v12, v14

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    .line 81
    const-wide v10, -0x4070000001b7cdfeL    # -0.01562499995

    const-wide v12, 0x3f22bfec7e1aa561L    # 1.430488765E-4

    const-wide v14, -0x4123033632f90404L    # -6.911147651E-6

    const-wide v16, 0x3ea992788c9726a9L    # 7.621095161E-7

    const-wide v18, 0x3e7918d350375dfbL    # 9.34935152E-8

    mul-double v18, v18, v4

    sub-double v16, v16, v18

    mul-double v16, v16, v4

    add-double v14, v14, v16

    mul-double/2addr v14, v4

    add-double/2addr v12, v14

    mul-double/2addr v4, v12

    add-double/2addr v4, v10

    .line 85
    const-wide v10, 0x3fe45f306d974364L    # 0.636619772

    div-double v0, v10, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 86
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    mul-double/2addr v2, v4

    sub-double v2, v8, v2

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public static Y(D)D
    .locals 18

    .prologue
    .line 225
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 227
    mul-double v0, p0, p0

    .line 228
    const-wide v2, -0x3d6e2bf4bb95a000L    # -4.900604943E12

    const-wide v4, 0x42728ec46e9f0000L    # 1.27527439E12

    const-wide v6, -0x3dd8009f7d640000L    # -5.153438139E10

    const-wide v8, 0x41c5e70b3b8ccccdL    # 7.349264551E8

    const-wide v10, -0x3eafd5675189374cL    # -4237922.726

    const-wide v12, 0x40c09ff80e410b63L    # 8511.937935

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    mul-double v2, v2, p0

    .line 231
    const-wide v4, 0x42b6bbca1e9fa000L    # 2.49958057E13

    const-wide v6, 0x4258b4ad9bd00000L    # 4.244419664E11

    const-wide v8, 0x41ebd15f77e00000L    # 3.733650367E9

    const-wide v10, 0x41756b2a0051eb85L    # 2.245904002E7

    const-wide v12, 0x40f8e9a9ae147ae1L    # 102042.605

    const-wide v14, 0x40762f69a133c1ceL    # 354.9632885

    add-double/2addr v14, v0

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 234
    div-double v0, v2, v0

    const-wide v2, 0x3fe45f306d974364L    # 0.636619772

    invoke-static/range {p0 .. p1}, LCatalano/Math/Functions/Bessel;->J(D)D

    move-result-wide v4

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v6, v6, p0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 247
    :goto_0
    return-wide v0

    .line 238
    :cond_0
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    div-double v0, v0, p0

    .line 239
    mul-double v2, v0, v0

    .line 240
    const-wide v4, 0x4002d97c7f4ee208L    # 2.356194491

    sub-double v4, p0, v4

    .line 241
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3f5dfffaf78282fdL    # 0.00183105

    const-wide v10, -0x40fd905f5d2ea32dL    # -3.516396496E-5

    const-wide v12, 0x3ec49d7c00df0e15L    # 2.457520174E-6

    const-wide v14, -0x416fdf0a9cb272ecL    # -2.40337019E-7

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    .line 243
    const-wide v8, 0x3fa7ffffff920c81L    # 0.04687499995

    const-wide v10, -0x40d5c015a3a8bc80L    # -2.002690873E-4

    const-wide v12, 0x3ee1b82114d8a643L    # 8.449199096E-6

    const-wide v14, -0x415265300ec7870fL    # -8.8228987E-7

    const-wide v16, 0x3e7c65a7d5438122L    # 1.05787412E-7

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    .line 246
    const-wide v8, 0x3fe45f306d974364L    # 0.636619772

    div-double v8, v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 247
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    mul-double/2addr v0, v8

    goto :goto_0
.end method

.method public static Y(ID)D
    .locals 13

    .prologue
    const/4 v0, 0x1

    .line 260
    if-nez p0, :cond_1

    invoke-static {p1, p2}, LCatalano/Math/Functions/Bessel;->Y0(D)D

    move-result-wide v0

    .line 271
    :cond_0
    :goto_0
    return-wide v0

    .line 261
    :cond_1
    if-ne p0, v0, :cond_2

    invoke-static {p1, p2}, LCatalano/Math/Functions/Bessel;->Y(D)D

    move-result-wide v0

    goto :goto_0

    .line 263
    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v6, v2, p1

    .line 264
    invoke-static {p1, p2}, LCatalano/Math/Functions/Bessel;->Y(D)D

    move-result-wide v4

    .line 265
    invoke-static {p1, p2}, LCatalano/Math/Functions/Bessel;->Y0(D)D

    move-result-wide v2

    move v10, v0

    move-wide v0, v4

    move-wide v4, v2

    move v2, v10

    .line 266
    :goto_1
    if-ge v2, p0, :cond_0

    .line 267
    int-to-double v8, v2

    mul-double/2addr v8, v6

    mul-double/2addr v8, v0

    sub-double v4, v8, v4

    .line 266
    add-int/lit8 v2, v2, 0x1

    move-wide v10, v0

    move-wide v0, v4

    move-wide v4, v10

    goto :goto_1
.end method

.method public static Y0(D)D
    .locals 18

    .prologue
    .line 194
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 195
    mul-double v0, p0, p0

    .line 197
    const-wide v2, -0x3e19f66746600000L    # -2.957821389E9

    const-wide v4, 0x41fa4fa4b9100000L    # 7.062834065E9

    const-wide v6, -0x3e41760284666666L    # -5.123598036E8

    const-wide v8, 0x4164c0712947ae14L    # 1.087988129E7

    const-wide v10, -0x3f0aec8128ac5c14L    # -86327.92757

    const-wide v12, 0x406c8ecaf1602a0cL    # 228.4622733

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    .line 199
    const-wide v4, 0x4222a97f121a0000L    # 4.0076544269E10

    const-wide v6, 0x41c635ce56666666L    # 7.452499648E8

    const-wide v8, 0x415b6cf69c083127L    # 7189466.438

    const-wide v10, 0x40e72ae8786c2268L    # 47447.2647

    const-wide v12, 0x406c434bf9d39615L    # 226.1030244

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v14, v0

    add-double/2addr v12, v14

    mul-double/2addr v12, v0

    add-double/2addr v10, v12

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    mul-double/2addr v0, v6

    add-double/2addr v0, v4

    .line 202
    div-double v0, v2, v0

    const-wide v2, 0x3fe45f306d974364L    # 0.636619772

    invoke-static/range {p0 .. p1}, LCatalano/Math/Functions/Bessel;->J0(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 215
    :goto_0
    return-wide v0

    .line 205
    :cond_0
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    div-double v0, v0, p0

    .line 206
    mul-double v2, v0, v0

    .line 207
    const-wide v4, 0x3fe921fb5496fd7fL    # 0.785398164

    sub-double v4, p0, v4

    .line 209
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, -0x40ae00047e8060f6L    # -0.001098628627

    const-wide v10, 0x3efcac653e340f37L    # 2.734510407E-5

    const-wide v12, -0x413e9b786fd663afL    # -2.073370639E-6

    const-wide v14, 0x3e8c1a8aab292861L    # 2.093887211E-7

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v10, v2

    add-double/2addr v8, v10

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    .line 211
    const-wide v8, -0x4070000001b7cdfeL    # -0.01562499995

    const-wide v10, 0x3f22bfec7e1aa561L    # 1.430488765E-4

    const-wide v12, -0x4123033632f90404L    # -6.911147651E-6

    const-wide v14, 0x3ea992788c9726a9L    # 7.621095161E-7

    const-wide v16, -0x4186e71b182f20d7L    # -9.34945152E-8

    mul-double v16, v16, v2

    add-double v14, v14, v16

    mul-double/2addr v14, v2

    add-double/2addr v12, v14

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    mul-double/2addr v2, v10

    add-double/2addr v2, v8

    .line 214
    const-wide v8, 0x3fe45f306d974364L    # 0.636619772

    div-double v8, v8, p0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 215
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v6, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    mul-double/2addr v0, v8

    goto :goto_0
.end method
