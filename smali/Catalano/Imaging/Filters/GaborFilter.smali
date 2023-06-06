.class public LCatalano/Imaging/Filters/GaborFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:D

.field private g:LCatalano/Math/Functions/Gabor$Config;

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 49
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 52
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 61
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 62
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    iput-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 197
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 49
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 52
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 61
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 62
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    iput-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 204
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 205
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 49
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 52
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 61
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 62
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    iput-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 213
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 214
    iput-wide p3, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 215
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 3

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 49
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 52
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 61
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 62
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    iput-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 224
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 225
    iput-wide p3, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 226
    iput-wide p5, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 227
    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 3

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 49
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 52
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 61
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 62
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    iput-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 237
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 238
    iput-wide p3, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 239
    iput-wide p5, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 240
    iput-wide p7, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 241
    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 3

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 49
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 52
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 61
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 62
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    iput-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 252
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 253
    iput-wide p3, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 254
    iput-wide p5, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 255
    iput-wide p7, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 256
    iput-wide p9, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 257
    return-void
.end method

.method public constructor <init>(DDDDDLCatalano/Math/Functions/Gabor$Config;)V
    .locals 3

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 49
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 52
    const-wide v0, 0x3fe3333333333333L    # 0.6

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 55
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 58
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 61
    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 62
    sget-object v0, LCatalano/Math/Functions/Gabor$Config;->Imaginary:LCatalano/Math/Functions/Gabor$Config;

    iput-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 269
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 270
    iput-wide p3, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 271
    iput-wide p5, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 272
    iput-wide p7, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 273
    iput-wide p9, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 274
    iput-object p11, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 275
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;[[D)[[I
    .locals 18

    .prologue
    .line 353
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 354
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    .line 356
    move-object/from16 v0, p2

    array-length v2, v0

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v11, v2

    .line 357
    const/4 v2, 0x0

    aget-object v2, p2, v2

    array-length v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v12, v2

    .line 358
    filled-new-array {v9, v10}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    .line 360
    const/4 v3, 0x0

    move v8, v3

    :goto_0
    if-ge v8, v9, :cond_4

    .line 361
    const/4 v3, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v10, :cond_3

    .line 362
    const-wide/16 v4, 0x0

    .line 363
    neg-int v3, v11

    move v6, v3

    :goto_2
    if-gt v6, v11, :cond_2

    .line 364
    neg-int v3, v12

    :goto_3
    if-gt v3, v12, :cond_1

    .line 365
    sub-int v13, v8, v6

    if-ltz v13, :cond_0

    sub-int v13, v8, v6

    if-ge v13, v9, :cond_0

    sub-int v13, v7, v3

    if-ltz v13, :cond_0

    sub-int v13, v7, v3

    if-ge v13, v10, :cond_0

    .line 366
    sub-int v13, v8, v6

    sub-int v14, v7, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v13

    .line 367
    add-int v14, v6, v11

    aget-object v14, p2, v14

    add-int v15, v3, v12

    aget-wide v14, v14, v15

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v4, v14

    .line 364
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 363
    :cond_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_2

    .line 371
    :cond_2
    aget-object v3, v2, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v3, v7

    .line 361
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_1

    .line 360
    :cond_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_0

    .line 374
    :cond_4
    return-object v2
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 17

    .prologue
    .line 281
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v15

    .line 282
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v16

    .line 284
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 286
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    move-object/from16 v0, p0

    iget-wide v8, v0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    move-object/from16 v0, p0

    iget-wide v12, v0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    invoke-static/range {v3 .. v14}, LCatalano/Math/Functions/Gabor;->Kernel2D(IDDDDDLCatalano/Math/Functions/Gabor$Config;)[[D

    move-result-object v2

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, LCatalano/Imaging/Filters/GaborFilter;->a(LCatalano/Imaging/FastBitmap;[[D)[[I

    move-result-object v14

    .line 288
    const/high16 v4, -0x80000000

    .line 289
    const v3, 0x7fffffff

    .line 291
    invoke-virtual/range {p0 .. p0}, LCatalano/Imaging/Filters/GaborFilter;->isSigned()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 292
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->toRGB()V

    .line 295
    const/4 v2, 0x0

    move v12, v3

    move v13, v4

    :goto_0
    array-length v3, v14

    if-ge v2, v3, :cond_2

    .line 296
    const/4 v3, 0x0

    move v5, v3

    move v4, v13

    move v3, v12

    :goto_1
    const/4 v6, 0x0

    aget-object v6, v14, v6

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 297
    aget-object v6, v14, v2

    aget v12, v6, v5

    .line 298
    if-le v12, v4, :cond_0

    if-lez v12, :cond_0

    move v4, v12

    .line 299
    :cond_0
    if-ge v12, v3, :cond_e

    if-gez v12, :cond_e

    .line 296
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v12

    goto :goto_1

    .line 295
    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v12, v3

    move v13, v4

    goto :goto_0

    .line 303
    :cond_2
    const/4 v3, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v3, v0, :cond_b

    .line 304
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v15, :cond_5

    .line 306
    const-wide v6, 0x406fe00000000000L    # 255.0

    aget-object v2, v14, v3

    aget v2, v2, v4

    int-to-double v8, v2

    int-to-double v10, v13

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 307
    aget-object v2, v14, v3

    aget v2, v2, v4

    if-gez v2, :cond_3

    .line 308
    const-wide v6, 0x406fe00000000000L    # 255.0

    aget-object v2, v14, v3

    aget v2, v2, v4

    int-to-double v8, v2

    int-to-double v10, v12

    div-double/2addr v8, v10

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v5, v6

    .line 310
    :cond_3
    aget-object v2, v14, v3

    aget v2, v2, v4

    if-lez v2, :cond_4

    .line 311
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 304
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 313
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move v7, v3

    move v8, v4

    move v11, v5

    invoke-virtual/range {v6 .. v11}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    goto :goto_5

    .line 303
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 320
    :cond_6
    const/4 v2, 0x0

    :goto_6
    array-length v5, v14

    if-ge v2, v5, :cond_8

    .line 321
    const/4 v5, 0x0

    :goto_7
    const/4 v6, 0x0

    aget-object v6, v14, v6

    array-length v6, v6

    if-ge v5, v6, :cond_7

    .line 322
    aget-object v6, v14, v2

    aget v7, v6, v5

    .line 323
    if-le v7, v4, :cond_d

    move v6, v7

    .line 324
    :goto_8
    if-ge v7, v3, :cond_c

    move v4, v7

    .line 321
    :goto_9
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v4

    move v4, v6

    goto :goto_7

    .line 320
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 328
    :cond_8
    const/4 v2, 0x0

    move v5, v2

    :goto_a
    move/from16 v0, v16

    if-ge v5, v0, :cond_b

    .line 329
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v15, :cond_9

    .line 330
    const-wide v6, 0x406fe00000000000L    # 255.0

    aget-object v8, v14, v5

    aget v8, v8, v2

    sub-int/2addr v8, v3

    int-to-double v8, v8

    mul-double/2addr v6, v8

    sub-int v8, v4, v3

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 331
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v2, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 328
    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_a

    .line 338
    :cond_a
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Gabor filter only works with grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :catch_0
    move-exception v2

    .line 340
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 343
    :cond_b
    return-void

    :cond_c
    move v4, v3

    goto :goto_9

    :cond_d
    move v6, v4

    goto :goto_8

    :cond_e
    move v12, v3

    goto/16 :goto_2
.end method

.method public getAspectRatio()D
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    return-wide v0
.end method

.method public getConfig()LCatalano/Math/Functions/Gabor$Config;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    return-object v0
.end method

.method public getGaussianVar()D
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    return-wide v0
.end method

.method public getOrientation()D
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    return-wide v0
.end method

.method public getPhaseOffset()D
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    return v0
.end method

.method public getWavelength()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    return-wide v0
.end method

.method public isSigned()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    return v0
.end method

.method public setAspectRatio(D)V
    .locals 1

    .prologue
    .line 158
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->f:D

    .line 159
    return-void
.end method

.method public setConfig(LCatalano/Math/Functions/Gabor$Config;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, LCatalano/Imaging/Filters/GaborFilter;->g:LCatalano/Math/Functions/Gabor$Config;

    .line 175
    return-void
.end method

.method public setGaussianVar(D)V
    .locals 1

    .prologue
    .line 142
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->e:D

    .line 143
    return-void
.end method

.method public setOrientation(D)V
    .locals 1

    .prologue
    .line 110
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->c:D

    .line 111
    return-void
.end method

.method public setPhaseOffset(D)V
    .locals 1

    .prologue
    .line 126
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->d:D

    .line 127
    return-void
.end method

.method public setSigned(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, LCatalano/Imaging/Filters/GaborFilter;->h:Z

    .line 192
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, LCatalano/Imaging/Filters/GaborFilter;->a:I

    .line 79
    return-void
.end method

.method public setWavelength(D)V
    .locals 1

    .prologue
    .line 94
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaborFilter;->b:D

    .line 95
    return-void
.end method
