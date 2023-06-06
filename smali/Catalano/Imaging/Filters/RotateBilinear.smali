.class public LCatalano/Imaging/Filters/RotateBilinear;
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

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v2, p0, LCatalano/Imaging/Filters/RotateBilinear;->e:I

    .line 50
    iput v2, p0, LCatalano/Imaging/Filters/RotateBilinear;->f:I

    .line 51
    iput v2, p0, LCatalano/Imaging/Filters/RotateBilinear;->g:I

    .line 52
    iput v2, p0, LCatalano/Imaging/Filters/RotateBilinear;->h:I

    .line 111
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->a:D

    .line 112
    iput-boolean v2, p0, LCatalano/Imaging/Filters/RotateBilinear;->b:Z

    .line 113
    return-void
.end method

.method public constructor <init>(DZ)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->e:I

    .line 50
    iput v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->f:I

    .line 51
    iput v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->g:I

    .line 52
    iput v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->h:I

    .line 121
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->a:D

    .line 122
    iput-boolean p3, p0, LCatalano/Imaging/Filters/RotateBilinear;->b:Z

    .line 123
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 22

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Filters/RotateBilinear;->b:Z

    if-eqz v2, :cond_0

    .line 332
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    .line 333
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    .line 365
    :goto_0
    return-void

    .line 338
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Filters/RotateBilinear;->a:D

    neg-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 339
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 340
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 343
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 344
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    .line 347
    mul-double v10, v6, v4

    .line 348
    mul-double v12, v6, v2

    .line 350
    mul-double v14, v6, v4

    mul-double v16, v8, v2

    sub-double v14, v14, v16

    .line 351
    mul-double/2addr v6, v2

    mul-double v16, v8, v4

    add-double v6, v6, v16

    .line 353
    neg-double v0, v8

    move-wide/from16 v16, v0

    mul-double v2, v2, v16

    .line 354
    mul-double/2addr v4, v8

    .line 356
    const-wide/16 v8, 0x0

    .line 357
    const-wide/16 v16, 0x0

    .line 360
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

    .line 361
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

    .line 363
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    .line 364
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    goto/16 :goto_0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 50

    .prologue
    .line 128
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 130
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v18

    .line 131
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v19

    .line 132
    add-int/lit8 v4, v19, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v20, v4, v6

    .line 133
    add-int/lit8 v4, v18, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v22, v4, v6

    .line 135
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/Filters/RotateBilinear;->a(LCatalano/Imaging/FastBitmap;)V

    .line 136
    new-instance v24, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    sget-object v6, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v5, v6}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 139
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 140
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    add-int/lit8 v6, v6, -0x1

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v26, v6, v8

    .line 143
    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Filters/RotateBilinear;->a:D

    neg-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    .line 144
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 145
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v30

    .line 155
    add-int/lit8 v25, v19, -0x1

    .line 156
    add-int/lit8 v32, v18, -0x1

    .line 158
    neg-double v6, v4

    .line 159
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    if-ge v4, v5, :cond_6

    .line 164
    mul-double v8, v28, v6

    add-double v34, v8, v20

    .line 165
    move-wide/from16 v0, v30

    neg-double v8, v0

    mul-double/2addr v8, v6

    add-double v36, v8, v22

    .line 167
    move-wide/from16 v0, v26

    neg-double v8, v0

    .line 168
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    if-ge v5, v10, :cond_5

    .line 171
    mul-double v10, v30, v8

    add-double v12, v34, v10

    .line 172
    mul-double v10, v28, v8

    add-double v38, v36, v10

    .line 175
    double-to-int v0, v12

    move/from16 v17, v0

    .line 176
    move-wide/from16 v0, v38

    double-to-int v15, v0

    .line 179
    if-ltz v17, :cond_0

    if-ltz v15, :cond_0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move/from16 v0, v18

    if-lt v15, v0, :cond_1

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/RotateBilinear;->h:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v10}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 208
    :goto_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    .line 168
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 185
    :cond_1
    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    move/from16 v16, v17

    .line 186
    :goto_3
    move/from16 v0, v32

    if-ne v15, v0, :cond_4

    move v14, v15

    .line 188
    :goto_4
    move/from16 v0, v17

    int-to-double v10, v0

    sub-double v10, v12, v10

    const-wide/16 v12, 0x0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_11

    .line 189
    const-wide/16 v10, 0x0

    move-wide v12, v10

    .line 190
    :goto_5
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double v40, v10, v12

    .line 192
    int-to-double v10, v15

    sub-double v10, v38, v10

    const-wide/16 v38, 0x0

    cmpg-double v33, v10, v38

    if-gez v33, :cond_2

    .line 193
    const-wide/16 v10, 0x0

    .line 194
    :cond_2
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v38, v38, v10

    .line 197
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v33

    .line 198
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v14}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v17

    .line 199
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v15

    .line 200
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v14

    .line 202
    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v42, v42, v38

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    add-double v16, v16, v42

    mul-double v16, v16, v40

    int-to-double v0, v15

    move-wide/from16 v40, v0

    mul-double v38, v38, v40

    int-to-double v14, v14

    mul-double/2addr v10, v14

    add-double v10, v10, v38

    mul-double/2addr v10, v12

    add-double v10, v10, v16

    double-to-int v10, v10

    .line 206
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5, v10}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_2

    .line 185
    :cond_3
    add-int/lit8 v10, v17, 0x1

    move/from16 v16, v10

    goto :goto_3

    .line 186
    :cond_4
    add-int/lit8 v10, v15, 0x1

    move v14, v10

    goto :goto_4

    .line 210
    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 213
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 214
    invoke-virtual/range {v24 .. v24}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 327
    :cond_7
    :goto_6
    return-void

    .line 217
    :cond_8
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 218
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v22

    .line 219
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v23

    .line 220
    add-int/lit8 v4, v23, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v24, v4, v6

    .line 221
    add-int/lit8 v4, v22, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v26, v4, v6

    .line 223
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/Filters/RotateBilinear;->a(LCatalano/Imaging/FastBitmap;)V

    .line 224
    new-instance v4, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    sget-object v7, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v4, v5, v6, v7}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 227
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 228
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    add-int/lit8 v5, v5, -0x1

    int-to-double v8, v5

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v28, v8, v10

    .line 231
    move-object/from16 v0, p0

    iget-wide v8, v0, LCatalano/Imaging/Filters/RotateBilinear;->a:D

    neg-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    .line 232
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v30

    .line 233
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v32

    .line 243
    add-int/lit8 v34, v23, -0x1

    .line 244
    add-int/lit8 v35, v22, -0x1

    .line 246
    neg-double v6, v6

    .line 247
    const/4 v5, 0x0

    move-wide v10, v6

    :goto_7
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/RotateBilinear;->d:I

    if-ge v5, v6, :cond_e

    .line 252
    mul-double v6, v32, v10

    add-double v36, v6, v24

    .line 253
    mul-double v6, v30, v10

    add-double v38, v6, v26

    .line 255
    move-wide/from16 v0, v28

    neg-double v8, v0

    .line 256
    const/4 v6, 0x0

    move-wide v12, v8

    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/RotateBilinear;->c:I

    if-ge v6, v7, :cond_d

    .line 259
    mul-double v8, v30, v12

    add-double v8, v8, v36

    .line 260
    mul-double v14, v32, v12

    sub-double v14, v38, v14

    .line 263
    double-to-int v0, v8

    move/from16 v21, v0

    .line 264
    double-to-int v0, v14

    move/from16 v19, v0

    .line 267
    if-ltz v21, :cond_9

    if-ltz v19, :cond_9

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    move/from16 v0, v19

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    .line 269
    :cond_9
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/RotateBilinear;->e:I

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/RotateBilinear;->f:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/RotateBilinear;->g:I

    invoke-virtual/range {v4 .. v9}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 318
    :goto_9
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v12

    .line 256
    add-int/lit8 v6, v6, 0x1

    move-wide v12, v8

    goto :goto_8

    .line 273
    :cond_a
    move/from16 v0, v21

    move/from16 v1, v34

    if-ne v0, v1, :cond_b

    move/from16 v20, v21

    .line 274
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v35

    if-ne v0, v1, :cond_c

    move/from16 v18, v19

    .line 276
    :goto_b
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v8, v8, v16

    const-wide/16 v16, 0x0

    cmpg-double v7, v8, v16

    if-gez v7, :cond_10

    .line 277
    const-wide/16 v8, 0x0

    move-wide/from16 v16, v8

    .line 278
    :goto_c
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v40, v8, v16

    .line 280
    move/from16 v0, v19

    int-to-double v8, v0

    sub-double v8, v14, v8

    const-wide/16 v14, 0x0

    cmpg-double v7, v8, v14

    if-gez v7, :cond_f

    .line 281
    const-wide/16 v8, 0x0

    move-wide v14, v8

    .line 282
    :goto_d
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v42, v8, v14

    .line 285
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v7

    .line 286
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v8

    .line 287
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v9

    .line 288
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v44

    .line 290
    int-to-double v0, v7

    move-wide/from16 v46, v0

    mul-double v46, v46, v42

    int-to-double v0, v8

    move-wide/from16 v48, v0

    mul-double v48, v48, v14

    add-double v46, v46, v48

    mul-double v46, v46, v40

    int-to-double v8, v9

    mul-double v8, v8, v42

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v44, v44, v14

    add-double v8, v8, v44

    mul-double v8, v8, v16

    add-double v8, v8, v46

    double-to-int v7, v8

    .line 295
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v8

    .line 296
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    .line 297
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v44

    .line 298
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v45

    .line 300
    int-to-double v0, v8

    move-wide/from16 v46, v0

    mul-double v46, v46, v42

    int-to-double v8, v9

    mul-double/2addr v8, v14

    add-double v8, v8, v46

    mul-double v8, v8, v40

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v46, v0

    mul-double v46, v46, v42

    move/from16 v0, v45

    int-to-double v0, v0

    move-wide/from16 v44, v0

    mul-double v44, v44, v14

    add-double v44, v44, v46

    mul-double v44, v44, v16

    add-double v8, v8, v44

    double-to-int v8, v8

    .line 305
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    .line 306
    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v21

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v19

    .line 308
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v18

    .line 310
    int-to-double v0, v9

    move-wide/from16 v44, v0

    mul-double v44, v44, v42

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v20, v20, v14

    add-double v20, v20, v44

    mul-double v20, v20, v40

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v40, v0

    mul-double v40, v40, v42

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double v14, v14, v18

    add-double v14, v14, v40

    mul-double v14, v14, v16

    add-double v14, v14, v20

    double-to-int v9, v14

    .line 316
    invoke-virtual/range {v4 .. v9}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    goto/16 :goto_9

    .line 273
    :cond_b
    add-int/lit8 v7, v21, 0x1

    move/from16 v20, v7

    goto/16 :goto_a

    .line 274
    :cond_c
    add-int/lit8 v7, v19, 0x1

    move/from16 v18, v7

    goto/16 :goto_b

    .line 320
    :cond_d
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    .line 247
    add-int/lit8 v5, v5, 0x1

    move-wide v10, v6

    goto/16 :goto_7

    .line 323
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 324
    invoke-virtual {v4}, LCatalano/Imaging/FastBitmap;->recycle()V

    goto/16 :goto_6

    :cond_f
    move-wide v14, v8

    goto/16 :goto_d

    :cond_10
    move-wide/from16 v16, v8

    goto/16 :goto_c

    :cond_11
    move-wide v12, v10

    goto/16 :goto_5
.end method

.method public getAngle()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->a:D

    neg-double v0, v0

    return-wide v0
.end method

.method public isKeepSize()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->b:Z

    return v0
.end method

.method public setAngle(D)V
    .locals 3

    .prologue
    .line 67
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateBilinear;->a:D

    .line 68
    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, LCatalano/Imaging/Filters/RotateBilinear;->h:I

    .line 104
    return-void
.end method

.method public setFillColor(III)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, LCatalano/Imaging/Filters/RotateBilinear;->e:I

    .line 94
    iput p2, p0, LCatalano/Imaging/Filters/RotateBilinear;->f:I

    .line 95
    iput p3, p0, LCatalano/Imaging/Filters/RotateBilinear;->g:I

    .line 96
    return-void
.end method

.method public setKeepSize(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, LCatalano/Imaging/Filters/RotateBilinear;->b:Z

    .line 84
    return-void
.end method
