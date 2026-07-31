.class public LCatalano/Imaging/Filters/MedianCut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/MedianCut$a;
    }
.end annotation


# instance fields
.field private a:[I

.field private b:[I

.field private c:[LCatalano/Imaging/Filters/MedianCut$a;

.field private d:I

.field private e:[B

.field private f:[B

.field private g:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x8

    iput v0, p0, LCatalano/Imaging/Filters/MedianCut;->d:I

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x8

    iput v0, p0, LCatalano/Imaging/Filters/MedianCut;->d:I

    .line 74
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/MedianCut;->setNumberOfCubes(I)V

    .line 75
    return-void
.end method

.method private final a(I)I
    .locals 3

    .prologue
    .line 208
    const/high16 v0, 0xf80000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x13

    .line 209
    const v1, 0xf800

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x6

    .line 210
    and-int/lit16 v2, p1, 0xf8

    shl-int/lit8 v2, v2, 0x7

    .line 211
    or-int/2addr v0, v1

    or-int/2addr v0, v2

    return v0
.end method

.method private a(LCatalano/Imaging/Filters/MedianCut$a;)V
    .locals 10

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 237
    .line 240
    iget v0, p1, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    :goto_0
    iget v7, p1, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    if-gt v0, v7, :cond_6

    .line 241
    iget-object v7, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    aget v7, v7, v0

    .line 242
    invoke-direct {p0, v7}, LCatalano/Imaging/Filters/MedianCut;->b(I)I

    move-result v9

    .line 243
    invoke-direct {p0, v7}, LCatalano/Imaging/Filters/MedianCut;->c(I)I

    move-result v8

    .line 244
    invoke-direct {p0, v7}, LCatalano/Imaging/Filters/MedianCut;->d(I)I

    move-result v7

    .line 245
    if-le v9, v5, :cond_0

    move v5, v9

    .line 246
    :cond_0
    if-ge v9, v6, :cond_1

    move v6, v9

    .line 247
    :cond_1
    if-le v8, v3, :cond_2

    move v3, v8

    .line 248
    :cond_2
    if-ge v8, v4, :cond_3

    move v4, v8

    .line 249
    :cond_3
    if-le v7, v1, :cond_4

    move v1, v7

    .line 250
    :cond_4
    if-ge v7, v2, :cond_5

    move v2, v7

    .line 240
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_6
    iput v6, p1, LCatalano/Imaging/Filters/MedianCut$a;->e:I

    iput v5, p1, LCatalano/Imaging/Filters/MedianCut$a;->f:I

    .line 253
    iput v4, p1, LCatalano/Imaging/Filters/MedianCut$a;->g:I

    iput v3, p1, LCatalano/Imaging/Filters/MedianCut$a;->h:I

    .line 254
    iput v2, p1, LCatalano/Imaging/Filters/MedianCut$a;->i:I

    iput v1, p1, LCatalano/Imaging/Filters/MedianCut$a;->j:I

    .line 255
    return-void
.end method

.method private a([II)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/16 v1, 0x100

    const/16 v10, 0xf8

    .line 267
    new-array v0, v1, [B

    iput-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->e:[B

    .line 268
    new-array v0, v1, [B

    iput-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->f:[B

    .line 269
    new-array v0, v1, [B

    iput-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->g:[B

    move v5, v4

    .line 271
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-gt v5, v0, :cond_1

    .line 272
    iget-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aget-object v6, v0, v5

    .line 273
    const/4 v1, 0x0

    .line 274
    iget v0, v6, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    move v2, v1

    move v3, v1

    :goto_1
    iget v7, v6, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    if-gt v0, v7, :cond_0

    .line 275
    iget-object v7, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    aget v7, v7, v0

    .line 276
    invoke-direct {p0, v7}, LCatalano/Imaging/Filters/MedianCut;->b(I)I

    move-result v8

    .line 277
    int-to-float v8, v8

    aget v9, p1, v7

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v3, v8

    .line 278
    invoke-direct {p0, v7}, LCatalano/Imaging/Filters/MedianCut;->c(I)I

    move-result v8

    .line 279
    int-to-float v8, v8

    aget v9, p1, v7

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v2, v8

    .line 280
    invoke-direct {p0, v7}, LCatalano/Imaging/Filters/MedianCut;->d(I)I

    move-result v8

    .line 281
    int-to-float v8, v8

    aget v7, p1, v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    add-float/2addr v1, v7

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    :cond_0
    iget v0, v6, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    int-to-float v0, v0

    div-float v0, v3, v0

    float-to-int v3, v0

    .line 286
    iget v0, v6, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v2, v0

    .line 287
    iget v0, v6, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-int v0, v0

    .line 288
    if-ne v3, v10, :cond_4

    if-ne v2, v10, :cond_4

    if-ne v0, v10, :cond_4

    .line 289
    const/16 v0, 0xff

    move v1, v0

    move v2, v0

    .line 290
    :goto_2
    iget-object v3, p0, LCatalano/Imaging/Filters/MedianCut;->e:[B

    int-to-byte v2, v2

    aput-byte v2, v3, v5

    .line 291
    iget-object v2, p0, LCatalano/Imaging/Filters/MedianCut;->f:[B

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    .line 292
    iget-object v1, p0, LCatalano/Imaging/Filters/MedianCut;->g:[B

    int-to-byte v0, v0

    aput-byte v0, v1, v5

    .line 271
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v1, v4

    .line 297
    :goto_3
    add-int/lit8 v0, p2, -0x1

    if-gt v1, v0, :cond_3

    .line 298
    iget-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aget-object v2, v0, v1

    .line 299
    iget v0, v2, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    :goto_4
    iget v3, v2, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    if-gt v0, v3, :cond_2

    .line 300
    iget-object v3, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    aget v3, v3, v0

    .line 301
    aput v1, p1, v3

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 297
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 304
    :cond_3
    return-void

    :cond_4
    move v1, v2

    move v2, v3

    goto :goto_2
.end method

.method private a([III)V
    .locals 5

    .prologue
    .line 363
    .line 367
    if-le p3, p2, :cond_5

    .line 368
    add-int v0, p2, p3

    div-int/lit8 v0, v0, 0x2

    aget v2, p1, v0

    move v0, p3

    move v1, p2

    .line 369
    :cond_0
    :goto_0
    if-gt v1, v0, :cond_3

    .line 370
    :goto_1
    if-ge v1, p3, :cond_1

    aget v3, p1, v1

    if-ge v3, v2, :cond_1

    .line 371
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 372
    :cond_1
    :goto_2
    if-le v0, p2, :cond_2

    aget v3, p1, v0

    if-le v3, v2, :cond_2

    .line 373
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 374
    :cond_2
    if-gt v1, v0, :cond_0

    .line 375
    aget v3, p1, v1

    .line 376
    aget v4, p1, v0

    aput v4, p1, v1

    .line 377
    aput v3, p1, v0

    .line 378
    add-int/lit8 v1, v1, 0x1

    .line 379
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 382
    :cond_3
    if-ge p2, v0, :cond_4

    .line 383
    invoke-direct {p0, p1, p2, v0}, LCatalano/Imaging/Filters/MedianCut;->a([III)V

    .line 384
    :cond_4
    if-ge v1, p3, :cond_5

    .line 385
    invoke-direct {p0, p1, v1, p3}, LCatalano/Imaging/Filters/MedianCut;->a([III)V

    .line 388
    :cond_5
    return-void
.end method

.method private a([IIII)V
    .locals 3

    .prologue
    .line 310
    packed-switch p4, :pswitch_data_0

    .line 330
    :cond_0
    return-void

    .line 312
    :goto_0
    :pswitch_0
    if-gt p2, p3, :cond_0

    .line 313
    aget v0, p1, p2

    .line 314
    and-int/lit8 v1, v0, 0x1f

    .line 315
    shl-int/lit8 v1, v1, 0xa

    shr-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v1

    aput v0, p1, p2

    .line 312
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 319
    :goto_1
    :pswitch_1
    if-gt p2, p3, :cond_0

    .line 320
    aget v0, p1, p2

    .line 321
    and-int/lit8 v1, v0, 0x1f

    .line 322
    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    .line 323
    shr-int/lit8 v0, v0, 0xa

    .line 324
    shl-int/lit8 v2, v2, 0xa

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    aput v0, p1, p2

    .line 319
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final b(I)I
    .locals 1

    .prologue
    .line 216
    and-int/lit8 v0, p1, 0x1f

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method

.method private b([IIII)V
    .locals 3

    .prologue
    .line 337
    packed-switch p4, :pswitch_data_0

    .line 357
    :cond_0
    return-void

    .line 339
    :goto_0
    :pswitch_0
    if-gt p2, p3, :cond_0

    .line 340
    aget v0, p1, p2

    .line 341
    shr-int/lit8 v1, v0, 0xa

    .line 342
    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0x5

    or-int/2addr v0, v1

    aput v0, p1, p2

    .line 339
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 346
    :goto_1
    :pswitch_1
    if-gt p2, p3, :cond_0

    .line 347
    aget v0, p1, p2

    .line 348
    and-int/lit8 v1, v0, 0x1f

    .line 349
    shr-int/lit8 v2, v0, 0xa

    .line 350
    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1f

    .line 351
    shl-int/lit8 v0, v0, 0xa

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    aput v0, p1, p2

    .line 346
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final c(I)I
    .locals 1

    .prologue
    .line 221
    shr-int/lit8 v0, p1, 0x2

    and-int/lit16 v0, v0, 0xf8

    return v0
.end method

.method private final d(I)I
    .locals 1

    .prologue
    .line 226
    shr-int/lit8 v0, p1, 0x7

    and-int/lit16 v0, v0, 0xf8

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    const v6, 0x8000

    const/4 v3, 0x1

    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 81
    new-instance v8, LCatalano/Imaging/FastBitmap;

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    invoke-direct {v8, v0, v2}, LCatalano/Imaging/FastBitmap;-><init>(II)V

    .line 83
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v9

    .line 85
    new-array v0, v6, [I

    iput-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    move v0, v1

    .line 86
    :goto_0
    array-length v2, v9

    if-ge v0, v2, :cond_0

    .line 87
    aget v2, v9, v0

    invoke-direct {p0, v2}, LCatalano/Imaging/Filters/MedianCut;->a(I)I

    move-result v2

    .line 88
    iget-object v4, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    aget v5, v4, v2

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v2

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_0
    const/16 v0, 0x100

    new-array v0, v0, [LCatalano/Imaging/Filters/MedianCut$a;

    iput-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    .line 100
    new-array v0, v6, [I

    iput-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    .line 102
    new-instance v5, LCatalano/Imaging/Filters/MedianCut$a;

    invoke-direct {v5, p0}, LCatalano/Imaging/Filters/MedianCut$a;-><init>(LCatalano/Imaging/Filters/MedianCut;)V

    move v2, v1

    move v4, v1

    .line 103
    :goto_1
    const/16 v0, 0x7fff

    if-gt v4, v0, :cond_1

    .line 104
    iget-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    aget v0, v0, v4

    if-eqz v0, :cond_e

    .line 105
    iget-object v6, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    add-int/lit8 v0, v2, 0x1

    aput v4, v6, v2

    .line 106
    iget v2, v5, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    iget-object v6, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    aget v6, v6, v4

    add-int/2addr v2, v6

    iput v2, v5, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    .line 103
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_1

    .line 109
    :cond_1
    iput v1, v5, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    .line 110
    add-int/lit8 v0, v2, -0x1

    iput v0, v5, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    .line 111
    iput v1, v5, LCatalano/Imaging/Filters/MedianCut$a;->d:I

    .line 112
    invoke-direct {p0, v5}, LCatalano/Imaging/Filters/MedianCut;->a(LCatalano/Imaging/Filters/MedianCut$a;)V

    .line 113
    iget-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aput-object v5, v0, v1

    move v0, v1

    move v2, v3

    .line 116
    :goto_3
    iget v4, p0, LCatalano/Imaging/Filters/MedianCut;->d:I

    if-ge v2, v4, :cond_5

    .line 119
    const/16 v6, 0xff

    move v4, v7

    move v5, v1

    .line 121
    :goto_4
    add-int/lit8 v10, v2, -0x1

    if-gt v5, v10, :cond_4

    .line 122
    iget-object v10, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aget-object v10, v10, v5

    iget v10, v10, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    iget-object v11, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aget-object v11, v11, v5

    iget v11, v11, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    if-ne v10, v11, :cond_3

    .line 121
    :cond_2
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 124
    :cond_3
    iget-object v10, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aget-object v10, v10, v5

    iget v10, v10, LCatalano/Imaging/Filters/MedianCut$a;->d:I

    if-ge v10, v6, :cond_2

    .line 125
    iget-object v4, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aget-object v4, v4, v5

    iget v4, v4, LCatalano/Imaging/Filters/MedianCut$a;->d:I

    move v6, v4

    move v4, v5

    .line 126
    goto :goto_5

    .line 129
    :cond_4
    if-ne v4, v7, :cond_6

    .line 185
    :cond_5
    iget-object v0, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    invoke-direct {p0, v0, v2}, LCatalano/Imaging/Filters/MedianCut;->a([II)V

    .line 187
    invoke-virtual {v8}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v0

    .line 189
    :goto_6
    array-length v2, v9

    if-ge v1, v2, :cond_c

    .line 190
    aget v2, v9, v1

    invoke-direct {p0, v2}, LCatalano/Imaging/Filters/MedianCut;->a(I)I

    move-result v2

    .line 192
    iget-object v3, p0, LCatalano/Imaging/Filters/MedianCut;->e:[B

    iget-object v4, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    aget v4, v4, v2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    .line 193
    iget-object v4, p0, LCatalano/Imaging/Filters/MedianCut;->f:[B

    iget-object v5, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    aget v5, v5, v2

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 194
    iget-object v5, p0, LCatalano/Imaging/Filters/MedianCut;->g:[B

    iget-object v6, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    aget v2, v6, v2

    aget-byte v2, v5, v2

    and-int/lit16 v2, v2, 0xff

    .line 196
    shl-int/lit8 v3, v3, 0x10

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 135
    :cond_6
    iget-object v5, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aget-object v10, v5, v4

    .line 136
    iget v5, v10, LCatalano/Imaging/Filters/MedianCut$a;->f:I

    iget v6, v10, LCatalano/Imaging/Filters/MedianCut$a;->e:I

    sub-int/2addr v5, v6

    .line 137
    iget v6, v10, LCatalano/Imaging/Filters/MedianCut$a;->h:I

    iget v11, v10, LCatalano/Imaging/Filters/MedianCut$a;->g:I

    sub-int/2addr v6, v11

    .line 138
    iget v11, v10, LCatalano/Imaging/Filters/MedianCut$a;->j:I

    iget v12, v10, LCatalano/Imaging/Filters/MedianCut$a;->i:I

    sub-int/2addr v11, v12

    .line 139
    if-lt v5, v6, :cond_7

    if-lt v5, v11, :cond_7

    move v0, v1

    .line 142
    :cond_7
    if-lt v6, v5, :cond_8

    if-lt v6, v11, :cond_8

    move v0, v3

    .line 145
    :cond_8
    if-lt v11, v5, :cond_9

    if-lt v11, v6, :cond_9

    .line 146
    const/4 v0, 0x2

    .line 150
    :cond_9
    iget-object v5, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    iget v6, v10, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    iget v11, v10, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    invoke-direct {p0, v5, v6, v11, v0}, LCatalano/Imaging/Filters/MedianCut;->a([IIII)V

    .line 151
    iget-object v5, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    iget v6, v10, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    iget v11, v10, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    invoke-direct {p0, v5, v6, v11}, LCatalano/Imaging/Filters/MedianCut;->a([III)V

    .line 152
    iget-object v5, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    iget v6, v10, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    iget v11, v10, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    invoke-direct {p0, v5, v6, v11, v0}, LCatalano/Imaging/Filters/MedianCut;->b([IIII)V

    .line 156
    iget v5, v10, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    move v6, v5

    move v5, v1

    :goto_7
    iget v11, v10, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    add-int/lit8 v11, v11, -0x1

    if-gt v6, v11, :cond_a

    .line 157
    iget v11, v10, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    div-int/lit8 v11, v11, 0x2

    if-lt v5, v11, :cond_b

    .line 167
    :cond_a
    new-instance v11, LCatalano/Imaging/Filters/MedianCut$a;

    invoke-direct {v11, p0}, LCatalano/Imaging/Filters/MedianCut$a;-><init>(LCatalano/Imaging/Filters/MedianCut;)V

    .line 168
    iget v12, v10, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    iput v12, v11, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    .line 169
    add-int/lit8 v12, v6, -0x1

    iput v12, v11, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    .line 170
    iput v5, v11, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    .line 171
    iget v12, v10, LCatalano/Imaging/Filters/MedianCut$a;->d:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, LCatalano/Imaging/Filters/MedianCut$a;->d:I

    .line 172
    invoke-direct {p0, v11}, LCatalano/Imaging/Filters/MedianCut;->a(LCatalano/Imaging/Filters/MedianCut$a;)V

    .line 173
    iget-object v12, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    aput-object v11, v12, v4

    .line 175
    new-instance v11, LCatalano/Imaging/Filters/MedianCut$a;

    invoke-direct {v11, p0}, LCatalano/Imaging/Filters/MedianCut$a;-><init>(LCatalano/Imaging/Filters/MedianCut;)V

    .line 176
    iput v6, v11, LCatalano/Imaging/Filters/MedianCut$a;->a:I

    .line 177
    iget v4, v10, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    iput v4, v11, LCatalano/Imaging/Filters/MedianCut$a;->b:I

    .line 178
    iget v4, v10, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    sub-int/2addr v4, v5

    iput v4, v11, LCatalano/Imaging/Filters/MedianCut$a;->c:I

    .line 179
    iget v4, v10, LCatalano/Imaging/Filters/MedianCut$a;->d:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, LCatalano/Imaging/Filters/MedianCut$a;->d:I

    .line 180
    invoke-direct {p0, v11}, LCatalano/Imaging/Filters/MedianCut;->a(LCatalano/Imaging/Filters/MedianCut$a;)V

    .line 181
    iget-object v5, p0, LCatalano/Imaging/Filters/MedianCut;->c:[LCatalano/Imaging/Filters/MedianCut$a;

    add-int/lit8 v4, v2, 0x1

    aput-object v11, v5, v2

    move v2, v4

    goto/16 :goto_3

    .line 160
    :cond_b
    iget-object v11, p0, LCatalano/Imaging/Filters/MedianCut;->b:[I

    aget v11, v11, v6

    .line 161
    iget-object v12, p0, LCatalano/Imaging/Filters/MedianCut;->a:[I

    aget v11, v12, v11

    add-int/2addr v5, v11

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 199
    :cond_c
    invoke-virtual {p1, v8}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 204
    return-void

    .line 201
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Median cut only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v0, v2

    goto/16 :goto_2
.end method

.method public getNumberOfCubes()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, LCatalano/Imaging/Filters/MedianCut;->d:I

    return v0
.end method

.method public setNumberOfCubes(I)V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x1

    const/16 v1, 0x100

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/MedianCut;->d:I

    .line 63
    return-void
.end method
