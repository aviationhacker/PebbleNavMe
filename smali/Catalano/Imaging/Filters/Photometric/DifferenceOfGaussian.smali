.class public LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/Filters/Photometric/IPhotometricFilter;


# instance fields
.field private a:D

.field private b:D

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 72
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {p0, v0, v1, v2, v3}, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;-><init>(DD)V

    .line 73
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    .prologue
    .line 83
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;-><init>(DDZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(DDZ)V
    .locals 3

    .prologue
    const-wide v0, 0x3ff6666666666666L    # 1.4

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-wide v0, p0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->a:D

    iput-wide v0, p0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->b:D

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->c:Z

    .line 87
    iput-wide p1, p0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->a:D

    .line 88
    iput-wide p3, p0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->b:D

    .line 89
    iput-boolean p5, p0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->c:Z

    .line 90
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[D)[[D
    .locals 18

    .prologue
    .line 180
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    .line 181
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v13

    .line 182
    filled-new-array {v13, v12}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 185
    move-object/from16 v0, p2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v14, v3, 0x2

    .line 188
    const/4 v3, 0x0

    move v11, v3

    :goto_0
    if-ge v11, v13, :cond_8

    .line 189
    const/4 v3, 0x0

    move v10, v3

    :goto_1
    if-ge v10, v12, :cond_7

    .line 190
    const-wide/16 v4, 0x0

    .line 191
    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p2

    array-length v6, v0

    if-ge v3, v6, :cond_6

    .line 192
    sub-int v6, v3, v14

    add-int v15, v11, v6

    .line 193
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    aget-object v7, p2, v7

    array-length v7, v7

    if-ge v6, v7, :cond_5

    .line 194
    sub-int v7, v6, v14

    add-int/2addr v7, v10

    .line 195
    if-ltz v15, :cond_0

    if-ge v15, v13, :cond_0

    if-ltz v7, :cond_0

    if-ge v7, v12, :cond_0

    .line 196
    aget-object v8, p2, v3

    aget-wide v8, v8, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    add-double/2addr v8, v4

    .line 193
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v8

    goto :goto_3

    .line 200
    :cond_0
    add-int v7, v11, v3

    sub-int v8, v7, v14

    .line 201
    add-int v7, v10, v6

    sub-int/2addr v7, v14

    .line 203
    if-gez v8, :cond_1

    const/4 v8, 0x0

    .line 204
    :cond_1
    if-lt v8, v13, :cond_2

    add-int/lit8 v8, v13, -0x1

    .line 206
    :cond_2
    if-gez v7, :cond_3

    const/4 v7, 0x0

    .line 207
    :cond_3
    if-lt v7, v12, :cond_4

    add-int/lit8 v7, v12, -0x1

    .line 209
    :cond_4
    aget-object v9, p2, v3

    aget-wide v16, v9, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v8, v7

    mul-double v8, v8, v16

    add-double/2addr v8, v4

    goto :goto_4

    .line 191
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    :cond_6
    aget-object v3, v2, v11

    aput-wide v4, v3, v10

    .line 189
    add-int/lit8 v3, v10, 0x1

    move v10, v3

    goto :goto_1

    .line 188
    :cond_7
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_0

    .line 217
    :cond_8
    return-object v2
.end method

.method private b(LCatalano/Imaging/FastBitmap;[[D)[[[D
    .locals 24

    .prologue
    .line 222
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v17

    .line 223
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v18

    .line 224
    const/4 v2, 0x3

    move/from16 v0, v18

    move/from16 v1, v17

    filled-new-array {v0, v1, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[D

    .line 227
    move-object/from16 v0, p2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v19, v3, 0x2

    .line 230
    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 231
    const/4 v3, 0x0

    move v15, v3

    :goto_1
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 232
    const-wide/16 v4, 0x0

    .line 233
    const/4 v3, 0x0

    move-wide v6, v4

    move-wide v8, v4

    :goto_2
    move-object/from16 v0, p2

    array-length v10, v0

    if-ge v3, v10, :cond_5

    .line 234
    sub-int v10, v3, v19

    add-int v20, v16, v10

    .line 235
    const/4 v10, 0x0

    :goto_3
    const/4 v11, 0x0

    aget-object v11, p2, v11

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 236
    sub-int v11, v10, v19

    add-int/2addr v11, v15

    .line 237
    if-ltz v20, :cond_0

    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    if-ltz v11, :cond_0

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 238
    aget-object v12, p2, v3

    aget-wide v12, v12, v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v14

    int-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v12, v12, v22

    add-double/2addr v12, v8

    .line 239
    aget-object v8, p2, v3

    aget-wide v8, v8, v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v14

    int-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v8, v8, v22

    add-double/2addr v8, v6

    .line 240
    aget-object v6, p2, v3

    aget-wide v6, v6, v10

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v22, v0

    mul-double v6, v6, v22

    add-double/2addr v6, v4

    .line 235
    :goto_4
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v12

    goto :goto_3

    .line 244
    :cond_0
    add-int v11, v16, v3

    sub-int v12, v11, v19

    .line 245
    add-int v11, v15, v10

    sub-int v11, v11, v19

    .line 247
    if-gez v12, :cond_1

    const/4 v12, 0x0

    .line 248
    :cond_1
    move/from16 v0, v18

    if-lt v12, v0, :cond_8

    add-int/lit8 v12, v18, -0x1

    move v14, v12

    .line 250
    :goto_5
    if-gez v11, :cond_2

    const/4 v11, 0x0

    .line 251
    :cond_2
    move/from16 v0, v17

    if-lt v11, v0, :cond_3

    add-int/lit8 v11, v17, -0x1

    .line 253
    :cond_3
    aget-object v12, p2, v3

    aget-wide v12, v12, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v12, v12, v22

    add-double/2addr v12, v8

    .line 254
    aget-object v8, p2, v3

    aget-wide v8, v8, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v8, v8, v22

    add-double/2addr v8, v6

    .line 255
    aget-object v6, p2, v3

    aget-wide v6, v6, v10

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v11}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v22, v0

    mul-double v6, v6, v22

    add-double/2addr v6, v4

    goto :goto_4

    .line 233
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 259
    :cond_5
    aget-object v3, v2, v16

    aget-object v3, v3, v15

    const/4 v10, 0x0

    aput-wide v8, v3, v10

    .line 260
    aget-object v3, v2, v16

    aget-object v3, v3, v15

    const/4 v8, 0x1

    aput-wide v6, v3, v8

    .line 261
    aget-object v3, v2, v16

    aget-object v3, v3, v15

    const/4 v6, 0x2

    aput-wide v4, v3, v6

    .line 231
    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_1

    .line 230
    :cond_6
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto/16 :goto_0

    .line 265
    :cond_7
    return-object v2

    :cond_8
    move v14, v12

    goto :goto_5
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 30

    .prologue
    .line 95
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->a:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 96
    new-instance v3, LCatalano/Math/Functions/Gaussian;

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->a:D

    invoke-direct {v3, v4, v5}, LCatalano/Math/Functions/Gaussian;-><init>(D)V

    .line 97
    invoke-virtual {v3, v2}, LCatalano/Math/Functions/Gaussian;->Kernel2D(I)[[D

    move-result-object v2

    .line 99
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->b:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    .line 100
    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->b:D

    invoke-virtual {v3, v6, v7}, LCatalano/Math/Functions/Gaussian;->setSigma(D)V

    .line 101
    invoke-virtual {v3, v4}, LCatalano/Math/Functions/Gaussian;->Kernel2D(I)[[D

    move-result-object v3

    .line 103
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 104
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->a(LCatalano/Imaging/FastBitmap;[[D)[[D

    move-result-object v2

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->a(LCatalano/Imaging/FastBitmap;[[D)[[D

    move-result-object v3

    .line 107
    invoke-static {v2, v3}, LCatalano/Math/Matrix;->Subtract([[D[[D)[[D

    move-result-object v14

    .line 110
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 111
    const-wide v4, -0x10000000000001L

    .line 112
    const/4 v2, 0x0

    move/from16 v29, v2

    move-wide v2, v6

    move/from16 v6, v29

    :goto_0
    array-length v7, v14

    if-ge v6, v7, :cond_1

    .line 113
    const/4 v7, 0x0

    move-wide v8, v2

    move v2, v7

    :goto_1
    const/4 v3, 0x0

    aget-object v3, v14, v3

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 114
    aget-object v3, v14, v6

    aget-wide v10, v3, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 115
    aget-object v3, v14, v6

    aget-wide v10, v3, v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_0
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v8

    goto :goto_0

    .line 119
    :cond_1
    const/4 v6, 0x0

    move v12, v6

    :goto_2
    array-length v6, v14

    if-ge v12, v6, :cond_3

    .line 120
    const/4 v6, 0x0

    move v13, v6

    :goto_3
    const/4 v6, 0x0

    aget-object v6, v14, v6

    array-length v6, v6

    if-ge v13, v6, :cond_2

    .line 121
    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    aget-object v10, v14, v12

    aget-wide v10, v10, v13

    invoke-static/range {v2 .. v11}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v6

    double-to-int v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 120
    add-int/lit8 v6, v13, 0x1

    move v13, v6

    goto :goto_3

    .line 119
    :cond_2
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_2

    .line 125
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->c:Z

    if-eqz v2, :cond_4

    .line 126
    new-instance v2, LCatalano/Imaging/Filters/HistogramAdjust;

    invoke-direct {v2}, LCatalano/Imaging/Filters/HistogramAdjust;-><init>()V

    .line 127
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/HistogramAdjust;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 176
    :cond_4
    :goto_4
    return-void

    .line 130
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->b(LCatalano/Imaging/FastBitmap;[[D)[[[D

    move-result-object v26

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->b(LCatalano/Imaging/FastBitmap;[[D)[[[D

    move-result-object v4

    .line 135
    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, v26

    array-length v3, v0

    if-ge v2, v3, :cond_7

    .line 136
    const/4 v3, 0x0

    :goto_6
    const/4 v5, 0x0

    aget-object v5, v26, v5

    array-length v5, v5

    if-ge v3, v5, :cond_6

    .line 137
    aget-object v5, v26, v2

    aget-object v5, v5, v3

    const/4 v6, 0x0

    aget-object v7, v26, v2

    aget-object v7, v7, v3

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    aget-object v7, v4, v2

    aget-object v7, v7, v3

    const/4 v10, 0x0

    aget-wide v10, v7, v10

    sub-double/2addr v8, v10

    aput-wide v8, v5, v6

    .line 138
    aget-object v5, v26, v2

    aget-object v5, v5, v3

    const/4 v6, 0x1

    aget-object v7, v26, v2

    aget-object v7, v7, v3

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    aget-object v7, v4, v2

    aget-object v7, v7, v3

    const/4 v10, 0x1

    aget-wide v10, v7, v10

    sub-double/2addr v8, v10

    aput-wide v8, v5, v6

    .line 139
    aget-object v5, v26, v2

    aget-object v5, v5, v3

    const/4 v6, 0x2

    aget-object v7, v26, v2

    aget-object v7, v7, v3

    const/4 v8, 0x2

    aget-wide v8, v7, v8

    aget-object v7, v4, v2

    aget-object v7, v7, v3

    const/4 v10, 0x2

    aget-wide v10, v7, v10

    sub-double/2addr v8, v10

    aput-wide v8, v5, v6

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 135
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 146
    :cond_7
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 147
    const-wide v4, -0x10000000000001L

    .line 149
    const/4 v2, 0x0

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move-wide/from16 v20, v6

    move-wide/from16 v22, v6

    move/from16 v29, v2

    move-wide v2, v6

    move/from16 v6, v29

    :goto_7
    move-object/from16 v0, v26

    array-length v7, v0

    if-ge v6, v7, :cond_9

    .line 150
    const/4 v7, 0x0

    move-wide/from16 v8, v18

    move-wide v10, v4

    move-wide/from16 v12, v20

    move-wide/from16 v14, v22

    move-wide/from16 v4, v16

    move-wide/from16 v16, v2

    move v2, v7

    :goto_8
    const/4 v3, 0x0

    aget-object v3, v26, v3

    array-length v3, v3

    if-ge v2, v3, :cond_8

    .line 151
    aget-object v3, v26, v6

    aget-object v3, v3, v2

    const/4 v7, 0x0

    aget-wide v18, v3, v7

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    .line 152
    aget-object v3, v26, v6

    aget-object v3, v3, v2

    const/4 v7, 0x1

    aget-wide v18, v3, v7

    move-wide/from16 v0, v18

    invoke-static {v14, v15, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v14

    .line 153
    aget-object v3, v26, v6

    aget-object v3, v3, v2

    const/4 v7, 0x2

    aget-wide v18, v3, v7

    move-wide/from16 v0, v18

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    .line 155
    aget-object v3, v26, v6

    aget-object v3, v3, v2

    const/4 v7, 0x0

    aget-wide v18, v3, v7

    move-wide/from16 v0, v18

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    .line 156
    aget-object v3, v26, v6

    aget-object v3, v3, v2

    const/4 v7, 0x1

    aget-wide v18, v3, v7

    move-wide/from16 v0, v18

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    .line 157
    aget-object v3, v26, v6

    aget-object v3, v3, v2

    const/4 v7, 0x2

    aget-wide v18, v3, v7

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 149
    :cond_8
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide/from16 v18, v8

    move-wide/from16 v20, v12

    move-wide/from16 v22, v14

    move-wide/from16 v2, v16

    move-wide/from16 v16, v4

    move-wide v4, v10

    goto :goto_7

    .line 161
    :cond_9
    const/4 v6, 0x0

    move/from16 v24, v6

    :goto_9
    move-object/from16 v0, v26

    array-length v6, v0

    move/from16 v0, v24

    if-ge v0, v6, :cond_b

    .line 162
    const/4 v6, 0x0

    move/from16 v25, v6

    :goto_a
    const/4 v6, 0x0

    aget-object v6, v26, v6

    array-length v6, v6

    move/from16 v0, v25

    if-ge v0, v6, :cond_a

    .line 163
    const-wide/16 v6, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    aget-object v10, v26, v24

    aget-object v10, v10, v25

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    invoke-static/range {v2 .. v11}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v27, v0

    .line 164
    const-wide/16 v10, 0x0

    const-wide v12, 0x406fe00000000000L    # 255.0

    aget-object v6, v26, v24

    aget-object v6, v6, v25

    const/4 v7, 0x1

    aget-wide v14, v6, v7

    move-wide/from16 v6, v22

    move-wide/from16 v8, v18

    invoke-static/range {v6 .. v15}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v6

    double-to-int v0, v6

    move/from16 v28, v0

    .line 165
    const-wide/16 v10, 0x0

    const-wide v12, 0x406fe00000000000L    # 255.0

    aget-object v6, v26, v24

    aget-object v6, v6, v25

    const/4 v7, 0x2

    aget-wide v14, v6, v7

    move-wide/from16 v6, v20

    move-wide/from16 v8, v16

    invoke-static/range {v6 .. v15}, LCatalano/Math/Tools;->Scale(DDDDD)D

    move-result-wide v6

    double-to-int v11, v6

    move-object/from16 v6, p1

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v27

    move/from16 v10, v28

    .line 167
    invoke-virtual/range {v6 .. v11}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 162
    add-int/lit8 v6, v25, 0x1

    move/from16 v25, v6

    goto :goto_a

    .line 161
    :cond_a
    add-int/lit8 v6, v24, 0x1

    move/from16 v24, v6

    goto :goto_9

    .line 171
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Filters/Photometric/DifferenceOfGaussian;->c:Z

    if-eqz v2, :cond_4

    .line 172
    new-instance v2, LCatalano/Imaging/Filters/HistogramAdjust;

    invoke-direct {v2}, LCatalano/Imaging/Filters/HistogramAdjust;-><init>()V

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/HistogramAdjust;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto/16 :goto_4
.end method
