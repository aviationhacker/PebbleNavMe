.class public LCatalano/Imaging/Filters/RotateBicubic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, LCatalano/Imaging/Filters/RotateBicubic;->e:I

    .line 51
    iput v2, p0, LCatalano/Imaging/Filters/RotateBicubic;->f:I

    .line 52
    iput v2, p0, LCatalano/Imaging/Filters/RotateBicubic;->g:I

    .line 53
    iput v2, p0, LCatalano/Imaging/Filters/RotateBicubic;->h:I

    .line 112
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->a:D

    .line 113
    iput-boolean v2, p0, LCatalano/Imaging/Filters/RotateBicubic;->b:Z

    .line 114
    return-void
.end method

.method public constructor <init>(DZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->e:I

    .line 51
    iput v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->f:I

    .line 52
    iput v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->g:I

    .line 53
    iput v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->h:I

    .line 122
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->a:D

    .line 123
    iput-boolean p3, p0, LCatalano/Imaging/Filters/RotateBicubic;->b:Z

    .line 124
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 22

    .prologue
    .line 323
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->b:Z

    if-eqz v2, :cond_0

    .line 324
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    .line 325
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    .line 357
    :goto_0
    return-void

    .line 330
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->a:D

    neg-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 331
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 332
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 335
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 336
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    .line 339
    mul-double v10, v6, v4

    .line 340
    mul-double v12, v6, v2

    .line 342
    mul-double v14, v6, v4

    mul-double v16, v8, v2

    sub-double v14, v14, v16

    .line 343
    mul-double/2addr v6, v2

    mul-double v16, v8, v4

    add-double v6, v6, v16

    .line 345
    neg-double v0, v8

    move-wide/from16 v16, v0

    mul-double v2, v2, v16

    .line 346
    mul-double/2addr v4, v8

    .line 348
    const-wide/16 v8, 0x0

    .line 349
    const-wide/16 v16, 0x0

    .line 352
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->max(DD)D

    move-result-wide v18

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sub-double v2, v18, v2

    .line 353
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    sub-double v4, v8, v4

    .line 355
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    .line 356
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    goto/16 :goto_0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 44

    .prologue
    .line 129
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 131
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v15

    .line 132
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v16

    .line 133
    add-int/lit8 v2, v16, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v18, v2, v4

    .line 134
    add-int/lit8 v2, v15, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v20, v2, v4

    .line 136
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/Filters/RotateBicubic;->a(LCatalano/Imaging/FastBitmap;)V

    .line 137
    new-instance v17, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    sget-object v4, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 140
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 141
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v22, v4, v6

    .line 144
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/RotateBicubic;->a:D

    neg-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 146
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    .line 156
    add-int/lit8 v11, v16, -0x1

    .line 157
    add-int/lit8 v9, v15, -0x1

    .line 159
    neg-double v4, v2

    .line 160
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    if-ge v2, v3, :cond_9

    .line 161
    move-wide/from16 v0, v22

    neg-double v6, v0

    .line 162
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    if-ge v3, v8, :cond_8

    .line 165
    mul-double v12, v24, v4

    mul-double v28, v26, v6

    add-double v12, v12, v28

    add-double v12, v12, v18

    .line 166
    move-wide/from16 v0, v26

    neg-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v4

    mul-double v30, v24, v6

    add-double v28, v28, v30

    add-double v28, v28, v20

    .line 168
    double-to-int v0, v12

    move/from16 v30, v0

    .line 169
    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v31, v0

    .line 172
    if-ltz v30, :cond_0

    if-ltz v31, :cond_0

    move/from16 v0, v30

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    move/from16 v0, v31

    if-lt v0, v15, :cond_1

    .line 174
    :cond_0
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/RotateBicubic;->h:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v8}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 212
    :goto_2
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v12

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 179
    :cond_1
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v32, v0

    sub-double v32, v12, v32

    .line 180
    move/from16 v0, v31

    int-to-double v12, v0

    sub-double v28, v28, v12

    .line 183
    const/4 v12, 0x0

    .line 185
    const/4 v8, -0x1

    move v14, v8

    :goto_3
    const/4 v8, 0x3

    if-ge v14, v8, :cond_7

    .line 187
    int-to-double v0, v14

    move-wide/from16 v34, v0

    sub-double v34, v28, v34

    invoke-static/range {v34 .. v35}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v34

    .line 189
    add-int v8, v31, v14

    .line 190
    if-gez v8, :cond_2

    .line 191
    const/4 v8, 0x0

    .line 192
    :cond_2
    if-le v8, v9, :cond_3

    move v8, v9

    .line 195
    :cond_3
    const/4 v10, -0x1

    move v13, v12

    move v12, v10

    :goto_4
    const/4 v10, 0x3

    if-ge v12, v10, :cond_6

    .line 198
    int-to-double v0, v12

    move-wide/from16 v36, v0

    sub-double v36, v36, v32

    invoke-static/range {v36 .. v37}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v36

    mul-double v36, v36, v34

    .line 200
    add-int v10, v30, v12

    .line 201
    if-gez v10, :cond_4

    .line 202
    const/4 v10, 0x0

    .line 203
    :cond_4
    if-le v10, v11, :cond_5

    move v10, v11

    .line 206
    :cond_5
    int-to-double v0, v13

    move-wide/from16 v38, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    int-to-double v0, v10

    move-wide/from16 v40, v0

    mul-double v36, v36, v40

    add-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-int v13, v0

    .line 195
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    goto :goto_4

    .line 185
    :cond_6
    add-int/lit8 v8, v14, 0x1

    move v14, v8

    move v12, v13

    goto :goto_3

    .line 210
    :cond_7
    const/4 v8, 0x0

    const/16 v10, 0xff

    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v8}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_2

    .line 214
    :cond_8
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 217
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 218
    invoke-virtual/range {v17 .. v17}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 319
    :cond_a
    :goto_5
    return-void

    .line 221
    :cond_b
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 222
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v18

    .line 223
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v19

    .line 224
    add-int/lit8 v2, v19, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v20, v2, v4

    .line 225
    add-int/lit8 v2, v18, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v22, v2, v4

    .line 227
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/Filters/RotateBicubic;->a(LCatalano/Imaging/FastBitmap;)V

    .line 228
    new-instance v2, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    sget-object v5, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 231
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 232
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v24, v6, v8

    .line 235
    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Filters/RotateBicubic;->a:D

    neg-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    .line 236
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    .line 237
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    .line 247
    add-int/lit8 v13, v19, -0x1

    .line 248
    add-int/lit8 v12, v18, -0x1

    .line 250
    neg-double v4, v4

    .line 251
    const/4 v3, 0x0

    move-wide v8, v4

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateBicubic;->d:I

    if-ge v3, v4, :cond_15

    .line 252
    move-wide/from16 v0, v24

    neg-double v6, v0

    .line 253
    const/4 v4, 0x0

    move-wide v10, v6

    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateBicubic;->c:I

    if-ge v4, v5, :cond_14

    .line 256
    mul-double v6, v26, v8

    mul-double v14, v28, v10

    add-double/2addr v6, v14

    add-double v6, v6, v20

    .line 257
    move-wide/from16 v0, v28

    neg-double v14, v0

    mul-double/2addr v14, v8

    mul-double v16, v26, v10

    add-double v14, v14, v16

    add-double v14, v14, v22

    .line 259
    double-to-int v0, v6

    move/from16 v30, v0

    .line 260
    double-to-int v0, v14

    move/from16 v31, v0

    .line 263
    const-wide/16 v16, 0x0

    cmpg-double v5, v6, v16

    if-ltz v5, :cond_c

    const-wide/16 v16, 0x0

    cmpg-double v5, v14, v16

    if-ltz v5, :cond_c

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v5, v6, v16

    if-gez v5, :cond_c

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v5, v14, v16

    if-ltz v5, :cond_d

    .line 265
    :cond_c
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateBicubic;->e:I

    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/RotateBicubic;->f:I

    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/RotateBicubic;->g:I

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 310
    :goto_8
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    .line 253
    add-int/lit8 v4, v4, 0x1

    move-wide v10, v6

    goto :goto_7

    .line 270
    :cond_d
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v32, v6, v16

    .line 271
    move/from16 v0, v31

    int-to-double v6, v0

    sub-double v34, v14, v6

    .line 274
    const/4 v15, 0x0

    .line 275
    const/4 v14, 0x0

    .line 276
    const/4 v7, 0x0

    .line 278
    const/4 v5, -0x1

    move/from16 v17, v5

    :goto_9
    const/4 v5, 0x3

    move/from16 v0, v17

    if-ge v0, v5, :cond_13

    .line 280
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v36, v0

    sub-double v36, v34, v36

    invoke-static/range {v36 .. v37}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v36

    .line 282
    add-int v5, v31, v17

    .line 283
    if-gez v5, :cond_e

    .line 284
    const/4 v5, 0x0

    .line 285
    :cond_e
    if-le v5, v12, :cond_f

    move v5, v12

    .line 288
    :cond_f
    const/4 v6, -0x1

    move/from16 v16, v15

    move v15, v14

    move v14, v7

    move v7, v6

    :goto_a
    const/4 v6, 0x3

    if-ge v7, v6, :cond_12

    .line 291
    int-to-double v0, v7

    move-wide/from16 v38, v0

    sub-double v38, v38, v32

    invoke-static/range {v38 .. v39}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v38

    mul-double v38, v38, v36

    .line 293
    add-int v6, v30, v7

    .line 294
    if-gez v6, :cond_10

    .line 295
    const/4 v6, 0x0

    .line 296
    :cond_10
    if-le v6, v13, :cond_11

    move v6, v13

    .line 299
    :cond_11
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v38

    add-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-int v0, v0

    move/from16 v16, v0

    .line 300
    int-to-double v0, v15

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v42, v0

    mul-double v42, v42, v38

    add-double v40, v40, v42

    move-wide/from16 v0, v40

    double-to-int v15, v0

    .line 301
    int-to-double v0, v14

    move-wide/from16 v40, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v42, v0

    mul-double v38, v38, v42

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-int v14, v0

    .line 288
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_a

    .line 278
    :cond_12
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    move v7, v14

    move v14, v15

    move/from16 v15, v16

    goto :goto_9

    .line 305
    :cond_13
    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-static {v6, v15}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 306
    const/4 v6, 0x0

    const/16 v15, 0xff

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 307
    const/4 v14, 0x0

    const/16 v15, 0xff

    invoke-static {v15, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v14, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 308
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    goto/16 :goto_8

    .line 312
    :cond_14
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    .line 251
    add-int/lit8 v3, v3, 0x1

    move-wide v8, v4

    goto/16 :goto_6

    .line 315
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 316
    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->recycle()V

    goto/16 :goto_5
.end method

.method public getAngle()D
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->a:D

    neg-double v0, v0

    return-wide v0
.end method

.method public isKeepSize()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->b:Z

    return v0
.end method

.method public setAngle(D)V
    .locals 3

    .prologue
    .line 68
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateBicubic;->a:D

    .line 69
    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, LCatalano/Imaging/Filters/RotateBicubic;->h:I

    .line 105
    return-void
.end method

.method public setFillColor(III)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, LCatalano/Imaging/Filters/RotateBicubic;->e:I

    .line 95
    iput p2, p0, LCatalano/Imaging/Filters/RotateBicubic;->f:I

    .line 96
    iput p3, p0, LCatalano/Imaging/Filters/RotateBicubic;->g:I

    .line 97
    return-void
.end method

.method public setKeepSize(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, LCatalano/Imaging/Filters/RotateBicubic;->b:Z

    .line 85
    return-void
.end method
