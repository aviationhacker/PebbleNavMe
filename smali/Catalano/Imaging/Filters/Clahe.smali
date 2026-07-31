.class public LCatalano/Imaging/Filters/Clahe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:LCatalano/Imaging/Filters/Grayscale$Algorithm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x3f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 42
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    .line 44
    sget-object v0, LCatalano/Imaging/Filters/Grayscale$Algorithm;->Average:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 123
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x3f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 42
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    .line 44
    sget-object v0, LCatalano/Imaging/Filters/Grayscale$Algorithm;->Average:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 131
    iput p1, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 132
    iput p2, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 133
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x3f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 42
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    .line 44
    sget-object v0, LCatalano/Imaging/Filters/Grayscale$Algorithm;->Average:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 142
    iput p1, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 143
    iput p2, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 144
    iput p3, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    .line 145
    return-void
.end method

.method public constructor <init>(IIFLCatalano/Imaging/Filters/Grayscale$Algorithm;)V
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/16 v0, 0x3f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 42
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 43
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    .line 44
    sget-object v0, LCatalano/Imaging/Filters/Grayscale$Algorithm;->Average:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    iput-object v0, p0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 155
    iput p1, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 156
    iput p2, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 157
    iput p3, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    .line 158
    iput-object p4, p0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 159
    return-void
.end method

.method private a(F)I
    .locals 1

    .prologue
    .line 369
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 21

    .prologue
    .line 164
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 165
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 167
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 168
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v10, :cond_1b

    .line 170
    filled-new-array {v10, v9}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    .line 172
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    sub-int v3, v8, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 173
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x1

    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 174
    sub-int v12, v11, v6

    .line 176
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    neg-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 177
    add-int/lit8 v2, v9, -0x1

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 179
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v2, v2, 0x1

    new-array v13, v2, [I

    .line 180
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v2, v2, 0x1

    new-array v14, v2, [I

    move v4, v6

    .line 182
    :goto_1
    if-ge v4, v11, :cond_1

    move v2, v3

    .line 183
    :goto_2
    if-ge v2, v5, :cond_0

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v15, 0x437f0000    # 255.0f

    div-float/2addr v7, v15

    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    int-to-float v15, v15

    mul-float/2addr v7, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v7

    aget v15, v13, v7

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v7

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 182
    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 186
    :cond_1
    const/4 v2, 0x0

    move v7, v2

    :goto_3
    if-ge v7, v9, :cond_b

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v15

    .line 190
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    sub-int v3, v7, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 191
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x1

    .line 192
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v2

    .line 193
    mul-int/2addr v4, v12

    .line 195
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->c:F

    int-to-float v4, v4

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v16, v0

    .line 198
    if-lez v2, :cond_2

    .line 199
    add-int/lit8 v4, v2, -0x1

    move v2, v6

    .line 200
    :goto_4
    if-ge v2, v11, :cond_2

    .line 201
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v17, 0x437f0000    # 255.0f

    div-float v5, v5, v17

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v5, v5, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v5

    aget v17, v13, v5

    add-int/lit8 v17, v17, -0x1

    aput v17, v13, v5

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 205
    :cond_2
    if-gt v3, v9, :cond_3

    .line 206
    add-int/lit8 v3, v3, -0x1

    move v2, v6

    .line 207
    :goto_5
    if-ge v2, v11, :cond_3

    .line 208
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v4

    aget v5, v13, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v13, v4

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 211
    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v13

    invoke-static {v13, v2, v14, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    const/4 v2, 0x0

    .line 216
    :goto_6
    const/4 v4, 0x0

    .line 217
    const/4 v3, 0x0

    move/from16 v20, v3

    move v3, v4

    move/from16 v4, v20

    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    if-gt v4, v5, :cond_4

    .line 218
    aget v5, v14, v4

    sub-int v5, v5, v16

    .line 219
    if-lez v5, :cond_1f

    .line 220
    add-int/2addr v5, v3

    .line 221
    aput v16, v14, v4

    .line 217
    :goto_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_7

    .line 225
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v4, v4, 0x1

    div-int v5, v3, v4

    .line 226
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v4, v4, 0x1

    rem-int v17, v3, v4

    .line 227
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v4, v0, :cond_5

    .line 228
    aget v18, v14, v4

    add-int v18, v18, v5

    aput v18, v14, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 230
    :cond_5
    if-eqz v17, :cond_6

    .line 231
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    div-int v5, v4, v17

    .line 232
    const/4 v4, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-gt v4, v0, :cond_6

    .line 233
    aget v17, v14, v4

    add-int/lit8 v17, v17, 0x1

    aput v17, v14, v4

    .line 232
    add-int/2addr v4, v5

    goto :goto_a

    .line 236
    :cond_6
    if-ne v3, v2, :cond_1e

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 240
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_8

    .line 241
    aget v4, v14, v3

    if-eqz v4, :cond_7

    move v2, v3

    .line 240
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 243
    :cond_8
    const/4 v5, 0x0

    move v3, v2

    .line 244
    :goto_c
    if-gt v3, v15, :cond_9

    .line 245
    aget v4, v14, v3

    add-int/2addr v5, v4

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 248
    :cond_9
    add-int/lit8 v3, v15, 0x1

    move v4, v5

    :goto_d
    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    if-gt v3, v15, :cond_a

    .line 249
    aget v15, v14, v3

    add-int/2addr v4, v15

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 251
    :cond_a
    aget v2, v14, v2

    .line 253
    aget-object v3, v1, v8

    sub-int/2addr v5, v2

    int-to-float v5, v5

    sub-int v2, v4, v2

    int-to-float v2, v2

    div-float v2, v5, v2

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v2

    aput v2, v3, v7

    .line 186
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_3

    .line 256
    :cond_b
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v9, :cond_c

    .line 257
    aget-object v3, v1, v8

    aget v3, v3, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v2, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 168
    :cond_c
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0

    .line 263
    :cond_d
    new-instance v11, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 265
    new-instance v1, LCatalano/Imaging/Filters/Grayscale;

    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    invoke-direct {v1, v2}, LCatalano/Imaging/Filters/Grayscale;-><init>(LCatalano/Imaging/Filters/Grayscale$Algorithm;)V

    .line 266
    invoke-virtual {v1, v11}, LCatalano/Imaging/Filters/Grayscale;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 268
    filled-new-array {v10, v9}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[I

    .line 270
    const/4 v2, 0x0

    :goto_f
    if-ge v2, v10, :cond_1b

    .line 272
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    sub-int v3, v2, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 273
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 274
    sub-int v13, v12, v6

    .line 276
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    neg-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 277
    add-int/lit8 v1, v9, -0x1

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 279
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v1, v1, 0x1

    new-array v14, v1, [I

    .line 280
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v1, v1, 0x1

    new-array v15, v1, [I

    move v4, v6

    .line 282
    :goto_10
    if-ge v4, v12, :cond_f

    move v1, v3

    .line 283
    :goto_11
    if-ge v1, v5, :cond_e

    .line 284
    invoke-virtual {v11, v4, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-float v8, v8

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v8, v8, v16

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v8, v8, v16

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v8

    aget v16, v14, v8

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v8

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 282
    :cond_e
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_10

    .line 286
    :cond_f
    const/4 v1, 0x0

    move v8, v1

    :goto_12
    if-ge v8, v9, :cond_19

    .line 288
    invoke-virtual {v11, v2, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v16

    .line 290
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    sub-int v3, v8, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 291
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Clahe;->a:I

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x1

    .line 292
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int/2addr v4, v1

    .line 293
    mul-int/2addr v4, v13

    .line 295
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->c:F

    int-to-float v4, v4

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v17, v0

    .line 298
    if-lez v1, :cond_10

    .line 299
    add-int/lit8 v4, v1, -0x1

    move v1, v6

    .line 300
    :goto_13
    if-ge v1, v12, :cond_10

    .line 301
    invoke-virtual {v11, v1, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v5, v5, v18

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v5, v5, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v5

    aget v18, v14, v5

    add-int/lit8 v18, v18, -0x1

    aput v18, v14, v5

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 305
    :cond_10
    if-gt v3, v9, :cond_11

    .line 306
    add-int/lit8 v3, v3, -0x1

    move v1, v6

    .line 307
    :goto_14
    if-ge v1, v12, :cond_11

    .line 308
    invoke-virtual {v11, v1, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v4

    aget v5, v14, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v14, v4

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 311
    :cond_11
    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, v14

    invoke-static {v14, v1, v15, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    const/4 v1, 0x0

    .line 315
    :goto_15
    const/4 v4, 0x0

    .line 316
    const/4 v3, 0x0

    move/from16 v20, v3

    move v3, v4

    move/from16 v4, v20

    :goto_16
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    if-gt v4, v5, :cond_12

    .line 317
    aget v5, v15, v4

    sub-int v5, v5, v17

    .line 318
    if-lez v5, :cond_1d

    .line 319
    add-int/2addr v5, v3

    .line 320
    aput v17, v15, v4

    .line 316
    :goto_17
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_16

    .line 324
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v4, v4, 0x1

    div-int v5, v3, v4

    .line 325
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    add-int/lit8 v4, v4, 0x1

    rem-int v18, v3, v4

    .line 326
    const/4 v4, 0x0

    :goto_18
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v4, v0, :cond_13

    .line 327
    aget v19, v15, v4

    add-int v19, v19, v5

    aput v19, v15, v4

    .line 326
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 329
    :cond_13
    if-eqz v18, :cond_14

    .line 330
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    div-int v5, v4, v18

    .line 331
    const/4 v4, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-gt v4, v0, :cond_14

    .line 332
    aget v18, v15, v4

    add-int/lit8 v18, v18, 0x1

    aput v18, v15, v4

    .line 331
    add-int/2addr v4, v5

    goto :goto_19

    .line 335
    :cond_14
    if-ne v3, v1, :cond_1c

    .line 338
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 339
    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v1, :cond_16

    .line 340
    aget v4, v15, v3

    if-eqz v4, :cond_15

    move v1, v3

    .line 339
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 342
    :cond_16
    const/4 v5, 0x0

    move v3, v1

    .line 343
    :goto_1b
    move/from16 v0, v16

    if-gt v3, v0, :cond_17

    .line 344
    aget v4, v15, v3

    add-int/2addr v5, v4

    .line 343
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 347
    :cond_17
    add-int/lit8 v3, v16, 0x1

    move v4, v5

    :goto_1c
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Clahe;->b:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v3, v0, :cond_18

    .line 348
    aget v16, v15, v3

    add-int v4, v4, v16

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 350
    :cond_18
    aget v1, v15, v1

    .line 352
    aget-object v3, v7, v2

    sub-int/2addr v5, v1

    int-to-float v5, v5

    sub-int v1, v4, v1

    int-to-float v1, v1

    div-float v1, v5, v1

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v1

    aput v1, v3, v8

    .line 286
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_12

    .line 355
    :cond_19
    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v9, :cond_1a

    .line 356
    aget-object v1, v7, v2

    aget v1, v1, v3

    int-to-float v1, v1

    invoke-virtual {v11, v2, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 358
    const/4 v4, 0x0

    const/16 v5, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 359
    const/4 v5, 0x0

    const/16 v6, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    .line 360
    const/4 v6, 0x0

    const/16 v8, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v1, v12

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Clahe;->a(F)I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 362
    float-to-int v4, v4

    float-to-int v5, v5

    float-to-int v6, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 355
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 270
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    .line 366
    :cond_1b
    return-void

    :cond_1c
    move v1, v3

    goto/16 :goto_15

    :cond_1d
    move v5, v3

    goto/16 :goto_17

    :cond_1e
    move v2, v3

    goto/16 :goto_6

    :cond_1f
    move v5, v3

    goto/16 :goto_8
.end method

.method public getAlgorithm()LCatalano/Imaging/Filters/Grayscale$Algorithm;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    return-object v0
.end method

.method public getBins()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    return v0
.end method

.method public getBlockRadius()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    return v0
.end method

.method public getSlope()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    return v0
.end method

.method public setAlgorithm(LCatalano/Imaging/Filters/Grayscale$Algorithm;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, LCatalano/Imaging/Filters/Clahe;->d:LCatalano/Imaging/Filters/Grayscale$Algorithm;

    .line 118
    return-void
.end method

.method public setBins(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, LCatalano/Imaging/Filters/Clahe;->b:I

    .line 80
    return-void
.end method

.method public setBlockRadius(I)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, LCatalano/Imaging/Filters/Clahe;->a:I

    .line 64
    return-void
.end method

.method public setSlope(F)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, LCatalano/Imaging/Filters/Clahe;->c:F

    .line 102
    return-void
.end method
