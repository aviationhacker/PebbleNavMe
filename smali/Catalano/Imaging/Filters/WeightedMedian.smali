.class public LCatalano/Imaging/Filters/WeightedMedian;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:[[I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    .line 62
    return-void

    .line 37
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>([[I)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-array v0, v3, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    iput-object v0, p0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    .line 69
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/WeightedMedian;->setWeight([[I)V

    .line 70
    return-void

    .line 37
    :array_0
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private a([[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 150
    move v0, v1

    move v2, v1

    .line 151
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 152
    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 153
    aget-object v4, p1, v0

    aget v4, v4, v3

    if-lez v4, :cond_2

    .line 154
    aget-object v4, p1, v0

    aget v4, v4, v3

    add-int/2addr v4, v2

    .line 152
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_1
    return v2

    :cond_2
    move v4, v2

    goto :goto_2
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 19

    .prologue
    .line 75
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 76
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v9, v1, 0x2

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v10, v1, 0x2

    .line 80
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/WeightedMedian;->a([[I)I

    move-result v1

    .line 83
    new-instance v11, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    new-array v12, v1, [I

    .line 88
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v8, :cond_b

    .line 89
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v7, :cond_4

    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v1, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 92
    sub-int v3, v1, v9

    add-int v13, v6, v3

    .line 93
    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    const/4 v14, 0x0

    aget-object v4, v4, v14

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 94
    sub-int v4, v3, v10

    add-int v14, v5, v4

    .line 95
    if-ltz v13, :cond_0

    if-ge v13, v8, :cond_0

    if-ltz v14, :cond_0

    if-ge v14, v7, :cond_0

    .line 96
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    aget-object v4, v4, v1

    aget v4, v4, v3

    if-lez v4, :cond_0

    .line 97
    const/4 v4, 0x0

    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    aget-object v15, v15, v1

    aget v15, v15, v3

    if-ge v2, v15, :cond_1

    .line 98
    invoke-virtual {v11, v13, v14}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v15

    aput v15, v12, v4

    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_0
    move v4, v2

    .line 93
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    .line 91
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 105
    :cond_3
    const/4 v1, 0x0

    invoke-static {v12, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 107
    div-int/lit8 v1, v2, 0x2

    .line 108
    aget v1, v12, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 89
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 88
    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 112
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 113
    new-array v12, v1, [I

    .line 114
    new-array v13, v1, [I

    .line 115
    new-array v14, v1, [I

    .line 118
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v8, :cond_b

    .line 119
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v7, :cond_a

    .line 120
    const/4 v4, 0x0

    .line 121
    const/4 v1, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 122
    sub-int v5, v1, v9

    add-int v15, v2, v5

    .line 123
    const/4 v5, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    const/16 v16, 0x0

    aget-object v6, v6, v16

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 124
    sub-int v6, v5, v10

    add-int v16, v3, v6

    .line 125
    if-ltz v15, :cond_6

    if-ge v15, v8, :cond_6

    if-ltz v16, :cond_6

    move/from16 v0, v16

    if-ge v0, v7, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    aget-object v6, v6, v1

    aget v6, v6, v5

    if-lez v6, :cond_6

    .line 128
    const/4 v6, 0x0

    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    move-object/from16 v17, v0

    aget-object v17, v17, v1

    aget v17, v17, v5

    move/from16 v0, v17

    if-ge v4, v0, :cond_7

    .line 129
    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v17

    aput v17, v12, v6

    .line 130
    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v17

    aput v17, v13, v6

    .line 131
    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v17

    aput v17, v14, v6

    .line 132
    add-int/lit8 v6, v6, 0x1

    .line 128
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_6
    move v6, v4

    .line 123
    :cond_7
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v6

    goto :goto_8

    .line 121
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 138
    :cond_9
    const/4 v1, 0x0

    invoke-static {v12, v1, v4}, Ljava/util/Arrays;->sort([III)V

    .line 139
    const/4 v1, 0x0

    invoke-static {v13, v1, v4}, Ljava/util/Arrays;->sort([III)V

    .line 140
    const/4 v1, 0x0

    invoke-static {v14, v1, v4}, Ljava/util/Arrays;->sort([III)V

    .line 142
    div-int/lit8 v1, v4, 0x2

    .line 143
    aget v4, v12, v1

    aget v5, v13, v1

    aget v6, v14, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 118
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 147
    :cond_b
    return-void
.end method

.method public getWeight()[[I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    return-object v0
.end method

.method public setWeight([[I)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, LCatalano/Imaging/Filters/WeightedMedian;->a:[[I

    .line 57
    return-void
.end method
