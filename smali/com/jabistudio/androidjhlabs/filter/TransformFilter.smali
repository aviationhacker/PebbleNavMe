.class public abstract Lcom/jabistudio/androidjhlabs/filter/TransformFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BILINEAR:I = 0x1

.field public static final CLAMP:I = 0x1

.field public static final NEAREST_NEIGHBOUR:I = 0x0

.field public static final RGB_CLAMP:I = 0x3

.field public static final WRAP:I = 0x2

.field public static final ZERO:I


# instance fields
.field protected edgeAction:I

.field protected interpolation:I

.field protected originalSpace:Landroid/graphics/Rect;

.field protected transformedSpace:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->edgeAction:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->interpolation:I

    return-void
.end method

.method private final a([IIIII)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    if-ltz p2, :cond_0

    if-ge p2, p4, :cond_0

    if-ltz p3, :cond_0

    if-lt p3, p5, :cond_1

    .line 193
    :cond_0
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->edgeAction:I

    packed-switch v1, :pswitch_data_0

    .line 205
    :goto_0
    return v0

    .line 198
    :pswitch_0
    invoke-static {p3, p5}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(II)I

    move-result v0

    mul-int/2addr v0, p4

    invoke-static {p2, p4}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(II)I

    move-result v1

    add-int/2addr v0, v1

    aget v0, p1, v0

    goto :goto_0

    .line 200
    :pswitch_1
    add-int/lit8 v1, p5, -0x1

    invoke-static {p3, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    mul-int/2addr v1, p4

    add-int/lit8 v2, p4, -0x1

    invoke-static {p2, v0, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v0, p1, v0

    goto :goto_0

    .line 202
    :pswitch_2
    add-int/lit8 v1, p5, -0x1

    invoke-static {p3, v0, v1}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    mul-int/2addr v1, p4

    add-int/lit8 v2, p4, -0x1

    invoke-static {p2, v0, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v0

    add-int/2addr v0, v1

    aget v0, p1, v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    goto :goto_0

    .line 205
    :cond_1
    mul-int v0, p3, p4

    add-int/2addr v0, p2

    aget v0, p1, v0

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public filter([III)[I
    .locals 30

    .prologue
    .line 133
    .line 136
    const-string v4, "DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->originalSpace:Landroid/graphics/Rect;

    .line 139
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v5, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformedSpace:Landroid/graphics/Rect;

    .line 140
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformedSpace:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformSpace(Landroid/graphics/Rect;)V

    .line 142
    mul-int v4, p2, p3

    new-array v5, v4, [I

    .line 144
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->interpolation:I

    if-nez v4, :cond_1

    .line 145
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformedSpace:Landroid/graphics/Rect;

    move-object/from16 v4, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->filterPixelsNN([III[ILandroid/graphics/Rect;)[I

    move-result-object v5

    .line 188
    :cond_0
    return-object v5

    .line 149
    :cond_1
    add-int/lit8 v20, p2, -0x1

    .line 150
    add-int/lit8 v21, p3, -0x1

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformedSpace:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformedSpace:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    .line 154
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformedSpace:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformedSpace:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    .line 158
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v27, v0

    .line 159
    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 160
    const/4 v4, 0x0

    move/from16 v18, v4

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 161
    add-int v4, v25, v18

    add-int v6, v26, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v6, v1}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformInverse(II[F)V

    .line 162
    const/4 v4, 0x0

    aget v4, v27, v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v8, v6

    .line 163
    const/4 v4, 0x1

    aget v4, v27, v4

    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v9, v6

    .line 164
    const/4 v4, 0x0

    aget v4, v27, v4

    int-to-float v6, v8

    sub-float v28, v4, v6

    .line 165
    const/4 v4, 0x1

    aget v4, v27, v4

    int-to-float v6, v9

    sub-float v29, v4, v6

    .line 168
    if-ltz v8, :cond_2

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    if-ltz v9, :cond_2

    move/from16 v0, v21

    if-ge v9, v0, :cond_2

    .line 170
    mul-int v4, p2, v9

    add-int/2addr v4, v8

    .line 171
    aget v8, p1, v4

    .line 172
    add-int/lit8 v6, v4, 0x1

    aget v9, p1, v6

    .line 173
    add-int v6, v4, p2

    aget v10, p1, v6

    .line 174
    add-int v4, v4, p2

    add-int/lit8 v4, v4, 0x1

    aget v11, p1, v4

    :goto_2
    move/from16 v6, v28

    move/from16 v7, v29

    .line 182
    invoke-static/range {v6 .. v11}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->bilinearInterpolate(FFIIII)I

    move-result v4

    aput v4, v24, v18

    .line 160
    add-int/lit8 v4, v18, 0x1

    move/from16 v18, v4

    goto :goto_1

    :cond_2
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v10, p2

    move/from16 v11, p3

    .line 177
    invoke-direct/range {v6 .. v11}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->a([IIIII)I

    move-result v17

    .line 178
    add-int/lit8 v12, v8, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v13, v9

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->a([IIIII)I

    move-result v16

    .line 179
    add-int/lit8 v13, v9, 0x1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move v12, v8

    move/from16 v14, p2

    move/from16 v15, p3

    invoke-direct/range {v10 .. v15}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->a([IIIII)I

    move-result v4

    .line 180
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->a([IIIII)I

    move-result v11

    move v10, v4

    move/from16 v9, v16

    move/from16 v8, v17

    goto :goto_2

    .line 184
    :cond_3
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    .line 185
    move/from16 v0, v19

    move/from16 v1, p2

    move-object/from16 v2, v24

    invoke-static {v5, v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->setLineRGB([III[I)V

    .line 159
    :cond_4
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    goto/16 :goto_0
.end method

.method protected filterPixelsNN([III[ILandroid/graphics/Rect;)[I
    .locals 14

    .prologue
    .line 209
    .line 211
    move-object/from16 v0, p5

    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 212
    move-object/from16 v0, p5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 214
    new-array v6, v4, [I

    .line 216
    move-object/from16 v0, p5

    iget v7, v0, Landroid/graphics/Rect;->left:I

    .line 217
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->top:I

    .line 218
    const/4 v1, 0x4

    new-array v9, v1, [I

    .line 219
    const/4 v1, 0x2

    new-array v10, v1, [F

    .line 221
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_4

    .line 222
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    .line 223
    add-int v1, v7, v2

    add-int v11, v8, v3

    invoke-virtual {p0, v1, v11, v10}, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->transformInverse(II[F)V

    .line 224
    const/4 v1, 0x0

    aget v1, v10, v1

    float-to-int v1, v1

    .line 225
    const/4 v11, 0x1

    aget v11, v10, v11

    float-to-int v11, v11

    .line 227
    const/4 v12, 0x0

    aget v12, v10, v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_0

    move/from16 v0, p2

    if-ge v1, v0, :cond_0

    const/4 v12, 0x1

    aget v12, v10, v12

    const/4 v13, 0x0

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_0

    move/from16 v0, p3

    if-lt v11, v0, :cond_1

    .line 229
    :cond_0
    iget v12, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->edgeAction:I

    packed-switch v12, :pswitch_data_0

    .line 232
    const/4 v1, 0x0

    .line 243
    :goto_2
    aput v1, v6, v2

    .line 222
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 235
    :pswitch_0
    move/from16 v0, p3

    invoke-static {v11, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(II)I

    move-result v11

    mul-int v11, v11, p2

    move/from16 v0, p2

    invoke-static {v1, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mod(II)I

    move-result v1

    add-int/2addr v1, v11

    aget v1, p4, v1

    goto :goto_2

    .line 238
    :pswitch_1
    const/4 v12, 0x0

    add-int/lit8 v13, p3, -0x1

    invoke-static {v11, v12, v13}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v11

    mul-int v11, v11, p2

    const/4 v12, 0x0

    add-int/lit8 v13, p2, -0x1

    invoke-static {v1, v12, v13}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    add-int/2addr v1, v11

    aget v1, p4, v1

    goto :goto_2

    .line 241
    :pswitch_2
    const/4 v12, 0x0

    add-int/lit8 v13, p3, -0x1

    invoke-static {v11, v12, v13}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v11

    mul-int v11, v11, p2

    const/4 v12, 0x0

    add-int/lit8 v13, p2, -0x1

    invoke-static {v1, v12, v13}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    add-int/2addr v1, v11

    aget v1, p4, v1

    const v11, 0xffffff

    and-int/2addr v1, v11

    goto :goto_2

    .line 245
    :cond_1
    mul-int v11, v11, p2

    add-int/2addr v1, v11

    .line 246
    const/4 v11, 0x0

    aget v12, p4, v1

    aput v12, v9, v11

    .line 247
    aget v1, p4, v1

    aput v1, v6, v2

    goto :goto_3

    .line 250
    :cond_2
    move/from16 v0, p3

    if-ge v3, v0, :cond_3

    .line 251
    move/from16 v0, p2

    invoke-static {p1, v3, v0, v6}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->setLineRGB([III[I)V

    .line 221
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 254
    :cond_4
    return-object p1

    .line 229
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getEdgeAction()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->edgeAction:I

    return v0
.end method

.method public getInterpolation()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->interpolation:I

    return v0
.end method

.method public setEdgeAction(I)V
    .locals 0

    .prologue
    .line 87
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->edgeAction:I

    .line 88
    return-void
.end method

.method public setInterpolation(I)V
    .locals 0

    .prologue
    .line 105
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/TransformFilter;->interpolation:I

    .line 106
    return-void
.end method

.method protected abstract transformInverse(II[F)V
.end method

.method protected transformSpace(Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method
