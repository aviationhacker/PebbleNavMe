.class public Lcom/jabistudio/androidjhlabs/filter/Gradient;
.super Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CIRCLE_DOWN:I = 0x40

.field public static final CIRCLE_UP:I = 0x30

.field public static final CONSTANT:I = 0x50

.field public static final HUE_CCW:I = 0x2

.field public static final HUE_CW:I = 0x1

.field public static final LINEAR:I = 0x10

.field public static final RGB:I = 0x0

.field public static final SPLINE:I = 0x20


# instance fields
.field private a:I

.field private b:[I

.field private c:[I

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 100
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;-><init>()V

    .line 86
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    .line 101
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 102
    return-void

    .line 87
    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0xff
        0x100
    .end array-data

    .line 90
    :array_1
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1
        -0x1
    .end array-data

    .line 93
    :array_2
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>([I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, p1, v0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;-><init>([I[I[B)V

    .line 110
    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;-><init>([I[I[B)V

    .line 119
    return-void
.end method

.method public constructor <init>([I[I[B)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 127
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;-><init>()V

    .line 86
    iput v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 93
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    .line 128
    invoke-virtual {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->setKnots([I[I[B)V

    .line 129
    return-void

    .line 87
    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0xff
        0x100
    .end array-data

    .line 90
    :array_1
    .array-data 4
        -0x1000000
        -0x1000000
        -0x1
        -0x1
    .end array-data

    .line 93
    :array_2
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method private a()V
    .locals 14

    .prologue
    .line 379
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    const/4 v1, 0x0

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 380
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    .line 381
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 382
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x2

    aget v2, v2, v3

    aput v2, v0, v1

    .line 385
    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 386
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    int-to-float v4, v1

    .line 387
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    .line 388
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v2, v2, -0x2

    if-ne v0, v2, :cond_0

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 390
    :cond_0
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v2, v2, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    .line 391
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    aget v5, v2, v0

    .line 392
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    add-int/lit8 v6, v0, 0x1

    aget v6, v2, v6

    .line 394
    const/4 v2, 0x3

    new-array v7, v2, [F

    .line 395
    shr-int/lit8 v2, v5, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    and-int/lit16 v9, v5, 0xff

    invoke-static {v2, v8, v9, v7}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 396
    const/4 v2, 0x3

    new-array v8, v2, [F

    .line 397
    shr-int/lit8 v2, v6, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    and-int/lit16 v10, v6, 0xff

    invoke-static {v2, v9, v10, v8}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 398
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v2, v2, v0

    sub-int v2, v3, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    .line 399
    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->getKnotType(I)I

    move-result v9

    .line 400
    invoke-virtual {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->getKnotBlend(I)B

    move-result v10

    .line 402
    if-ltz v3, :cond_1

    const/16 v11, 0xff

    if-gt v3, v11, :cond_1

    .line 403
    sparse-switch v10, :sswitch_data_0

    .line 422
    :goto_2
    :sswitch_0
    packed-switch v9, :pswitch_data_0

    .line 390
    :cond_1
    :goto_3
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 405
    :sswitch_1
    const/4 v2, 0x0

    .line 406
    goto :goto_2

    .line 411
    :sswitch_2
    const v10, 0x3e19999a    # 0.15f

    const v11, 0x3f59999a    # 0.85f

    invoke-static {v10, v11, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->smoothStep(FFF)F

    move-result v2

    goto :goto_2

    .line 414
    :sswitch_3
    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v2, v10

    .line 415
    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v2, v2

    sub-float v2, v10, v2

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v2, v10

    .line 416
    goto :goto_2

    .line 418
    :sswitch_4
    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v2, v2

    sub-float v2, v11, v2

    float-to-double v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v2, v12

    sub-float v2, v10, v2

    goto :goto_2

    .line 424
    :pswitch_0
    iget-object v7, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    invoke-static {v2, v5, v6}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v7, v3

    goto :goto_3

    .line 428
    :pswitch_1
    const/4 v5, 0x1

    if-ne v9, v5, :cond_3

    .line 429
    const/4 v5, 0x0

    aget v5, v8, v5

    const/4 v6, 0x0

    aget v6, v7, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    .line 430
    const/4 v5, 0x0

    aget v6, v8, v5

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    aput v6, v8, v5

    .line 435
    :cond_2
    :goto_4
    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v9, 0x0

    aget v9, v7, v9

    const/4 v10, 0x0

    aget v10, v8, v10

    invoke-static {v2, v9, v10}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FFF)F

    move-result v9

    const v10, 0x40c90fdb

    rem-float/2addr v9, v10

    aput v9, v5, v6

    const/4 v6, 0x1

    const/4 v9, 0x1

    aget v9, v7, v9

    const/4 v10, 0x1

    aget v10, v8, v10

    .line 436
    invoke-static {v2, v9, v10}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FFF)F

    move-result v9

    aput v9, v5, v6

    const/4 v6, 0x2

    const/4 v9, 0x2

    aget v7, v7, v9

    const/4 v9, 0x2

    aget v8, v8, v9

    .line 437
    invoke-static {v2, v7, v8}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->lerp(FFF)F

    move-result v2

    aput v2, v5, v6

    .line 444
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    const/high16 v6, -0x1000000

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    or-int/2addr v5, v6

    aput v5, v2, v3

    goto/16 :goto_3

    .line 432
    :cond_3
    const/4 v5, 0x0

    aget v5, v7, v5

    const/4 v6, 0x1

    aget v6, v8, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    .line 433
    const/4 v5, 0x0

    aget v6, v7, v5

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    aput v6, v7, v5

    goto :goto_4

    .line 385
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 451
    :cond_5
    return-void

    .line 403
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
        0x30 -> :sswitch_3
        0x40 -> :sswitch_4
        0x50 -> :sswitch_1
    .end sparse-switch

    .line 422
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 454
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 455
    :goto_1
    if-ge v2, v0, :cond_1

    .line 456
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v4, v4, v2

    if-ge v3, v4, :cond_0

    .line 457
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v3, v3, v0

    .line 458
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v5, v5, v2

    aput v5, v4, v0

    .line 459
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aput v3, v4, v2

    .line 460
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    aget v3, v3, v0

    .line 461
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    aget v5, v5, v2

    aput v5, v4, v0

    .line 462
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    aput v3, v4, v2

    .line 463
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aget-byte v3, v3, v0

    .line 464
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget-object v5, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aget-byte v5, v5, v2

    aput-byte v5, v4, v0

    .line 465
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aput-byte v3, v4, v2

    .line 455
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_2
    return-void
.end method

.method public static randomGradient()Lcom/jabistudio/androidjhlabs/filter/Gradient;
    .locals 1

    .prologue
    .line 522
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/Gradient;

    invoke-direct {v0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;-><init>()V

    .line 523
    invoke-virtual {v0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->randomize()V

    .line 524
    return-object v0
.end method


# virtual methods
.method public addKnot(III)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 247
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 248
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 249
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 250
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 254
    iput-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 255
    iput-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    .line 257
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 258
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    aput v2, v0, v1

    .line 259
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 260
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 261
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x1

    aput p2, v0, v1

    .line 262
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x1

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    .line 263
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 264
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b()V

    .line 265
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 266
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/jabistudio/androidjhlabs/filter/ArrayColormap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jabistudio/androidjhlabs/filter/Gradient;

    .line 133
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    .line 134
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 135
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 136
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, v0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    .line 137
    return-object v0
.end method

.method public copyTo(Lcom/jabistudio/androidjhlabs/filter/Gradient;)V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    iput v0, p1, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 146
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p1, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    .line 147
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p1, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 148
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p1, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 149
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p1, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    .line 150
    return-void
.end method

.method public getKnot(I)I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    aget v0, v0, p1

    return v0
.end method

.method public getKnotBlend(I)B
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x70

    int-to-byte v0, v0

    return v0
.end method

.method public getKnotPosition(I)I
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v0, v0, p1

    return v0
.end method

.method public getKnotType(I)I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aget-byte v0, v0, p1

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    return v0
.end method

.method public getNumKnots()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    return v0
.end method

.method public knotAt(I)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 372
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 373
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-le v2, p1, :cond_0

    .line 375
    :goto_1
    return v0

    .line 372
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 375
    goto :goto_1
.end method

.method public mutate(F)V
    .locals 13

    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 502
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    if-ge v0, v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    aget v1, v1, v0

    .line 504
    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 505
    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 506
    and-int/lit16 v1, v1, 0xff

    .line 507
    int-to-double v4, v2

    mul-float v2, p1, v12

    float-to-double v6, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 508
    int-to-double v4, v3

    mul-float v3, p1, v12

    float-to-double v6, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    .line 509
    int-to-double v4, v1

    mul-float v1, p1, v12

    float-to-double v6, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    sub-double/2addr v8, v10

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 510
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    const/high16 v5, -0x1000000

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    aput v1, v4, v0

    .line 511
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    const/16 v2, 0x20

    aput-byte v2, v1, v0

    .line 502
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b()V

    .line 514
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 515
    return-void
.end method

.method public randomize()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 480
    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 481
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 482
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 483
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    move v0, v1

    .line 484
    :goto_0
    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    if-ge v0, v2, :cond_0

    .line 485
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v3, v4

    aput v3, v2, v0

    .line 486
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    const/high16 v3, -0x1000000

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 487
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    const/16 v3, 0x20

    aput-byte v3, v2, v0

    .line 484
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 490
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 491
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0xff

    aput v2, v0, v1

    .line 492
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x100

    aput v2, v0, v1

    .line 493
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b()V

    .line 494
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 495
    return-void
.end method

.method public removeKnot(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 274
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 276
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    :cond_1
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 282
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v0, v0, v4

    if-lez v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    const/4 v1, 0x0

    aput v1, v0, v4

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    goto :goto_0
.end method

.method public setColor(II)V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    aget v1, v1, v0

    .line 159
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    aget v2, v2, v6

    .line 160
    if-lez p1, :cond_0

    .line 161
    :goto_0
    if-ge v0, p1, :cond_0

    .line 162
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    int-to-float v4, v0

    int-to-float v5, p1

    div-float/2addr v4, v5

    invoke-static {v4, v1, p2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v4

    aput v4, v3, v0

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :cond_0
    if-ge p1, v6, :cond_1

    move v0, p1

    .line 164
    :goto_1
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->map:[I

    sub-int v3, v0, p1

    int-to-float v3, v3

    rsub-int v4, p1, 0x100

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, p2, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v3

    aput v3, v1, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_1
    return-void
.end method

.method public setKnot(II)V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    aput p2, v0, p1

    .line 184
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 185
    return-void
.end method

.method public setKnotBlend(II)V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aget-byte v1, v1, p1

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 226
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 227
    return-void
.end method

.method public setKnotPosition(II)V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {p2, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->clamp(III)I

    move-result v1

    aput v1, v0, p1

    .line 352
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b()V

    .line 353
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 354
    return-void
.end method

.method public setKnotType(II)V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aget-byte v1, v1, p1

    and-int/lit8 v1, v1, -0x4

    or-int/2addr v1, p2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 205
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 206
    return-void
.end method

.method public setKnots([I[I[B)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 295
    array-length v0, p2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 296
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 297
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 298
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    .line 299
    if-eqz p1, :cond_2

    .line 300
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {p2, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    if-eqz p3, :cond_3

    .line 306
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x2

    invoke-static {p3, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b()V

    .line 311
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 312
    return-void

    :cond_2
    move v0, v1

    .line 302
    :goto_0
    iget v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_0

    .line 303
    iget-object v3, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    mul-int/lit16 v4, v0, 0xff

    iget v5, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    add-int/lit8 v5, v5, -0x2

    div-int/2addr v4, v5

    aput v4, v3, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 308
    :goto_1
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    if-le v0, v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    const/16 v2, 0x20

    aput-byte v2, v1, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setKnots([I[I[BII)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 323
    iput p5, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    .line 324
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    .line 325
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    .line 326
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    .line 327
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    invoke-static {p1, p4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->c:[I

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    invoke-static {p2, p4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a:I

    invoke-static {p3, p4, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b()V

    .line 331
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 332
    return-void
.end method

.method public splitSpan(I)V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->b:[I

    add-int/lit8 v2, p1, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 340
    int-to-float v1, v0

    const/high16 v2, 0x43800000    # 256.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->getColor(F)I

    move-result v1

    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/Gradient;->d:[B

    aget-byte v2, v2, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->addKnot(III)V

    .line 341
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/Gradient;->a()V

    .line 342
    return-void
.end method
