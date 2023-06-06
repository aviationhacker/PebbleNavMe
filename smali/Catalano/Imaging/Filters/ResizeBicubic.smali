.class public LCatalano/Imaging/Filters/ResizeBicubic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    .line 96
    iput p2, p0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    .line 97
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 32

    .prologue
    .line 102
    new-instance v2, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 104
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 106
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 107
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 108
    int-to-double v6, v3

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    int-to-double v8, v5

    div-double v12, v6, v8

    .line 109
    int-to-double v6, v4

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    int-to-double v8, v5

    div-double v14, v6, v8

    .line 116
    add-int/lit8 v6, v4, -0x1

    .line 117
    add-int/lit8 v8, v3, -0x1

    .line 119
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    if-ge v3, v4, :cond_7

    .line 122
    int-to-double v4, v3

    mul-double/2addr v4, v14

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v10

    .line 123
    double-to-int v0, v4

    move/from16 v16, v0

    .line 124
    move/from16 v0, v16

    int-to-double v10, v0

    sub-double v18, v4, v10

    .line 126
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    if-ge v4, v5, :cond_6

    .line 129
    int-to-double v10, v4

    mul-double/2addr v10, v12

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v10, v10, v20

    .line 130
    double-to-int v0, v10

    move/from16 v17, v0

    .line 131
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v10, v20

    .line 133
    const/4 v9, 0x0

    .line 135
    const/4 v5, -0x1

    move v11, v5

    :goto_2
    const/4 v5, 0x3

    if-ge v11, v5, :cond_5

    .line 137
    int-to-double v0, v11

    move-wide/from16 v22, v0

    sub-double v22, v18, v22

    invoke-static/range {v22 .. v23}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v22

    .line 139
    add-int v5, v16, v11

    .line 140
    if-gez v5, :cond_0

    .line 141
    const/4 v5, 0x0

    .line 142
    :cond_0
    if-le v5, v6, :cond_1

    move v5, v6

    .line 145
    :cond_1
    const/4 v7, -0x1

    move v10, v9

    move v9, v7

    :goto_3
    const/4 v7, 0x3

    if-ge v9, v7, :cond_4

    .line 148
    int-to-double v0, v9

    move-wide/from16 v24, v0

    sub-double v24, v24, v20

    invoke-static/range {v24 .. v25}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v24

    mul-double v24, v24, v22

    .line 150
    add-int v7, v17, v9

    .line 151
    if-gez v7, :cond_2

    .line 152
    const/4 v7, 0x0

    .line 153
    :cond_2
    if-le v7, v8, :cond_3

    move v7, v8

    .line 156
    :cond_3
    int-to-double v0, v10

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v0, v7

    move-wide/from16 v28, v0

    mul-double v24, v24, v28

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v10, v0

    .line 145
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_3

    .line 135
    :cond_4
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v9, v10

    goto :goto_2

    .line 160
    :cond_5
    const/4 v5, 0x0

    const/16 v7, 0xff

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 162
    invoke-virtual {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 119
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 167
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 168
    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 239
    :goto_4
    return-void

    .line 171
    :cond_8
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 172
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 173
    int-to-double v6, v3

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    int-to-double v8, v5

    div-double v14, v6, v8

    .line 174
    int-to-double v6, v4

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    int-to-double v8, v5

    div-double v16, v6, v8

    .line 181
    add-int/lit8 v8, v4, -0x1

    .line 182
    add-int/lit8 v9, v3, -0x1

    .line 184
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    if-ge v3, v4, :cond_10

    .line 187
    int-to-double v4, v3

    mul-double v4, v4, v16

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v4, v6

    .line 188
    double-to-int v0, v4

    move/from16 v18, v0

    .line 189
    move/from16 v0, v18

    int-to-double v6, v0

    sub-double v20, v4, v6

    .line 191
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    if-ge v4, v5, :cond_f

    .line 194
    int-to-double v6, v4

    mul-double/2addr v6, v14

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v6, v10

    .line 195
    double-to-int v0, v6

    move/from16 v19, v0

    .line 196
    move/from16 v0, v19

    int-to-double v10, v0

    sub-double v22, v6, v10

    .line 199
    const/4 v7, 0x0

    .line 201
    const/4 v5, -0x1

    move v13, v5

    move v10, v7

    move v11, v7

    :goto_7
    const/4 v5, 0x3

    if-ge v13, v5, :cond_e

    .line 204
    int-to-double v0, v13

    move-wide/from16 v24, v0

    sub-double v24, v20, v24

    invoke-static/range {v24 .. v25}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v24

    .line 206
    add-int v5, v18, v13

    .line 207
    if-gez v5, :cond_9

    .line 208
    const/4 v5, 0x0

    .line 209
    :cond_9
    if-le v5, v8, :cond_a

    move v5, v8

    .line 212
    :cond_a
    const/4 v6, -0x1

    move v12, v11

    move v11, v10

    move v10, v7

    move v7, v6

    :goto_8
    const/4 v6, 0x3

    if-ge v7, v6, :cond_d

    .line 215
    int-to-double v0, v7

    move-wide/from16 v26, v0

    sub-double v26, v26, v22

    invoke-static/range {v26 .. v27}, LCatalano/Imaging/Tools/Interpolation;->BiCubicKernel(D)D

    move-result-wide v26

    mul-double v26, v26, v24

    .line 217
    add-int v6, v19, v7

    .line 218
    if-gez v6, :cond_b

    .line 219
    const/4 v6, 0x0

    .line 220
    :cond_b
    if-le v6, v9, :cond_c

    move v6, v9

    .line 223
    :cond_c
    int-to-double v0, v12

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v12

    int-to-double v0, v12

    move-wide/from16 v30, v0

    mul-double v30, v30, v26

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v12, v0

    .line 224
    int-to-double v0, v11

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v11

    int-to-double v0, v11

    move-wide/from16 v30, v0

    mul-double v30, v30, v26

    add-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v11, v0

    .line 225
    int-to-double v0, v10

    move-wide/from16 v28, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v6

    int-to-double v0, v6

    move-wide/from16 v30, v0

    mul-double v26, v26, v30

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v10, v0

    .line 212
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_8

    .line 201
    :cond_d
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    move v7, v10

    move v10, v11

    move v11, v12

    goto :goto_7

    .line 229
    :cond_e
    const/4 v5, 0x0

    const/16 v6, 0xff

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 230
    const/4 v6, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 231
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 233
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 184
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 236
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 237
    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->recycle()V

    goto/16 :goto_4
.end method

.method public getNewHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    return v0
.end method

.method public getNewWidth()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    return v0
.end method

.method public setNewHeight(I)V
    .locals 0

    .prologue
    .line 76
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    .line 77
    return-void
.end method

.method public setNewSize(II)V
    .locals 0

    .prologue
    .line 85
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    .line 86
    iput p2, p0, LCatalano/Imaging/Filters/ResizeBicubic;->b:I

    .line 87
    return-void
.end method

.method public setNewWidth(I)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBicubic;->a:I

    .line 61
    return-void
.end method
