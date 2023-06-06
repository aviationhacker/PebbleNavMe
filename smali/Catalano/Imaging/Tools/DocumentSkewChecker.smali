.class public LCatalano/Imaging/Tools/DocumentSkewChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:D

.field private d:D

.field private e:[D

.field private f:[D

.field private g:Z

.field private h:[[I

.field private i:I

.field private j:I

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Tools/HoughLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->g:Z

    .line 54
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->i:I

    .line 56
    const/4 v0, 0x4

    iput v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->j:I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->k:Ljava/util/List;

    .line 129
    const/16 v0, 0xa

    iput v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->a:I

    .line 130
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    iput-wide v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->d:D

    .line 131
    return-void
.end method

.method private a()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide v12, 0x4066800000000000L    # 180.0

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    .line 299
    iget-boolean v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->g:Z

    if-eqz v1, :cond_0

    .line 300
    iput-boolean v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->g:Z

    .line 302
    iget-wide v2, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->d:D

    mul-double/2addr v2, v6

    iget v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->a:I

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    .line 303
    iget-wide v2, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->d:D

    mul-double/2addr v2, v6

    mul-double/2addr v2, v10

    div-double/2addr v2, v12

    iget v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->c:D

    .line 306
    iget v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    new-array v1, v1, [D

    iput-object v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->e:[D

    .line 307
    iget v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    new-array v1, v1, [D

    iput-object v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->f:[D

    .line 309
    const-wide v2, 0x4056800000000000L    # 90.0

    iget-wide v4, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->d:D

    sub-double/2addr v2, v4

    .line 311
    :goto_0
    iget v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->e:[D

    mul-double v4, v2, v10

    div-double/2addr v4, v12

    int-to-double v6, v0

    iget-wide v8, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->c:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 313
    iget-object v1, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->f:[D

    mul-double v4, v2, v10

    div-double/2addr v4, v12

    int-to-double v6, v0

    iget-wide v8, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->c:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 20

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    array-length v13, v2

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v14, v2

    .line 229
    shr-int/lit8 v15, v14, 0x1

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 235
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    if-ge v12, v13, :cond_9

    .line 237
    const/4 v2, 0x0

    move v11, v2

    :goto_1
    if-ge v11, v14, :cond_8

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    aget-object v2, v2, v12

    aget v8, v2, v11

    .line 241
    move/from16 v0, p1

    if-ge v8, v0, :cond_1

    .line 237
    :cond_0
    :goto_2
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_1

    .line 244
    :cond_1
    const/4 v3, 0x0

    .line 247
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->j:I

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->j:I

    add-int v5, v12, v4

    move v4, v2

    move v2, v3

    :goto_3
    if-ge v4, v5, :cond_4

    .line 249
    if-gez v4, :cond_3

    .line 247
    :cond_2
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 251
    :cond_3
    if-lt v4, v13, :cond_5

    .line 274
    :cond_4
    if-nez v2, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->k:Ljava/util/List;

    new-instance v3, LCatalano/Imaging/Tools/HoughLine;

    const-wide v4, 0x4056800000000000L    # 90.0

    move-object/from16 v0, p0

    iget-wide v6, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->d:D

    sub-double/2addr v4, v6

    int-to-double v6, v12

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->a:I

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v6, v6, v16

    add-double/2addr v4, v6

    sub-int v6, v11, v15

    int-to-double v6, v6

    int-to-double v0, v8

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->i:I

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v9, v16, v18

    invoke-direct/range {v3 .. v10}, LCatalano/Imaging/Tools/HoughLine;-><init>(DDID)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 255
    :cond_5
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 258
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->j:I

    sub-int v3, v11, v3

    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->j:I

    add-int/2addr v6, v11

    :goto_5
    if-ge v3, v6, :cond_2

    .line 260
    if-gez v3, :cond_7

    .line 258
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 262
    :cond_7
    if-ge v3, v14, :cond_2

    .line 266
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    aget-object v7, v7, v4

    aget v7, v7, v3

    if-le v7, v8, :cond_6

    .line 267
    const/4 v2, 0x1

    .line 268
    goto :goto_4

    .line 235
    :cond_8
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_0

    .line 280
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->k:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 281
    return-void
.end method

.method private b(I)[LCatalano/Imaging/Tools/HoughLine;
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 289
    new-array v3, v2, [LCatalano/Imaging/Tools/HoughLine;

    .line 290
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 291
    iget-object v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->k:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/HoughLine;

    aput-object v0, v3, v1

    .line 290
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 294
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getLocalPeakRadius()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->j:I

    return v0
.end method

.method public getMaxSkewToDetect()D
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->d:D

    return-wide v0
.end method

.method public getSkewAngle(LCatalano/Imaging/FastBitmap;)D
    .locals 19

    .prologue
    .line 140
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 142
    invoke-direct/range {p0 .. p0}, LCatalano/Imaging/Tools/DocumentSkewChecker;->a()V

    .line 145
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 146
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    .line 147
    div-int/lit8 v5, v7, 0x2

    .line 148
    div-int/lit8 v6, v2, 0x2

    .line 153
    neg-int v4, v5

    .line 154
    neg-int v3, v6

    .line 155
    sub-int v8, v7, v5

    .line 156
    sub-int/2addr v2, v6

    add-int/lit8 v9, v2, -0x1

    .line 159
    mul-int v2, v5, v5

    mul-int v5, v6, v6

    add-int/2addr v2, v5

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v10, v10

    .line 160
    mul-int/lit8 v11, v10, 0x2

    .line 162
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    filled-new-array {v2, v11}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    move-object/from16 v0, p0

    iput-object v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    .line 164
    const/4 v2, 0x0

    move v6, v3

    .line 165
    :goto_0
    if-ge v6, v9, :cond_4

    move v3, v4

    move v5, v2

    .line 166
    :goto_1
    if-ge v3, v8, :cond_3

    .line 167
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    const/16 v12, 0x80

    if-ge v2, v12, :cond_2

    add-int v2, v5, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    const/16 v12, 0x80

    if-lt v2, v12, :cond_2

    .line 169
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    if-ge v2, v12, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->f:[D

    aget-wide v12, v12, v2

    int-to-double v14, v3

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->e:[D

    aget-wide v14, v14, v2

    int-to-double v0, v6

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    double-to-int v12, v12

    add-int/2addr v12, v10

    .line 172
    if-ltz v12, :cond_0

    if-lt v12, v11, :cond_1

    .line 169
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    aget-object v13, v13, v2

    aget v14, v13, v12

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v12

    goto :goto_3

    .line 166
    :cond_2
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v2

    goto :goto_1

    .line 165
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v5

    goto :goto_0

    .line 182
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->i:I

    .line 183
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->b:I

    if-ge v2, v3, :cond_7

    .line 185
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v11, :cond_6

    .line 187
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->i:I

    if-le v4, v5, :cond_5

    .line 189
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->h:[[I

    aget-object v4, v4, v2

    aget v4, v4, v3

    move-object/from16 v0, p0

    iput v4, v0, LCatalano/Imaging/Tools/DocumentSkewChecker;->i:I

    .line 185
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 183
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 194
    :cond_7
    div-int/lit8 v2, v7, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Tools/DocumentSkewChecker;->a(I)V

    .line 197
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Tools/DocumentSkewChecker;->b(I)[LCatalano/Imaging/Tools/HoughLine;

    move-result-object v8

    .line 199
    const-wide/16 v6, 0x0

    .line 200
    const-wide/16 v4, 0x0

    .line 202
    array-length v9, v8

    const/4 v2, 0x0

    move/from16 v18, v2

    move-wide v2, v4

    move-wide v4, v6

    move/from16 v6, v18

    :goto_6
    if-ge v6, v9, :cond_9

    aget-object v7, v8, v6

    .line 204
    invoke-virtual {v7}, LCatalano/Imaging/Tools/HoughLine;->getRelativeIntensity()D

    move-result-wide v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpl-double v10, v10, v12

    if-lez v10, :cond_8

    .line 206
    invoke-virtual {v7}, LCatalano/Imaging/Tools/HoughLine;->getTheta()D

    move-result-wide v10

    invoke-virtual {v7}, LCatalano/Imaging/Tools/HoughLine;->getRelativeIntensity()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 207
    invoke-virtual {v7}, LCatalano/Imaging/Tools/HoughLine;->getRelativeIntensity()D

    move-result-wide v10

    add-double/2addr v2, v10

    .line 202
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 210
    :cond_9
    array-length v6, v8

    if-lez v6, :cond_a

    div-double/2addr v4, v2

    .line 212
    :cond_a
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v2, v4, v2

    return-wide v2

    .line 216
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Document Skew Checker only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getStepsPerDegree()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->a:I

    return v0
.end method

.method public setLocalPeakRadius(I)V
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->j:I

    .line 123
    return-void
.end method

.method public setMaxSkewToDetect(D)V
    .locals 5

    .prologue
    .line 101
    const-wide/16 v0, 0x0

    const-wide v2, 0x4046800000000000L    # 45.0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->d:D

    .line 102
    return-void
.end method

.method public setStepsPerDegree(I)V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Tools/DocumentSkewChecker;->a:I

    .line 78
    return-void
.end method
