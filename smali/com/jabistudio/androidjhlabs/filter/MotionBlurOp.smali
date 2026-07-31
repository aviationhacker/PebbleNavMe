.class public Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->a:F

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->b:F

    .line 40
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->a:F

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->b:F

    .line 50
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->c:F

    .line 51
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->d:F

    .line 52
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->e:F

    .line 53
    iput p4, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->f:F

    .line 54
    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 176
    const/4 v1, 0x1

    .line 177
    const/4 v0, 0x0

    .line 179
    :goto_0
    if-ge v1, p1, :cond_0

    .line 180
    mul-int/lit8 v1, v1, 0x2

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return v0
.end method


# virtual methods
.method public filter([III)[I
    .locals 25

    .prologue
    .line 193
    mul-int v4, p2, p3

    new-array v5, v4, [I

    .line 194
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 195
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 196
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v15, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 198
    move/from16 v0, p2

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->a:F

    mul-float v16, v6, v7

    .line 199
    move/from16 v0, p3

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->b:F

    mul-float v17, v6, v7

    .line 200
    mul-float v6, v16, v16

    mul-float v7, v17, v17

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 201
    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->c:F

    float-to-double v8, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->d:F

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v7, v8

    .line 202
    move-object/from16 v0, p0

    iget v8, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->c:F

    float-to-double v8, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->d:F

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    neg-double v10, v10

    mul-double/2addr v8, v10

    double-to-float v8, v8

    .line 203
    move-object/from16 v0, p0

    iget v9, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->f:F

    .line 204
    move-object/from16 v0, p0

    iget v14, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->e:F

    .line 205
    move-object/from16 v0, p0

    iget v10, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->c:F

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->e:F

    mul-float/2addr v11, v6

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    add-float/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->f:F

    mul-float/2addr v6, v11

    add-float/2addr v6, v10

    .line 206
    float-to-int v10, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->a(I)I

    move-result v18

    .line 208
    div-float v12, v7, v6

    .line 209
    div-float v11, v8, v6

    .line 210
    div-float v10, v9, v6

    .line 211
    div-float v9, v14, v6

    .line 213
    if-nez v18, :cond_0

    .line 214
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 215
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 216
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 217
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 260
    :goto_0
    return-object v5

    .line 221
    :cond_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v7, 0x1

    invoke-virtual {v15, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 222
    const/4 v7, 0x0

    .line 223
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 224
    const/16 v6, 0x80

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    const/4 v6, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 226
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 228
    const/4 v6, 0x0

    move-object v14, v13

    move-object v13, v8

    move v8, v10

    move v10, v12

    move-object v12, v7

    move v7, v9

    move v9, v11

    :goto_1
    move/from16 v0, v18

    if-ge v6, v0, :cond_2

    .line 229
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    add-float v12, v16, v10

    add-float v20, v17, v9

    move/from16 v0, v20

    invoke-virtual {v11, v12, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    const-wide v20, 0x3ff00068db8bac71L    # 1.0001

    float-to-double v0, v8

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v12, v0

    const-wide v20, 0x3ff00068db8bac71L    # 1.0001

    float-to-double v0, v8

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v22, 0x3f000000    # 0.5f

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v11, v12, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 234
    const-wide v20, 0x3ff00068db8bac71L    # 1.0001

    float-to-double v0, v8

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v12, v0

    const-wide v20, 0x3ff00068db8bac71L    # 1.0001

    float-to-double v0, v8

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v12, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 235
    move-object/from16 v0, p0

    iget v12, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->e:F

    const/16 v20, 0x0

    cmpl-float v12, v12, v20

    if-eqz v12, :cond_1

    .line 236
    invoke-virtual {v11, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 238
    :cond_1
    move/from16 v0, v16

    neg-float v12, v0

    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v12, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    const/4 v12, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v11, v14, v12, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    .line 246
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v9, v11

    .line 247
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v8, v11

    .line 248
    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v7, v11

    .line 228
    add-int/lit8 v6, v6, 0x1

    move-object v12, v4

    move-object v14, v13

    move-object/from16 v24, v13

    move-object v13, v4

    move-object/from16 v4, v24

    goto/16 :goto_1

    .line 250
    :cond_2
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v7, p2

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 252
    if-eqz v12, :cond_3

    .line 253
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_3
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 258
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->d:F

    return v0
.end method

.method public getCentreX()F
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->a:F

    return v0
.end method

.method public getCentreY()F
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->b:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->c:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->e:F

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->f:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->d:F

    .line 64
    return-void
.end method

.method public setCentre(FF)V
    .locals 0

    .prologue
    .line 171
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->a:F

    .line 172
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->b:F

    .line 173
    return-void
.end method

.method public setCentreX(F)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->a:F

    .line 136
    return-void
.end method

.method public setCentreY(F)V
    .locals 0

    .prologue
    .line 153
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->b:F

    .line 154
    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->c:F

    .line 82
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->e:F

    .line 100
    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurOp;->f:F

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "Blur/Faster Motion Blur..."

    return-object v0
.end method
