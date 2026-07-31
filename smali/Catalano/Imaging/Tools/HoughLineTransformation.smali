.class public LCatalano/Imaging/Tools/HoughLineTransformation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field final b:I

.field c:D

.field protected centerX:F

.field protected centerY:F

.field d:I

.field protected doubleHeight:I

.field e:I

.field f:I

.field g:Z

.field private h:[D

.field protected height:I

.field protected houghArray:[[I

.field protected houghHeight:I

.field private i:[D

.field protected numPoints:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    .line 43
    const/16 v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->b:I

    .line 46
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    iput-wide v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    .line 48
    iput v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->d:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->f:I

    .line 54
    iput-boolean v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->g:Z

    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    .line 43
    const/16 v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->b:I

    .line 46
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    iput-wide v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    .line 48
    iput v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->d:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->f:I

    .line 54
    iput-boolean v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->g:Z

    .line 88
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 89
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    .line 43
    const/16 v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->b:I

    .line 46
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    iput-wide v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    .line 48
    iput v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->d:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->f:I

    .line 54
    iput-boolean v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->g:Z

    .line 97
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 98
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->f:I

    .line 99
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    .line 43
    const/16 v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->b:I

    .line 46
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    iput-wide v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    .line 48
    iput v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->d:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->f:I

    .line 54
    iput-boolean v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->g:Z

    .line 108
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 109
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->f:I

    .line 110
    iput-boolean p3, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->g:Z

    .line 111
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/16 v6, 0xb4

    .line 169
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->height:I

    iget v4, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->width:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    .line 172
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->doubleHeight:I

    .line 175
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->doubleHeight:I

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    .line 178
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->width:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->centerX:F

    .line 179
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->height:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->centerY:F

    .line 182
    iput v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->numPoints:I

    .line 185
    new-array v0, v6, [D

    iput-object v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->h:[D

    .line 186
    iget-object v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->h:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->i:[D

    move v0, v1

    .line 187
    :goto_0
    if-ge v0, v6, :cond_0

    .line 188
    int-to-double v2, v0

    iget-wide v4, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    mul-double/2addr v2, v4

    .line 189
    iget-object v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->h:[D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 190
    iget-object v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->i:[D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 8

    .prologue
    .line 233
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb4

    if-ge v0, v1, :cond_2

    .line 236
    int-to-float v1, p1

    iget v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->centerX:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    iget-object v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->i:[D

    aget-wide v4, v1, v0

    mul-double/2addr v2, v4

    int-to-float v1, p2

    iget v4, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->centerY:F

    sub-float/2addr v1, v4

    float-to-double v4, v1

    iget-object v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->h:[D

    aget-wide v6, v1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v1, v2

    .line 239
    iget v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    add-int/2addr v1, v2

    .line 241
    if-ltz v1, :cond_0

    iget v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->doubleHeight:I

    if-lt v1, v2, :cond_1

    .line 233
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v2, v2, v0

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    goto :goto_1

    .line 248
    :cond_2
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->numPoints:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->numPoints:I

    .line 249
    return-void
.end method

.method private b()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 305
    move v3, v1

    move v0, v1

    .line 306
    :goto_0
    const/16 v2, 0xb4

    if-ge v3, v2, :cond_2

    move v2, v0

    move v0, v1

    .line 307
    :goto_1
    iget v4, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->doubleHeight:I

    if-ge v0, v4, :cond_1

    .line 308
    iget-object v4, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v4, v4, v3

    aget v4, v4, v0

    if-le v4, v2, :cond_0

    .line 309
    iget-object v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v2, v2, v3

    aget v2, v2, v0

    .line 307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 313
    :cond_2
    return v0
.end method


# virtual methods
.method public ProcessImage(LCatalano/Imaging/FastBitmap;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->width:I

    .line 202
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->height:I

    .line 204
    invoke-direct {p0}, LCatalano/Imaging/Tools/HoughLineTransformation;->a()V

    move v0, v1

    .line 206
    :goto_0
    iget v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->height:I

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 207
    :goto_1
    iget v3, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->width:I

    if-ge v2, v3, :cond_1

    .line 209
    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    .line 210
    invoke-direct {p0, v0, v2}, LCatalano/Imaging/Tools/HoughLineTransformation;->a(II)V

    .line 207
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 206
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HoughLineTransformation only works with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    :cond_3
    return-void
.end method

.method public addEdgePoints(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Core/IntPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 226
    iget v2, v0, LCatalano/Core/IntPoint;->x:I

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    invoke-direct {p0, v2, v0}, LCatalano/Imaging/Tools/HoughLineTransformation;->a(II)V

    goto :goto_0

    .line 228
    :cond_0
    return-void
.end method

.method public getHoughArrayImage()LCatalano/Imaging/FastBitmap;
    .locals 11

    .prologue
    const/16 v10, 0xb4

    const/4 v6, 0x0

    .line 317
    invoke-direct {p0}, LCatalano/Imaging/Tools/HoughLineTransformation;->b()I

    move-result v7

    .line 318
    new-instance v0, LCatalano/Imaging/FastBitmap;

    iget v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->doubleHeight:I

    invoke-direct {v0, v10, v1}, LCatalano/Imaging/FastBitmap;-><init>(II)V

    move v2, v6

    .line 319
    :goto_0
    if-ge v2, v10, :cond_1

    move v1, v6

    .line 320
    :goto_1
    iget v3, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->doubleHeight:I

    if-ge v1, v3, :cond_0

    .line 321
    const-wide v4, 0x406fe00000000000L    # 255.0

    iget-object v3, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v3, v3, v2

    aget v3, v3, v1

    int-to-double v8, v3

    mul-double/2addr v4, v8

    int-to-double v8, v7

    div-double/2addr v4, v8

    .line 322
    double-to-int v3, v4

    rsub-int v3, v3, 0xff

    move v4, v3

    move v5, v3

    .line 323
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_1
    return-object v0
.end method

.method public getIntensity()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    return v0
.end method

.method public getLines()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LCatalano/Imaging/Tools/HoughLine;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 257
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->numPoints:I

    if-nez v2, :cond_0

    move-object v2, v11

    .line 297
    :goto_0
    return-object v2

    .line 260
    :cond_0
    invoke-direct/range {p0 .. p0}, LCatalano/Imaging/Tools/HoughLineTransformation;->b()I

    move-result v2

    int-to-double v14, v2

    .line 263
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    const/16 v2, 0xb4

    if-ge v12, v2, :cond_8

    .line 265
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->doubleHeight:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_7

    .line 268
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v3, v3, v12

    aget v3, v3, v2

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    if-le v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v3, v3, v12

    aget v3, v3, v2

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->f:I

    if-ge v3, v4, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v3, v3, v12

    aget v8, v3, v2

    .line 274
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    neg-int v3, v3

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    if-gt v3, v4, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    neg-int v4, v4

    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    if-gt v4, v5, :cond_5

    .line 276
    add-int v5, v12, v3

    .line 277
    add-int v6, v2, v4

    .line 278
    if-gez v5, :cond_3

    add-int/lit16 v5, v5, 0xb4

    .line 280
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghArray:[[I

    aget-object v5, v7, v5

    aget v5, v5, v6

    if-le v5, v8, :cond_4

    .line 265
    :cond_2
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 279
    :cond_3
    const/16 v7, 0xb4

    if-lt v5, v7, :cond_1

    add-int/lit16 v5, v5, -0xb4

    goto :goto_5

    .line 275
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 274
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 288
    :cond_6
    int-to-double v4, v12

    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    mul-double/2addr v4, v6

    .line 291
    new-instance v3, LCatalano/Imaging/Tools/HoughLine;

    int-to-double v6, v2

    int-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v9, v16, v14

    invoke-direct/range {v3 .. v10}, LCatalano/Imaging/Tools/HoughLine;-><init>(DDID)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 263
    :cond_7
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_1

    .line 296
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Tools/HoughLineTransformation;->g:Z

    if-eqz v2, :cond_9

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_9
    move-object v2, v11

    .line 297
    goto/16 :goto_0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    return v0
.end method

.method public getStepsPerDegree()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->d:I

    return v0
.end method

.method public setIntensity(I)V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->e:I

    .line 143
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->a:I

    .line 127
    return-void
.end method

.method public setStepsPerDegree(I)V
    .locals 6

    .prologue
    .line 150
    iput p1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->d:I

    .line 152
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 153
    mul-int/lit16 v0, v0, 0xb4

    iput v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    .line 154
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget v2, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    .line 157
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->h:[D

    .line 158
    iget v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->i:[D

    .line 160
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->houghHeight:I

    if-ge v0, v1, :cond_0

    .line 162
    iget-object v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->h:[D

    int-to-double v2, v0

    iget-wide v4, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 163
    iget-object v1, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->i:[D

    int-to-double v2, v0

    iget-wide v4, p0, LCatalano/Imaging/Tools/HoughLineTransformation;->c:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return-void
.end method
