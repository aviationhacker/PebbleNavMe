.class public Lcom/jabistudio/androidjhlabs/filter/CellularFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"

# interfaces
.implements Lcom/jabistudio/androidjhlabs/filter/math/Function2D;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;
    }
.end annotation


# static fields
.field public static final HEXAGONAL:I = 0x2

.field public static final OCTAGONAL:I = 0x3

.field public static final RANDOM:I = 0x0

.field public static final SQUARE:I = 0x1

.field public static final TRIANGULAR:I = 0x4

.field private static a:[B


# instance fields
.field public amount:F

.field protected angle:F

.field protected angleCoefficient:F

.field private b:F

.field public bias:F

.field protected coefficients:[F

.field protected colormap:Lcom/jabistudio/androidjhlabs/filter/Colormap;

.field public distancePower:F

.field public gain:F

.field protected gridType:I

.field protected m00:F

.field protected m01:F

.field protected m10:F

.field protected m11:F

.field protected random:Ljava/util/Random;

.field protected randomness:F

.field protected results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

.field protected scale:F

.field protected stretch:F

.field public turbulence:F

.field public useColor:Z


# direct methods
.method public constructor <init>()V
    .locals 11

    .prologue
    const/high16 v10, 0x46000000    # 8192.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 64
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 33
    const/high16 v0, 0x42000000    # 32.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->scale:F

    .line 34
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->stretch:F

    .line 35
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->angle:F

    .line 36
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->amount:F

    .line 37
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->turbulence:F

    .line 38
    iput v4, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->gain:F

    .line 39
    iput v4, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->bias:F

    .line 40
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    .line 41
    iput-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->useColor:Z

    .line 42
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/Gradient;

    invoke-direct {v0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;-><init>()V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->colormap:Lcom/jabistudio/androidjhlabs/filter/Colormap;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    .line 45
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    .line 46
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m00:F

    .line 47
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m01:F

    .line 48
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m10:F

    .line 49
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m11:F

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    .line 51
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->gridType:I

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move v0, v1

    .line 66
    :goto_0
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 67
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    new-instance v5, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    invoke-direct {v5, p0}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;-><init>(Lcom/jabistudio/androidjhlabs/filter/CellularFilter;)V

    aput-object v5, v4, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a:[B

    if-nez v0, :cond_3

    .line 69
    const/16 v0, 0x2000

    new-array v0, v0, [B

    sput-object v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a:[B

    .line 72
    const/high16 v4, 0x40200000    # 2.5f

    move v0, v3

    move v3, v2

    move v2, v1

    .line 73
    :goto_1
    const/16 v1, 0xa

    if-ge v2, v1, :cond_3

    .line 74
    const/4 v1, 0x1

    if-le v2, v1, :cond_1

    .line 75
    int-to-float v1, v2

    mul-float/2addr v0, v1

    .line 76
    :cond_1
    float-to-double v6, v4

    int-to-double v8, v2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    neg-float v5, v4

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v1, v5

    div-float v5, v1, v0

    .line 77
    mul-float v1, v3, v10

    float-to-int v1, v1

    .line 78
    add-float/2addr v3, v5

    .line 79
    mul-float v5, v3, v10

    float-to-int v5, v5

    .line 80
    :goto_2
    if-ge v1, v5, :cond_2

    .line 81
    sget-object v6, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a:[B

    int-to-byte v7, v2

    aput-byte v7, v6, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 73
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 84
    :cond_3
    return-void

    .line 43
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F
    .locals 17

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    move/from16 v0, p3

    mul-int/lit16 v3, v0, 0x23b

    mul-int/lit8 v4, p4, 0x17

    add-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->gridType:I

    packed-switch v2, :pswitch_data_0

    .line 303
    sget-object v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a:[B

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0x1fff

    aget-byte v2, v2, v3

    .line 318
    :goto_0
    const/4 v3, 0x0

    move v6, v3

    :goto_1
    if-ge v6, v2, :cond_a

    .line 319
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 320
    const/high16 v5, 0x3f800000    # 1.0f

    .line 321
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->gridType:I

    packed-switch v7, :pswitch_data_1

    .line 374
    :cond_0
    :goto_2
    sub-float v7, p1, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 375
    sub-float v8, p2, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 377
    mul-float/2addr v7, v5

    .line 378
    mul-float/2addr v8, v5

    .line 379
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v9

    if-nez v5, :cond_6

    .line 380
    add-float v5, v7, v8

    .line 387
    :goto_3
    const/4 v9, 0x0

    aget-object v9, p5, v9

    iget v9, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_8

    .line 388
    const/4 v9, 0x2

    aget-object v9, p5, v9

    .line 389
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget-object v11, p5, v11

    aput-object v11, p5, v10

    .line 390
    const/4 v10, 0x1

    const/4 v11, 0x0

    aget-object v11, p5, v11

    aput-object v11, p5, v10

    .line 391
    const/4 v10, 0x0

    aput-object v9, p5, v10

    .line 392
    iput v5, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 393
    iput v7, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dx:F

    .line 394
    iput v8, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dy:F

    .line 395
    move/from16 v0, p3

    int-to-float v5, v0

    add-float/2addr v4, v5

    iput v4, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    .line 396
    move/from16 v0, p4

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    .line 318
    :cond_1
    :goto_4
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    .line 306
    :pswitch_0
    const/4 v2, 0x1

    .line 307
    goto :goto_0

    .line 309
    :pswitch_1
    const/4 v2, 0x1

    .line 310
    goto :goto_0

    .line 312
    :pswitch_2
    const/4 v2, 0x2

    .line 313
    goto :goto_0

    .line 315
    :pswitch_3
    const/4 v2, 0x2

    goto :goto_0

    .line 323
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v4

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    goto :goto_2

    .line 327
    :pswitch_5
    const/high16 v3, 0x3f000000    # 0.5f

    .line 328
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_c

    .line 329
    float-to-double v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    float-to-double v10, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    float-to-double v12, v4

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v4, v8

    .line 330
    float-to-double v8, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    float-to-double v10, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v12, v3

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-float v3, v8

    goto/16 :goto_2

    .line 334
    :pswitch_6
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_2

    .line 335
    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v3, 0x0

    .line 339
    :goto_5
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const v8, 0x43878000    # 271.0f

    move/from16 v0, p3

    int-to-float v9, v0

    add-float/2addr v9, v4

    mul-float/2addr v8, v9

    const v9, 0x43878000    # 271.0f

    move/from16 v0, p4

    int-to-float v10, v0

    add-float/2addr v10, v3

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 341
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const v8, 0x43878000    # 271.0f

    move/from16 v0, p3

    int-to-float v9, v0

    add-float/2addr v9, v4

    mul-float/2addr v8, v9

    const/high16 v9, 0x42b20000    # 89.0f

    add-float/2addr v8, v9

    const v9, 0x43878000    # 271.0f

    move/from16 v0, p4

    int-to-float v10, v0

    add-float/2addr v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x43090000    # 137.0f

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    goto/16 :goto_2

    .line 337
    :cond_2
    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_5

    .line 345
    :pswitch_7
    packed-switch v6, :pswitch_data_2

    move/from16 v16, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v16

    .line 349
    :goto_6
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_b

    .line 350
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const v8, 0x43878000    # 271.0f

    move/from16 v0, p3

    int-to-float v9, v0

    add-float/2addr v9, v5

    mul-float/2addr v8, v9

    const v9, 0x43878000    # 271.0f

    move/from16 v0, p4

    int-to-float v10, v0

    add-float/2addr v10, v4

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    .line 351
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const v8, 0x43878000    # 271.0f

    move/from16 v0, p3

    int-to-float v9, v0

    add-float/2addr v9, v5

    mul-float/2addr v8, v9

    const/high16 v9, 0x42b20000    # 89.0f

    add-float/2addr v8, v9

    const v9, 0x43878000    # 271.0f

    move/from16 v0, p4

    int-to-float v10, v0

    add-float/2addr v10, v4

    mul-float/2addr v9, v10

    const/high16 v10, 0x43090000    # 137.0f

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    goto/16 :goto_2

    .line 346
    :pswitch_8
    const v4, 0x3e53f7cf    # 0.207f

    const v3, 0x3e53f7cf    # 0.207f

    move/from16 v16, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v16

    goto :goto_6

    .line 347
    :pswitch_9
    const v5, 0x3f34fdf4    # 0.707f

    const v4, 0x3f34fdf4    # 0.707f

    const v3, 0x3fcccccd    # 1.6f

    goto :goto_6

    .line 355
    :pswitch_a
    and-int/lit8 v3, p4, 0x1

    if-nez v3, :cond_4

    .line 356
    if-nez v6, :cond_3

    .line 357
    const/high16 v4, 0x3e800000    # 0.25f

    const v3, 0x3eb33333    # 0.35f

    .line 368
    :goto_7
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const v8, 0x43878000    # 271.0f

    move/from16 v0, p3

    int-to-float v9, v0

    add-float/2addr v9, v4

    mul-float/2addr v8, v9

    const v9, 0x43878000    # 271.0f

    move/from16 v0, p4

    int-to-float v10, v0

    add-float/2addr v10, v3

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 370
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    const v8, 0x43878000    # 271.0f

    move/from16 v0, p3

    int-to-float v9, v0

    add-float/2addr v9, v4

    mul-float/2addr v8, v9

    const/high16 v9, 0x42b20000    # 89.0f

    add-float/2addr v8, v9

    const v9, 0x43878000    # 271.0f

    move/from16 v0, p4

    int-to-float v10, v0

    add-float/2addr v10, v3

    mul-float/2addr v9, v10

    const/high16 v10, 0x43090000    # 137.0f

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Lcom/jabistudio/androidjhlabs/filter/math/Noise;->noise2(FF)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v3, v7

    goto/16 :goto_2

    .line 359
    :cond_3
    const/high16 v4, 0x3f400000    # 0.75f

    const v3, 0x3f266666    # 0.65f

    goto :goto_7

    .line 362
    :cond_4
    if-nez v6, :cond_5

    .line 363
    const/high16 v4, 0x3f400000    # 0.75f

    const v3, 0x3eb33333    # 0.35f

    goto :goto_7

    .line 365
    :cond_5
    const/high16 v4, 0x3e800000    # 0.25f

    const v3, 0x3f266666    # 0.65f

    goto :goto_7

    .line 381
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    const/high16 v9, 0x40000000    # 2.0f

    cmpl-float v5, v5, v9

    if-nez v5, :cond_7

    .line 382
    mul-float v5, v7, v7

    mul-float v9, v8, v8

    add-float/2addr v5, v9

    float-to-double v10, v5

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v5, v10

    goto/16 :goto_3

    .line 384
    :cond_7
    float-to-double v10, v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    float-to-double v12, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v5, v10

    float-to-double v10, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    float-to-double v12, v9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v9, v10

    add-float/2addr v5, v9

    float-to-double v10, v5

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    div-float/2addr v5, v9

    float-to-double v12, v5

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v5, v10

    goto/16 :goto_3

    .line 397
    :cond_8
    const/4 v9, 0x1

    aget-object v9, p5, v9

    iget v9, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_9

    .line 398
    const/4 v9, 0x2

    aget-object v9, p5, v9

    .line 399
    const/4 v10, 0x2

    const/4 v11, 0x1

    aget-object v11, p5, v11

    aput-object v11, p5, v10

    .line 400
    const/4 v10, 0x1

    aput-object v9, p5, v10

    .line 401
    iput v5, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 402
    iput v7, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dx:F

    .line 403
    iput v8, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dy:F

    .line 404
    move/from16 v0, p3

    int-to-float v5, v0

    add-float/2addr v4, v5

    iput v4, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    .line 405
    move/from16 v0, p4

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    goto/16 :goto_4

    .line 406
    :cond_9
    const/4 v9, 0x2

    aget-object v9, p5, v9

    iget v9, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    cmpg-float v9, v5, v9

    if-gez v9, :cond_1

    .line 407
    const/4 v9, 0x2

    aget-object v9, p5, v9

    .line 408
    iput v5, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 409
    iput v7, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dx:F

    .line 410
    iput v8, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dy:F

    .line 411
    move/from16 v0, p3

    int-to-float v5, v0

    add-float/2addr v4, v5

    iput v4, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    .line 412
    move/from16 v0, p4

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v9, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    goto/16 :goto_4

    .line 415
    :cond_a
    const/4 v2, 0x2

    aget-object v2, p5, v2

    iget v2, v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    return v2

    :cond_b
    move/from16 v16, v3

    move v3, v4

    move v4, v5

    move/from16 v5, v16

    goto/16 :goto_2

    :cond_c
    move v4, v3

    goto/16 :goto_2

    .line 300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 345
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 507
    const/4 v1, 0x0

    .line 509
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 514
    :goto_0
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    iput-object v0, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    .line 515
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    invoke-virtual {v0}, [Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    check-cast v0, [Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    iput-object v0, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    .line 516
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->random:Ljava/util/Random;

    .line 517
    return-object v1

    .line 510
    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public evaluate(FF)F
    .locals 11

    .prologue
    .line 419
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v1, v1, v0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    iput v2, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    float-to-int v3, p1

    .line 423
    float-to-int v4, p2

    .line 424
    int-to-float v0, v3

    sub-float v1, p1, v0

    .line 425
    int-to-float v0, v4

    sub-float v2, p2, v0

    .line 427
    iget-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    move-result v0

    .line 428
    cmpl-float v5, v0, v2

    if-lez v5, :cond_1

    .line 429
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v7, v2, v0

    add-int/lit8 v9, v4, -0x1

    iget-object v10, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v5, p0

    move v6, v1

    move v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    move-result v0

    .line 430
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 431
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v7, v2, v0

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v5, p0

    move v6, v1

    move v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    move-result v0

    .line 432
    :cond_2
    cmpl-float v5, v0, v1

    if-lez v5, :cond_4

    .line 433
    const/high16 v5, 0x3f800000    # 1.0f

    add-float v6, v1, v5

    add-int/lit8 v8, v3, -0x1

    iget-object v10, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v5, p0

    move v7, v2

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    .line 434
    cmpl-float v5, v0, v2

    if-lez v5, :cond_3

    .line 435
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v6, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v7, v2, v0

    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v4, -0x1

    iget-object v10, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    move-result v0

    .line 436
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    .line 437
    const/high16 v0, 0x3f800000    # 1.0f

    add-float v6, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v7, v2, v0

    add-int/lit8 v8, v3, -0x1

    add-int/lit8 v9, v4, 0x1

    iget-object v10, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    move-result v0

    .line 439
    :cond_4
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    .line 440
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v6, v1, v0

    add-int/lit8 v8, v3, 0x1

    iget-object v10, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v5, p0

    move v7, v2

    move v9, v4

    invoke-direct/range {v5 .. v10}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    move-result v0

    .line 441
    cmpl-float v5, v0, v2

    if-lez v5, :cond_5

    .line 442
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v6, v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v7, v2, v0

    add-int/lit8 v8, v3, 0x1

    add-int/lit8 v9, v4, -0x1

    iget-object v10, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    move-result v0

    .line 443
    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    cmpl-float v0, v0, v5

    if-lez v0, :cond_6

    .line 444
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->a(FFII[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;)F

    .line 447
    :cond_6
    const/4 v1, 0x0

    .line 448
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_7

    .line 449
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 448
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 450
    :cond_7
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->angleCoefficient:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_a

    .line 451
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    sub-float v0, p2, v0

    float-to-double v2, v0

    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    sub-float v0, p1, v0

    float-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 452
    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_8

    .line 453
    const v2, 0x40c90fdb

    add-float/2addr v0, v2

    .line 454
    :cond_8
    const v2, 0x41490fdb

    div-float/2addr v0, v2

    .line 455
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->angleCoefficient:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 457
    :goto_2
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->b:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_9

    .line 458
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dy:F

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->dx:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 459
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->b:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 461
    :cond_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 527
    .line 528
    mul-int v0, p1, p2

    new-array v9, v0, [I

    move v2, v6

    move v0, v6

    .line 530
    :goto_0
    if-ge v2, p2, :cond_1

    move v1, v6

    move v7, v0

    .line 531
    :goto_1
    if-ge v1, p1, :cond_0

    .line 532
    add-int/lit8 v8, v7, 0x1

    move-object v0, p0

    move-object v3, p3

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->getPixel(II[III)I

    move-result v0

    aput v0, v9, v7

    .line 531
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_1

    .line 530
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v0, v7

    goto :goto_0

    .line 535
    :cond_1
    return-object v9
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->amount:F

    return v0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->angle:F

    return v0
.end method

.method public getAngleCoefficient()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->angleCoefficient:F

    return v0
.end method

.method public getCoefficient(I)F
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    aget v0, v0, p1

    return v0
.end method

.method public getColormap()Lcom/jabistudio/androidjhlabs/filter/Colormap;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->colormap:Lcom/jabistudio/androidjhlabs/filter/Colormap;

    return-object v0
.end method

.method public getDistancePower()F
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    return v0
.end method

.method public getF1()F
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getF2()F
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getF3()F
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getF4()F
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getGradientCoefficient()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->b:F

    return v0
.end method

.method public getGridType()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->gridType:I

    return v0
.end method

.method public getPixel(II[III)I
    .locals 8

    .prologue
    const/high16 v7, -0x1000000

    const/4 v6, 0x1

    const/high16 v5, 0x447a0000    # 1000.0f

    const/4 v4, 0x0

    .line 473
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m00:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m01:F

    int-to-float v2, p2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 474
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m10:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m11:F

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 475
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->scale:F

    div-float/2addr v0, v2

    .line 476
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->scale:F

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->stretch:F

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 477
    add-float/2addr v0, v5

    .line 478
    add-float/2addr v1, v5

    .line 479
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->turbulence:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->evaluate(FF)F

    move-result v0

    .line 482
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    .line 483
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->amount:F

    mul-float/2addr v0, v1

    .line 486
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->colormap:Lcom/jabistudio/androidjhlabs/filter/Colormap;

    if-eqz v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->colormap:Lcom/jabistudio/androidjhlabs/filter/Colormap;

    invoke-interface {v1, v0}, Lcom/jabistudio/androidjhlabs/filter/Colormap;->getColor(F)I

    move-result v0

    .line 488
    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->useColor:Z

    if-eqz v1, :cond_0

    .line 489
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v0, v0, v4

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->x:F

    sub-float/2addr v0, v5

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->scale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v1, p4, -0x1

    invoke-static {v0, v4, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v1, v1, v4

    iget v1, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->y:F

    sub-float/2addr v1, v5

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->scale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v2, p5, -0x1

    invoke-static {v1, v4, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    .line 491
    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    aget v0, p3, v0

    .line 492
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v1, v1, v6

    iget v1, v1, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->results:[Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jabistudio/androidjhlabs/filter/CellularFilter$Point;->distance:F

    add-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 493
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    aget v2, v2, v6

    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    aget v3, v3, v4

    invoke-static {v2, v3, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v1

    .line 494
    invoke-static {v1, v7, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v0

    .line 502
    :cond_0
    :goto_1
    return v0

    .line 479
    :cond_1
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->turbulence:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->turbulence2(FFF)F

    move-result v0

    goto :goto_0

    .line 498
    :cond_2
    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v0

    .line 499
    shl-int/lit8 v1, v0, 0x10

    .line 500
    shl-int/lit8 v2, v0, 0x8

    .line 502
    or-int/2addr v1, v7

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    goto :goto_1
.end method

.method public getRandomness()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->scale:F

    return v0
.end method

.method public getStretch()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->stretch:F

    return v0
.end method

.method public getTurbulence()F
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->turbulence:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 277
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->amount:F

    .line 278
    return-void
.end method

.method public setAngle(F)V
    .locals 4

    .prologue
    .line 133
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->angle:F

    .line 134
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 135
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 136
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m00:F

    .line 137
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m01:F

    .line 138
    neg-float v1, v1

    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m10:F

    .line 139
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->m11:F

    .line 140
    return-void
.end method

.method public setAngleCoefficient(F)V
    .locals 0

    .prologue
    .line 160
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->angleCoefficient:F

    .line 161
    return-void
.end method

.method public setCoefficient(IF)V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    aput p2, v0, p1

    .line 153
    return-void
.end method

.method public setColormap(Lcom/jabistudio/androidjhlabs/filter/Colormap;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->colormap:Lcom/jabistudio/androidjhlabs/filter/Colormap;

    .line 214
    return-void
.end method

.method public setDistancePower(F)V
    .locals 0

    .prologue
    .line 242
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->distancePower:F

    .line 243
    return-void
.end method

.method public setF1(F)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 177
    return-void
.end method

.method public setF2(F)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 185
    return-void
.end method

.method public setF3(F)V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 193
    return-void
.end method

.method public setF4(F)V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->coefficients:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 201
    return-void
.end method

.method public setGradientCoefficient(F)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->b:F

    .line 169
    return-void
.end method

.method public setGridType(I)V
    .locals 0

    .prologue
    .line 234
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->gridType:I

    .line 235
    return-void
.end method

.method public setRandomness(F)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->randomness:F

    .line 227
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->scale:F

    .line 95
    return-void
.end method

.method public setStretch(F)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->stretch:F

    .line 115
    return-void
.end method

.method public setTurbulence(F)V
    .locals 0

    .prologue
    .line 257
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->turbulence:F

    .line 258
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 521
    const-string v0, "Texture/Cellular..."

    return-object v0
.end method

.method public turbulence2(FFF)F
    .locals 4

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 467
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    cmpg-float v2, v0, p3

    if-gtz v2, :cond_0

    .line 468
    mul-float v2, v0, p1

    mul-float v3, v0, p2

    invoke-virtual {p0, v2, v3}, Lcom/jabistudio/androidjhlabs/filter/CellularFilter;->evaluate(FF)F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 467
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    goto :goto_0

    .line 469
    :cond_0
    return v1
.end method
