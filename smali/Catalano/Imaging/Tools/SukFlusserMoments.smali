.class public LCatalano/Imaging/Tools/SukFlusserMoments;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;II)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 210
    const-wide/16 v2, 0x0

    move v4, v1

    .line 211
    :goto_0
    if-ge v4, p3, :cond_1

    move v0, v1

    .line 212
    :goto_1
    if-ge v0, p2, :cond_0

    .line 213
    invoke-virtual {p1, v4, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-double v6, v5

    add-double/2addr v2, v6

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 216
    :cond_1
    return-wide v2
.end method

.method private a([D[DIILCatalano/Imaging/FastBitmap;II)D
    .locals 15

    .prologue
    .line 243
    const-wide/16 v4, 0x0

    .line 244
    const/4 v3, 0x0

    .line 245
    const/4 v2, 0x0

    move v6, v2

    :goto_0
    move/from16 v0, p6

    if-ge v6, v0, :cond_2

    .line 246
    const/4 v2, 0x0

    move v14, v2

    move v2, v3

    move v3, v14

    :goto_1
    move/from16 v0, p7

    if-ge v3, v0, :cond_1

    .line 247
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    if-lez v7, :cond_0

    .line 248
    aget-wide v8, p1, v2

    move/from16 v0, p3

    int-to-double v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    aget-wide v10, p2, v2

    move/from16 v0, p4

    int-to-double v12, v0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v10, v7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 249
    add-int/lit8 v2, v2, 0x1

    .line 246
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 245
    :cond_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v2

    goto :goto_0

    .line 254
    :cond_2
    return-wide v4
.end method

.method private a(LCatalano/Imaging/FastBitmap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 189
    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    move v0, v1

    .line 190
    :goto_1
    if-ge v0, p3, :cond_1

    .line 191
    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    if-lez v3, :cond_0

    .line 192
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 197
    :cond_2
    return-void
.end method

.method private a(Ljava/util/ArrayList;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [D

    .line 202
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 203
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v4, v0

    aput-wide v4, v2, v1

    .line 202
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 205
    :cond_0
    return-object v2
.end method

.method private a([DLCatalano/Imaging/FastBitmap;IID)[D
    .locals 11

    .prologue
    .line 222
    const-wide/16 v2, 0x0

    .line 223
    const/4 v1, 0x0

    .line 224
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, p3, :cond_2

    .line 225
    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_1
    if-ge v1, p4, :cond_1

    .line 226
    invoke-virtual {p2, v1, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    if-lez v5, :cond_0

    .line 227
    aget-wide v6, p1, v0

    invoke-virtual {p2, v1, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    int-to-double v8, v5

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    .line 228
    add-int/lit8 v0, v0, 0x1

    .line 225
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_0

    .line 233
    :cond_2
    const/4 v0, 0x0

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 234
    aget-wide v4, p1, v0

    div-double v6, v2, p5

    sub-double/2addr v4, v6

    aput-wide v4, p1, v0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 237
    :cond_3
    return-object p1
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[D
    .locals 64

    .prologue
    .line 51
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    .line 53
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 57
    invoke-direct/range {v2 .. v7}, LCatalano/Imaging/Tools/SukFlusserMoments;->a(LCatalano/Imaging/FastBitmap;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 59
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, LCatalano/Imaging/Tools/SukFlusserMoments;->a(Ljava/util/ArrayList;)[D

    move-result-object v8

    .line 60
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, LCatalano/Imaging/Tools/SukFlusserMoments;->a(Ljava/util/ArrayList;)[D

    move-result-object v2

    .line 62
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, LCatalano/Imaging/Tools/SukFlusserMoments;->a(LCatalano/Imaging/FastBitmap;II)D

    move-result-wide v12

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    .line 64
    invoke-direct/range {v7 .. v13}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([DLCatalano/Imaging/FastBitmap;IID)[D

    move-result-object v15

    move-object/from16 v7, p0

    move-object v8, v2

    move-object/from16 v9, p1

    move v10, v4

    move v11, v5

    .line 65
    invoke-direct/range {v7 .. v13}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([DLCatalano/Imaging/FastBitmap;IID)[D

    move-result-object v16

    .line 68
    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v2

    .line 69
    const/16 v17, 0x0

    const/16 v18, 0x2

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v6

    .line 70
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v8

    .line 73
    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v10

    .line 74
    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v22

    .line 75
    const/16 v17, 0x2

    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v24

    .line 76
    const/16 v17, 0x1

    const/16 v18, 0x2

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v26

    .line 79
    const/16 v17, 0x4

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v28

    .line 80
    const/16 v17, 0x0

    const/16 v18, 0x4

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v30

    .line 81
    const/16 v17, 0x3

    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v32

    .line 82
    const/16 v17, 0x1

    const/16 v18, 0x3

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v34

    .line 83
    const/16 v17, 0x2

    const/16 v18, 0x2

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v36

    .line 86
    const/16 v17, 0x5

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v38

    .line 87
    const/16 v17, 0x0

    const/16 v18, 0x5

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v40

    .line 88
    const/16 v17, 0x4

    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v42

    .line 89
    const/16 v17, 0x1

    const/16 v18, 0x4

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v44

    .line 90
    const/16 v17, 0x3

    const/16 v18, 0x2

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v46

    .line 91
    const/16 v17, 0x2

    const/16 v18, 0x3

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v48

    .line 94
    const/16 v17, 0x7

    const/16 v18, 0x0

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v50

    .line 95
    const/16 v17, 0x0

    const/16 v18, 0x7

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v52

    .line 96
    const/16 v17, 0x1

    const/16 v18, 0x6

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v54

    .line 97
    const/16 v17, 0x6

    const/16 v18, 0x1

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v56

    .line 98
    const/16 v17, 0x5

    const/16 v18, 0x2

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v58

    .line 99
    const/16 v17, 0x2

    const/16 v18, 0x5

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v60

    .line 100
    const/16 v17, 0x4

    const/16 v18, 0x3

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v62

    .line 101
    const/16 v17, 0x3

    const/16 v18, 0x4

    move-object/from16 v14, p0

    move-object/from16 v19, p1

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-direct/range {v14 .. v21}, LCatalano/Imaging/Tools/SukFlusserMoments;->a([D[DIILCatalano/Imaging/FastBitmap;II)D

    move-result-wide v4

    .line 104
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v14, v10

    mul-double/2addr v14, v2

    div-double/2addr v14, v12

    sub-double v14, v38, v14

    .line 105
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v24

    mul-double v18, v18, v2

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v10

    mul-double v20, v20, v8

    add-double v18, v18, v20

    mul-double v16, v16, v18

    div-double v16, v16, v12

    sub-double v16, v42, v16

    .line 106
    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v26

    mul-double v18, v18, v2

    mul-double v20, v10, v6

    add-double v18, v18, v20

    const-wide/high16 v20, 0x4018000000000000L    # 6.0

    mul-double v20, v20, v24

    mul-double v20, v20, v8

    add-double v18, v18, v20

    div-double v18, v18, v12

    sub-double v18, v46, v18

    .line 107
    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v20, v20, v24

    mul-double v20, v20, v6

    mul-double v38, v22, v2

    add-double v20, v20, v38

    const-wide/high16 v38, 0x4018000000000000L    # 6.0

    mul-double v38, v38, v26

    mul-double v38, v38, v8

    add-double v20, v20, v38

    div-double v20, v20, v12

    sub-double v20, v48, v20

    .line 108
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    const-wide/high16 v42, 0x4008000000000000L    # 3.0

    mul-double v42, v42, v26

    mul-double v42, v42, v6

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    mul-double v46, v46, v22

    mul-double v46, v46, v8

    add-double v42, v42, v46

    mul-double v38, v38, v42

    div-double v38, v38, v12

    sub-double v38, v44, v38

    .line 109
    const-wide/high16 v42, 0x4024000000000000L    # 10.0

    mul-double v42, v42, v22

    mul-double v42, v42, v6

    div-double v42, v42, v12

    sub-double v40, v40, v42

    .line 112
    const-wide/high16 v42, 0x401c000000000000L    # 7.0

    const-wide/high16 v44, 0x4008000000000000L    # 3.0

    mul-double v44, v44, v14

    mul-double v44, v44, v2

    const-wide/high16 v46, 0x4014000000000000L    # 5.0

    mul-double v46, v46, v10

    mul-double v46, v46, v28

    add-double v44, v44, v46

    mul-double v42, v42, v44

    div-double v42, v42, v12

    sub-double v42, v50, v42

    const-wide v44, 0x406a400000000000L    # 210.0

    mul-double v44, v44, v10

    mul-double v46, v2, v2

    mul-double v44, v44, v46

    mul-double v46, v12, v12

    div-double v44, v44, v46

    add-double v42, v42, v44

    .line 114
    const-wide/high16 v44, 0x4018000000000000L    # 6.0

    mul-double v44, v44, v14

    mul-double v44, v44, v8

    const-wide/high16 v46, 0x402e000000000000L    # 15.0

    mul-double v46, v46, v16

    mul-double v46, v46, v2

    add-double v44, v44, v46

    const-wide/high16 v46, 0x402e000000000000L    # 15.0

    mul-double v46, v46, v28

    mul-double v46, v46, v24

    add-double v44, v44, v46

    const-wide/high16 v46, 0x4034000000000000L    # 20.0

    mul-double v46, v46, v32

    mul-double v46, v46, v10

    add-double v44, v44, v46

    div-double v44, v44, v12

    sub-double v44, v56, v44

    const-wide/high16 v46, 0x403e000000000000L    # 30.0

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v24

    mul-double v50, v2, v2

    mul-double v48, v48, v50

    const-wide/high16 v50, 0x4010000000000000L    # 4.0

    mul-double v50, v50, v10

    mul-double v50, v50, v2

    mul-double v50, v50, v8

    add-double v48, v48, v50

    mul-double v46, v46, v48

    mul-double v48, v12, v12

    div-double v46, v46, v48

    add-double v44, v44, v46

    .line 117
    mul-double v46, v14, v6

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    mul-double v48, v48, v10

    mul-double v48, v48, v36

    add-double v46, v46, v48

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    mul-double v48, v48, v18

    mul-double v48, v48, v2

    add-double v46, v46, v48

    const-wide/high16 v48, 0x4034000000000000L    # 20.0

    mul-double v48, v48, v32

    mul-double v48, v48, v24

    add-double v46, v46, v48

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    mul-double v48, v48, v16

    mul-double v48, v48, v8

    add-double v46, v46, v48

    const-wide/high16 v48, 0x4014000000000000L    # 5.0

    mul-double v48, v48, v28

    mul-double v48, v48, v26

    add-double v46, v46, v48

    div-double v46, v46, v12

    sub-double v46, v58, v46

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    const-wide/high16 v50, 0x4008000000000000L    # 3.0

    mul-double v50, v50, v26

    mul-double v56, v2, v2

    mul-double v50, v50, v56

    const-wide/high16 v56, 0x4000000000000000L    # 2.0

    mul-double v56, v56, v10

    mul-double v56, v56, v2

    mul-double v56, v56, v6

    add-double v50, v50, v56

    const-wide/high16 v56, 0x4010000000000000L    # 4.0

    mul-double v56, v56, v10

    mul-double v58, v8, v8

    mul-double v56, v56, v58

    add-double v50, v50, v56

    const-wide/high16 v56, 0x4028000000000000L    # 12.0

    mul-double v56, v56, v24

    mul-double v56, v56, v2

    mul-double v56, v56, v8

    add-double v50, v50, v56

    mul-double v48, v48, v50

    mul-double v50, v12, v12

    div-double v48, v48, v50

    add-double v46, v46, v48

    .line 120
    mul-double v28, v28, v22

    const-wide/high16 v48, 0x4032000000000000L    # 18.0

    mul-double v48, v48, v24

    mul-double v48, v48, v36

    add-double v28, v28, v48

    const-wide/high16 v48, 0x4028000000000000L    # 12.0

    mul-double v48, v48, v32

    mul-double v48, v48, v26

    add-double v28, v28, v48

    const-wide/high16 v48, 0x4010000000000000L    # 4.0

    mul-double v48, v48, v10

    mul-double v48, v48, v34

    add-double v28, v28, v48

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v16

    mul-double v48, v48, v6

    add-double v28, v28, v48

    const-wide/high16 v48, 0x4028000000000000L    # 12.0

    mul-double v48, v48, v18

    mul-double v48, v48, v8

    add-double v28, v28, v48

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    mul-double v48, v48, v20

    mul-double v48, v48, v2

    add-double v28, v28, v48

    div-double v28, v28, v12

    sub-double v28, v62, v28

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    mul-double v50, v2, v2

    mul-double v50, v50, v22

    const-wide/high16 v56, 0x4010000000000000L    # 4.0

    mul-double v56, v56, v10

    mul-double v56, v56, v8

    mul-double v56, v56, v6

    add-double v50, v50, v56

    const-wide/high16 v56, 0x4028000000000000L    # 12.0

    mul-double v56, v56, v24

    mul-double v58, v8, v8

    mul-double v56, v56, v58

    add-double v50, v50, v56

    const-wide/high16 v56, 0x4028000000000000L    # 12.0

    mul-double v56, v56, v26

    mul-double v56, v56, v2

    mul-double v56, v56, v8

    add-double v50, v50, v56

    const-wide/high16 v56, 0x4018000000000000L    # 6.0

    mul-double v56, v56, v24

    mul-double v56, v56, v6

    mul-double v56, v56, v2

    add-double v50, v50, v56

    mul-double v48, v48, v50

    add-double v28, v28, v48

    .line 123
    mul-double v48, v30, v10

    const-wide/high16 v50, 0x4032000000000000L    # 18.0

    mul-double v50, v50, v26

    mul-double v50, v50, v36

    add-double v48, v48, v50

    const-wide/high16 v50, 0x4028000000000000L    # 12.0

    mul-double v50, v50, v34

    mul-double v50, v50, v24

    add-double v48, v48, v50

    const-wide/high16 v50, 0x4010000000000000L    # 4.0

    mul-double v50, v50, v22

    mul-double v32, v32, v50

    add-double v32, v32, v48

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v38

    mul-double v48, v48, v2

    add-double v32, v32, v48

    const-wide/high16 v48, 0x4028000000000000L    # 12.0

    mul-double v48, v48, v20

    mul-double v48, v48, v8

    add-double v32, v32, v48

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    mul-double v48, v48, v18

    mul-double v48, v48, v6

    add-double v32, v32, v48

    div-double v32, v32, v12

    sub-double v4, v4, v32

    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    mul-double v48, v6, v6

    mul-double v48, v48, v10

    const-wide/high16 v50, 0x4010000000000000L    # 4.0

    mul-double v50, v50, v22

    mul-double v50, v50, v8

    mul-double v50, v50, v2

    add-double v48, v48, v50

    const-wide/high16 v50, 0x4028000000000000L    # 12.0

    mul-double v50, v50, v26

    mul-double v56, v8, v8

    mul-double v50, v50, v56

    add-double v48, v48, v50

    const-wide/high16 v50, 0x4028000000000000L    # 12.0

    mul-double v50, v50, v24

    mul-double v50, v50, v6

    mul-double v50, v50, v8

    add-double v48, v48, v50

    const-wide/high16 v50, 0x4018000000000000L    # 6.0

    mul-double v50, v50, v26

    mul-double v50, v50, v2

    mul-double v50, v50, v6

    add-double v48, v48, v50

    mul-double v32, v32, v48

    mul-double v48, v12, v12

    div-double v32, v32, v48

    add-double v4, v4, v32

    .line 127
    mul-double v32, v40, v2

    const-wide/high16 v48, 0x4024000000000000L    # 10.0

    mul-double v48, v48, v22

    mul-double v36, v36, v48

    add-double v32, v32, v36

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    mul-double v36, v36, v20

    mul-double v36, v36, v6

    add-double v32, v32, v36

    const-wide/high16 v36, 0x4034000000000000L    # 20.0

    mul-double v36, v36, v34

    mul-double v36, v36, v26

    add-double v32, v32, v36

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    mul-double v36, v36, v38

    mul-double v36, v36, v8

    add-double v32, v32, v36

    const-wide/high16 v36, 0x4014000000000000L    # 5.0

    mul-double v36, v36, v30

    mul-double v36, v36, v24

    add-double v32, v32, v36

    div-double v32, v32, v12

    sub-double v32, v60, v32

    const-wide/high16 v36, 0x4024000000000000L    # 10.0

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v24

    mul-double v50, v6, v6

    mul-double v48, v48, v50

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    mul-double v50, v50, v22

    mul-double v50, v50, v6

    mul-double v2, v2, v50

    add-double v2, v2, v48

    const-wide/high16 v48, 0x4010000000000000L    # 4.0

    mul-double v48, v48, v22

    mul-double v50, v8, v8

    mul-double v48, v48, v50

    add-double v2, v2, v48

    const-wide/high16 v48, 0x4028000000000000L    # 12.0

    mul-double v48, v48, v26

    mul-double v48, v48, v6

    mul-double v48, v48, v8

    add-double v2, v2, v48

    mul-double v2, v2, v36

    mul-double v36, v12, v12

    div-double v2, v2, v36

    add-double v2, v2, v32

    .line 130
    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    mul-double v32, v32, v40

    mul-double v32, v32, v8

    const-wide/high16 v36, 0x402e000000000000L    # 15.0

    mul-double v36, v36, v38

    mul-double v36, v36, v6

    add-double v32, v32, v36

    const-wide/high16 v36, 0x402e000000000000L    # 15.0

    mul-double v36, v36, v30

    mul-double v36, v36, v26

    add-double v32, v32, v36

    const-wide/high16 v36, 0x4034000000000000L    # 20.0

    mul-double v34, v34, v36

    mul-double v34, v34, v22

    add-double v32, v32, v34

    div-double v32, v32, v12

    sub-double v32, v54, v32

    const-wide/high16 v34, 0x403e000000000000L    # 30.0

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    mul-double v36, v36, v26

    mul-double v48, v6, v6

    mul-double v36, v36, v48

    const-wide/high16 v48, 0x4010000000000000L    # 4.0

    mul-double v48, v48, v22

    mul-double v48, v48, v6

    mul-double v8, v8, v48

    add-double v8, v8, v36

    mul-double v8, v8, v34

    mul-double v34, v12, v12

    div-double v8, v8, v34

    add-double v8, v8, v32

    .line 133
    const-wide/high16 v32, 0x401c000000000000L    # 7.0

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    mul-double v34, v34, v40

    mul-double v34, v34, v6

    const-wide/high16 v36, 0x4014000000000000L    # 5.0

    mul-double v36, v36, v22

    mul-double v30, v30, v36

    add-double v30, v30, v34

    mul-double v30, v30, v32

    div-double v30, v30, v12

    sub-double v30, v52, v30

    const-wide v32, 0x406a400000000000L    # 210.0

    mul-double v32, v32, v22

    mul-double/2addr v6, v6

    mul-double v6, v6, v32

    mul-double v32, v12, v12

    div-double v6, v6, v32

    add-double v6, v6, v30

    .line 136
    mul-double v30, v10, v10

    mul-double v32, v22, v22

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    mul-double v32, v32, v10

    mul-double v32, v32, v24

    mul-double v32, v32, v26

    mul-double v32, v32, v22

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v32, v32, v10

    mul-double v34, v26, v26

    mul-double v34, v34, v26

    mul-double v32, v32, v34

    add-double v30, v30, v32

    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    mul-double v34, v24, v24

    mul-double v34, v34, v24

    mul-double v32, v32, v34

    mul-double v32, v32, v22

    add-double v30, v30, v32

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    mul-double v34, v24, v24

    mul-double v32, v32, v34

    mul-double v34, v26, v26

    mul-double v32, v32, v34

    sub-double v30, v30, v32

    const-wide/high16 v32, 0x4024000000000000L    # 10.0

    .line 137
    move-wide/from16 v0, v32

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v32

    div-double v30, v30, v32

    .line 139
    mul-double v32, v14, v14

    mul-double v34, v40, v40

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4024000000000000L    # 10.0

    mul-double v34, v34, v14

    mul-double v34, v34, v16

    mul-double v34, v34, v38

    mul-double v34, v34, v40

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4010000000000000L    # 4.0

    mul-double v34, v34, v14

    mul-double v34, v34, v18

    mul-double v34, v34, v20

    mul-double v34, v34, v40

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4030000000000000L    # 16.0

    mul-double v34, v34, v14

    mul-double v34, v34, v18

    mul-double v36, v38, v38

    mul-double v34, v34, v36

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4028000000000000L    # 12.0

    mul-double v34, v34, v14

    mul-double v36, v20, v20

    mul-double v34, v34, v36

    mul-double v34, v34, v38

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4030000000000000L    # 16.0

    mul-double v36, v16, v16

    mul-double v34, v34, v36

    mul-double v34, v34, v20

    mul-double v34, v34, v40

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4022000000000000L    # 9.0

    mul-double v36, v16, v16

    mul-double v34, v34, v36

    mul-double v36, v38, v38

    mul-double v34, v34, v36

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4028000000000000L    # 12.0

    mul-double v34, v34, v16

    mul-double v36, v18, v18

    mul-double v34, v34, v36

    mul-double v34, v34, v40

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4053000000000000L    # 76.0

    mul-double v34, v34, v16

    mul-double v34, v34, v18

    mul-double v34, v34, v20

    mul-double v34, v34, v38

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x4048000000000000L    # 48.0

    mul-double v34, v34, v16

    mul-double v36, v20, v20

    mul-double v36, v36, v20

    mul-double v34, v34, v36

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4048000000000000L    # 48.0

    mul-double v36, v18, v18

    mul-double v36, v36, v18

    mul-double v34, v34, v36

    mul-double v34, v34, v38

    add-double v32, v32, v34

    const-wide/high16 v34, 0x4040000000000000L    # 32.0

    mul-double v36, v18, v18

    mul-double v34, v34, v36

    mul-double v36, v20, v20

    mul-double v34, v34, v36

    sub-double v32, v32, v34

    const-wide/high16 v34, 0x402c000000000000L    # 14.0

    .line 142
    move-wide/from16 v0, v34

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v34

    div-double v32, v32, v34

    .line 144
    mul-double v34, v10, v10

    mul-double v34, v34, v26

    mul-double v34, v34, v40

    mul-double v36, v10, v10

    mul-double v36, v36, v22

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    mul-double v36, v24, v24

    mul-double v36, v36, v10

    mul-double v36, v36, v40

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v10

    mul-double v36, v36, v24

    mul-double v36, v36, v26

    mul-double v36, v36, v38

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4010000000000000L    # 4.0

    mul-double v36, v36, v10

    mul-double v36, v36, v24

    mul-double v36, v36, v22

    mul-double v36, v36, v20

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v10

    mul-double v48, v26, v26

    mul-double v36, v36, v48

    mul-double v36, v36, v20

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4010000000000000L    # 4.0

    mul-double v36, v36, v10

    mul-double v36, v36, v26

    mul-double v36, v36, v22

    mul-double v36, v36, v18

    sub-double v34, v34, v36

    mul-double v36, v22, v22

    mul-double v36, v36, v10

    mul-double v36, v36, v16

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    mul-double v48, v24, v24

    mul-double v48, v48, v24

    mul-double v36, v36, v48

    mul-double v36, v36, v38

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4018000000000000L    # 6.0

    mul-double v48, v24, v24

    mul-double v36, v36, v48

    mul-double v36, v36, v26

    mul-double v36, v36, v20

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v48, v24, v24

    mul-double v36, v36, v48

    mul-double v36, v36, v22

    mul-double v36, v36, v18

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4018000000000000L    # 6.0

    mul-double v36, v36, v24

    mul-double v48, v26, v26

    mul-double v36, v36, v48

    mul-double v36, v36, v18

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v24

    mul-double v36, v36, v26

    mul-double v36, v36, v22

    mul-double v36, v36, v16

    add-double v34, v34, v36

    mul-double v36, v22, v22

    mul-double v36, v36, v24

    mul-double v36, v36, v14

    sub-double v34, v34, v36

    const-wide/high16 v36, 0x4008000000000000L    # 3.0

    mul-double v48, v26, v26

    mul-double v48, v48, v26

    mul-double v36, v36, v48

    mul-double v36, v36, v16

    sub-double v34, v34, v36

    mul-double v36, v26, v26

    mul-double v36, v36, v22

    mul-double v36, v36, v14

    add-double v34, v34, v36

    const-wide/high16 v36, 0x4026000000000000L    # 11.0

    .line 148
    move-wide/from16 v0, v36

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v36

    div-double v34, v34, v36

    .line 150
    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v10

    mul-double v36, v36, v26

    mul-double v36, v36, v16

    mul-double v36, v36, v40

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    mul-double v48, v48, v10

    mul-double v48, v48, v26

    mul-double v48, v48, v18

    mul-double v48, v48, v38

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    mul-double v48, v48, v10

    mul-double v48, v48, v26

    mul-double v50, v20, v20

    mul-double v48, v48, v50

    add-double v36, v36, v48

    mul-double v48, v10, v22

    mul-double v48, v48, v14

    mul-double v48, v48, v40

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v10

    mul-double v48, v48, v22

    mul-double v48, v48, v16

    mul-double v48, v48, v38

    add-double v36, v36, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v48, v48, v10

    mul-double v48, v48, v22

    mul-double v48, v48, v18

    mul-double v48, v48, v20

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v50, v24, v24

    mul-double v48, v48, v50

    mul-double v48, v48, v16

    mul-double v48, v48, v40

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    mul-double v50, v24, v24

    mul-double v48, v48, v50

    mul-double v48, v48, v18

    mul-double v48, v48, v38

    add-double v36, v36, v48

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    mul-double v50, v24, v24

    mul-double v48, v48, v50

    mul-double v50, v20, v20

    mul-double v48, v48, v50

    sub-double v36, v36, v48

    mul-double v48, v24, v26

    mul-double v48, v48, v14

    mul-double v48, v48, v40

    add-double v36, v36, v48

    const-wide/high16 v48, 0x4008000000000000L    # 3.0

    mul-double v48, v48, v24

    mul-double v48, v48, v26

    mul-double v48, v48, v16

    mul-double v48, v48, v38

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v48, v48, v24

    mul-double v48, v48, v26

    mul-double v48, v48, v18

    mul-double v48, v48, v20

    add-double v36, v36, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v48, v48, v24

    mul-double v48, v48, v22

    mul-double v48, v48, v14

    mul-double v48, v48, v38

    add-double v36, v36, v48

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    mul-double v48, v48, v24

    mul-double v48, v48, v22

    mul-double v48, v48, v16

    mul-double v48, v48, v20

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    mul-double v48, v48, v24

    mul-double v48, v48, v22

    mul-double v50, v18, v18

    mul-double v48, v48, v50

    add-double v36, v36, v48

    const-wide/high16 v48, 0x4000000000000000L    # 2.0

    mul-double v50, v26, v26

    mul-double v48, v48, v50

    mul-double v48, v48, v14

    mul-double v48, v48, v38

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4020000000000000L    # 8.0

    mul-double v50, v26, v26

    mul-double v48, v48, v50

    mul-double v48, v48, v16

    mul-double v48, v48, v20

    add-double v36, v36, v48

    const-wide/high16 v48, 0x4018000000000000L    # 6.0

    mul-double v50, v26, v26

    mul-double v48, v48, v50

    mul-double v50, v18, v18

    mul-double v48, v48, v50

    sub-double v36, v36, v48

    const-wide/high16 v48, 0x4028000000000000L    # 12.0

    .line 155
    move-wide/from16 v0, v48

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v48

    div-double v36, v36, v48

    .line 157
    mul-double v48, v10, v16

    mul-double v48, v48, v20

    mul-double v48, v48, v40

    mul-double v50, v10, v16

    mul-double v52, v38, v38

    mul-double v50, v50, v52

    sub-double v48, v48, v50

    mul-double v50, v18, v18

    mul-double v50, v50, v10

    mul-double v50, v50, v40

    sub-double v48, v48, v50

    const-wide/high16 v50, 0x4000000000000000L    # 2.0

    mul-double v50, v50, v10

    mul-double v50, v50, v18

    mul-double v50, v50, v20

    mul-double v50, v50, v38

    add-double v48, v48, v50

    mul-double v50, v20, v20

    mul-double v50, v50, v20

    mul-double v10, v10, v50

    sub-double v10, v48, v10

    mul-double v48, v24, v14

    mul-double v48, v48, v20

    mul-double v48, v48, v40

    sub-double v10, v10, v48

    mul-double v48, v24, v14

    mul-double v50, v38, v38

    mul-double v48, v48, v50

    add-double v10, v10, v48

    mul-double v48, v24, v16

    mul-double v48, v48, v18

    mul-double v48, v48, v40

    add-double v10, v10, v48

    mul-double v48, v24, v16

    mul-double v48, v48, v20

    mul-double v48, v48, v38

    sub-double v10, v10, v48

    mul-double v48, v18, v18

    mul-double v48, v48, v24

    mul-double v48, v48, v38

    sub-double v10, v10, v48

    mul-double v24, v24, v18

    mul-double v48, v20, v20

    mul-double v24, v24, v48

    add-double v10, v10, v24

    mul-double v24, v26, v14

    mul-double v24, v24, v18

    mul-double v24, v24, v40

    add-double v10, v10, v24

    mul-double v24, v26, v14

    mul-double v24, v24, v20

    mul-double v24, v24, v38

    sub-double v10, v10, v24

    mul-double v24, v16, v16

    mul-double v24, v24, v26

    mul-double v24, v24, v40

    sub-double v10, v10, v24

    mul-double v24, v26, v16

    mul-double v24, v24, v18

    mul-double v24, v24, v38

    add-double v10, v10, v24

    mul-double v24, v26, v16

    mul-double v40, v20, v20

    mul-double v24, v24, v40

    add-double v10, v10, v24

    mul-double v24, v18, v18

    mul-double v24, v24, v26

    mul-double v24, v24, v20

    sub-double v10, v10, v24

    mul-double v24, v22, v14

    mul-double v24, v24, v18

    mul-double v24, v24, v38

    sub-double v10, v10, v24

    mul-double v14, v14, v22

    mul-double v24, v20, v20

    mul-double v14, v14, v24

    add-double/2addr v10, v14

    mul-double v14, v16, v16

    mul-double v14, v14, v22

    mul-double v14, v14, v38

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v14, v14, v22

    mul-double v14, v14, v16

    mul-double v14, v14, v18

    mul-double v14, v14, v20

    sub-double/2addr v10, v14

    mul-double v14, v18, v18

    mul-double v14, v14, v18

    mul-double v14, v14, v22

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x402a000000000000L    # 13.0

    .line 162
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v10, v14

    .line 164
    mul-double v14, v42, v42

    mul-double v16, v6, v6

    mul-double v14, v14, v16

    const-wide/high16 v16, 0x402c000000000000L    # 14.0

    mul-double v16, v16, v42

    mul-double v16, v16, v44

    mul-double v16, v16, v8

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4032000000000000L    # 18.0

    mul-double v16, v16, v42

    mul-double v16, v16, v46

    mul-double v16, v16, v2

    mul-double v16, v16, v6

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4038000000000000L    # 24.0

    mul-double v16, v16, v42

    mul-double v16, v16, v46

    mul-double v18, v8, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v16, v16, v42

    mul-double v16, v16, v28

    mul-double v16, v16, v4

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v42

    mul-double v16, v16, v28

    mul-double v16, v16, v2

    mul-double v16, v16, v8

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    mul-double v16, v16, v42

    mul-double v18, v4, v4

    mul-double v16, v16, v18

    mul-double v16, v16, v8

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4038000000000000L    # 24.0

    mul-double v18, v44, v44

    mul-double v16, v16, v18

    mul-double v16, v16, v2

    mul-double v16, v16, v6

    add-double v14, v14, v16

    const-wide/high16 v16, 0x4039000000000000L    # 25.0

    mul-double v18, v44, v44

    mul-double v16, v16, v18

    mul-double v18, v8, v8

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v16, v16, v44

    mul-double v16, v16, v46

    mul-double v16, v16, v4

    mul-double v16, v16, v6

    sub-double v14, v14, v16

    const-wide v16, 0x406d400000000000L    # 234.0

    mul-double v16, v16, v44

    mul-double v16, v16, v46

    mul-double v16, v16, v2

    mul-double v16, v16, v8

    sub-double v14, v14, v16

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    mul-double v16, v16, v44

    mul-double v18, v28, v28

    mul-double v16, v16, v18

    mul-double v6, v6, v16

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    mul-double v14, v14, v44

    mul-double v14, v14, v28

    mul-double/2addr v14, v4

    mul-double/2addr v14, v8

    add-double/2addr v6, v14

    const-wide v14, 0x4076800000000000L    # 360.0

    mul-double v14, v14, v44

    mul-double v14, v14, v28

    mul-double v16, v2, v2

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x406e000000000000L    # 240.0

    mul-double v14, v14, v44

    mul-double v16, v4, v4

    mul-double v14, v14, v16

    mul-double/2addr v14, v2

    sub-double/2addr v6, v14

    const-wide v14, 0x4076800000000000L    # 360.0

    mul-double v16, v46, v46

    mul-double v14, v14, v16

    mul-double/2addr v14, v4

    mul-double/2addr v14, v8

    add-double/2addr v6, v14

    const-wide v14, 0x4054400000000000L    # 81.0

    mul-double v16, v46, v46

    mul-double v14, v14, v16

    mul-double v16, v2, v2

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    const-wide/high16 v14, 0x406e000000000000L    # 240.0

    mul-double v14, v14, v46

    mul-double v16, v28, v28

    mul-double v14, v14, v16

    mul-double/2addr v8, v14

    sub-double/2addr v6, v8

    const-wide v8, 0x408ef00000000000L    # 990.0

    mul-double v8, v8, v46

    mul-double v8, v8, v28

    mul-double/2addr v8, v4

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    const-wide v8, 0x4082c00000000000L    # 600.0

    mul-double v8, v8, v46

    mul-double v14, v4, v4

    mul-double/2addr v14, v4

    mul-double/2addr v8, v14

    add-double/2addr v6, v8

    const-wide v8, 0x4082c00000000000L    # 600.0

    mul-double v14, v28, v28

    mul-double v14, v14, v28

    mul-double/2addr v8, v14

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    const-wide v6, 0x4077700000000000L    # 375.0

    mul-double v8, v28, v28

    mul-double/2addr v6, v8

    mul-double/2addr v4, v4

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    .line 169
    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 171
    const/4 v4, 0x6

    new-array v4, v4, [D

    .line 172
    const/4 v5, 0x0

    aput-wide v30, v4, v5

    .line 173
    const/4 v5, 0x1

    aput-wide v32, v4, v5

    .line 174
    const/4 v5, 0x2

    aput-wide v34, v4, v5

    .line 175
    const/4 v5, 0x3

    aput-wide v36, v4, v5

    .line 176
    const/4 v5, 0x4

    aput-wide v10, v4, v5

    .line 177
    const/4 v5, 0x5

    aput-wide v2, v4, v5

    .line 179
    return-object v4

    .line 182
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Suk Flusser Moments only works with grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
