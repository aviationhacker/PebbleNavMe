.class public LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([[F)I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 342
    return v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[F)[[I
    .locals 12

    .prologue
    .line 262
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 263
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 265
    filled-new-array {v7, v8}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 268
    invoke-direct {p0, p2}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a([[F)I

    move-result v9

    .line 270
    const/4 v1, 0x1

    move v6, v1

    :goto_0
    add-int/lit8 v1, v7, -0x1

    if-ge v6, v1, :cond_4

    .line 271
    const/4 v1, 0x1

    move v5, v1

    :goto_1
    add-int/lit8 v1, v8, -0x1

    if-ge v5, v1, :cond_3

    .line 272
    const/4 v2, 0x0

    .line 273
    const/4 v1, 0x0

    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_1

    .line 274
    sub-int v3, v1, v9

    add-int v10, v6, v3

    .line 275
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    aget-object v4, p2, v4

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 276
    sub-int v4, v3, v9

    add-int/2addr v4, v5

    .line 277
    if-ltz v10, :cond_6

    if-ge v10, v7, :cond_6

    if-ltz v4, :cond_6

    if-ge v4, v8, :cond_6

    .line 278
    int-to-float v2, v2

    aget-object v11, p2, v1

    aget v11, v11, v3

    invoke-virtual {p1, v10, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v11

    add-float/2addr v2, v4

    float-to-int v2, v2

    move v4, v2

    .line 275
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 283
    :cond_1
    if-gez v2, :cond_5

    const/4 v1, 0x0

    .line 284
    :goto_5
    const/16 v2, 0xff

    if-le v1, v2, :cond_2

    const/16 v1, 0xff

    .line 286
    :cond_2
    aget-object v2, v0, v6

    aput v1, v2, v5

    .line 271
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 270
    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 289
    :cond_4
    return-object v0

    :cond_5
    move v1, v2

    goto :goto_5

    :cond_6
    move v4, v2

    goto :goto_4
.end method

.method private b(LCatalano/Imaging/FastBitmap;[[F)[[[I
    .locals 17

    .prologue
    .line 301
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v11

    .line 302
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    .line 304
    const/4 v2, 0x3

    filled-new-array {v11, v12, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[I

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a([[F)I

    move-result v13

    .line 309
    const/4 v3, 0x0

    move v10, v3

    :goto_0
    if-ge v10, v11, :cond_7

    .line 310
    const/4 v3, 0x0

    move v9, v3

    :goto_1
    if-ge v9, v12, :cond_6

    .line 311
    const/4 v4, 0x0

    .line 312
    const/4 v3, 0x0

    move v5, v4

    move v6, v4

    :goto_2
    move-object/from16 v0, p2

    array-length v7, v0

    if-ge v3, v7, :cond_1

    .line 313
    sub-int v7, v3, v13

    add-int v14, v10, v7

    .line 314
    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x0

    aget-object v8, p2, v8

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 315
    sub-int v8, v7, v13

    add-int/2addr v8, v9

    .line 316
    if-ltz v14, :cond_a

    if-ge v14, v11, :cond_a

    if-ltz v8, :cond_a

    if-ge v8, v12, :cond_a

    .line 317
    int-to-float v6, v6

    aget-object v15, p2, v3

    aget v15, v15, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v6, v15

    float-to-int v6, v6

    .line 318
    int-to-float v5, v5

    aget-object v15, p2, v3

    aget v15, v15, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v5, v15

    float-to-int v5, v5

    .line 319
    int-to-float v4, v4

    aget-object v15, p2, v3

    aget v15, v15, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v15

    add-float/2addr v4, v8

    float-to-int v4, v4

    move v8, v6

    move v6, v5

    move v5, v4

    .line 314
    :goto_4
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    move v4, v5

    move v5, v6

    move v6, v8

    goto :goto_3

    .line 312
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 324
    :cond_1
    if-gez v6, :cond_2

    const/4 v6, 0x0

    .line 325
    :cond_2
    if-gez v5, :cond_3

    const/4 v5, 0x0

    .line 326
    :cond_3
    if-gez v4, :cond_9

    const/4 v3, 0x0

    .line 328
    :goto_5
    const/16 v4, 0xff

    if-le v6, v4, :cond_4

    const/16 v4, 0xff

    move v6, v4

    .line 329
    :cond_4
    const/16 v4, 0xff

    if-le v5, v4, :cond_8

    const/16 v4, 0xff

    .line 330
    :goto_6
    const/16 v5, 0xff

    if-le v3, v5, :cond_5

    const/16 v3, 0xff

    .line 332
    :cond_5
    aget-object v5, v2, v10

    aget-object v5, v5, v9

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 333
    aget-object v5, v2, v10

    aget-object v5, v5, v9

    const/4 v6, 0x1

    aput v4, v5, v6

    .line 334
    aget-object v4, v2, v10

    aget-object v4, v4, v9

    const/4 v5, 0x2

    aput v3, v4, v5

    .line 310
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto/16 :goto_1

    .line 309
    :cond_6
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto/16 :goto_0

    .line 337
    :cond_7
    return-object v2

    :cond_8
    move v4, v5

    goto :goto_6

    :cond_9
    move v3, v4

    goto :goto_5

    :cond_a
    move v8, v6

    move v6, v5

    move v5, v4

    goto :goto_4
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 54
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 55
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 56
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 61
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_North:[[F

    .line 62
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 64
    :goto_0
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 65
    :goto_1
    if-ge v1, v5, :cond_0

    .line 66
    aget-object v7, v0, v3

    aget-object v8, v6, v3

    aget v8, v8, v1

    aput v8, v7, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 64
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 71
    :cond_1
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Northwest:[[F

    .line 72
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 74
    :goto_2
    if-ge v3, v4, :cond_3

    move v1, v2

    .line 75
    :goto_3
    if-ge v1, v5, :cond_2

    .line 76
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget v8, v8, v1

    aget-object v9, v6, v3

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 74
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 81
    :cond_3
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_West:[[F

    .line 82
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 84
    :goto_4
    if-ge v3, v4, :cond_5

    move v1, v2

    .line 85
    :goto_5
    if-ge v1, v5, :cond_4

    .line 86
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget v8, v8, v1

    aget-object v9, v6, v3

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 84
    :cond_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 91
    :cond_5
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Southwest:[[F

    .line 92
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 94
    :goto_6
    if-ge v3, v4, :cond_7

    move v1, v2

    .line 95
    :goto_7
    if-ge v1, v5, :cond_6

    .line 96
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget v8, v8, v1

    aget-object v9, v6, v3

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 94
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 101
    :cond_7
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_South:[[F

    .line 102
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 104
    :goto_8
    if-ge v3, v4, :cond_9

    move v1, v2

    .line 105
    :goto_9
    if-ge v1, v5, :cond_8

    .line 106
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget v8, v8, v1

    aget-object v9, v6, v3

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 104
    :cond_8
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_8

    .line 111
    :cond_9
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Southeast:[[F

    .line 112
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 114
    :goto_a
    if-ge v3, v4, :cond_b

    move v1, v2

    .line 115
    :goto_b
    if-ge v1, v5, :cond_a

    .line 116
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget v8, v8, v1

    aget-object v9, v6, v3

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 114
    :cond_a
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_a

    .line 121
    :cond_b
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_East:[[F

    .line 122
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 124
    :goto_c
    if-ge v3, v4, :cond_d

    move v1, v2

    .line 125
    :goto_d
    if-ge v1, v5, :cond_c

    .line 126
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget v8, v8, v1

    aget-object v9, v6, v3

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 124
    :cond_c
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_c

    .line 131
    :cond_d
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Northeast:[[F

    .line 132
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->a(LCatalano/Imaging/FastBitmap;[[F)[[I

    move-result-object v6

    move v3, v2

    .line 134
    :goto_e
    if-ge v3, v4, :cond_f

    move v1, v2

    .line 135
    :goto_f
    if-ge v1, v5, :cond_e

    .line 136
    aget-object v7, v0, v3

    aget-object v8, v0, v3

    aget v8, v8, v1

    aget-object v9, v6, v3

    aget v9, v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v1

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 134
    :cond_e
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_e

    .line 140
    :cond_f
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->matrixToImage([[I)V

    .line 144
    :cond_10
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 146
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 147
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 148
    const/4 v0, 0x3

    filled-new-array {v4, v5, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[I

    .line 153
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_North:[[F

    .line 154
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 156
    :goto_10
    if-ge v3, v4, :cond_12

    move v1, v2

    .line 157
    :goto_11
    if-ge v1, v5, :cond_11

    .line 158
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v6, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aput v8, v7, v2

    .line 159
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v6, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aput v8, v7, v10

    .line 160
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v6, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aput v8, v7, v11

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 156
    :cond_11
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_10

    .line 165
    :cond_12
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Northwest:[[F

    .line 166
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 168
    :goto_12
    if-ge v3, v4, :cond_14

    move v1, v2

    .line 169
    :goto_13
    if-ge v1, v5, :cond_13

    .line 170
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v2

    .line 171
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v10

    .line 172
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v11

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 168
    :cond_13
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_12

    .line 177
    :cond_14
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_West:[[F

    .line 178
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 180
    :goto_14
    if-ge v3, v4, :cond_16

    move v1, v2

    .line 181
    :goto_15
    if-ge v1, v5, :cond_15

    .line 182
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v2

    .line 183
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v10

    .line 184
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v11

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 180
    :cond_15
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_14

    .line 189
    :cond_16
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Southwest:[[F

    .line 190
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 192
    :goto_16
    if-ge v3, v4, :cond_18

    move v1, v2

    .line 193
    :goto_17
    if-ge v1, v5, :cond_17

    .line 194
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v2

    .line 195
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v10

    .line 196
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v11

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 192
    :cond_17
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_16

    .line 201
    :cond_18
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_South:[[F

    .line 202
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 204
    :goto_18
    if-ge v3, v4, :cond_1a

    move v1, v2

    .line 205
    :goto_19
    if-ge v1, v5, :cond_19

    .line 206
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v2

    .line 207
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v10

    .line 208
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v11

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 204
    :cond_19
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_18

    .line 213
    :cond_1a
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Southeast:[[F

    .line 214
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 216
    :goto_1a
    if-ge v3, v4, :cond_1c

    move v1, v2

    .line 217
    :goto_1b
    if-ge v1, v5, :cond_1b

    .line 218
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v2

    .line 219
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v10

    .line 220
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v11

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 216
    :cond_1b
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1a

    .line 225
    :cond_1c
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_East:[[F

    .line 226
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 228
    :goto_1c
    if-ge v3, v4, :cond_1e

    move v1, v2

    .line 229
    :goto_1d
    if-ge v1, v5, :cond_1d

    .line 230
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v2

    .line 231
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v10

    .line 232
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v11

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 228
    :cond_1d
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1c

    .line 237
    :cond_1e
    sget-object v1, LCatalano/Imaging/Tools/CompassConvolutionKernel;->Isotropic_Northeast:[[F

    .line 238
    invoke-direct {p0, p1, v1}, LCatalano/Imaging/Filters/IsotropicCompassEdgeDetector;->b(LCatalano/Imaging/FastBitmap;[[F)[[[I

    move-result-object v6

    move v3, v2

    .line 240
    :goto_1e
    if-ge v3, v4, :cond_20

    move v1, v2

    .line 241
    :goto_1f
    if-ge v1, v5, :cond_1f

    .line 242
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v2

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v2

    .line 243
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v10

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v10

    .line 244
    aget-object v7, v0, v3

    aget-object v7, v7, v1

    aget-object v8, v0, v3

    aget-object v8, v8, v1

    aget v8, v8, v11

    aget-object v9, v6, v3

    aget-object v9, v9, v1

    aget v9, v9, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v7, v11

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 240
    :cond_1f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1e

    .line 248
    :cond_20
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->matrixToImage([[[I)V

    .line 251
    :cond_21
    return-void
.end method
