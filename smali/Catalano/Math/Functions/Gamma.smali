.class public final LCatalano/Math/Functions/Gamma;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GammaMax:D = 171.6243769563027


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ComplementedIncomplete(DD)D
    .locals 26

    .prologue
    .line 409
    .line 414
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 463
    :goto_0
    return-wide v0

    .line 416
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_2

    cmpg-double v0, p2, p0

    if-gez v0, :cond_3

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static/range {p0 .. p3}, LCatalano/Math/Functions/Gamma;->Incomplete(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 418
    :cond_3
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double v0, v0, p0

    sub-double v0, v0, p2

    invoke-static/range {p0 .. p1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 419
    const-wide v2, -0x3f79d1bd0105c611L    # -709.782712893384

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 421
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v20

    .line 424
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, v0, p0

    .line 425
    add-double v0, p2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    .line 426
    const-wide/16 v4, 0x0

    .line 427
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 429
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v10, p2, v6

    .line 430
    mul-double v6, v0, p2

    .line 431
    div-double v12, v10, v6

    move-wide/from16 v24, v4

    move-wide v4, v12

    move-wide/from16 v12, v24

    .line 435
    :goto_1
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double v18, v12, v14

    .line 436
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v16, v2, v12

    .line 437
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-double v14, v0, v2

    .line 438
    mul-double v0, v16, v18

    .line 439
    mul-double v2, v10, v14

    mul-double/2addr v8, v0

    sub-double v12, v2, v8

    .line 440
    mul-double v2, v6, v14

    mul-double v0, v0, p2

    sub-double v8, v2, v0

    .line 441
    const-wide/16 v0, 0x0

    cmpl-double v0, v8, v0

    if-eqz v0, :cond_5

    .line 443
    div-double v2, v12, v8

    .line 444
    sub-double v0, v4, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 454
    :goto_2
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v22, 0x4330000000000000L    # 4.503599627370496E15

    cmpl-double v4, v4, v22

    if-lez v4, :cond_7

    .line 456
    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v10, v4

    .line 457
    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v12, v4

    .line 458
    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v4, v6

    .line 459
    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v6, v8

    move-wide v8, v10

    move-wide v10, v12

    .line 461
    :goto_3
    const-wide/high16 v12, 0x3ca0000000000000L

    cmpl-double v0, v0, v12

    if-gtz v0, :cond_6

    .line 463
    mul-double v0, v2, v20

    goto/16 :goto_0

    .line 448
    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v2, v4

    goto :goto_2

    :cond_6
    move-wide/from16 p2, v4

    move-wide v0, v14

    move-wide/from16 v12, v18

    move-wide v4, v2

    move-wide/from16 v2, v16

    goto :goto_1

    :cond_7
    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    goto :goto_3
.end method

.method public static Digamma(D)D
    .locals 14

    .prologue
    .line 311
    .line 315
    const-wide/16 v2, 0x0

    .line 317
    const/4 v0, 0x0

    .line 319
    const-wide/16 v4, 0x0

    cmpg-double v1, p0, v4

    if-gtz v1, :cond_8

    .line 321
    const/4 v2, 0x1

    .line 323
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v4, v0

    .line 325
    cmpl-double v0, v4, p0

    if-nez v0, :cond_0

    .line 327
    :try_start_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Function computation resulted in arithmetic overflow."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    :cond_0
    sub-double v0, p0, v4

    .line 335
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v0, v6

    if-eqz v3, :cond_2

    .line 337
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v3, v0, v6

    if-lez v3, :cond_1

    .line 339
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    .line 340
    sub-double v0, p0, v0

    .line 342
    :cond_1
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v4, v0

    .line 349
    :goto_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double p0, v4, p0

    move v6, v2

    move-wide v8, v0

    move-wide v2, p0

    .line 352
    :goto_1
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, v2, v0

    if-gtz v0, :cond_5

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_5

    .line 354
    const-wide/16 v4, 0x0

    .line 355
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 356
    const/4 v0, 0x1

    move-wide v2, v4

    :goto_2
    add-int/lit8 v4, v1, -0x1

    if-gt v0, v4, :cond_3

    .line 358
    int-to-double v4, v0

    .line 359
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v4, v10, v4

    add-double/2addr v2, v4

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 346
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 361
    :cond_3
    const-wide v0, 0x3fe2788cfc6fb619L    # 0.5772156649015329

    sub-double v0, v2, v0

    .line 394
    :goto_3
    const/4 v2, 0x1

    if-ne v6, v2, :cond_4

    .line 396
    sub-double/2addr v0, v8

    .line 399
    :cond_4
    return-wide v0

    .line 366
    :cond_5
    const-wide/16 v0, 0x0

    move-wide v4, v2

    move-wide v2, v0

    .line 368
    :goto_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_6

    .line 370
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 371
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    move-wide v4, v2

    move-wide v2, v0

    goto :goto_4

    .line 374
    :cond_6
    const-wide v0, 0x4376345785d8a000L    # 1.0E17

    cmpg-double v0, v4, v0

    if-gez v0, :cond_7

    .line 376
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v10, v4, v4

    div-double/2addr v0, v10

    .line 378
    const-wide v10, 0x3fb5555555555555L    # 0.08333333333333333

    .line 379
    mul-double/2addr v10, v0

    const-wide v12, 0x3f95995995995996L    # 0.021092796092796094

    sub-double/2addr v10, v12

    .line 380
    mul-double/2addr v10, v0

    const-wide v12, 0x3f7f07c1f07c1f08L    # 0.007575757575757576

    add-double/2addr v10, v12

    .line 381
    mul-double/2addr v10, v0

    const-wide v12, 0x3f71111111111111L    # 0.004166666666666667

    sub-double/2addr v10, v12

    .line 382
    mul-double/2addr v10, v0

    const-wide v12, 0x3f70410410410410L    # 0.003968253968253968

    add-double/2addr v10, v12

    .line 383
    mul-double/2addr v10, v0

    const-wide v12, 0x3f81111111111111L    # 0.008333333333333333

    sub-double/2addr v10, v12

    .line 384
    mul-double/2addr v10, v0

    const-wide v12, 0x3fb5555555555555L    # 0.08333333333333333

    add-double/2addr v10, v12

    .line 385
    mul-double/2addr v0, v10

    .line 391
    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    div-double v4, v12, v4

    sub-double v4, v10, v4

    sub-double v0, v4, v0

    sub-double/2addr v0, v2

    goto :goto_3

    .line 389
    :cond_7
    const-wide/16 v0, 0x0

    goto :goto_5

    :cond_8
    move v6, v0

    move-wide v8, v2

    move-wide v2, p0

    goto/16 :goto_1
.end method

.method public static Function(D)D
    .locals 8

    .prologue
    .line 52
    const/4 v0, 0x7

    new-array v4, v0, [D

    fill-array-data v4, :array_0

    .line 62
    const/16 v0, 0x8

    new-array v5, v0, [D

    fill-array-data v5, :array_1

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 78
    const-wide v0, 0x4040800000000000L    # 33.0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_5

    .line 80
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 84
    cmpl-double v0, v4, v2

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    :cond_0
    sub-double v0, v2, v4

    .line 93
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v0, v6

    if-lez v6, :cond_1

    .line 95
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    .line 96
    sub-double v0, v2, v0

    .line 98
    :cond_1
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v4, v2, v0

    .line 100
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_2

    .line 102
    :try_start_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :catch_1
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 109
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Stirling(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double v0, v4, v0

    .line 111
    neg-double v0, v0

    .line 160
    :cond_3
    :goto_0
    return-wide v0

    .line 115
    :cond_4
    invoke-static {p0, p1}, LCatalano/Math/Functions/Gamma;->Stirling(D)D

    move-result-wide v0

    goto :goto_0

    .line 119
    :cond_5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v2, p0

    .line 120
    :goto_1
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v6, v2, v6

    if-ltz v6, :cond_7

    .line 122
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v6

    .line 123
    mul-double/2addr v0, v2

    goto :goto_1

    .line 136
    :cond_6
    div-double/2addr v0, v2

    .line 137
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    .line 126
    :cond_7
    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_a

    .line 128
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_8

    .line 130
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 132
    :cond_8
    const-wide v6, -0x41eed1f417d9296bL    # -1.0E-9

    cmpl-double v6, v2, v6

    if-lez v6, :cond_6

    .line 134
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fe2788cfc6fb619L    # 0.5772156649015329

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0

    .line 151
    :cond_9
    div-double/2addr v0, v2

    .line 152
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    .line 140
    :cond_a
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpg-double v6, v2, v6

    if-gez v6, :cond_c

    .line 142
    const-wide/16 v6, 0x0

    cmpl-double v6, v2, v6

    if-nez v6, :cond_b

    .line 144
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0

    .line 146
    :cond_b
    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v6, v2, v6

    if-gez v6, :cond_9

    .line 148
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fe2788cfc6fb619L    # 0.5772156649015329

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0

    .line 155
    :cond_c
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_3

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpl-double v6, v2, v6

    if-eqz v6, :cond_3

    .line 157
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v6

    .line 158
    const/4 v6, 0x6

    invoke-static {v2, v3, v4, v6}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v6

    .line 159
    const/4 v4, 0x7

    invoke-static {v2, v3, v5, v4}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v2

    .line 160
    mul-double/2addr v0, v6

    div-double/2addr v0, v2

    goto/16 :goto_0

    .line 52
    nop

    :array_0
    .array-data 8
        0x3f24fcb839982153L    # 1.6011952247675185E-4
        0x3f5384e3e686bfabL    # 0.0011913514700658638
        0x3f8557cde9db14b0L    # 0.010421379756176158
        0x3fa863d918c423d3L    # 0.04763678004571372
        0x3fca8da9dcae7d31L    # 0.20744822764843598
        0x3fdfa1373993e312L    # 0.4942148268014971
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 62
    :array_1
    .array-data 8
        -0x4107b7857bff2c51L    # -2.3158187332412014E-5
        0x3f41ae8a29152573L    # 5.396055804933034E-4
        -0x408dbf1b18af4bb6L    # -0.004456419138517973
        0x3f8831ed5b1bb117L    # 0.011813978522206043
        0x3fa25779e33fde67L    # 0.035823639860549865
        -0x4031f8e562bd783eL    # -0.23459179571824335
        0x3fb24944c9cd3c51L    # 0.0714304917030273
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static Incomplete(DD)D
    .locals 12

    .prologue
    .line 475
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 495
    :goto_0
    return-wide v0

    .line 477
    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    cmpl-double v0, p2, p0

    if-lez v0, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, p2, p3}, LCatalano/Math/Functions/Gamma;->ComplementedIncomplete(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 479
    :cond_2
    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, p0

    sub-double/2addr v0, p2

    invoke-static {p0, p1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 480
    const-wide v2, -0x3f79d1bd0105c611L    # -709.782712893384

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 482
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 485
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 486
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, v2

    move-wide v2, v0

    move-wide v0, p0

    .line 490
    :cond_4
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v8

    .line 491
    div-double v8, p2, v0

    mul-double/2addr v2, v8

    .line 492
    add-double/2addr v4, v2

    .line 493
    div-double v8, v2, v4

    const-wide/high16 v10, 0x3ca0000000000000L

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_4

    .line 495
    mul-double v0, v4, v6

    div-double/2addr v0, p0

    goto :goto_0
.end method

.method public static Log(D)D
    .locals 10

    .prologue
    .line 506
    const/4 v0, 0x5

    new-array v2, v0, [D

    fill-array-data v2, :array_0

    .line 515
    const/4 v0, 0x6

    new-array v6, v0, [D

    fill-array-data v6, :array_1

    .line 525
    const/4 v0, 0x6

    new-array v7, v0, [D

    fill-array-data v7, :array_2

    .line 535
    const-wide/high16 v0, -0x3fbf000000000000L    # -34.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_4

    .line 537
    neg-double v2, p0

    .line 538
    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v4

    .line 539
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 541
    cmpl-double v0, v6, v2

    if-nez v0, :cond_0

    .line 543
    :try_start_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    :cond_0
    sub-double v0, v2, v6

    .line 550
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v0, v8

    if-lez v8, :cond_1

    .line 552
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v6

    .line 553
    sub-double/2addr v0, v2

    .line 555
    :cond_1
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    .line 557
    const-wide/16 v0, 0x0

    cmpl-double v0, v2, v0

    if-nez v0, :cond_2

    .line 559
    :try_start_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 560
    :catch_1
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 565
    :cond_2
    const-wide v0, 0x3ff250d048e7a1bdL    # 1.1447298858494002

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    sub-double/2addr v0, v4

    .line 620
    :cond_3
    :goto_0
    return-wide v0

    .line 569
    :cond_4
    const-wide/high16 v0, 0x402a000000000000L    # 13.0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_8

    .line 571
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    .line 572
    :goto_1
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_c

    .line 574
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    .line 575
    mul-double/2addr v2, v0

    goto :goto_1

    .line 582
    :catch_2
    move-exception v0

    .line 583
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    :cond_5
    div-double/2addr v2, v4

    .line 588
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    move-wide v4, v0

    .line 577
    :goto_2
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpg-double v0, v4, v0

    if-gez v0, :cond_6

    .line 579
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_5

    .line 581
    :try_start_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 590
    :cond_6
    const-wide/16 v0, 0x0

    cmpg-double v0, v2, v0

    if-gez v0, :cond_b

    neg-double v0, v2

    .line 591
    :goto_3
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto :goto_0

    .line 592
    :cond_7
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    sub-double v2, v4, v2

    .line 593
    const/4 v4, 0x5

    invoke-static {v2, v3, v6, v4}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v4

    mul-double/2addr v4, v2

    const/4 v6, 0x6

    invoke-static {v2, v3, v7, v6}, LCatalano/Math/Special;->P1evl(D[DI)D

    move-result-wide v2

    div-double v2, v4, v2

    .line 594
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    goto :goto_0

    .line 597
    :cond_8
    const-wide v0, 0x7f574c5dd06d2516L    # 2.556348E305

    cmpl-double v0, p0, v0

    if-lez v0, :cond_9

    .line 599
    :try_start_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Overflow."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 600
    :catch_3
    move-exception v0

    .line 601
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 605
    :cond_9
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v0, p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double/2addr v0, p0

    const-wide v4, 0x3fed67f1c864beb5L    # 0.9189385332046728

    add-double/2addr v0, v4

    .line 606
    const-wide v4, 0x4197d78400000000L    # 1.0E8

    cmpl-double v3, p0, v4

    if-gtz v3, :cond_3

    .line 608
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, p0, p0

    div-double/2addr v4, v6

    .line 609
    const-wide v6, 0x408f400000000000L    # 1000.0

    cmpl-double v3, p0, v6

    if-ltz v3, :cond_a

    .line 611
    const-wide v2, 0x3f4a01a01a01a01aL    # 7.936507936507937E-4

    mul-double/2addr v2, v4

    const-wide v6, 0x3f66c16c16c16c17L    # 0.002777777777777778

    sub-double/2addr v2, v6

    mul-double/2addr v2, v4

    const-wide v4, 0x3fb5555555555555L    # 0.08333333333333333

    add-double/2addr v2, v4

    div-double/2addr v2, p0

    add-double/2addr v0, v2

    goto/16 :goto_0

    .line 617
    :cond_a
    const/4 v3, 0x4

    invoke-static {v4, v5, v2, v3}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v2

    div-double/2addr v2, p0

    add-double/2addr v0, v2

    goto/16 :goto_0

    :cond_b
    move-wide v0, v2

    goto :goto_3

    :cond_c
    move-wide v4, v0

    goto/16 :goto_2

    .line 506
    nop

    :array_0
    .array-data 8
        0x3f4a985027336661L    # 8.116141674705085E-4
        -0x40bc80424a7f16bdL    # -5.950619042843014E-4
        0x3f4a019f20dc5ebbL    # 7.936503404577169E-4
        -0x40993e93e94f5a5fL    # -0.002777777777300997
        0x3fb555555555554bL    # 0.08333333333333319
    .end array-data

    .line 515
    :array_1
    .array-data 8
        -0x3f6a76fe700c989fL    # -1378.2515256912086
        -0x3f1d0dcbcaa446c2L    # -38801.631513463784
        -0x3eebc28c076f761bL    # -331612.9927388712
        -0x3ece437d066b24afL    # -1162370.974927623
        -0x3ec5ba76fde60df5L    # -1721737.0082083966
        -0x3ed5f398abe7faa2L    # -853555.6642457654
    .end array-data

    .line 525
    :array_2
    .array-data 8
        -0x3f8a02f2e30ced4eL    # -351.81570143652345
        -0x3f2f55f2847628a9L    # -17064.210665188115
        -0x3ef5147b468bb365L    # -220528.59055385445
        -0x3ece9d798e6affbdL    # -1139334.4436798252
        -0x3ebcadaa76d00cb4L    # -2532523.0717758294
        -0x3ec131b495ee1eb6L    # -2018891.4143353277
    .end array-data
.end method

.method public static LowerIncomplete(DD)D
    .locals 26

    .prologue
    .line 165
    .line 169
    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_0

    .line 171
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Out of Range: a"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    :cond_0
    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_1

    .line 179
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Out of Range: x"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :catch_1
    move-exception v2

    .line 181
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    :cond_1
    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-nez v2, :cond_3

    .line 187
    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-nez v2, :cond_2

    .line 188
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 267
    :goto_0
    return-wide v2

    .line 189
    :cond_2
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 192
    :cond_3
    const-wide/16 v2, 0x0

    cmpl-double v2, p2, v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    goto :goto_0

    .line 194
    :cond_4
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double v2, v2, p0

    sub-double v2, v2, p2

    invoke-static/range {p0 .. p1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v4

    sub-double v22, v2, v4

    .line 196
    const-wide v2, -0x3f79d1bd0105c611L    # -709.782712893384

    cmpg-double v2, v22, v2

    if-gez v2, :cond_5

    .line 197
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 199
    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v2

    if-lez v2, :cond_6

    cmpg-double v2, p2, p0

    if-gtz v2, :cond_8

    .line 202
    :cond_6
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 203
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v6, p0

    .line 207
    :cond_7
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    .line 208
    mul-double v4, v4, p2

    div-double/2addr v4, v6

    .line 209
    add-double/2addr v2, v4

    .line 211
    div-double v8, v4, v2

    const-wide v10, 0x3cd203af9ee75616L    # 1.0E-15

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_7

    .line 213
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double v2, v2, p0

    goto :goto_0

    .line 216
    :cond_8
    const/4 v10, 0x0

    .line 217
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, p0

    .line 218
    add-double v2, p2, v8

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    .line 220
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 222
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v14, p2, v6

    .line 223
    mul-double v12, v4, p2

    .line 224
    div-double v6, v14, v12

    .line 230
    :goto_1
    add-int/lit8 v20, v10, 0x1

    .line 231
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v18, v8, v10

    .line 232
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v16, v4, v8

    .line 233
    move/from16 v0, v20

    int-to-double v4, v0

    mul-double v4, v4, v18

    .line 235
    mul-double v8, v14, v16

    mul-double/2addr v2, v4

    sub-double v10, v8, v2

    .line 236
    mul-double v2, v12, v16

    mul-double v4, v4, p2

    sub-double v8, v2, v4

    .line 238
    const-wide/16 v2, 0x0

    cmpl-double v2, v8, v2

    if-eqz v2, :cond_9

    .line 240
    div-double v4, v10, v8

    .line 241
    sub-double v2, v6, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 257
    :goto_2
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v24, 0x4330000000000000L    # 4.503599627370496E15

    cmpl-double v6, v6, v24

    if-lez v6, :cond_b

    .line 259
    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v14, v6

    .line 260
    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v10, v6

    .line 261
    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v12, v6

    .line 262
    const-wide/high16 v6, 0x3cb0000000000000L    # 2.220446049250313E-16

    mul-double/2addr v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    .line 265
    :goto_3
    const-wide v14, 0x3cd203af9ee75616L    # 1.0E-15

    cmpl-double v2, v2, v14

    if-gtz v2, :cond_a

    .line 267
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    goto/16 :goto_0

    .line 247
    :cond_9
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, v6

    goto :goto_2

    :cond_a
    move-wide v14, v8

    move-wide/from16 p2, v10

    move-wide v2, v12

    move-wide v12, v6

    move-wide/from16 v8, v18

    move/from16 v10, v20

    move-wide v6, v4

    move-wide/from16 v4, v16

    goto :goto_1

    :cond_b
    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    goto :goto_3
.end method

.method public static Stirling(D)D
    .locals 12

    .prologue
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 276
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    .line 284
    const-wide v2, 0x4061e083ba3443d4L    # 143.01608

    .line 286
    div-double v4, v10, p0

    .line 287
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 289
    const/4 v1, 0x4

    invoke-static {v4, v5, v0, v1}, LCatalano/Math/Special;->Polevl(D[DI)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double v4, v10, v0

    .line 291
    cmpl-double v0, p0, v2

    if-lez v0, :cond_0

    .line 293
    mul-double v0, v8, p0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    sub-double/2addr v0, v2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 294
    div-double v2, v0, v6

    mul-double/2addr v0, v2

    .line 301
    :goto_0
    const-wide v2, 0x40040d931ff62706L    # 2.5066282746310007

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    .line 302
    return-wide v0

    .line 298
    :cond_0
    sub-double v0, p0, v8

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr v0, v6

    goto :goto_0

    .line 276
    nop

    :array_0
    .array-data 8
        0x3f49cc72592d7293L    # 7.873113957930937E-4
        -0x40d1e994d819e284L    # -2.2954996161337813E-4
        -0x409a08d9f82bb029L    # -0.0026813261780578124
        0x3f6c71c71b98c5fdL    # 0.0034722222160545866
        0x3fb5555555555986L    # 0.08333333333334822
    .end array-data
.end method
