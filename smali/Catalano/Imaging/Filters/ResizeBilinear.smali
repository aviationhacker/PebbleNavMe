.class public LCatalano/Imaging/Filters/ResizeBilinear;
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
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    .line 93
    iput p2, p0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    .line 94
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 32

    .prologue
    .line 99
    new-instance v2, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 101
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 104
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 105
    int-to-double v6, v3

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    int-to-double v8, v5

    div-double v10, v6, v8

    .line 106
    int-to-double v6, v4

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    int-to-double v8, v5

    div-double v12, v6, v8

    .line 112
    add-int/lit8 v9, v4, -0x1

    .line 113
    add-int/lit8 v14, v3, -0x1

    .line 118
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    if-ge v3, v4, :cond_3

    .line 121
    int-to-double v4, v3

    mul-double v6, v4, v12

    .line 122
    double-to-int v5, v6

    .line 123
    if-ne v5, v9, :cond_0

    move v4, v5

    .line 124
    :goto_1
    int-to-double v0, v5

    move-wide/from16 v16, v0

    sub-double v16, v6, v16

    .line 125
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v18, v6, v16

    .line 131
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    if-ge v6, v7, :cond_2

    .line 133
    int-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v20, v20, v10

    .line 134
    move-wide/from16 v0, v20

    double-to-int v8, v0

    .line 135
    if-ne v8, v14, :cond_1

    move v7, v8

    .line 136
    :goto_3
    int-to-double v0, v8

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    .line 137
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    sub-double v22, v22, v20

    .line 140
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v15

    .line 141
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v24

    .line 142
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    .line 143
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 145
    int-to-double v0, v15

    move-wide/from16 v26, v0

    mul-double v26, v26, v22

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v20

    add-double v24, v24, v26

    mul-double v24, v24, v18

    int-to-double v0, v8

    move-wide/from16 v26, v0

    mul-double v22, v22, v26

    int-to-double v0, v7

    move-wide/from16 v26, v0

    mul-double v20, v20, v26

    add-double v20, v20, v22

    mul-double v20, v20, v16

    add-double v20, v20, v24

    move-wide/from16 v0, v20

    double-to-int v7, v0

    .line 149
    invoke-virtual {v2, v3, v6, v7}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 123
    :cond_0
    add-int/lit8 v4, v5, 0x1

    goto :goto_1

    .line 135
    :cond_1
    add-int/lit8 v7, v8, 0x1

    goto :goto_3

    .line 118
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 153
    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 230
    :goto_4
    return-void

    .line 156
    :cond_4
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 157
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 158
    int-to-double v6, v3

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    int-to-double v8, v5

    div-double v12, v6, v8

    .line 159
    int-to-double v6, v4

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    int-to-double v8, v5

    div-double v14, v6, v8

    .line 165
    add-int/lit8 v11, v4, -0x1

    .line 166
    add-int/lit8 v16, v3, -0x1

    .line 171
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    if-ge v3, v4, :cond_8

    .line 174
    int-to-double v4, v3

    mul-double v6, v4, v14

    .line 175
    double-to-int v9, v6

    .line 176
    if-ne v9, v11, :cond_5

    move v8, v9

    .line 177
    :goto_6
    int-to-double v4, v9

    sub-double v18, v6, v4

    .line 178
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v20, v4, v18

    .line 184
    const/4 v4, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    if-ge v4, v5, :cond_7

    .line 186
    int-to-double v6, v4

    mul-double v22, v6, v12

    .line 187
    move-wide/from16 v0, v22

    double-to-int v10, v0

    .line 188
    move/from16 v0, v16

    if-ne v10, v0, :cond_6

    move v7, v10

    .line 189
    :goto_8
    int-to-double v0, v10

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    .line 190
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    sub-double v24, v24, v22

    .line 193
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v5

    .line 194
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v7}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v17

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v26

    .line 198
    int-to-double v0, v5

    move-wide/from16 v28, v0

    mul-double v28, v28, v24

    int-to-double v0, v6

    move-wide/from16 v30, v0

    mul-double v30, v30, v22

    add-double v28, v28, v30

    mul-double v28, v28, v20

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v24

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v22

    add-double v26, v26, v30

    mul-double v26, v26, v18

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v5, v0

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v6

    .line 204
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v7}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v17

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v26

    .line 206
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v27

    .line 208
    int-to-double v0, v6

    move-wide/from16 v28, v0

    mul-double v28, v28, v24

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v22

    add-double v28, v28, v30

    mul-double v28, v28, v20

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v30, v30, v24

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v22

    add-double v26, v26, v30

    mul-double v26, v26, v18

    add-double v26, v26, v28

    move-wide/from16 v0, v26

    double-to-int v6, v0

    .line 213
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v17

    .line 214
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v7}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v26

    .line 215
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v7

    .line 218
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v28, v28, v24

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    mul-double v26, v26, v22

    add-double v26, v26, v28

    mul-double v26, v26, v20

    int-to-double v0, v10

    move-wide/from16 v28, v0

    mul-double v24, v24, v28

    int-to-double v0, v7

    move-wide/from16 v28, v0

    mul-double v22, v22, v28

    add-double v22, v22, v24

    mul-double v22, v22, v18

    add-double v22, v22, v26

    move-wide/from16 v0, v22

    double-to-int v7, v0

    .line 224
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 176
    :cond_5
    add-int/lit8 v4, v9, 0x1

    move v8, v4

    goto/16 :goto_6

    .line 188
    :cond_6
    add-int/lit8 v5, v10, 0x1

    move v7, v5

    goto/16 :goto_8

    .line 171
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 227
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 228
    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->recycle()V

    goto/16 :goto_4
.end method

.method public getNewHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    return v0
.end method

.method public getNewWidth()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    return v0
.end method

.method public setNewHeight(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    .line 74
    return-void
.end method

.method public setNewSize(II)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    .line 83
    iput p2, p0, LCatalano/Imaging/Filters/ResizeBilinear;->b:I

    .line 84
    return-void
.end method

.method public setNewWidth(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, LCatalano/Imaging/Filters/ResizeBilinear;->a:I

    .line 58
    return-void
.end method
