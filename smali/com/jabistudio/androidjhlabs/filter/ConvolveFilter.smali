.class public Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CLAMP_EDGES:I

.field public static WRAP_EDGES:I

.field public static ZERO_EDGES:I


# instance fields
.field private a:I

.field protected alpha:Z

.field protected kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

.field protected premultiplyAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->ZERO_EDGES:I

    .line 36
    const/4 v0, 0x1

    sput v0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    .line 41
    const/4 v0, 0x2

    sput v0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->WRAP_EDGES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;-><init>([F)V

    .line 68
    return-void
.end method

.method public constructor <init>(II[F)V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/Kernel;

    invoke-direct {v0, p2, p1, p3}, Lcom/jabistudio/androidjhlabs/filter/Kernel;-><init>(II[F)V

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;-><init>(Lcom/jabistudio/androidjhlabs/filter/Kernel;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/jabistudio/androidjhlabs/filter/Kernel;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    .line 51
    iput-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->alpha:Z

    .line 56
    iput-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->premultiplyAlpha:Z

    .line 61
    sget v0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->a:I

    .line 93
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    .line 94
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 75
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/Kernel;

    invoke-direct {v0, v1, v1, p1}, Lcom/jabistudio/androidjhlabs/filter/Kernel;-><init>(II[F)V

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;-><init>(Lcom/jabistudio/androidjhlabs/filter/Kernel;)V

    .line 76
    return-void
.end method

.method public static convolve(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIII)V
    .locals 7

    .prologue
    .line 198
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->convolve(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V

    .line 199
    return-void
.end method

.method public static convolve(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 212
    invoke-virtual {p0}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getHeight()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 213
    invoke-static/range {p0 .. p6}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->convolveH(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    invoke-virtual {p0}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getWidth()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 215
    invoke-static/range {p0 .. p6}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->convolveV(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V

    goto :goto_0

    .line 217
    :cond_1
    invoke-static/range {p0 .. p6}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->convolveHV(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V

    goto :goto_0
.end method

.method public static convolveH(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V
    .locals 18

    .prologue
    .line 296
    const/4 v3, 0x0

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getKernelData([F)[F

    move-result-object v11

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getWidth()I

    move-result v2

    .line 299
    div-int/lit8 v12, v2, 0x2

    .line 301
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    move/from16 v0, p4

    if-ge v10, v0, :cond_7

    .line 302
    mul-int v13, v10, p3

    .line 303
    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_1
    move/from16 v0, p3

    if-ge v8, v0, :cond_6

    .line 304
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 306
    neg-int v2, v12

    move v7, v2

    :goto_2
    if-gt v7, v12, :cond_4

    .line 307
    add-int v2, v12, v7

    aget v14, v11, v2

    .line 309
    const/4 v2, 0x0

    cmpl-float v2, v14, v2

    if-eqz v2, :cond_8

    .line 310
    add-int v2, v8, v7

    .line 311
    if-gez v2, :cond_2

    .line 312
    sget v15, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v15, :cond_1

    .line 313
    const/4 v2, 0x0

    .line 322
    :cond_0
    :goto_3
    add-int/2addr v2, v13

    aget v15, p1, v2

    .line 323
    shr-int/lit8 v2, v15, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v14

    add-float/2addr v2, v3

    .line 324
    shr-int/lit8 v3, v15, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float/2addr v6, v3

    .line 325
    shr-int/lit8 v3, v15, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float/2addr v5, v3

    .line 326
    and-int/lit16 v3, v15, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v14

    add-float/2addr v3, v4

    move v4, v5

    move v5, v6

    .line 306
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 314
    :cond_1
    sget v15, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->WRAP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v15, :cond_0

    .line 315
    add-int v2, v8, p3

    rem-int v2, v2, p3

    goto :goto_3

    .line 316
    :cond_2
    move/from16 v0, p3

    if-lt v2, v0, :cond_0

    .line 317
    sget v15, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v15, :cond_3

    .line 318
    add-int/lit8 v2, p3, -0x1

    goto :goto_3

    .line 319
    :cond_3
    sget v15, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->WRAP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v15, :cond_0

    .line 320
    add-int v2, v8, p3

    rem-int v2, v2, p3

    goto :goto_3

    .line 329
    :cond_4
    if-eqz p5, :cond_5

    float-to-double v2, v3

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v14

    double-to-int v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 330
    :goto_5
    float-to-double v6, v6

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v14

    double-to-int v3, v6

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    .line 331
    float-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 332
    float-to-double v14, v4

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v4

    .line 333
    add-int/lit8 v3, v9, 0x1

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, p2, v9

    .line 303
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto/16 :goto_1

    .line 329
    :cond_5
    const/16 v2, 0xff

    goto :goto_5

    .line 301
    :cond_6
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v3, v9

    goto/16 :goto_0

    .line 336
    :cond_7
    return-void

    :cond_8
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_4
.end method

.method public static convolveHV(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V
    .locals 20

    .prologue
    .line 231
    const/4 v11, 0x0

    .line 232
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getKernelData([F)[F

    move-result-object v13

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getHeight()I

    move-result v2

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getWidth()I

    move-result v14

    .line 236
    div-int/lit8 v15, v2, 0x2

    .line 237
    div-int/lit8 v16, v14, 0x2

    .line 239
    const/4 v2, 0x0

    move v12, v2

    move v2, v11

    :goto_0
    move/from16 v0, p4

    if-ge v12, v0, :cond_9

    .line 240
    const/4 v4, 0x0

    move v11, v2

    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_8

    .line 241
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 243
    neg-int v2, v15

    move v10, v2

    :goto_2
    if-gt v10, v15, :cond_6

    .line 244
    add-int v2, v12, v10

    .line 246
    if-ltz v2, :cond_2

    move/from16 v0, p4

    if-ge v2, v0, :cond_2

    .line 247
    mul-int v2, v2, p3

    .line 254
    :goto_3
    add-int v3, v10, v15

    mul-int/2addr v3, v14

    add-int v17, v3, v16

    .line 255
    move/from16 v0, v16

    neg-int v3, v0

    move v9, v3

    :goto_4
    move/from16 v0, v16

    if-gt v9, v0, :cond_5

    .line 256
    add-int v3, v17, v9

    aget v18, v13, v3

    .line 258
    const/4 v3, 0x0

    cmpl-float v3, v18, v3

    if-eqz v3, :cond_a

    .line 259
    add-int v3, v4, v9

    .line 260
    if-ltz v3, :cond_0

    move/from16 v0, p3

    if-lt v3, v0, :cond_1

    .line 261
    :cond_0
    sget v3, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v3, :cond_4

    move v3, v4

    .line 268
    :cond_1
    :goto_5
    add-int/2addr v3, v2

    aget v19, p1, v3

    .line 269
    shr-int/lit8 v3, v19, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float v3, v3, v18

    add-float/2addr v3, v5

    .line 270
    shr-int/lit8 v5, v19, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float v5, v5, v18

    add-float/2addr v8, v5

    .line 271
    shr-int/lit8 v5, v19, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float v5, v5, v18

    add-float/2addr v7, v5

    .line 272
    move/from16 v0, v19

    and-int/lit16 v5, v0, 0xff

    int-to-float v5, v5

    mul-float v5, v5, v18

    add-float/2addr v5, v6

    move v6, v7

    move v7, v8

    .line 255
    :goto_6
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    goto :goto_4

    .line 248
    :cond_2
    sget v3, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v3, :cond_3

    .line 249
    mul-int v2, v12, p3

    goto :goto_3

    .line 250
    :cond_3
    sget v3, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->WRAP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v3, :cond_5

    .line 251
    add-int v2, v2, p4

    rem-int v2, v2, p4

    mul-int v2, v2, p3

    goto :goto_3

    .line 263
    :cond_4
    sget v3, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->WRAP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v3, :cond_a

    .line 264
    add-int v3, v4, p3

    rem-int v3, v3, p3

    goto :goto_5

    .line 243
    :cond_5
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_2

    .line 276
    :cond_6
    if-eqz p5, :cond_7

    float-to-double v2, v5

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v18

    double-to-int v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 277
    :goto_7
    float-to-double v8, v8

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v18

    double-to-int v3, v8

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 278
    float-to-double v8, v7

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v18

    double-to-int v3, v8

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v7

    .line 279
    float-to-double v8, v6

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v8, v8, v18

    double-to-int v3, v8

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    .line 280
    add-int/lit8 v3, v11, 0x1

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v5, v7, 0x8

    or-int/2addr v2, v5

    or-int/2addr v2, v6

    aput v2, p2, v11

    .line 240
    add-int/lit8 v4, v4, 0x1

    move v11, v3

    goto/16 :goto_1

    .line 276
    :cond_7
    const/16 v2, 0xff

    goto :goto_7

    .line 239
    :cond_8
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v2, v11

    goto/16 :goto_0

    .line 283
    :cond_9
    return-void

    :cond_a
    move v3, v5

    move v5, v6

    move v6, v7

    move v7, v8

    goto :goto_6
.end method

.method public static convolveV(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V
    .locals 18

    .prologue
    .line 349
    const/4 v3, 0x0

    .line 350
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getKernelData([F)[F

    move-result-object v11

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getHeight()I

    move-result v2

    .line 352
    div-int/lit8 v12, v2, 0x2

    .line 354
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    move/from16 v0, p4

    if-ge v10, v0, :cond_9

    .line 355
    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    :goto_1
    move/from16 v0, p3

    if-ge v8, v0, :cond_8

    .line 356
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 358
    neg-int v2, v12

    move v7, v2

    :goto_2
    if-gt v7, v12, :cond_6

    .line 359
    add-int v2, v10, v7

    .line 361
    if-gez v2, :cond_2

    .line 362
    sget v13, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v13, :cond_0

    .line 363
    const/4 v2, 0x0

    .line 378
    :goto_3
    add-int v13, v7, v12

    aget v13, v11, v13

    .line 380
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    if-eqz v14, :cond_a

    .line 381
    add-int/2addr v2, v8

    aget v14, p1, v2

    .line 382
    shr-int/lit8 v2, v14, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    mul-float/2addr v2, v13

    add-float/2addr v2, v3

    .line 383
    shr-int/lit8 v3, v14, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v13

    add-float/2addr v6, v3

    .line 384
    shr-int/lit8 v3, v14, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v13

    add-float/2addr v5, v3

    .line 385
    and-int/lit16 v3, v14, 0xff

    int-to-float v3, v3

    mul-float/2addr v3, v13

    add-float/2addr v3, v4

    move v4, v5

    move v5, v6

    .line 358
    :goto_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 364
    :cond_0
    sget v13, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->WRAP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v13, :cond_1

    .line 365
    add-int v2, v10, p4

    rem-int v2, v2, p4

    mul-int v2, v2, p3

    goto :goto_3

    .line 367
    :cond_1
    mul-int v2, v2, p3

    goto :goto_3

    .line 368
    :cond_2
    move/from16 v0, p4

    if-lt v2, v0, :cond_5

    .line 369
    sget v13, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->CLAMP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v13, :cond_3

    .line 370
    add-int/lit8 v2, p4, -0x1

    mul-int v2, v2, p3

    goto :goto_3

    .line 371
    :cond_3
    sget v13, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->WRAP_EDGES:I

    move/from16 v0, p6

    if-ne v0, v13, :cond_4

    .line 372
    add-int v2, v10, p4

    rem-int v2, v2, p4

    mul-int v2, v2, p3

    goto :goto_3

    .line 374
    :cond_4
    mul-int v2, v2, p3

    goto :goto_3

    .line 376
    :cond_5
    mul-int v2, v2, p3

    goto :goto_3

    .line 388
    :cond_6
    if-eqz p5, :cond_7

    float-to-double v2, v3

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v14

    double-to-int v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 389
    :goto_5
    float-to-double v6, v6

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v14

    double-to-int v3, v6

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    .line 390
    float-to-double v14, v5

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 391
    float-to-double v14, v4

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v3, v14

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v4

    .line 392
    add-int/lit8 v3, v9, 0x1

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, p2, v9

    .line 355
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v9, v3

    goto/16 :goto_1

    .line 388
    :cond_7
    const/16 v2, 0xff

    goto :goto_5

    .line 354
    :cond_8
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v3, v9

    goto/16 :goto_0

    .line 395
    :cond_9
    return-void

    :cond_a
    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto/16 :goto_4
.end method


# virtual methods
.method public filter([III)[I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 169
    .line 172
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 173
    mul-int v0, p2, p3

    new-array v2, v0, [I

    .line 176
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->premultiplyAlpha:Z

    if-eqz v0, :cond_0

    .line 177
    array-length v0, p1

    invoke-static {p1, v7, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->premultiply([III)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v5, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->alpha:Z

    iget v6, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->a:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->convolve(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZI)V

    .line 181
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->premultiplyAlpha:Z

    if-eqz v0, :cond_1

    .line 182
    array-length v0, v2

    invoke-static {v2, v7, v0}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->unpremultiply([III)V

    .line 184
    :cond_1
    return-object v2
.end method

.method public getEdgeAction()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->a:I

    return v0
.end method

.method public getKernel()Lcom/jabistudio/androidjhlabs/filter/Kernel;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    return-object v0
.end method

.method public getPremultiplyAlpha()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->premultiplyAlpha:Z

    return v0
.end method

.method public getUseAlpha()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->alpha:Z

    return v0
.end method

.method public setEdgeAction(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->a:I

    .line 121
    return-void
.end method

.method public setKernel(Lcom/jabistudio/androidjhlabs/filter/Kernel;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    .line 103
    return-void
.end method

.method public setPremultiplyAlpha(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->premultiplyAlpha:Z

    .line 157
    return-void
.end method

.method public setUseAlpha(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;->alpha:Z

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, "Blur/Convolve..."

    return-object v0
.end method
