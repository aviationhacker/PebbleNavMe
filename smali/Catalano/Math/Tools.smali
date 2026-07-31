.class public final LCatalano/Math/Tools;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:LCatalano/Math/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, LCatalano/Math/Random;

    invoke-direct {v0}, LCatalano/Math/Random;-><init>()V

    sput-object v0, LCatalano/Math/Tools;->a:LCatalano/Math/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Angle(DD)D
    .locals 6

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v2, 0x0

    .line 89
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_1

    .line 90
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_0

    .line 91
    div-double v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 97
    :goto_0
    return-wide v0

    .line 92
    :cond_0
    neg-double v0, p2

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    sub-double v0, v4, v0

    goto :goto_0

    .line 95
    :cond_1
    cmpl-double v0, p0, v2

    if-ltz v0, :cond_2

    .line 96
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    neg-double v2, p2

    div-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 97
    :cond_2
    div-double v0, p2, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    goto :goto_0
.end method

.method public static Angle(FF)F
    .locals 4

    .prologue
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    const/4 v1, 0x0

    .line 70
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_1

    .line 71
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_0

    .line 72
    div-float v0, p1, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 78
    :goto_0
    return v0

    .line 73
    :cond_0
    neg-float v0, p1

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    double-to-float v0, v0

    goto :goto_0

    .line 76
    :cond_1
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_2

    .line 77
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    neg-float v2, p1

    div-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0

    .line 78
    :cond_2
    div-float v0, p1, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static DigitalRoot(I)I
    .locals 1

    .prologue
    .line 110
    add-int/lit8 v0, p0, -0x1

    rem-int/lit8 v0, v0, 0x9

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static GreatestCommonDivisor(II)I
    .locals 4

    .prologue
    .line 121
    div-int v0, p0, p1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    .line 122
    :goto_0
    if-eqz v0, :cond_0

    .line 125
    div-int v1, p1, v0

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/2addr v1, v0

    sub-int v1, p1, v1

    move p1, v0

    move v0, v1

    goto :goto_0

    .line 127
    :cond_0
    return p1
.end method

.method public static Hypotenuse(DD)D
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 383
    .line 384
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 385
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 387
    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 389
    div-double v0, p2, p0

    .line 390
    mul-double/2addr v0, v0

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    .line 398
    :cond_0
    :goto_0
    return-wide v0

    .line 392
    :cond_1
    cmpl-double v2, p2, v0

    if-eqz v2, :cond_0

    .line 394
    div-double v0, p0, p2

    .line 395
    mul-double/2addr v0, v0

    add-double/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    goto :goto_0
.end method

.method public static Log(DD)D
    .locals 4

    .prologue
    .line 342
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static Log2(I)I
    .locals 6

    .prologue
    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 402
    const/high16 v5, 0x10000

    if-gt p0, v5, :cond_10

    .line 404
    const/16 v5, 0x100

    if-gt p0, v5, :cond_8

    .line 406
    if-gt p0, v4, :cond_4

    .line 408
    if-gt p0, v2, :cond_2

    .line 410
    if-gt p0, v1, :cond_1

    .line 412
    if-gt p0, v0, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 497
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 416
    goto :goto_0

    .line 418
    :cond_2
    if-gt p0, v3, :cond_3

    .line 419
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    move v0, v2

    .line 420
    goto :goto_0

    .line 422
    :cond_4
    const/16 v0, 0x40

    if-gt p0, v0, :cond_6

    .line 424
    const/16 v0, 0x20

    if-gt p0, v0, :cond_5

    .line 425
    const/4 v0, 0x5

    goto :goto_0

    .line 426
    :cond_5
    const/4 v0, 0x6

    goto :goto_0

    .line 428
    :cond_6
    const/16 v0, 0x80

    if-gt p0, v0, :cond_7

    .line 429
    const/4 v0, 0x7

    goto :goto_0

    :cond_7
    move v0, v3

    .line 430
    goto :goto_0

    .line 432
    :cond_8
    const/16 v0, 0x1000

    if-gt p0, v0, :cond_c

    .line 434
    const/16 v0, 0x400

    if-gt p0, v0, :cond_a

    .line 436
    const/16 v0, 0x200

    if-gt p0, v0, :cond_9

    .line 437
    const/16 v0, 0x9

    goto :goto_0

    .line 438
    :cond_9
    const/16 v0, 0xa

    goto :goto_0

    .line 440
    :cond_a
    const/16 v0, 0x800

    if-gt p0, v0, :cond_b

    .line 441
    const/16 v0, 0xb

    goto :goto_0

    .line 442
    :cond_b
    const/16 v0, 0xc

    goto :goto_0

    .line 444
    :cond_c
    const/16 v0, 0x4000

    if-gt p0, v0, :cond_e

    .line 446
    const/16 v0, 0x2000

    if-gt p0, v0, :cond_d

    .line 447
    const/16 v0, 0xd

    goto :goto_0

    .line 448
    :cond_d
    const/16 v0, 0xe

    goto :goto_0

    .line 450
    :cond_e
    const v0, 0x8000

    if-gt p0, v0, :cond_f

    .line 451
    const/16 v0, 0xf

    goto :goto_0

    :cond_f
    move v0, v4

    .line 452
    goto :goto_0

    .line 455
    :cond_10
    const/high16 v0, 0x1000000

    if-gt p0, v0, :cond_18

    .line 457
    const/high16 v0, 0x100000

    if-gt p0, v0, :cond_14

    .line 459
    const/high16 v0, 0x40000

    if-gt p0, v0, :cond_12

    .line 461
    const/high16 v0, 0x20000

    if-gt p0, v0, :cond_11

    .line 462
    const/16 v0, 0x11

    goto :goto_0

    .line 463
    :cond_11
    const/16 v0, 0x12

    goto :goto_0

    .line 465
    :cond_12
    const/high16 v0, 0x80000

    if-gt p0, v0, :cond_13

    .line 466
    const/16 v0, 0x13

    goto :goto_0

    .line 467
    :cond_13
    const/16 v0, 0x14

    goto :goto_0

    .line 469
    :cond_14
    const/high16 v0, 0x400000

    if-gt p0, v0, :cond_16

    .line 471
    const/high16 v0, 0x200000

    if-gt p0, v0, :cond_15

    .line 472
    const/16 v0, 0x15

    goto :goto_0

    .line 473
    :cond_15
    const/16 v0, 0x16

    goto :goto_0

    .line 475
    :cond_16
    const/high16 v0, 0x800000

    if-gt p0, v0, :cond_17

    .line 476
    const/16 v0, 0x17

    goto/16 :goto_0

    .line 477
    :cond_17
    const/16 v0, 0x18

    goto/16 :goto_0

    .line 479
    :cond_18
    const/high16 v0, 0x10000000

    if-gt p0, v0, :cond_1c

    .line 481
    const/high16 v0, 0x4000000

    if-gt p0, v0, :cond_1a

    .line 483
    const/high16 v0, 0x2000000

    if-gt p0, v0, :cond_19

    .line 484
    const/16 v0, 0x19

    goto/16 :goto_0

    .line 485
    :cond_19
    const/16 v0, 0x1a

    goto/16 :goto_0

    .line 487
    :cond_1a
    const/high16 v0, 0x8000000

    if-gt p0, v0, :cond_1b

    .line 488
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 489
    :cond_1b
    const/16 v0, 0x1c

    goto/16 :goto_0

    .line 491
    :cond_1c
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_1e

    .line 493
    const/high16 v0, 0x20000000

    if-gt p0, v0, :cond_1d

    .line 494
    const/16 v0, 0x1d

    goto/16 :goto_0

    .line 495
    :cond_1d
    const/16 v0, 0x1e

    goto/16 :goto_0

    .line 497
    :cond_1e
    const/16 v0, 0x1f

    goto/16 :goto_0
.end method

.method public static Mod(II)I
    .locals 1

    .prologue
    .line 185
    if-gez p1, :cond_0

    neg-int p1, p1

    .line 186
    :cond_0
    rem-int v0, p0, p1

    .line 187
    if-gez v0, :cond_1

    add-int/2addr v0, p1

    :cond_1
    return v0
.end method

.method public static NextPowerOf2(I)I
    .locals 2

    .prologue
    .line 196
    add-int/lit8 v0, p0, -0x1

    .line 197
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 198
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 199
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 200
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 201
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 202
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static Permutate([I)V
    .locals 1

    .prologue
    .line 212
    sget-object v0, LCatalano/Math/Tools;->a:LCatalano/Math/Random;

    invoke-virtual {v0, p0}, LCatalano/Math/Random;->permutate([I)V

    .line 213
    return-void
.end method

.method public static Pow2(I)I
    .locals 1

    .prologue
    .line 501
    if-ltz p0, :cond_0

    const/16 v0, 0x1e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static PreviousPowerOf2(I)I
    .locals 1

    .prologue
    .line 221
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, LCatalano/Math/Tools;->NextPowerOf2(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static Random()LCatalano/Math/Random;
    .locals 1

    .prologue
    .line 42
    sget-object v0, LCatalano/Math/Tools;->a:LCatalano/Math/Random;

    return-object v0
.end method

.method public static declared-synchronized RandomNextDouble()D
    .locals 4

    .prologue
    .line 231
    const-class v1, LCatalano/Math/Tools;

    monitor-enter v1

    :try_start_0
    sget-object v0, LCatalano/Math/Tools;->a:LCatalano/Math/Random;

    invoke-virtual {v0}, LCatalano/Math/Random;->nextDouble()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static Scale(DDDDD)D
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 292
    sub-double v2, p2, p0

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    .line 293
    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, p6, p4

    sub-double v2, p8, p0

    mul-double/2addr v0, v2

    sub-double v2, p2, p0

    div-double/2addr v0, v2

    add-double/2addr v0, p4

    goto :goto_0
.end method

.method public static Scale(LCatalano/Core/DoubleRange;LCatalano/Core/DoubleRange;D)D
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 266
    invoke-virtual {p0}, LCatalano/Core/DoubleRange;->length()D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    .line 267
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, LCatalano/Core/DoubleRange;->length()D

    move-result-wide v0

    invoke-virtual {p0}, LCatalano/Core/DoubleRange;->getMin()D

    move-result-wide v2

    sub-double v2, p2, v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, LCatalano/Core/DoubleRange;->length()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1}, LCatalano/Core/DoubleRange;->getMin()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static Scale(LCatalano/Core/DoubleRange;LCatalano/Core/DoubleRange;I)D
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 254
    invoke-virtual {p0}, LCatalano/Core/DoubleRange;->length()D

    move-result-wide v2

    cmpl-double v2, v2, v0

    if-nez v2, :cond_0

    .line 255
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, LCatalano/Core/DoubleRange;->length()D

    move-result-wide v0

    int-to-double v2, p2

    invoke-virtual {p0}, LCatalano/Core/DoubleRange;->getMin()D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-virtual {p0}, LCatalano/Core/DoubleRange;->length()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1}, LCatalano/Core/DoubleRange;->getMin()D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static Scale(LCatalano/Core/FloatRange;LCatalano/Core/FloatRange;I)F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0}, LCatalano/Core/FloatRange;->length()F

    move-result v1

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 279
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, LCatalano/Core/FloatRange;->length()F

    move-result v0

    int-to-float v1, p2

    invoke-virtual {p0}, LCatalano/Core/FloatRange;->getMin()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {p0}, LCatalano/Core/FloatRange;->length()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, LCatalano/Core/FloatRange;->getMin()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static Scale(LCatalano/Core/IntRange;LCatalano/Core/IntRange;I)I
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, LCatalano/Core/IntRange;->length()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 243
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, LCatalano/Core/IntRange;->length()D

    move-result-wide v0

    invoke-virtual {p0}, LCatalano/Core/IntRange;->getMin()I

    move-result v2

    sub-int v2, p2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, LCatalano/Core/IntRange;->length()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1}, LCatalano/Core/IntRange;->getMin()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method public static SetupGenerator(I)V
    .locals 4

    .prologue
    .line 46
    new-instance v0, LCatalano/Math/Random;

    int-to-long v2, p0

    invoke-direct {v0, v2, v3}, LCatalano/Math/Random;-><init>(J)V

    sput-object v0, LCatalano/Math/Tools;->a:LCatalano/Math/Random;

    .line 47
    return-void
.end method

.method public static Square(D)D
    .locals 2

    .prologue
    .line 55
    mul-double v0, p0, p0

    return-wide v0
.end method

.method public static Sum([D)D
    .locals 6

    .prologue
    .line 302
    const-wide/16 v2, 0x0

    .line 303
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 304
    aget-wide v4, p0, v0

    add-double/2addr v2, v4

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    return-wide v2
.end method

.method public static Sum([F)F
    .locals 3

    .prologue
    .line 328
    const/4 v1, 0x0

    .line 329
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 330
    aget v2, p0, v0

    add-float/2addr v1, v2

    .line 329
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return v1
.end method

.method public static Sum([I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 315
    move v1, v0

    .line 316
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 317
    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 319
    :cond_0
    return v1
.end method

.method public static TruncatedPower(DD)D
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 352
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 353
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public static Unique([I)[I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 362
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v0, v1

    .line 363
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 364
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 368
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 369
    :goto_1
    array-length v0, v3

    if-ge v1, v0, :cond_1

    .line 370
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v3, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 373
    :cond_1
    return-object v3
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/16 v5, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v2

    .line 142
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 143
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_2

    move v0, v1

    move v3, v2

    .line 153
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 154
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    move v0, v2

    move v3, v1

    .line 150
    goto :goto_1

    .line 158
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 165
    :cond_4
    if-gt v3, v1, :cond_0

    move v2, v1

    .line 166
    goto :goto_0

    :cond_5
    move v0, v2

    move v3, v2

    goto :goto_1
.end method

.method public static isPowerOf2(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 175
    if-lez p0, :cond_0

    add-int/lit8 v1, p0, -0x1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
