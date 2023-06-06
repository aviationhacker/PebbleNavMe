.class public LCatalano/Imaging/Tools/FastRadialSymmetryTransform;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    .line 40
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    .line 41
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c:I

    .line 78
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    .line 40
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    .line 41
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c:I

    .line 85
    invoke-virtual {p0, p1}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->setRadius(I)V

    .line 86
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    .line 40
    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    .line 41
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c:I

    .line 94
    iput p1, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    .line 95
    iput p2, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c:I

    .line 96
    return-void
.end method

.method private a([[D)I
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 376
    return v0
.end method

.method private a([[D[[D)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 279
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 280
    :goto_1
    aget-object v3, p1, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 281
    aget-object v3, p1, v0

    aget-wide v4, v3, v2

    aget-object v6, p2, v0

    aget-wide v6, v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    return-void
.end method

.method private a(ID)[[D
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v2, 0x0

    .line 252
    filled-new-array {p1, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 254
    const-wide/16 v4, 0x0

    move v1, v2

    .line 255
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 256
    :goto_1
    aget-object v6, v0, v2

    array-length v6, v6

    if-ge v3, v6, :cond_0

    .line 257
    mul-int v6, v1, v1

    mul-int v7, v3, v3

    add-int/2addr v6, v7

    int-to-double v6, v6

    .line 258
    neg-double v6, v6

    mul-double v8, v10, p2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    .line 259
    aget-object v8, v0, v1

    aput-wide v6, v8, v3

    .line 260
    add-double/2addr v4, v6

    .line 256
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 255
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 264
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 265
    :goto_3
    aget-object v6, v0, v2

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 266
    aget-object v6, v0, v1

    aget-wide v8, v6, v3

    div-double/2addr v8, v4

    aput-wide v8, v6, v3

    .line 265
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 264
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 270
    :cond_3
    return-object v0
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[D)[[D
    .locals 20

    .prologue
    .line 348
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 349
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    .line 351
    filled-new-array {v9, v10}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 354
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a([[D)I

    move-result v11

    .line 356
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    if-ge v8, v9, :cond_3

    .line 357
    const/4 v3, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v10, :cond_2

    .line 358
    const/4 v4, 0x0

    .line 359
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 360
    sub-int v5, v3, v11

    add-int v12, v8, v5

    .line 361
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    aget-object v6, p2, v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 362
    sub-int v6, v5, v11

    add-int/2addr v6, v7

    .line 363
    if-ltz v12, :cond_4

    if-ge v12, v9, :cond_4

    if-ltz v6, :cond_4

    if-ge v6, v10, :cond_4

    .line 364
    int-to-double v14, v4

    aget-object v4, p2, v3

    aget-wide v16, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v4, v14

    move v6, v4

    .line 361
    :goto_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto :goto_3

    .line 359
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 368
    :cond_1
    aget-object v3, v2, v8

    int-to-double v4, v4

    aput-wide v4, v3, v7

    .line 357
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1

    .line 356
    :cond_2
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_0

    .line 371
    :cond_3
    return-object v2

    :cond_4
    move v6, v4

    goto :goto_4
.end method

.method private b([[D[[D)[[D
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 293
    array-length v0, p1

    aget-object v1, p1, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 295
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 296
    :goto_1
    aget-object v4, p1, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 297
    aget-object v4, v0, v1

    aget-object v5, p1, v1

    aget-wide v6, v5, v3

    aget-object v5, p1, v1

    aget-wide v8, v5, v3

    mul-double/2addr v6, v8

    aget-object v5, p2, v1

    aget-wide v8, v5, v3

    aget-object v5, p2, v1

    aget-wide v10, v5, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    float-to-double v6, v5

    const-wide v8, 0x3cafffd481f97682L    # 2.2204E-16

    add-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_1
    return-object v0
.end method

.method private c([[D[[D)[[D
    .locals 20

    .prologue
    .line 313
    move-object/from16 v0, p1

    array-length v9, v0

    .line 314
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v10, v2

    .line 316
    filled-new-array {v9, v10}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a([[D)I

    move-result v11

    .line 321
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    if-ge v8, v9, :cond_3

    .line 322
    const/4 v3, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v10, :cond_2

    .line 323
    const/4 v4, 0x0

    .line 324
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 325
    sub-int v5, v3, v11

    add-int v12, v8, v5

    .line 326
    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    aget-object v6, p2, v6

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 327
    sub-int v6, v5, v11

    add-int/2addr v6, v7

    .line 328
    if-ltz v12, :cond_4

    if-ge v12, v9, :cond_4

    if-ltz v6, :cond_4

    if-ge v6, v10, :cond_4

    .line 329
    int-to-double v14, v4

    aget-object v4, p2, v3

    aget-wide v16, v4, v5

    aget-object v4, p1, v12

    aget-wide v18, v4, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v4, v14

    move v6, v4

    .line 326
    :goto_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto :goto_3

    .line 324
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 333
    :cond_1
    aget-object v3, v2, v8

    int-to-double v4, v4

    aput-wide v4, v3, v7

    .line 322
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1

    .line 321
    :cond_2
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_0

    .line 336
    :cond_3
    return-object v2

    :cond_4
    move v6, v4

    goto :goto_4
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 30

    .prologue
    .line 101
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 103
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v17

    .line 104
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v18

    .line 106
    sget-object v4, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelHorizontal:[[I

    invoke-static {v4}, LCatalano/Core/ArraysUtil;->toDouble([[I)[[D

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a(LCatalano/Imaging/FastBitmap;[[D)[[D

    move-result-object v19

    .line 107
    sget-object v4, LCatalano/Imaging/Tools/ConvolutionKernel;->SobelVertical:[[I

    invoke-static {v4}, LCatalano/Core/ArraysUtil;->toDouble([[I)[[D

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a(LCatalano/Imaging/FastBitmap;[[D)[[D

    move-result-object v20

    .line 108
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, [[D

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b([[D[[D)[[D

    move-result-object v21

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a([[D[[D)V

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a([[D[[D)V

    .line 116
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 117
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    .line 119
    const/4 v6, 0x0

    move v8, v6

    :goto_0
    move/from16 v0, v18

    if-ge v8, v0, :cond_1

    .line 120
    const/4 v7, 0x1

    .line 121
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 122
    aget-object v9, v4, v8

    aput v7, v9, v6

    .line 123
    add-int/lit8 v7, v7, 0x1

    .line 121
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_0
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 127
    :cond_1
    const/4 v7, 0x1

    .line 128
    const/4 v6, 0x0

    move v8, v7

    move v7, v6

    :goto_2
    move/from16 v0, v18

    if-ge v7, v0, :cond_3

    .line 129
    const/4 v6, 0x0

    :goto_3
    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    .line 130
    aget-object v9, v5, v7

    aput v8, v9, v6

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 132
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 128
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_2

    .line 136
    :cond_3
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    .line 137
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    .line 138
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    .line 139
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v9

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[I

    .line 142
    const/4 v10, 0x1

    move v13, v10

    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    if-ge v13, v10, :cond_1b

    .line 143
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v10

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 144
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[D

    .line 147
    const/4 v12, 0x0

    move v15, v12

    :goto_5
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    .line 148
    const/4 v12, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 149
    aget-object v16, v6, v15

    aget-object v22, v4, v15

    aget v22, v22, v12

    int-to-double v0, v13

    move-wide/from16 v24, v0

    aget-object v23, v20, v15

    aget-wide v26, v23, v12

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    aput v22, v16, v12

    .line 150
    aget-object v16, v8, v15

    aget-object v22, v4, v15

    aget v22, v22, v12

    int-to-double v0, v13

    move-wide/from16 v24, v0

    aget-object v23, v20, v15

    aget-wide v26, v23, v12

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    sub-int v22, v22, v23

    aput v22, v16, v12

    .line 152
    aget-object v16, v6, v15

    aget v16, v16, v12

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    aget-object v16, v6, v15

    const/16 v22, 0x1

    aput v22, v16, v12

    .line 153
    :cond_4
    aget-object v16, v8, v15

    aget v16, v16, v12

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget-object v16, v8, v15

    const/16 v22, 0x1

    aput v22, v16, v12

    .line 155
    :cond_5
    aget-object v16, v6, v15

    aget v16, v16, v12

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    aget-object v16, v6, v15

    aput v17, v16, v12

    .line 156
    :cond_6
    aget-object v16, v8, v15

    aget v16, v16, v12

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    aget-object v16, v8, v15

    aput v17, v16, v12

    .line 148
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 147
    :cond_8
    add-int/lit8 v12, v15, 0x1

    move v15, v12

    goto/16 :goto_5

    .line 160
    :cond_9
    const/4 v12, 0x0

    move v15, v12

    :goto_7
    move/from16 v0, v18

    if-ge v15, v0, :cond_f

    .line 161
    const/4 v12, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v12, v0, :cond_e

    .line 162
    aget-object v16, v7, v15

    aget-object v22, v5, v15

    aget v22, v22, v12

    int-to-double v0, v13

    move-wide/from16 v24, v0

    aget-object v23, v19, v15

    aget-wide v26, v23, v12

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    aput v22, v16, v12

    .line 163
    aget-object v16, v9, v15

    aget-object v22, v5, v15

    aget v22, v22, v12

    int-to-double v0, v13

    move-wide/from16 v24, v0

    aget-object v23, v19, v15

    aget-wide v26, v23, v12

    mul-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->round(D)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    sub-int v22, v22, v23

    aput v22, v16, v12

    .line 165
    aget-object v16, v7, v15

    aget v16, v16, v12

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v16, v7, v15

    const/16 v22, 0x1

    aput v22, v16, v12

    .line 166
    :cond_a
    aget-object v16, v9, v15

    aget v16, v16, v12

    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    aget-object v16, v9, v15

    const/16 v22, 0x1

    aput v22, v16, v12

    .line 168
    :cond_b
    aget-object v16, v7, v15

    aget v16, v16, v12

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_c

    aget-object v16, v7, v15

    aput v18, v16, v12

    .line 169
    :cond_c
    aget-object v16, v9, v15

    aget v16, v16, v12

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    aget-object v16, v9, v15

    aput v18, v16, v12

    .line 161
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 160
    :cond_e
    add-int/lit8 v12, v15, 0x1

    move v15, v12

    goto/16 :goto_7

    .line 174
    :cond_f
    const/4 v12, 0x0

    move v15, v12

    :goto_9
    move/from16 v0, v18

    if-ge v15, v0, :cond_11

    .line 175
    const/4 v12, 0x0

    :goto_a
    move/from16 v0, v17

    if-ge v12, v0, :cond_10

    .line 176
    aget-object v16, v7, v15

    aget v16, v16, v12

    add-int/lit8 v16, v16, -0x1

    aget-object v16, v11, v16

    aget-object v22, v6, v15

    aget v22, v22, v12

    add-int/lit8 v22, v22, -0x1

    aget-wide v24, v16, v22

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    aput-wide v24, v16, v22

    .line 177
    aget-object v16, v9, v15

    aget v16, v16, v12

    add-int/lit8 v16, v16, -0x1

    aget-object v16, v11, v16

    aget-object v22, v8, v15

    aget v22, v22, v12

    add-int/lit8 v22, v22, -0x1

    aget-wide v24, v16, v22

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    sub-double v24, v24, v26

    aput-wide v24, v16, v22

    .line 179
    aget-object v16, v7, v15

    aget v16, v16, v12

    add-int/lit8 v16, v16, -0x1

    aget-object v16, v10, v16

    aget-object v22, v6, v15

    aget v22, v22, v12

    add-int/lit8 v22, v22, -0x1

    aget-wide v24, v16, v22

    aget-object v23, v21, v15

    aget-wide v26, v23, v12

    add-double v24, v24, v26

    aput-wide v24, v16, v22

    .line 180
    aget-object v16, v9, v15

    aget v16, v16, v12

    add-int/lit8 v16, v16, -0x1

    aget-object v16, v10, v16

    aget-object v22, v8, v15

    aget v22, v22, v12

    add-int/lit8 v22, v22, -0x1

    aget-wide v24, v16, v22

    aget-object v23, v21, v15

    aget-wide v26, v23, v12

    sub-double v24, v24, v26

    aput-wide v24, v16, v22

    .line 175
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 174
    :cond_10
    add-int/lit8 v12, v15, 0x1

    move v15, v12

    goto :goto_9

    .line 185
    :cond_11
    const/4 v12, 0x1

    if-ne v13, v12, :cond_14

    .line 186
    const/high16 v12, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    iput v12, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    .line 193
    :goto_b
    const/4 v12, 0x0

    :goto_c
    array-length v15, v11

    if-ge v12, v15, :cond_16

    .line 194
    const/4 v15, 0x0

    :goto_d
    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_15

    .line 195
    aget-object v16, v11, v12

    aget-wide v22, v16, v15

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    cmpl-double v16, v22, v24

    if-lez v16, :cond_12

    aget-object v16, v11, v12

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v16, v15

    .line 196
    :cond_12
    aget-object v16, v11, v12

    aget-wide v22, v16, v15

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    move/from16 v16, v0

    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v24, v0

    cmpg-double v16, v22, v24

    if-gez v16, :cond_13

    aget-object v16, v11, v12

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    move/from16 v22, v0

    move/from16 v0, v22

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    aput-wide v22, v16, v15

    .line 194
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 188
    :cond_14
    const v12, 0x411e6666    # 9.9f

    move-object/from16 v0, p0

    iput v12, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    goto :goto_b

    .line 193
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 201
    :cond_16
    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1}, [I

    move-result-object v12

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[D

    .line 202
    const/4 v15, 0x0

    move/from16 v16, v15

    :goto_e
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    .line 203
    const/4 v15, 0x0

    :goto_f
    move/from16 v0, v17

    if-ge v15, v0, :cond_17

    .line 204
    aget-object v22, v12, v16

    aget-object v23, v10, v16

    aget-wide v24, v23, v15

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    aget-object v23, v11, v16

    aget-wide v26, v23, v15

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(D)D

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->b:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    mul-double v24, v24, v26

    aput-wide v24, v22, v15

    .line 203
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 202
    :cond_17
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_e

    .line 208
    :cond_18
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    const-wide/high16 v22, 0x3fd0000000000000L    # 0.25

    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    int-to-double v0, v11

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v10, v1, v2}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a(ID)[[D

    move-result-object v10

    .line 209
    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    int-to-double v0, v11

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-static {v10, v0, v1}, LCatalano/Math/Matrix;->Multiply([[DD)[[D

    move-result-object v10

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10}, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c([[D[[D)[[D

    move-result-object v12

    .line 213
    const/4 v10, 0x0

    move v11, v10

    :goto_10
    move/from16 v0, v18

    if-ge v11, v0, :cond_1a

    .line 214
    const/4 v10, 0x0

    :goto_11
    move/from16 v0, v17

    if-ge v10, v0, :cond_19

    .line 215
    aget-object v15, v14, v11

    aget-wide v22, v15, v10

    aget-object v16, v12, v11

    aget-wide v24, v16, v10

    add-double v22, v22, v24

    aput-wide v22, v15, v10

    .line 214
    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    .line 213
    :cond_19
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_10

    .line 142
    :cond_1a
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    goto/16 :goto_4

    .line 221
    :cond_1b
    const/4 v4, 0x0

    move v5, v4

    :goto_12
    move/from16 v0, v18

    if-ge v5, v0, :cond_1d

    .line 222
    const/4 v4, 0x0

    :goto_13
    move/from16 v0, v17

    if-ge v4, v0, :cond_1c

    .line 223
    aget-object v6, v14, v5

    aget-wide v8, v6, v4

    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    int-to-double v10, v7

    div-double/2addr v8, v10

    aput-wide v8, v6, v4

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 221
    :cond_1c
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_12

    .line 228
    :cond_1d
    invoke-static {v14}, LCatalano/Math/Matrix;->Min([[D)D

    move-result-wide v4

    .line 229
    invoke-static {v14}, LCatalano/Math/Matrix;->Max([[D)D

    move-result-wide v6

    .line 231
    const/4 v8, 0x0

    move/from16 v16, v8

    :goto_14
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1f

    .line 232
    const/4 v8, 0x0

    move v15, v8

    :goto_15
    move/from16 v0, v17

    if-ge v15, v0, :cond_1e

    .line 233
    aget-object v19, v14, v16

    const-wide/16 v8, 0x0

    const-wide v10, 0x406fe00000000000L    # 255.0

    aget-object v12, v14, v16

    aget-wide v12, v12, v15

    invoke-static/range {v4 .. v13}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v8

    aput-wide v8, v19, v15

    .line 232
    add-int/lit8 v8, v15, 0x1

    move v15, v8

    goto :goto_15

    .line 231
    :cond_1e
    add-int/lit8 v8, v16, 0x1

    move/from16 v16, v8

    goto :goto_14

    .line 237
    :cond_1f
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, LCatalano/Imaging/FastBitmap;->matrixToImage([[D)V

    .line 243
    return-void

    .line 241
    :cond_20
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Fast Radial Symmetry Transform only works in grayscale images."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->c:I

    .line 73
    return-void
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/FastRadialSymmetryTransform;->a:I

    .line 57
    return-void
.end method
