.class public LCatalano/Imaging/Tools/OrthogonalVariantMoments;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[D
    .locals 18

    .prologue
    .line 47
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Orthogonal Variant Moments only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_0
    const/4 v2, 0x5

    new-array v7, v2, [D

    .line 54
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, LCatalano/Imaging/Tools/ImageMoments;->getRawMoment(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    aput-wide v4, v7, v2

    .line 56
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    .line 57
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v11

    .line 58
    mul-int v2, v10, v11

    int-to-double v12, v2

    .line 61
    add-int/lit8 v2, v11, -0x1

    filled-new-array {v2, v10}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 62
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    add-int/lit8 v3, v11, -0x1

    if-ge v4, v3, :cond_2

    .line 63
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v10, :cond_1

    .line 64
    aget-object v5, v2, v4

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-double v8, v6

    aput-wide v8, v5, v3

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    .line 68
    :cond_2
    invoke-static {v2}, LCatalano/Math/Matrix;->SumAbs([[D)D

    move-result-wide v14

    .line 70
    const-wide/16 v4, 0x0

    .line 71
    const/4 v3, 0x0

    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_4

    .line 72
    const/4 v6, 0x0

    :goto_3
    const/4 v8, 0x0

    aget-object v8, v2, v8

    array-length v8, v8

    if-ge v6, v8, :cond_3

    .line 73
    aget-object v8, v2, v3

    aget-wide v8, v8, v6

    aget-object v16, v2, v3

    aget-wide v16, v16, v6

    mul-double v8, v8, v16

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, v16

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v8, v4

    .line 72
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v8

    goto :goto_3

    .line 71
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 77
    :cond_4
    const/4 v3, 0x2

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    add-double/2addr v4, v8

    div-double/2addr v4, v12

    aput-wide v4, v7, v3

    .line 80
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    div-double v4, v14, v4

    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double v14, v4, v8

    .line 81
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 82
    const/4 v3, 0x0

    :goto_4
    array-length v6, v2

    if-ge v3, v6, :cond_6

    .line 83
    const/4 v6, 0x0

    :goto_5
    const/4 v8, 0x0

    aget-object v8, v2, v8

    array-length v8, v8

    if-ge v6, v8, :cond_5

    .line 84
    aget-object v8, v2, v3

    aget-wide v8, v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-int/lit8 v16, v3, 0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    add-double/2addr v8, v4

    .line 83
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v8

    goto :goto_5

    .line 82
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 88
    :cond_6
    const/4 v2, 0x4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    div-double/2addr v4, v14

    aput-wide v4, v7, v2

    .line 91
    add-int/lit8 v2, v10, -0x1

    filled-new-array {v11, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 92
    const/4 v3, 0x0

    :goto_6
    array-length v4, v2

    if-ge v3, v4, :cond_8

    .line 93
    const/4 v4, 0x0

    :goto_7
    const/4 v5, 0x0

    aget-object v5, v2, v5

    array-length v5, v5

    if-ge v4, v5, :cond_7

    .line 94
    aget-object v5, v2, v3

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    sub-int/2addr v6, v8

    int-to-double v8, v6

    aput-wide v8, v5, v4

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 92
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 98
    :cond_8
    invoke-static {v2}, LCatalano/Math/Matrix;->SumAbs([[D)D

    move-result-wide v10

    .line 100
    const-wide/16 v4, 0x0

    .line 101
    const/4 v3, 0x0

    :goto_8
    array-length v6, v2

    if-ge v3, v6, :cond_a

    .line 102
    const/4 v6, 0x0

    :goto_9
    const/4 v8, 0x0

    aget-object v8, v2, v8

    array-length v8, v8

    if-ge v6, v8, :cond_9

    .line 103
    aget-object v8, v2, v3

    aget-wide v8, v8, v6

    aget-object v14, v2, v3

    aget-wide v14, v14, v6

    mul-double/2addr v8, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    add-double/2addr v8, v4

    .line 102
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v8

    goto :goto_9

    .line 101
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 107
    :cond_a
    const/4 v3, 0x1

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    add-double/2addr v4, v8

    div-double/2addr v4, v12

    aput-wide v4, v7, v3

    .line 110
    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    div-double v4, v10, v4

    const-wide v8, 0x3fb999999999999aL    # 0.1

    add-double v10, v4, v8

    .line 111
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 112
    const/4 v3, 0x0

    :goto_a
    array-length v6, v2

    if-ge v3, v6, :cond_c

    .line 113
    const/4 v6, 0x0

    :goto_b
    const/4 v8, 0x0

    aget-object v8, v2, v8

    array-length v8, v8

    if-ge v6, v8, :cond_b

    .line 114
    aget-object v8, v2, v3

    aget-wide v8, v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    add-int/lit8 v12, v6, 0x1

    int-to-double v12, v12

    mul-double/2addr v8, v12

    add-double/2addr v8, v4

    .line 113
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v8

    goto :goto_b

    .line 112
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 118
    :cond_c
    const/4 v2, 0x3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v8

    div-double/2addr v4, v10

    aput-wide v4, v7, v2

    .line 120
    return-object v7
.end method
