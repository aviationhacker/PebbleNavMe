.class public LCatalano/Imaging/Filters/RotateNearestNeighbor;
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
    iput v2, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->e:I

    .line 50
    iput v2, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->f:I

    .line 51
    iput v2, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->g:I

    .line 52
    iput v2, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->h:I

    .line 111
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a:D

    .line 112
    iput-boolean v2, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->b:Z

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
    iput v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->e:I

    .line 50
    iput v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->f:I

    .line 51
    iput v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->g:I

    .line 52
    iput v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->h:I

    .line 121
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a:D

    .line 122
    iput-boolean p3, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->b:Z

    .line 123
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 22

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->b:Z

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    .line 242
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    .line 274
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a:D

    neg-double v2, v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    .line 248
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 249
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 252
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    .line 253
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    .line 256
    mul-double v10, v6, v4

    .line 257
    mul-double v12, v6, v2

    .line 259
    mul-double v14, v6, v4

    mul-double v16, v8, v2

    sub-double v14, v14, v16

    .line 260
    mul-double/2addr v6, v2

    mul-double v16, v8, v4

    add-double v6, v6, v16

    .line 262
    neg-double v0, v8

    move-wide/from16 v16, v0

    mul-double v2, v2, v16

    .line 263
    mul-double/2addr v4, v8

    .line 265
    const-wide/16 v8, 0x0

    .line 266
    const-wide/16 v16, 0x0

    .line 269
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

    .line 270
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

    .line 272
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v6

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    .line 273
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    goto/16 :goto_0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 28

    .prologue
    .line 128
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 130
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 131
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 132
    add-int/lit8 v2, v9, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v10, v2, v4

    .line 133
    add-int/lit8 v2, v8, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v12, v2, v4

    .line 135
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a(LCatalano/Imaging/FastBitmap;)V

    .line 136
    new-instance v14, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    sget-object v4, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v14, v2, v3, v4}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 139
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    .line 140
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v16, v4, v6

    .line 143
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a:D

    neg-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    .line 144
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    .line 145
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 153
    neg-double v4, v2

    .line 154
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    if-ge v2, v3, :cond_3

    .line 155
    move-wide/from16 v0, v16

    neg-double v6, v0

    .line 156
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    if-ge v3, v15, :cond_2

    .line 158
    mul-double v22, v18, v4

    mul-double v24, v20, v6

    add-double v22, v22, v24

    add-double v22, v22, v10

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 159
    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v4

    mul-double v24, v18, v6

    add-double v22, v22, v24

    add-double v22, v22, v12

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    .line 162
    if-ltz v15, :cond_0

    if-ltz v22, :cond_0

    if-ge v15, v9, :cond_0

    move/from16 v0, v22

    if-lt v0, v8, :cond_1

    .line 165
    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->h:I

    invoke-virtual {v14, v2, v3, v15}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 171
    :goto_2
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    add-double v6, v6, v22

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 169
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v15

    invoke-virtual {v14, v2, v3, v15}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_2

    .line 173
    :cond_2
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 177
    invoke-virtual {v14}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 236
    :cond_4
    :goto_3
    return-void

    .line 180
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 181
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    .line 182
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v13

    .line 183
    add-int/lit8 v2, v13, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v14, v2, v4

    .line 184
    add-int/lit8 v2, v12, -0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v16, v2, v4

    .line 186
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a(LCatalano/Imaging/FastBitmap;)V

    .line 187
    new-instance v2, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    sget-object v5, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 190
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    .line 191
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    add-int/lit8 v3, v3, -0x1

    int-to-double v6, v3

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v18, v6, v8

    .line 194
    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a:D

    neg-double v6, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    .line 195
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 196
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 204
    neg-double v4, v4

    .line 205
    const/4 v3, 0x0

    move-wide v8, v4

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->d:I

    if-ge v3, v4, :cond_9

    .line 206
    move-wide/from16 v0, v18

    neg-double v6, v0

    .line 207
    const/4 v4, 0x0

    move-wide v10, v6

    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->c:I

    if-ge v4, v5, :cond_8

    .line 210
    mul-double v6, v20, v8

    mul-double v24, v22, v10

    add-double v6, v6, v24

    add-double/2addr v6, v14

    double-to-int v7, v6

    .line 211
    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v8

    mul-double v26, v20, v10

    add-double v24, v24, v26

    add-double v24, v24, v16

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    .line 214
    if-ltz v7, :cond_6

    if-ltz v24, :cond_6

    if-ge v7, v13, :cond_6

    move/from16 v0, v24

    if-lt v0, v12, :cond_7

    .line 217
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->e:I

    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->f:I

    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->g:I

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 226
    :goto_6
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    .line 207
    add-int/lit8 v4, v4, 0x1

    move-wide v10, v6

    goto :goto_5

    .line 221
    :cond_7
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v5

    .line 222
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v6

    .line 223
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v7

    .line 224
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    goto :goto_6

    .line 228
    :cond_8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    .line 205
    add-int/lit8 v3, v3, 0x1

    move-wide v8, v4

    goto :goto_4

    .line 231
    :cond_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 232
    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->recycle()V

    goto/16 :goto_3
.end method

.method public getAngle()D
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a:D

    neg-double v0, v0

    return-wide v0
.end method

.method public isKeepSize()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->b:Z

    return v0
.end method

.method public setAngle(D)V
    .locals 3

    .prologue
    .line 67
    neg-double v0, p1

    iput-wide v0, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->a:D

    .line 68
    return-void
.end method

.method public setFillColor(I)V
    .locals 0

    .prologue
    .line 103
    iput p1, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->h:I

    .line 104
    return-void
.end method

.method public setFillColor(III)V
    .locals 0

    .prologue
    .line 93
    iput p1, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->e:I

    .line 94
    iput p2, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->f:I

    .line 95
    iput p3, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->g:I

    .line 96
    return-void
.end method

.method public setKeepSize(Z)V
    .locals 0

    .prologue
    .line 83
    iput-boolean p1, p0, LCatalano/Imaging/Filters/RotateNearestNeighbor;->b:Z

    .line 84
    return-void
.end method
