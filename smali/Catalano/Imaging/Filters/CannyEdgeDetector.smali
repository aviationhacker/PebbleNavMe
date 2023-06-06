.class public LCatalano/Imaging/Filters/CannyEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    .line 47
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    .line 48
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 120
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    .line 47
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    .line 48
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 128
    iput p1, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 129
    iput p2, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 130
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 3

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    .line 47
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    .line 48
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 139
    iput p1, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 140
    iput p2, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 141
    iput-wide p3, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    .line 142
    return-void
.end method

.method public constructor <init>(IIDI)V
    .locals 3

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide v0, 0x3ff6666666666666L    # 1.4

    iput-wide v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    .line 47
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    .line 48
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 49
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 152
    iput p1, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 153
    iput p2, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 154
    iput-wide p3, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    .line 155
    iput p5, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    .line 156
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 26

    .prologue
    .line 161
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 163
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    .line 164
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v12

    .line 167
    const-wide v14, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 168
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 171
    new-instance v13, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 172
    new-instance v2, LCatalano/Imaging/Filters/GaussianBlur;

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    invoke-direct {v2, v4, v5, v3}, LCatalano/Imaging/Filters/GaussianBlur;-><init>(DI)V

    .line 173
    invoke-virtual {v2, v13}, LCatalano/Imaging/Filters/GaussianBlur;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 175
    mul-int v2, v11, v12

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 176
    filled-new-array {v11, v12}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 177
    const/high16 v8, -0x800000    # Float.NEGATIVE_INFINITY

    .line 180
    const/4 v4, 0x0

    .line 182
    const/4 v3, 0x1

    move v10, v3

    :goto_0
    add-int/lit8 v3, v12, -0x1

    if-ge v10, v3, :cond_9

    .line 183
    const/4 v3, 0x1

    move v9, v4

    move/from16 v24, v3

    move v3, v8

    move/from16 v8, v24

    :goto_1
    add-int/lit8 v4, v11, -0x1

    if-ge v8, v4, :cond_8

    .line 184
    add-int/lit8 v4, v10, -0x1

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v13, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 185
    add-int/lit8 v5, v10, 0x1

    add-int/lit8 v17, v8, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v5, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 186
    add-int/lit8 v17, v10, -0x1

    add-int/lit8 v18, v8, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v17

    .line 187
    add-int/lit8 v18, v10, 0x1

    add-int/lit8 v19, v8, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v18

    .line 188
    add-int/lit8 v19, v8, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v10, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v19

    .line 189
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    invoke-virtual {v13, v10, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v20

    .line 190
    add-int/lit8 v21, v10, -0x1

    move/from16 v0, v21

    invoke-virtual {v13, v0, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v21

    .line 191
    add-int/lit8 v22, v10, 0x1

    move/from16 v0, v22

    invoke-virtual {v13, v0, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v22

    .line 193
    add-int v23, v4, v5

    sub-int v23, v23, v17

    sub-int v23, v23, v18

    sub-int v19, v19, v20

    mul-int/lit8 v19, v19, 0x2

    add-int v19, v19, v23

    .line 195
    add-int v4, v4, v17

    sub-int v4, v4, v18

    sub-int/2addr v4, v5

    sub-int v5, v21, v22

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 199
    aget-object v5, v2, v8

    mul-int v17, v19, v19

    mul-int v18, v4, v4

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v17, v0

    aput v17, v5, v10

    .line 200
    aget-object v5, v2, v8

    aget v5, v5, v10

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 201
    aget-object v3, v2, v8

    aget v3, v3, v10

    .line 204
    :cond_0
    if-nez v19, :cond_2

    .line 207
    if-nez v4, :cond_1

    const-wide/16 v4, 0x0

    .line 237
    :goto_2
    double-to-int v4, v4

    aput v4, v16, v9

    .line 183
    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v9, 0x1

    move v8, v4

    move v9, v5

    goto/16 :goto_1

    .line 207
    :cond_1
    const-wide v4, 0x4056800000000000L    # 90.0

    goto :goto_2

    .line 211
    :cond_2
    int-to-double v4, v4

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v4, v4, v18

    .line 214
    const-wide/16 v18, 0x0

    cmpg-double v17, v4, v18

    if-gez v17, :cond_3

    .line 216
    const-wide v18, 0x4066800000000000L    # 180.0

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double/2addr v4, v14

    sub-double v4, v18, v4

    .line 225
    :goto_3
    const-wide v18, 0x4036800000000000L    # 22.5

    cmpg-double v17, v4, v18

    if-gez v17, :cond_4

    .line 226
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 221
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    mul-double/2addr v4, v14

    goto :goto_3

    .line 227
    :cond_4
    const-wide v18, 0x4050e00000000000L    # 67.5

    cmpg-double v17, v4, v18

    if-gez v17, :cond_5

    .line 228
    const-wide v4, 0x4046800000000000L    # 45.0

    goto :goto_2

    .line 229
    :cond_5
    const-wide v18, 0x405c200000000000L    # 112.5

    cmpg-double v17, v4, v18

    if-gez v17, :cond_6

    .line 230
    const-wide v4, 0x4056800000000000L    # 90.0

    goto :goto_2

    .line 231
    :cond_6
    const-wide v18, 0x4063b00000000000L    # 157.5

    cmpg-double v4, v4, v18

    if-gez v4, :cond_7

    .line 232
    const-wide v4, 0x4060e00000000000L    # 135.0

    goto :goto_2

    .line 233
    :cond_7
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 182
    :cond_8
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move v8, v3

    move v4, v9

    goto/16 :goto_0

    .line 241
    :cond_9
    const/4 v4, 0x0

    .line 244
    const/4 v3, 0x1

    move v5, v6

    move v6, v7

    move v7, v3

    :goto_4
    add-int/lit8 v3, v12, -0x1

    if-ge v7, v3, :cond_d

    .line 245
    const/4 v3, 0x1

    move/from16 v24, v3

    move v3, v5

    move/from16 v5, v24

    move/from16 v25, v4

    move v4, v6

    move/from16 v6, v25

    :goto_5
    add-int/lit8 v9, v11, -0x1

    if-ge v5, v9, :cond_c

    .line 247
    aget v9, v16, v6

    sparse-switch v9, :sswitch_data_0

    .line 267
    :goto_6
    aget-object v9, v2, v5

    aget v9, v9, v7

    cmpg-float v9, v9, v4

    if-ltz v9, :cond_a

    aget-object v9, v2, v5

    aget v9, v9, v7

    cmpg-float v9, v9, v3

    if-gez v9, :cond_b

    .line 269
    :cond_a
    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5, v9}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 245
    :goto_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 250
    :sswitch_0
    add-int/lit8 v3, v5, -0x1

    aget-object v3, v2, v3

    aget v4, v3, v7

    .line 251
    add-int/lit8 v3, v5, 0x1

    aget-object v3, v2, v3

    aget v3, v3, v7

    goto :goto_6

    .line 254
    :sswitch_1
    add-int/lit8 v3, v5, -0x1

    aget-object v3, v2, v3

    add-int/lit8 v4, v7, 0x1

    aget v4, v3, v4

    .line 255
    add-int/lit8 v3, v5, 0x1

    aget-object v3, v2, v3

    add-int/lit8 v9, v7, -0x1

    aget v3, v3, v9

    goto :goto_6

    .line 258
    :sswitch_2
    aget-object v3, v2, v5

    add-int/lit8 v4, v7, 0x1

    aget v4, v3, v4

    .line 259
    aget-object v3, v2, v5

    add-int/lit8 v9, v7, -0x1

    aget v3, v3, v9

    goto :goto_6

    .line 262
    :sswitch_3
    add-int/lit8 v3, v5, 0x1

    aget-object v3, v2, v3

    add-int/lit8 v4, v7, 0x1

    aget v4, v3, v4

    .line 263
    add-int/lit8 v3, v5, -0x1

    aget-object v3, v2, v3

    add-int/lit8 v9, v7, -0x1

    aget v3, v3, v9

    goto :goto_6

    .line 273
    :cond_b
    aget-object v9, v2, v5

    aget v9, v9, v7

    div-float/2addr v9, v8

    const/high16 v10, 0x437f0000    # 255.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5, v9}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_7

    .line 244
    :cond_c
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    move v5, v3

    move/from16 v24, v6

    move v6, v4

    move/from16 v4, v24

    goto/16 :goto_4

    .line 279
    :cond_d
    new-instance v2, LCatalano/Imaging/Filters/HysteresisThreshold;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    invoke-direct {v2, v3, v4}, LCatalano/Imaging/Filters/HysteresisThreshold;-><init>(II)V

    .line 280
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, LCatalano/Imaging/Filters/HysteresisThreshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 285
    return-void

    .line 283
    :cond_e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "CannyEdgeDetector only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x5a -> :sswitch_2
        0x87 -> :sswitch_3
    .end sparse-switch
.end method

.method public getHighThreshold()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    return v0
.end method

.method public getLowThreshold()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    return v0
.end method

.method public getSigma()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    return v0
.end method

.method public setHighThreshold(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->d:I

    .line 83
    return-void
.end method

.method public setLowThreshold(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->c:I

    .line 66
    return-void
.end method

.method public setSigma(D)V
    .locals 1

    .prologue
    .line 98
    iput-wide p1, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->a:D

    .line 99
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, LCatalano/Imaging/Filters/CannyEdgeDetector;->b:I

    .line 115
    return-void
.end method
