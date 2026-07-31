.class public LCatalano/Imaging/Filters/ImagePyramids;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[[F

.field b:[[F

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v4, p0, LCatalano/Imaging/Filters/ImagePyramids;->c:I

    .line 38
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->a:[[F

    .line 46
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->b:[[F

    .line 73
    return-void

    .line 38
    nop

    :array_0
    .array-data 4
        0x3b800000    # 0.00390625f
        0x3c800000    # 0.015625f
        0x3cc00000    # 0.0234375f
        0x3c800000    # 0.015625f
        0x3b800000    # 0.00390625f
    .end array-data

    :array_1
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data

    :array_2
    .array-data 4
        0x3cc00000    # 0.0234375f
        0x3dc00000    # 0.09375f
        0x3e100000    # 0.140625f
        0x3dc00000    # 0.09375f
        0x3cc00000    # 0.0234375f
    .end array-data

    :array_3
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data

    :array_4
    .array-data 4
        0x3b800000    # 0.00390625f
        0x3c800000    # 0.015625f
        0x3cc00000    # 0.0234375f
        0x3c800000    # 0.015625f
        0x3b800000    # 0.00390625f
    .end array-data

    .line 46
    :array_5
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data

    :array_6
    .array-data 4
        0x3d800000    # 0.0625f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3d800000    # 0.0625f
    .end array-data

    :array_7
    .array-data 4
        0x3dc00000    # 0.09375f
        0x3ec00000    # 0.375f
        0x3f100000    # 0.5625f
        0x3ec00000    # 0.375f
        0x3dc00000    # 0.09375f
    .end array-data

    :array_8
    .array-data 4
        0x3d800000    # 0.0625f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3d800000    # 0.0625f
    .end array-data

    :array_9
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x5

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v4, p0, LCatalano/Imaging/Filters/ImagePyramids;->c:I

    .line 38
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->a:[[F

    .line 46
    new-array v0, v3, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->b:[[F

    .line 80
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/ImagePyramids;->setLevel(I)V

    .line 81
    return-void

    .line 38
    :array_0
    .array-data 4
        0x3b800000    # 0.00390625f
        0x3c800000    # 0.015625f
        0x3cc00000    # 0.0234375f
        0x3c800000    # 0.015625f
        0x3b800000    # 0.00390625f
    .end array-data

    :array_1
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data

    :array_2
    .array-data 4
        0x3cc00000    # 0.0234375f
        0x3dc00000    # 0.09375f
        0x3e100000    # 0.140625f
        0x3dc00000    # 0.09375f
        0x3cc00000    # 0.0234375f
    .end array-data

    :array_3
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data

    :array_4
    .array-data 4
        0x3b800000    # 0.00390625f
        0x3c800000    # 0.015625f
        0x3cc00000    # 0.0234375f
        0x3c800000    # 0.015625f
        0x3b800000    # 0.00390625f
    .end array-data

    .line 46
    :array_5
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data

    :array_6
    .array-data 4
        0x3d800000    # 0.0625f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3d800000    # 0.0625f
    .end array-data

    :array_7
    .array-data 4
        0x3dc00000    # 0.09375f
        0x3ec00000    # 0.375f
        0x3f100000    # 0.5625f
        0x3ec00000    # 0.375f
        0x3dc00000    # 0.09375f
    .end array-data

    :array_8
    .array-data 4
        0x3d800000    # 0.0625f
        0x3e800000    # 0.25f
        0x3ec00000    # 0.375f
        0x3e800000    # 0.25f
        0x3d800000    # 0.0625f
    .end array-data

    :array_9
    .array-data 4
        0x3c800000    # 0.015625f
        0x3d800000    # 0.0625f
        0x3dc00000    # 0.09375f
        0x3d800000    # 0.0625f
        0x3c800000    # 0.015625f
    .end array-data
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[FZ)[[F
    .locals 13

    .prologue
    .line 128
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 129
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 131
    filled-new-array {v9, v8}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 134
    const/4 v1, 0x0

    aget-object v1, p2, v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v10, v1, 0x2

    .line 137
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_a

    .line 138
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    if-ge v6, v8, :cond_9

    .line 139
    const/4 v2, 0x0

    .line 140
    const/4 v1, 0x0

    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_6

    .line 141
    sub-int v3, v1, v10

    add-int v11, v7, v3

    .line 142
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    aget-object v4, p2, v4

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 143
    sub-int v4, v3, v10

    add-int/2addr v4, v6

    .line 144
    if-ltz v11, :cond_0

    if-ge v11, v9, :cond_0

    if-ltz v4, :cond_0

    if-ge v4, v8, :cond_0

    .line 145
    aget-object v5, p2, v1

    aget v5, v5, v3

    invoke-virtual {p1, v11, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v4, v12

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    .line 142
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    .line 147
    :cond_0
    if-eqz p3, :cond_b

    .line 148
    add-int v4, v7, v1

    add-int/lit8 v5, v4, -0x1

    .line 149
    add-int v4, v6, v3

    add-int/lit8 v4, v4, -0x1

    .line 151
    if-gez v5, :cond_1

    const/4 v5, 0x0

    .line 152
    :cond_1
    if-lt v5, v9, :cond_2

    add-int/lit8 v5, v9, -0x1

    .line 154
    :cond_2
    if-gez v4, :cond_3

    const/4 v4, 0x0

    .line 155
    :cond_3
    if-lt v4, v8, :cond_4

    add-int/lit8 v4, v8, -0x1

    .line 157
    :cond_4
    invoke-virtual {p1, v5, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    .line 159
    aget-object v12, p2, v1

    aget v12, v12, v3

    invoke-virtual {p1, v5, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v12

    add-float/2addr v4, v2

    goto :goto_4

    .line 140
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 165
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 166
    :goto_5
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_7

    const/4 v1, 0x0

    .line 168
    :cond_7
    aget-object v2, v0, v7

    aput v1, v2, v6

    .line 138
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_8
    move v1, v2

    .line 165
    goto :goto_5

    .line 137
    :cond_9
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 172
    :cond_a
    return-object v0

    :cond_b
    move v4, v2

    goto :goto_4
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[F)[[[F
    .locals 15

    .prologue
    .line 177
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    .line 178
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v11

    .line 180
    const/4 v1, 0x3

    filled-new-array {v11, v10, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[F

    .line 183
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v11, :cond_a

    .line 184
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    if-ge v8, v10, :cond_9

    .line 185
    const/4 v3, 0x0

    .line 186
    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    :goto_2
    move-object/from16 v0, p2

    array-length v6, v0

    if-ge v2, v6, :cond_2

    .line 187
    add-int/lit8 v6, v2, -0x2

    add-int v12, v9, v6

    .line 188
    const/4 v6, 0x0

    :goto_3
    const/4 v7, 0x0

    aget-object v7, p2, v7

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 189
    add-int/lit8 v7, v6, -0x2

    add-int v13, v8, v7

    .line 190
    if-ltz v12, :cond_0

    if-ge v12, v11, :cond_0

    if-ltz v13, :cond_0

    if-ge v13, v10, :cond_0

    .line 191
    aget-object v7, p2, v2

    aget v7, v7, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v7, v14

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v7, v14

    add-float/2addr v7, v5

    .line 192
    aget-object v5, p2, v2

    aget v5, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v5, v14

    const/high16 v14, 0x437f0000    # 255.0f

    div-float/2addr v5, v14

    add-float/2addr v5, v4

    .line 193
    aget-object v4, p2, v2

    aget v4, v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v4, v13

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v4, v13

    add-float/2addr v4, v3

    .line 188
    :goto_4
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v4

    move v4, v5

    move v5, v7

    goto :goto_3

    .line 196
    :cond_0
    aget-object v7, p2, v2

    aget v7, v7, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v7, v13

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v7, v13

    add-float/2addr v7, v5

    .line 197
    aget-object v5, p2, v2

    aget v5, v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v5, v13

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v5, v13

    add-float/2addr v5, v4

    .line 198
    aget-object v4, p2, v2

    aget v4, v4, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v4, v13

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v4, v13

    add-float/2addr v4, v3

    goto :goto_4

    .line 186
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 203
    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v5, v2

    if-lez v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 204
    :goto_5
    const/4 v5, 0x0

    cmpg-float v5, v2, v5

    if-gez v5, :cond_5

    const/4 v2, 0x0

    move v5, v2

    .line 206
    :goto_6
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_6

    const/high16 v2, 0x3f800000    # 1.0f

    .line 207
    :goto_7
    const/4 v4, 0x0

    cmpg-float v4, v2, v4

    if-gez v4, :cond_7

    const/4 v2, 0x0

    move v4, v2

    .line 209
    :goto_8
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-lez v2, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    .line 210
    :goto_9
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_3

    const/4 v2, 0x0

    .line 212
    :cond_3
    aget-object v3, v1, v9

    aget-object v3, v3, v8

    const/4 v6, 0x0

    aput v5, v3, v6

    .line 213
    aget-object v3, v1, v9

    aget-object v3, v3, v8

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 214
    aget-object v3, v1, v9

    aget-object v3, v3, v8

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 184
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_1

    :cond_4
    move v2, v5

    .line 203
    goto :goto_5

    :cond_5
    move v5, v2

    .line 204
    goto :goto_6

    :cond_6
    move v2, v4

    .line 206
    goto :goto_7

    :cond_7
    move v4, v2

    .line 207
    goto :goto_8

    :cond_8
    move v2, v3

    .line 209
    goto :goto_9

    .line 183
    :cond_9
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    .line 218
    :cond_a
    return-object v1
.end method


# virtual methods
.method public Downscale(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    .line 85
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LCatalano/Imaging/Filters/ImagePyramids;->c:I

    if-ge v0, v1, :cond_5

    .line 88
    iget-object v1, p0, LCatalano/Imaging/Filters/ImagePyramids;->a:[[F

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, LCatalano/Imaging/Filters/ImagePyramids;->a(LCatalano/Imaging/FastBitmap;[[FZ)[[F

    move-result-object v3

    .line 90
    const/4 v1, 0x0

    aget-object v1, v3, v1

    array-length v4, v1

    .line 91
    array-length v5, v3

    .line 93
    new-instance v6, LCatalano/Imaging/FastBitmap;

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v2, v5, 0x2

    sget-object v7, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v6, v1, v2, v7}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 95
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    add-int/lit8 v1, v5, -0x1

    if-ge v2, v1, :cond_1

    .line 96
    const/4 v1, 0x0

    :goto_2
    add-int/lit8 v7, v4, -0x1

    if-ge v1, v7, :cond_0

    .line 97
    div-int/lit8 v7, v2, 0x2

    div-int/lit8 v8, v1, 0x2

    aget-object v9, v3, v2

    aget v9, v9, v1

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, v9}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 96
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 95
    :cond_0
    add-int/lit8 v1, v2, 0x2

    move v2, v1

    goto :goto_1

    .line 101
    :cond_1
    invoke-virtual {p1, v6}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_2
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    iget v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->c:I

    if-ge v6, v0, :cond_5

    .line 107
    iget-object v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->a:[[F

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/ImagePyramids;->a(LCatalano/Imaging/FastBitmap;[[F)[[[F

    move-result-object v9

    .line 109
    const/4 v0, 0x0

    aget-object v0, v9, v0

    array-length v10, v0

    .line 110
    array-length v11, v9

    .line 112
    new-instance v0, LCatalano/Imaging/FastBitmap;

    div-int/lit8 v1, v10, 0x2

    div-int/lit8 v2, v11, 0x2

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/FastBitmap;-><init>(II)V

    .line 114
    const/4 v1, 0x0

    move v8, v1

    :goto_4
    add-int/lit8 v1, v11, -0x1

    if-ge v8, v1, :cond_4

    .line 115
    const/4 v1, 0x0

    move v7, v1

    :goto_5
    add-int/lit8 v1, v10, -0x1

    if-ge v7, v1, :cond_3

    .line 116
    div-int/lit8 v1, v8, 0x2

    div-int/lit8 v2, v7, 0x2

    aget-object v3, v9, v8

    aget-object v3, v3, v7

    const/4 v4, 0x0

    aget v3, v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aget-object v4, v9, v8

    aget-object v4, v4, v7

    const/4 v5, 0x1

    aget v4, v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aget-object v5, v9, v8

    aget-object v5, v5, v7

    const/4 v12, 0x2

    aget v5, v5, v12

    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v5, v12

    float-to-int v5, v5

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 115
    add-int/lit8 v1, v7, 0x2

    move v7, v1

    goto :goto_5

    .line 114
    :cond_3
    add-int/lit8 v1, v8, 0x2

    move v8, v1

    goto :goto_4

    .line 120
    :cond_4
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 105
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    .line 124
    :cond_5
    return-void
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->c:I

    return v0
.end method

.method public setLevel(I)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/ImagePyramids;->c:I

    .line 68
    return-void
.end method
