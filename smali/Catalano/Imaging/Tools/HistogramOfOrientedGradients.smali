.class public LCatalano/Imaging/Tools/HistogramOfOrientedGradients;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:D

.field private e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x9

    iput v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a:I

    .line 47
    const/4 v0, 0x6

    iput v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    .line 50
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    iput-wide v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->d:D

    .line 51
    const-wide v0, 0x3fe657184ae74487L    # 0.6981317007977318

    iput-wide v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->e:D

    .line 80
    return-void
.end method

.method public constructor <init>(III)V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x9

    iput v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a:I

    .line 47
    const/4 v0, 0x6

    iput v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    .line 50
    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    iput-wide v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->d:D

    .line 51
    const-wide v0, 0x3fe657184ae74487L    # 0.6981317007977318

    iput-wide v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->e:D

    .line 89
    iput p1, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a:I

    .line 90
    iput p2, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    .line 91
    iput p3, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    .line 92
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v2, p1

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->e:D

    .line 93
    return-void
.end method

.method private a([D)D
    .locals 8

    .prologue
    .line 207
    const-wide/16 v2, 0x0

    .line 208
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 209
    aget-wide v4, p1, v0

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private a([DD)[D
    .locals 4

    .prologue
    .line 215
    array-length v0, p1

    new-array v1, v0, [D

    .line 217
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 218
    aget-wide v2, p1, v0

    div-double/2addr v2, p2

    aput-wide v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-object v1
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 104
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 105
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 108
    filled-new-array {v7, v6}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 109
    filled-new-array {v7, v6}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 111
    const/4 v4, 0x1

    move v5, v4

    :goto_0
    add-int/lit8 v4, v7, -0x1

    if-ge v5, v4, :cond_1

    .line 112
    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_0

    .line 114
    add-int/lit8 v8, v5, -0x1

    add-int/lit8 v9, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    .line 115
    add-int/lit8 v9, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    .line 116
    add-int/lit8 v10, v5, 0x1

    add-int/lit8 v11, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    .line 117
    add-int/lit8 v11, v5, -0x1

    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    .line 118
    add-int/lit8 v12, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v12}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v12

    .line 119
    add-int/lit8 v13, v5, 0x1

    add-int/lit8 v14, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v13

    .line 120
    add-int/lit8 v14, v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v14

    .line 121
    add-int/lit8 v15, v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v15

    .line 123
    add-int/2addr v9, v8

    add-int/2addr v9, v10

    add-int/2addr v12, v11

    add-int/2addr v12, v13

    sub-int/2addr v9, v12

    int-to-float v9, v9

    const v12, 0x3e2aaaab

    mul-float/2addr v9, v12

    .line 124
    add-int v12, v13, v14

    add-int/2addr v10, v12

    add-int/2addr v11, v15

    add-int/2addr v8, v11

    sub-int v8, v10, v8

    int-to-float v8, v8

    const v10, 0x3e2aaaab

    mul-float/2addr v8, v10

    .line 126
    aget-object v10, v2, v5

    float-to-double v12, v8

    float-to-double v14, v9

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    double-to-float v11, v12

    aput v11, v10, v4

    .line 127
    aget-object v10, v3, v5

    mul-float/2addr v9, v9

    mul-float/2addr v8, v8

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    aput v8, v10, v4

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_0

    .line 132
    :cond_1
    int-to-double v4, v7

    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    int-to-double v8, v7

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v9, v4

    .line 133
    int-to-double v4, v6

    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v10, v4

    .line 134
    filled-new-array {v9, v10}, [I

    move-result-object v4

    const-class v5, [D

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[D

    .line 136
    const/4 v5, 0x0

    move v8, v5

    :goto_2
    if-ge v8, v9, :cond_5

    .line 137
    const/4 v5, 0x0

    move v7, v5

    :goto_3
    if-ge v7, v10, :cond_4

    .line 139
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a:I

    new-array v11, v5, [D

    .line 141
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    mul-int v12, v8, v5

    .line 142
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    mul-int v13, v7, v5

    .line 145
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    if-ge v5, v6, :cond_3

    .line 147
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    if-ge v6, v14, :cond_2

    .line 149
    add-int v14, v12, v5

    aget-object v14, v2, v14

    add-int v15, v13, v6

    aget v14, v14, v15

    float-to-double v14, v14

    .line 150
    add-int v16, v12, v5

    aget-object v16, v3, v16

    add-int v17, v13, v6

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    .line 153
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    add-double v14, v14, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->e:D

    move-wide/from16 v18, v0

    mul-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    double-to-int v14, v14

    .line 155
    aget-wide v18, v11, v14

    add-double v16, v16, v18

    aput-wide v16, v11, v14

    .line 147
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 145
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 159
    :cond_3
    aget-object v5, v4, v8

    aput-object v11, v5, v7

    .line 137
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_3

    .line 136
    :cond_4
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto :goto_2

    .line 164
    :cond_5
    int-to-double v2, v9

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    int-to-double v6, v5

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v11, v2

    .line 165
    int-to-double v2, v10

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    int-to-double v6, v5

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v10, v2

    .line 167
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const/4 v2, 0x0

    move v9, v2

    :goto_6
    if-ge v9, v11, :cond_b

    .line 171
    const/4 v2, 0x0

    move v8, v2

    :goto_7
    if-ge v8, v10, :cond_9

    .line 173
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a:I

    mul-int/2addr v2, v3

    new-array v13, v2, [D

    .line 175
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    mul-int v14, v9, v2

    .line 176
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    mul-int v15, v8, v2

    .line 177
    const/4 v3, 0x0

    .line 180
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    if-ge v2, v5, :cond_8

    .line 182
    const/4 v5, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    if-ge v5, v6, :cond_7

    .line 184
    add-int v6, v14, v2

    aget-object v6, v4, v6

    add-int v7, v15, v5

    aget-object v16, v6, v7

    .line 188
    const/4 v6, 0x0

    move/from16 v20, v6

    move v6, v3

    move/from16 v3, v20

    :goto_a
    move-object/from16 v0, v16

    array-length v7, v0

    if-ge v3, v7, :cond_6

    .line 189
    add-int/lit8 v7, v6, 0x1

    aget-wide v18, v16, v3

    aput-wide v18, v13, v6

    .line 188
    add-int/lit8 v3, v3, 0x1

    move v6, v7

    goto :goto_a

    .line 182
    :cond_6
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_9

    .line 180
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 193
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a([D)D

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->d:D

    add-double/2addr v2, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2, v3}, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a([DD)[D

    move-result-object v2

    .line 195
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_7

    .line 169
    :cond_9
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_6

    .line 202
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "HistogramOfOrientedGradients only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_b
    return-object v12
.end method

.method public getBlockSize()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->c:I

    return v0
.end method

.method public getCellSize()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->b:I

    return v0
.end method

.method public getNumberOfBins()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, LCatalano/Imaging/Tools/HistogramOfOrientedGradients;->a:I

    return v0
.end method
