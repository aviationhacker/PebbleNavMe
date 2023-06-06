.class public LCatalano/Imaging/Filters/BinaryWatershed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private final a:[I

.field private final b:[I

.field private c:[I

.field private final d:F

.field private e:I

.field private f:I

.field private g:I

.field private h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

.field private i:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->a:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->b:[I

    .line 47
    const v0, 0x3fb504f3

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->d:F

    .line 52
    sget-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 53
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->i:F

    .line 58
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 45
    :array_1
    .array-data 4
        -0x1
        -0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
    .end array-data
.end method

.method public constructor <init>(F)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->a:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->b:[I

    .line 47
    const v0, 0x3fb504f3

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->d:F

    .line 52
    sget-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 53
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->i:F

    .line 65
    iput p1, p0, LCatalano/Imaging/Filters/BinaryWatershed;->i:F

    .line 66
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 45
    :array_1
    .array-data 4
        -0x1
        -0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
    .end array-data
.end method

.method public constructor <init>(FLCatalano/Imaging/Filters/DistanceTransform$Distance;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->a:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->b:[I

    .line 47
    const v0, 0x3fb504f3

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->d:F

    .line 52
    sget-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 53
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->i:F

    .line 74
    iput p1, p0, LCatalano/Imaging/Filters/BinaryWatershed;->i:F

    .line 75
    iput-object p2, p0, LCatalano/Imaging/Filters/BinaryWatershed;->h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 76
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 45
    :array_1
    .array-data 4
        -0x1
        -0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
    .end array-data
.end method

.method public constructor <init>(LCatalano/Imaging/Filters/DistanceTransform$Distance;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->a:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->b:[I

    .line 47
    const v0, 0x3fb504f3

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->d:F

    .line 52
    sget-object v0, LCatalano/Imaging/Filters/DistanceTransform$Distance;->Euclidean:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 53
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->i:F

    .line 83
    iput-object p1, p0, LCatalano/Imaging/Filters/BinaryWatershed;->h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    .line 84
    return-void

    .line 44
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 45
    :array_1
    .array-data 4
        -0x1
        -0x1
        0x0
        0x1
        0x1
        0x1
        0x0
        -0x1
    .end array-data
.end method

.method private a(II[FII)F
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 597
    add-int/lit8 v1, p4, -0x1

    .line 598
    add-int/lit8 v2, p5, -0x1

    .line 599
    mul-int v3, p2, p4

    add-int v6, p1, v3

    .line 600
    aget v3, p3, v6

    .line 601
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eq p1, v1, :cond_0

    if-eq p2, v2, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-nez v1, :cond_2

    :cond_0
    move v2, v3

    .line 621
    :cond_1
    :goto_0
    return v2

    .line 604
    :cond_2
    const v1, 0x3f3504f3

    add-float v2, v3, v1

    move v5, v0

    move v1, v0

    .line 606
    :goto_1
    const/4 v0, 0x4

    if-ge v5, v0, :cond_5

    .line 607
    add-int/lit8 v0, v5, 0x4

    rem-int/lit8 v0, v0, 0x8

    .line 608
    iget-object v4, p0, LCatalano/Imaging/Filters/BinaryWatershed;->c:[I

    aget v4, v4, v5

    add-int/2addr v4, v6

    aget v4, p3, v4

    .line 609
    iget-object v7, p0, LCatalano/Imaging/Filters/BinaryWatershed;->c:[I

    aget v0, v7, v0

    add-int/2addr v0, v6

    aget v0, p3, v0

    .line 611
    cmpl-float v7, v3, v4

    if-ltz v7, :cond_3

    cmpl-float v7, v3, v0

    if-ltz v7, :cond_3

    .line 612
    const/4 v1, 0x1

    .line 613
    add-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 617
    :goto_2
    rem-int/lit8 v4, v5, 0x2

    if-nez v4, :cond_4

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_3
    add-float/2addr v0, v4

    .line 618
    cmpl-float v4, v2, v0

    if-lez v4, :cond_6

    .line 606
    :goto_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto :goto_1

    .line 615
    :cond_3
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2

    .line 617
    :cond_4
    const v4, 0x3fb504f3

    goto :goto_3

    .line 620
    :cond_5
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_4
.end method

.method private a(ILCatalano/Imaging/FastBitmap;[III[I[I)I
    .locals 17

    .prologue
    .line 500
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 501
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    .line 502
    add-int/lit8 v7, v6, -0x1

    .line 503
    add-int/lit8 v8, v1, -0x1

    .line 504
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v9

    .line 506
    const/4 v3, 0x0

    .line 507
    const/4 v2, 0x0

    .line 508
    const/4 v1, 0x0

    move/from16 v4, p4

    move v5, v1

    :goto_0
    move/from16 v0, p5

    if-ge v5, v0, :cond_9

    .line 509
    aget v10, p6, v4

    .line 510
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/BinaryWatershed;->e:I

    and-int v11, v10, v1

    .line 511
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/BinaryWatershed;->f:I

    and-int/2addr v1, v10

    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Filters/BinaryWatershed;->g:I

    shr-int v12, v1, v12

    .line 512
    mul-int v1, v12, v6

    add-int v13, v11, v1

    .line 513
    const/4 v1, 0x0

    .line 514
    if-lez v12, :cond_0

    sub-int v14, v13, v6

    aget v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_0

    .line 515
    const/4 v1, 0x1

    .line 516
    :cond_0
    if-ge v11, v7, :cond_1

    if-lez v12, :cond_1

    sub-int v14, v13, v6

    add-int/lit8 v14, v14, 0x1

    aget v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_1

    .line 517
    xor-int/lit8 v1, v1, 0x2

    .line 518
    :cond_1
    if-ge v11, v7, :cond_2

    add-int/lit8 v14, v13, 0x1

    aget v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_2

    .line 519
    xor-int/lit8 v1, v1, 0x4

    .line 520
    :cond_2
    if-ge v11, v7, :cond_3

    if-ge v12, v8, :cond_3

    add-int v14, v13, v6

    add-int/lit8 v14, v14, 0x1

    aget v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_3

    .line 521
    xor-int/lit8 v1, v1, 0x8

    .line 522
    :cond_3
    if-ge v12, v8, :cond_4

    add-int v14, v13, v6

    aget v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_4

    .line 523
    xor-int/lit8 v1, v1, 0x10

    .line 524
    :cond_4
    if-lez v11, :cond_5

    if-ge v12, v8, :cond_5

    add-int v14, v13, v6

    add-int/lit8 v14, v14, -0x1

    aget v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_5

    .line 525
    xor-int/lit8 v1, v1, 0x20

    .line 526
    :cond_5
    if-lez v11, :cond_6

    add-int/lit8 v14, v13, -0x1

    aget v14, v9, v14

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0xff

    if-ne v14, v15, :cond_6

    .line 527
    xor-int/lit8 v1, v1, 0x40

    .line 528
    :cond_6
    if-lez v11, :cond_7

    if-lez v12, :cond_7

    sub-int v11, v13, v6

    add-int/lit8 v11, v11, -0x1

    aget v11, v9, v11

    and-int/lit16 v11, v11, 0xff

    const/16 v12, 0xff

    if-ne v11, v12, :cond_7

    .line 529
    xor-int/lit16 v1, v1, 0x80

    .line 530
    :cond_7
    const/4 v11, 0x1

    shl-int v11, v11, p1

    .line 531
    aget v1, p3, v1

    and-int/2addr v1, v11

    if-ne v1, v11, :cond_8

    .line 532
    add-int/lit8 v1, v3, 0x1

    aput v13, p7, v3

    move/from16 v16, v2

    move v2, v1

    move/from16 v1, v16

    .line 508
    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    goto/16 :goto_0

    .line 534
    :cond_8
    add-int/lit8 v1, v2, 0x1

    add-int v2, v2, p4

    aput v10, p6, v2

    move v2, v3

    goto :goto_1

    .line 537
    :cond_9
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 538
    aget v2, p7, v1

    const/4 v4, -0x1

    aput v4, v9, v2

    .line 537
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 539
    :cond_a
    return v3
.end method

.method private a([[FLCatalano/Imaging/FastBitmap;FD)LCatalano/Imaging/FastBitmap;
    .locals 20

    .prologue
    .line 312
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v7, v2

    .line 313
    move-object/from16 v0, p1

    array-length v8, v0

    .line 314
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v9

    .line 315
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 316
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 318
    move/from16 v0, p3

    float-to-double v4, v0

    sub-double/2addr v4, v2

    const-wide v12, 0x3f602e78d62b475cL    # 0.001975284584980237

    mul-double/2addr v4, v12

    sub-double v12, v2, v4

    .line 319
    const-wide v4, 0x406fa00000000000L    # 253.0

    move/from16 v0, p3

    float-to-double v14, v0

    sub-double v2, v14, v2

    div-double v2, v4, v2

    .line 321
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_0

    .line 322
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 324
    :cond_0
    new-instance v14, LCatalano/Imaging/FastBitmap;

    sget-object v4, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v14, v7, v8, v4}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 326
    invoke-virtual {v14}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v15

    .line 328
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    :goto_0
    if-ge v6, v8, :cond_6

    .line 329
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_5

    .line 330
    aget-object v16, p1, v6

    aget v16, v16, v4

    .line 331
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v17, v18, v10

    if-gez v17, :cond_1

    .line 332
    const/16 v16, 0x0

    aput v16, v15, v5

    .line 329
    :goto_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 333
    :cond_1
    aget v17, v9, v5

    and-int/lit8 v17, v17, 0x8

    if-eqz v17, :cond_2

    .line 334
    const/16 v16, -0x1

    aput v16, v15, v5

    goto :goto_2

    .line 336
    :cond_2
    const-wide/16 v18, 0x1

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v16, v16, v12

    mul-double v16, v16, v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    add-long v16, v16, v18

    .line 337
    const-wide/16 v18, 0x1

    cmp-long v18, v16, v18

    if-gez v18, :cond_3

    const/16 v16, 0x1

    aput v16, v15, v5

    goto :goto_2

    .line 338
    :cond_3
    const-wide/16 v18, 0xfe

    cmp-long v18, v16, v18

    if-gtz v18, :cond_4

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput v16, v15, v5

    goto :goto_2

    .line 339
    :cond_4
    const/16 v16, -0x2

    aput v16, v15, v5

    goto :goto_2

    .line 328
    :cond_5
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 343
    :cond_6
    return-object v14
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 135
    move v0, v1

    move v2, v3

    .line 137
    :cond_0
    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v0, v0, 0x2

    .line 139
    if-lt v0, p1, :cond_0

    .line 140
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->e:I

    .line 141
    iget v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->e:I

    xor-int/lit8 v0, v0, -0x1

    iput v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->f:I

    .line 142
    iput v2, p0, LCatalano/Imaging/Filters/BinaryWatershed;->g:I

    .line 144
    const/16 v0, 0x8

    new-array v0, v0, [I

    neg-int v2, p1

    aput v2, v0, v3

    neg-int v2, p1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    add-int/lit8 v2, p1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    const/4 v1, 0x5

    add-int/lit8 v2, p1, -0x1

    aput v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, -0x1

    aput v2, v0, v1

    const/4 v1, 0x7

    neg-int v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->c:[I

    .line 147
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    .line 97
    new-instance v10, LCatalano/Imaging/Filters/DistanceTransform;

    iget-object v0, p0, LCatalano/Imaging/Filters/BinaryWatershed;->h:LCatalano/Imaging/Filters/DistanceTransform$Distance;

    invoke-direct {v10, v0}, LCatalano/Imaging/Filters/DistanceTransform;-><init>(LCatalano/Imaging/Filters/DistanceTransform$Distance;)V

    .line 98
    invoke-virtual {v10, p1}, LCatalano/Imaging/Filters/DistanceTransform;->Compute(LCatalano/Imaging/FastBitmap;)[[F

    move-result-object v1

    .line 101
    array-length v0, v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v2, v0, [F

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 104
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 105
    add-int/lit8 v5, v3, 0x1

    aget-object v6, v1, v0

    aget v6, v6, v4

    aput v6, v2, v3

    .line 104
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    aget-object v0, v1, v0

    array-length v0, v0

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/BinaryWatershed;->a(I)V

    .line 112
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    .line 113
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 115
    new-instance v3, LCatalano/Imaging/FastBitmap;

    sget-object v5, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v3, v0, v4, v5}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 118
    const/4 v4, 0x0

    invoke-virtual {v10}, LCatalano/Imaging/Filters/DistanceTransform;->getMaximumDistance()F

    move-result v5

    const-wide v6, -0x3ed756e000000000L    # -808080.0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a([[F[FLCatalano/Imaging/FastBitmap;FFD)[J

    move-result-object v7

    .line 121
    const v9, 0x3f471f0c

    .line 122
    iget v8, p0, LCatalano/Imaging/Filters/BinaryWatershed;->i:F

    move-object v4, p0

    move-object v5, v2

    move-object v6, v3

    invoke-direct/range {v4 .. v9}, LCatalano/Imaging/Filters/BinaryWatershed;->a([FLCatalano/Imaging/FastBitmap;[JFF)V

    .line 125
    invoke-virtual {v10}, LCatalano/Imaging/Filters/DistanceTransform;->getMaximumDistance()F

    move-result v11

    const-wide v12, -0x3ed756e000000000L    # -808080.0

    move-object v8, p0

    move-object v9, v1

    move-object v10, v3

    invoke-direct/range {v8 .. v13}, LCatalano/Imaging/Filters/BinaryWatershed;->a([[FLCatalano/Imaging/FastBitmap;FD)LCatalano/Imaging/FastBitmap;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0, v3, v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;[J)V

    .line 128
    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/BinaryWatershed;->b(LCatalano/Imaging/FastBitmap;)Z

    .line 129
    invoke-static {v0}, LCatalano/Imaging/Filters/BinaryWatershed;->c(LCatalano/Imaging/FastBitmap;)V

    .line 131
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 132
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;[J)V
    .locals 20

    .prologue
    .line 348
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 349
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 350
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v15

    .line 351
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v16

    .line 352
    move-object/from16 v0, p3

    array-length v2, v0

    .line 353
    mul-int v3, v6, v7

    new-array v0, v3, [I

    move-object/from16 v17, v0

    .line 354
    add-int/lit8 v2, v2, -0x1

    move v14, v2

    :goto_0
    if-ltz v14, :cond_a

    .line 355
    aget-wide v2, p3, v14

    long-to-int v2, v2

    .line 356
    aget v3, v16, v2

    and-int/lit8 v3, v3, 0x48

    if-eqz v3, :cond_1

    .line 354
    :cond_0
    add-int/lit8 v2, v14, -0x1

    move v14, v2

    goto :goto_0

    .line 357
    :cond_1
    aget v3, v15, v2

    and-int/lit16 v3, v3, 0xff

    .line 358
    add-int/lit8 v3, v3, 0x1

    .line 359
    const/4 v4, 0x0

    aput v2, v17, v4

    .line 361
    aget v4, v16, v2

    or-int/lit8 v4, v4, 0x2

    aput v4, v16, v2

    .line 362
    const/4 v11, 0x1

    .line 363
    const/4 v10, 0x1

    .line 365
    const/4 v2, 0x0

    move v4, v3

    move v3, v10

    move v10, v11

    .line 366
    :goto_1
    if-nez v2, :cond_8

    if-lez v4, :cond_8

    .line 367
    add-int/lit8 v13, v4, -0x1

    .line 369
    const/4 v3, 0x0

    move v8, v2

    move v9, v3

    move v2, v10

    .line 371
    :goto_2
    aget v18, v17, v9

    .line 372
    rem-int v3, v18, v6

    .line 373
    div-int v4, v18, v6

    .line 374
    if-eqz v4, :cond_4

    add-int/lit8 v5, v7, -0x1

    if-eq v4, v5, :cond_4

    if-eqz v3, :cond_4

    add-int/lit8 v5, v6, -0x1

    if-eq v3, v5, :cond_4

    const/4 v5, 0x1

    move v12, v5

    .line 375
    :goto_3
    const/4 v5, 0x0

    move v11, v2

    :goto_4
    const/16 v2, 0x8

    if-ge v5, v2, :cond_c

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/BinaryWatershed;->c:[I

    aget v2, v2, v5

    add-int v19, v18, v2

    .line 377
    if-nez v12, :cond_2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a(IIIII)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_2
    aget v2, v16, v19

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    .line 378
    aget v2, v16, v19

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_3

    aget v2, v16, v19

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_5

    aget v2, v15, v19

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v13, :cond_5

    .line 379
    :cond_3
    const/4 v2, 0x1

    .line 391
    :goto_5
    if-eqz v2, :cond_7

    move v3, v10

    move v4, v13

    move v10, v11

    goto :goto_1

    .line 374
    :cond_4
    const/4 v5, 0x0

    move v12, v5

    goto :goto_3

    .line 382
    :cond_5
    aget v2, v15, v19

    and-int/lit16 v2, v2, 0xff

    if-lt v2, v13, :cond_6

    aget v2, v16, v19

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_6

    .line 383
    aput v19, v17, v11

    .line 386
    add-int/lit8 v11, v11, 0x1

    .line 387
    aget v2, v16, v19

    or-int/lit8 v2, v2, 0x2

    aput v2, v16, v19

    .line 375
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 392
    :cond_7
    add-int/lit8 v3, v9, 0x1

    .line 393
    if-lt v3, v11, :cond_b

    move v3, v10

    move v4, v13

    move v10, v11

    goto :goto_1

    .line 395
    :cond_8
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v10, :cond_9

    .line 396
    aget v5, v17, v2

    aget v8, v16, v5

    and-int/lit8 v8, v8, -0x3

    aput v8, v16, v5

    .line 395
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 397
    :cond_9
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_0

    .line 398
    aget v5, v17, v2

    .line 399
    int-to-byte v8, v4

    aput v8, v15, v5

    .line 400
    aget v8, v16, v5

    or-int/lit8 v8, v8, 0x40

    aput v8, v16, v5

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 403
    :cond_a
    return-void

    :cond_b
    move v8, v2

    move v9, v3

    move v2, v11

    goto/16 :goto_2

    :cond_c
    move v2, v8

    goto :goto_5
.end method

.method private a([FLCatalano/Imaging/FastBitmap;[JFF)V
    .locals 33

    .prologue
    .line 203
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v6

    .line 204
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    .line 205
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v30

    .line 206
    move-object/from16 v0, p3

    array-length v2, v0

    .line 207
    mul-int v3, v6, v7

    new-array v0, v3, [I

    move-object/from16 v31, v0

    .line 209
    add-int/lit8 v2, v2, -0x1

    move/from16 v29, v2

    :goto_0
    if-ltz v29, :cond_d

    .line 210
    aget-wide v2, p3, v29

    long-to-int v8, v2

    .line 212
    aget v2, v30, v8

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 209
    :cond_0
    add-int/lit8 v2, v29, -0x1

    move/from16 v29, v2

    goto :goto_0

    .line 215
    :cond_1
    rem-int v3, v8, v6

    .line 216
    div-int v4, v8, v6

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    .line 217
    invoke-direct/range {v2 .. v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a(II[FII)F

    move-result v2

    move v5, v8

    .line 220
    :goto_1
    const/4 v8, 0x0

    aput v5, v31, v8

    .line 221
    aget v8, v30, v5

    or-int/lit8 v8, v8, 0x12

    aput v8, v30, v5

    .line 222
    const/4 v15, 0x1

    .line 223
    const/4 v14, 0x0

    .line 224
    const/16 v16, 0x0

    .line 225
    const/4 v9, 0x1

    .line 226
    int-to-double v12, v3

    .line 227
    int-to-double v10, v4

    .line 228
    const/4 v8, 0x1

    move/from16 v19, v9

    move/from16 v24, v14

    move/from16 v17, v5

    move v5, v15

    move v14, v2

    move v2, v8

    move v15, v4

    move-wide v8, v10

    move-wide v10, v12

    move/from16 v12, v16

    move/from16 v16, v3

    .line 230
    :goto_2
    aget v32, v31, v24

    .line 231
    rem-int v3, v32, v6

    .line 232
    div-int v4, v32, v6

    .line 234
    if-eqz v4, :cond_4

    add-int/lit8 v13, v7, -0x1

    if-eq v4, v13, :cond_4

    if-eqz v3, :cond_4

    add-int/lit8 v13, v6, -0x1

    if-eq v3, v13, :cond_4

    const/4 v13, 0x1

    move/from16 v27, v13

    .line 235
    :goto_3
    const/4 v13, 0x0

    move/from16 v18, v2

    move-wide/from16 v20, v8

    move-wide/from16 v22, v10

    move/from16 v25, v5

    move/from16 v26, v12

    move v5, v13

    :goto_4
    const/16 v2, 0x8

    if-ge v5, v2, :cond_10

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/BinaryWatershed;->c:[I

    aget v2, v2, v5

    add-int v28, v32, v2

    .line 237
    if-nez v27, :cond_2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a(IIIII)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    aget v2, v30, v28

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 238
    aget v2, p1, v28

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-gtz v2, :cond_5

    .line 235
    :cond_3
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 234
    :cond_4
    const/4 v13, 0x0

    move/from16 v27, v13

    goto :goto_3

    .line 239
    :cond_5
    aget v2, v30, v28

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 240
    const/4 v2, 0x0

    .line 272
    :goto_6
    add-int/lit8 v3, v24, 0x1

    .line 273
    move/from16 v0, v25

    if-lt v3, v0, :cond_f

    .line 275
    if-eqz v26, :cond_9

    .line 276
    const/4 v2, 0x0

    :goto_7
    move/from16 v0, v25

    if-ge v2, v0, :cond_c

    .line 277
    aget v3, v31, v2

    const/4 v4, 0x0

    aput v4, v30, v3

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 244
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/BinaryWatershed;->a:[I

    aget v2, v2, v5

    add-int v9, v3, v2

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/BinaryWatershed;->b:[I

    aget v2, v2, v5

    add-int v10, v4, v2

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move v12, v6

    move v13, v7

    .line 246
    invoke-direct/range {v8 .. v13}, LCatalano/Imaging/Filters/BinaryWatershed;->a(II[FII)F

    move-result v2

    .line 247
    add-float v8, v14, p5

    cmpl-float v8, v2, v8

    if-lez v8, :cond_7

    .line 248
    const/4 v2, 0x0

    .line 250
    goto :goto_6

    .line 251
    :cond_7
    sub-float v8, v14, p4

    cmpl-float v8, v2, v8

    if-ltz v8, :cond_3

    .line 252
    cmpl-float v8, v2, v14

    if-lez v8, :cond_8

    .line 253
    const/16 v26, 0x1

    move v14, v2

    move v15, v10

    move/from16 v16, v9

    move/from16 v17, v28

    .line 260
    :cond_8
    aput v28, v31, v25

    .line 261
    add-int/lit8 v25, v25, 0x1

    .line 262
    aget v8, v30, v28

    or-int/lit8 v8, v8, 0x2

    aput v8, v30, v28

    .line 263
    cmpl-float v2, v2, v14

    if-nez v2, :cond_3

    .line 264
    aget v2, v30, v28

    or-int/lit8 v2, v2, 0x10

    aput v2, v30, v28

    .line 265
    int-to-double v8, v9

    add-double v22, v22, v8

    .line 266
    int-to-double v8, v10

    add-double v20, v20, v8

    .line 267
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 279
    :cond_9
    if-eqz v2, :cond_a

    const/4 v3, 0x2

    :goto_8
    xor-int/lit8 v5, v3, -0x1

    .line 280
    move/from16 v0, v18

    int-to-double v8, v0

    div-double v12, v22, v8

    .line 281
    move/from16 v0, v18

    int-to-double v8, v0

    div-double v18, v20, v8

    .line 282
    const-wide v10, 0x4415af1d78b58c40L    # 1.0E20

    .line 283
    const/4 v3, 0x0

    .line 284
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v25

    if-ge v4, v0, :cond_b

    .line 285
    aget v8, v31, v4

    .line 286
    rem-int v9, v8, v6

    .line 287
    div-int v20, v8, v6

    .line 288
    aget v21, v30, v8

    and-int v21, v21, v5

    aput v21, v30, v8

    .line 289
    aget v21, v30, v8

    or-int/lit8 v21, v21, 0x4

    aput v21, v30, v8

    .line 290
    if-eqz v2, :cond_e

    .line 291
    aget v21, v30, v8

    or-int/lit8 v21, v21, 0x8

    aput v21, v30, v8

    .line 292
    aget v8, v30, v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_e

    .line 293
    int-to-double v0, v9

    move-wide/from16 v22, v0

    sub-double v22, v12, v22

    int-to-double v8, v9

    sub-double v8, v12, v8

    mul-double v8, v8, v22

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v22, v0

    sub-double v22, v18, v22

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    sub-double v20, v18, v20

    mul-double v20, v20, v22

    add-double v8, v8, v20

    .line 294
    cmpg-double v20, v8, v10

    if-gez v20, :cond_e

    move v3, v4

    .line 284
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-wide v10, v8

    goto :goto_9

    .line 279
    :cond_a
    const/16 v3, 0x12

    goto :goto_8

    .line 301
    :cond_b
    if-eqz v2, :cond_c

    .line 302
    aget v2, v31, v3

    .line 303
    aget v3, v30, v2

    or-int/lit8 v3, v3, 0x20

    aput v3, v30, v2

    .line 306
    :cond_c
    if-eqz v26, :cond_0

    move v2, v14

    move v4, v15

    move/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_1

    .line 308
    :cond_d
    return-void

    :cond_e
    move-wide v8, v10

    goto :goto_a

    :cond_f
    move-wide/from16 v8, v20

    move-wide/from16 v10, v22

    move/from16 v19, v2

    move/from16 v24, v3

    move/from16 v5, v25

    move/from16 v12, v26

    move/from16 v2, v18

    goto/16 :goto_2

    :cond_10
    move/from16 v2, v19

    goto/16 :goto_6
.end method

.method private a(IIIII)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 573
    add-int/lit8 v2, p4, -0x1

    .line 574
    add-int/lit8 v3, p5, -0x1

    .line 575
    packed-switch p3, :pswitch_data_0

    move v0, v1

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 577
    :pswitch_0
    if-gtz p2, :cond_0

    move v0, v1

    goto :goto_0

    .line 579
    :pswitch_1
    if-ge p1, v2, :cond_1

    if-gtz p2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 581
    :pswitch_2
    if-lt p1, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 583
    :pswitch_3
    if-ge p1, v2, :cond_2

    if-lt p2, v3, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 585
    :pswitch_4
    if-lt p2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 587
    :pswitch_5
    if-lez p1, :cond_3

    if-lt p2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 589
    :pswitch_6
    if-gtz p1, :cond_0

    move v0, v1

    goto :goto_0

    .line 591
    :pswitch_7
    if-lez p1, :cond_4

    if-gtz p2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a()[I
    .locals 11

    .prologue
    const/16 v10, 0x100

    const/16 v9, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 543
    new-array v6, v10, [I

    .line 544
    new-array v7, v9, [Z

    move v5, v2

    .line 545
    :goto_0
    if-ge v5, v10, :cond_9

    move v3, v1

    move v4, v2

    .line 546
    :goto_1
    if-ge v4, v9, :cond_1

    .line 547
    and-int v0, v5, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_2
    aput-boolean v0, v7, v4

    .line 548
    mul-int/lit8 v0, v3, 0x2

    .line 546
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 547
    goto :goto_2

    :cond_1
    move v0, v1

    move v3, v2

    .line 550
    :goto_3
    if-ge v3, v9, :cond_3

    .line 551
    add-int/lit8 v4, v3, 0x4

    rem-int/lit8 v4, v4, 0x8

    aget-boolean v4, v7, v4

    if-eqz v4, :cond_2

    aget v4, v6, v5

    or-int/2addr v4, v0

    aput v4, v6, v5

    .line 552
    :cond_2
    mul-int/lit8 v0, v0, 0x2

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v0, v2

    .line 554
    :goto_4
    if-ge v0, v9, :cond_5

    .line 555
    aget-boolean v3, v7, v0

    if-eqz v3, :cond_4

    .line 556
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x8

    aput-boolean v1, v7, v3

    .line 557
    add-int/lit8 v3, v0, 0x7

    rem-int/lit8 v3, v3, 0x8

    aput-boolean v1, v7, v3

    .line 554
    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_5
    move v3, v2

    move v0, v2

    .line 560
    :goto_5
    if-ge v3, v9, :cond_7

    .line 561
    aget-boolean v4, v7, v3

    add-int/lit8 v8, v3, 0x1

    rem-int/lit8 v8, v8, 0x8

    aget-boolean v8, v7, v8

    if-eq v4, v8, :cond_6

    .line 562
    add-int/lit8 v0, v0, 0x1

    .line 560
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 564
    :cond_7
    const/4 v3, 0x4

    if-lt v0, v3, :cond_8

    .line 565
    aput v2, v6, v5

    .line 545
    :cond_8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 569
    :cond_9
    return-object v6
.end method

.method private a([[F[FLCatalano/Imaging/FastBitmap;FFD)[J
    .locals 20

    .prologue
    .line 152
    invoke-virtual/range {p3 .. p3}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v16

    .line 154
    const/4 v2, 0x0

    .line 155
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v4, v3, :cond_5

    .line 156
    const/4 v5, 0x0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v3, v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v5

    move v13, v3

    move v12, v2

    move v3, v5

    :goto_1
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    if-ge v3, v2, :cond_4

    .line 157
    aget-object v2, p1, v4

    aget v17, v2, v3

    .line 158
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v6, v2

    move-object/from16 v0, p1

    array-length v7, v0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a(II[FII)F

    move-result v18

    .line 159
    cmpl-float v2, v17, p4

    if-eqz v2, :cond_1

    .line 160
    if-eqz v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_1

    if-eqz v4, :cond_1

    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-eq v4, v2, :cond_1

    .line 161
    move/from16 v0, v17

    float-to-double v6, v0

    cmpg-double v2, v6, p6

    if-ltz v2, :cond_1

    .line 162
    const/4 v15, 0x1

    .line 166
    if-eqz v4, :cond_2

    move-object/from16 v0, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-eq v4, v2, :cond_2

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v3, v2, :cond_2

    const/4 v2, 0x1

    move v14, v2

    .line 167
    :goto_2
    const/4 v5, 0x0

    :goto_3
    const/16 v2, 0x8

    if-ge v5, v2, :cond_9

    .line 168
    if-nez v14, :cond_0

    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v6, v2

    move-object/from16 v0, p1

    array-length v7, v0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a(IIIII)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 169
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/BinaryWatershed;->b:[I

    aget v2, v2, v5

    add-int/2addr v2, v4

    aget-object v2, p1, v2

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/BinaryWatershed;->a:[I

    aget v6, v6, v5

    add-int/2addr v6, v3

    aget v2, v2, v6

    .line 170
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/BinaryWatershed;->a:[I

    aget v6, v6, v5

    add-int v7, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/BinaryWatershed;->b:[I

    aget v6, v6, v5

    add-int v8, v4, v6

    const/4 v6, 0x0

    aget-object v6, p1, v6

    array-length v10, v6

    move-object/from16 v0, p1

    array-length v11, v0

    move-object/from16 v6, p0

    move-object/from16 v9, p2

    invoke-direct/range {v6 .. v11}, LCatalano/Imaging/Filters/BinaryWatershed;->a(II[FII)F

    move-result v6

    .line 171
    cmpl-float v2, v2, v17

    if-lez v2, :cond_3

    cmpl-float v2, v6, v18

    if-lez v2, :cond_3

    .line 172
    const/4 v2, 0x0

    .line 177
    :goto_4
    if-eqz v2, :cond_1

    .line 178
    const/4 v2, 0x1

    aput v2, v16, v13

    .line 179
    add-int/lit8 v12, v12, 0x1

    .line 156
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto/16 :goto_1

    .line 166
    :cond_2
    const/4 v2, 0x0

    move v14, v2

    goto :goto_2

    .line 167
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 155
    :cond_4
    add-int/lit8 v4, v4, 0x1

    move v2, v12

    goto/16 :goto_0

    .line 187
    :cond_5
    const-wide v4, 0x41ddcd6500000000L    # 2.0E9

    sub-float v3, p5, p4

    float-to-double v6, v3

    div-double/2addr v4, v6

    double-to-float v10, v4

    .line 188
    new-array v11, v2, [J

    .line 189
    const/4 v2, 0x0

    .line 190
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p1

    array-length v3, v0

    if-ge v4, v3, :cond_8

    .line 191
    const/4 v5, 0x0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v3, v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v5

    move v9, v3

    move v8, v2

    move v3, v5

    :goto_6
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    if-ge v3, v2, :cond_7

    .line 192
    aget v2, v16, v9

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    .line 193
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v6, v2

    move-object/from16 v0, p1

    array-length v7, v0

    move-object/from16 v2, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, LCatalano/Imaging/Filters/BinaryWatershed;->a(II[FII)F

    move-result v2

    .line 194
    sub-float v2, v2, p4

    mul-float/2addr v2, v10

    float-to-int v5, v2

    .line 195
    add-int/lit8 v2, v8, 0x1

    int-to-long v6, v5

    const/16 v5, 0x20

    shl-long/2addr v6, v5

    int-to-long v12, v9

    or-long/2addr v6, v12

    aput-wide v6, v11, v8

    move v8, v2

    .line 191
    :cond_6
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_6

    .line 190
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move v2, v8

    goto :goto_5

    .line 197
    :cond_8
    invoke-static {v11}, Ljava/util/Arrays;->sort([J)V

    .line 198
    return-object v11

    :cond_9
    move v2, v15

    goto :goto_4
.end method

.method private b(LCatalano/Imaging/FastBitmap;)Z
    .locals 24

    .prologue
    .line 406
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v13

    .line 407
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v14

    .line 408
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v17

    .line 413
    new-instance v1, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 415
    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v1

    invoke-virtual {v1}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v18

    .line 416
    mul-int v1, v13, v14

    const/4 v2, 0x0

    aget v2, v18, v2

    sub-int/2addr v1, v2

    const/16 v2, 0xff

    aget v2, v18, v2

    sub-int/2addr v1, v2

    .line 417
    new-array v7, v1, [I

    .line 418
    const/4 v4, 0x0

    .line 419
    const/4 v3, 0x0

    .line 420
    const/4 v1, 0x0

    .line 421
    const/16 v2, 0x100

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 422
    const/4 v2, 0x1

    move/from16 v23, v1

    move v1, v4

    move/from16 v4, v23

    :goto_0
    const/16 v5, 0xff

    if-ge v2, v5, :cond_2

    .line 423
    aput v4, v19, v2

    .line 424
    aget v5, v18, v2

    add-int/2addr v4, v5

    .line 425
    aget v5, v18, v2

    if-lez v5, :cond_0

    move v1, v2

    .line 426
    :cond_0
    aget v5, v18, v2

    if-le v5, v3, :cond_1

    aget v3, v18, v2

    .line 422
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_2
    add-int/lit8 v2, v1, 0x1

    new-array v6, v2, [I

    .line 429
    const/4 v2, 0x0

    const/4 v4, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v14, :cond_5

    .line 430
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v13, :cond_4

    .line 431
    aget v8, v17, v4

    and-int/lit16 v8, v8, 0xff

    .line 432
    if-lez v8, :cond_3

    const/16 v9, 0xff

    if-ge v8, v9, :cond_3

    .line 433
    aget v9, v19, v8

    aget v10, v6, v8

    add-int/2addr v9, v10

    .line 434
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/BinaryWatershed;->g:I

    shl-int v10, v5, v10

    or-int/2addr v10, v2

    aput v10, v7, v9

    .line 435
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 430
    :cond_3
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 429
    :cond_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 441
    :cond_5
    mul-int v2, v13, v14

    add-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v8, v2, [I

    .line 446
    invoke-direct/range {p0 .. p0}, LCatalano/Imaging/Filters/BinaryWatershed;->a()[I

    move-result-object v4

    .line 447
    const/16 v2, 0x8

    new-array v0, v2, [I

    move-object/from16 v20, v0

    fill-array-data v20, :array_0

    move v15, v1

    .line 448
    :goto_3
    const/4 v1, 0x1

    if-lt v15, v1, :cond_f

    .line 449
    aget v6, v18, v15

    .line 450
    const/4 v2, 0x0

    .line 451
    :cond_6
    :goto_4
    if-lez v6, :cond_7

    const/16 v1, 0x8

    if-ge v2, v1, :cond_7

    .line 452
    const/4 v1, 0x0

    move v9, v1

    move v10, v2

    .line 454
    :goto_5
    rem-int/lit8 v1, v9, 0x8

    aget v2, v20, v1

    aget v5, v19, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v8}, LCatalano/Imaging/Filters/BinaryWatershed;->a(ILCatalano/Imaging/FastBitmap;[III[I[I)I

    move-result v1

    .line 457
    sub-int/2addr v6, v1

    .line 458
    if-lez v1, :cond_13

    const/4 v3, 0x0

    .line 459
    :goto_6
    add-int/lit8 v1, v9, 0x1

    .line 460
    if-lez v6, :cond_12

    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x8

    if-ge v3, v5, :cond_6

    move v9, v1

    move v10, v2

    goto :goto_5

    .line 462
    :cond_7
    if-lez v6, :cond_e

    const/4 v1, 0x1

    if-le v15, v1, :cond_e

    move v1, v15

    .line 465
    :goto_7
    add-int/lit8 v16, v1, -0x1

    .line 466
    const/4 v1, 0x1

    move/from16 v0, v16

    if-le v0, v1, :cond_8

    aget v1, v18, v16

    if-eqz v1, :cond_11

    .line 472
    :cond_8
    if-lez v16, :cond_e

    .line 473
    aget v1, v19, v16

    aget v2, v18, v16

    add-int v3, v1, v2

    .line 474
    const/4 v2, 0x0

    aget v1, v19, v15

    move v5, v2

    move v2, v3

    move v3, v1

    :goto_8
    if-ge v5, v6, :cond_d

    .line 475
    aget v21, v7, v3

    .line 476
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/BinaryWatershed;->e:I

    and-int v10, v21, v1

    .line 477
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/BinaryWatershed;->f:I

    and-int v1, v1, v21

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/BinaryWatershed;->g:I

    shr-int v11, v1, v9

    .line 478
    mul-int v1, v11, v13

    add-int v22, v10, v1

    .line 479
    const/4 v1, 0x0

    .line 480
    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    add-int/lit8 v9, v13, -0x1

    if-eq v10, v9, :cond_9

    add-int/lit8 v9, v14, -0x1

    if-ne v11, v9, :cond_b

    .line 481
    :cond_9
    const/4 v1, 0x1

    .line 487
    :cond_a
    :goto_9
    if-eqz v1, :cond_10

    .line 488
    add-int/lit8 v1, v2, 0x1

    aput v21, v7, v2

    .line 474
    :goto_a
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_8

    .line 482
    :cond_b
    const/4 v12, 0x0

    :goto_b
    const/16 v9, 0x8

    if-ge v12, v9, :cond_a

    move-object/from16 v9, p0

    .line 483
    invoke-direct/range {v9 .. v14}, LCatalano/Imaging/Filters/BinaryWatershed;->a(IIIII)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Filters/BinaryWatershed;->c:[I

    aget v9, v9, v12

    add-int v9, v9, v22

    aget v9, v17, v9

    if-nez v9, :cond_c

    .line 484
    const/4 v1, 0x1

    .line 485
    goto :goto_9

    .line 482
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 491
    :cond_d
    aget v1, v19, v16

    sub-int v1, v2, v1

    aput v1, v18, v16

    .line 448
    :cond_e
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_3

    .line 495
    :cond_f
    const/4 v1, 0x1

    return v1

    :cond_10
    move v1, v2

    goto :goto_a

    :cond_11
    move/from16 v1, v16

    goto :goto_7

    :cond_12
    move v2, v3

    goto/16 :goto_4

    :cond_13
    move v3, v10

    goto/16 :goto_6

    .line 447
    :array_0
    .array-data 4
        0x7
        0x3
        0x1
        0x5
        0x0
        0x4
        0x2
        0x6
    .end array-data
.end method

.method private static c(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 626
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getData()[I

    move-result-object v2

    .line 627
    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int/2addr v3, v0

    move v0, v1

    .line 628
    :goto_0
    if-ge v0, v3, :cond_1

    .line 629
    aget v4, v2, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ge v4, v5, :cond_0

    .line 630
    aput v1, v2, v0

    .line 628
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 632
    :cond_1
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 88
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Watershed only works in grayscale (binary) images"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/BinaryWatershed;->a(LCatalano/Imaging/FastBitmap;)V

    .line 93
    return-void
.end method
