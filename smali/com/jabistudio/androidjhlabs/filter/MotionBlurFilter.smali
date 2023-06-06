.class public Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->a:F

    .line 32
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->b:F

    .line 33
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    .line 34
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->d:F

    .line 35
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->f:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->g:Z

    .line 43
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->a:F

    .line 32
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->b:F

    .line 33
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    .line 34
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->d:F

    .line 35
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->f:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->g:Z

    .line 53
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    .line 54
    iput p2, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->a:F

    .line 55
    iput p3, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    .line 56
    iput p4, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->d:F

    .line 57
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 25

    .prologue
    .line 169
    .line 173
    mul-int v4, p2, p3

    new-array v15, v4, [I

    .line 179
    div-int/lit8 v16, p2, 0x2

    .line 180
    div-int/lit8 v17, p3, 0x2

    .line 181
    const/4 v5, 0x0

    .line 183
    mul-int v4, v16, v16

    mul-int v6, v17, v17

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 184
    move-object/from16 v0, p0

    iget v6, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->a:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v18, v0

    .line 185
    move-object/from16 v0, p0

    iget v6, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->a:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    neg-double v8, v8

    mul-double/2addr v6, v8

    double-to-float v0, v6

    move/from16 v19, v0

    .line 186
    move-object/from16 v0, p0

    iget v6, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->d:F

    mul-float/2addr v4, v7

    add-float/2addr v4, v6

    .line 187
    float-to-int v0, v4

    move/from16 v20, v0

    .line 188
    new-instance v21, Landroid/graphics/Matrix;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Matrix;-><init>()V

    .line 189
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v22, v0

    .line 191
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->g:Z

    if-eqz v4, :cond_0

    .line 192
    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v6}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->premultiply([III)V

    .line 194
    :cond_0
    const/4 v4, 0x0

    move v14, v4

    :goto_0
    move/from16 v0, p3

    if-ge v14, v0, :cond_9

    .line 195
    const/4 v4, 0x0

    move v12, v4

    move v13, v5

    :goto_1
    move/from16 v0, p2

    if-ge v12, v0, :cond_8

    .line 196
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 197
    const/4 v5, 0x0

    .line 198
    const/4 v4, 0x0

    move v10, v8

    move v11, v9

    move v8, v6

    move v9, v7

    move v6, v4

    move v7, v5

    :goto_2
    move/from16 v0, v20

    if-ge v6, v0, :cond_6

    .line 200
    int-to-float v4, v6

    move/from16 v0, v20

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 202
    const/4 v5, 0x0

    int-to-float v0, v12

    move/from16 v23, v0

    aput v23, v22, v5

    .line 203
    const/4 v5, 0x1

    int-to-float v0, v14

    move/from16 v23, v0

    aput v23, v22, v5

    .line 204
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Matrix;->reset()V

    .line 205
    move/from16 v0, v16

    int-to-float v5, v0

    mul-float v23, v4, v18

    add-float v5, v5, v23

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v24, v4, v19

    add-float v23, v23, v24

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 206
    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->d:F

    move/from16 v23, v0

    mul-float v23, v23, v4

    sub-float v5, v5, v23

    .line 207
    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 209
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    const/16 v23, 0x0

    cmpl-float v5, v5, v23

    if-eqz v5, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    neg-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 213
    :cond_1
    move/from16 v0, v16

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v17

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 214
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 215
    const/4 v4, 0x0

    aget v4, v22, v4

    float-to-int v5, v4

    .line 216
    const/4 v4, 0x1

    aget v4, v22, v4

    float-to-int v4, v4

    .line 218
    if-ltz v5, :cond_2

    move/from16 v0, p2

    if-lt v5, v0, :cond_3

    .line 219
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->f:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 220
    move/from16 v0, p2

    invoke-static {v5, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(II)I

    move-result v5

    .line 224
    :cond_3
    if-ltz v4, :cond_4

    move/from16 v0, p3

    if-lt v4, v0, :cond_5

    .line 225
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->f:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 226
    move/from16 v0, p3

    invoke-static {v4, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(II)I

    move-result v4

    .line 231
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 232
    mul-int v4, v4, p2

    add-int/2addr v4, v5

    aget v4, p1, v4

    .line 233
    shr-int/lit8 v5, v4, 0x18

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v11, v5

    .line 234
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v10, v5

    .line 235
    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v9, v5

    .line 236
    and-int/lit16 v4, v4, 0xff

    add-int v5, v8, v4

    .line 198
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v8, v5

    goto/16 :goto_2

    .line 238
    :cond_6
    if-nez v7, :cond_7

    .line 239
    aget v4, p1, v13

    aput v4, v15, v13

    .line 247
    :goto_3
    add-int/lit8 v5, v13, 0x1

    .line 195
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move v13, v5

    goto/16 :goto_1

    .line 241
    :cond_7
    div-int v4, v11, v7

    invoke-static {v4}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v4

    .line 242
    div-int v5, v10, v7

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 243
    div-int v6, v9, v7

    invoke-static {v6}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    .line 244
    div-int v7, v8, v7

    invoke-static {v7}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v7

    .line 245
    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v7

    aput v4, v15, v13

    goto :goto_3

    .line 194
    :cond_8
    add-int/lit8 v4, v14, 0x1

    move v14, v4

    move v5, v13

    goto/16 :goto_0

    .line 250
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->g:Z

    if-eqz v4, :cond_a

    .line 251
    const/4 v4, 0x0

    move-object/from16 v0, p1

    array-length v5, v0

    invoke-static {v15, v4, v5}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->unpremultiply([III)V

    .line 253
    :cond_a
    return-object v15
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->a:F

    return v0
.end method

.method public getDistance()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    return v0
.end method

.method public getPremultiplyAlpha()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->g:Z

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    return v0
.end method

.method public getWrapEdges()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->f:Z

    return v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->d:F

    return v0
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->a:F

    .line 67
    return-void
.end method

.method public setDistance(F)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->c:F

    .line 85
    return-void
.end method

.method public setPremultiplyAlpha(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->g:Z

    .line 157
    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->e:F

    .line 103
    return-void
.end method

.method public setWrapEdges(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->f:Z

    .line 139
    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/MotionBlurFilter;->d:F

    .line 121
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const-string v0, "Blur/Motion Blur..."

    return-object v0
.end method
