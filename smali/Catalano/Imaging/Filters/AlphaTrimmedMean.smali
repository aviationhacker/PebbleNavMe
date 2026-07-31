.class public LCatalano/Imaging/Filters/AlphaTrimmedMean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    .line 37
    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    .line 37
    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    .line 81
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/AlphaTrimmedMean;->setRadius(I)V

    .line 82
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    .line 37
    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    .line 90
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/AlphaTrimmedMean;->setRadius(I)V

    .line 91
    invoke-virtual {p0, p2}, LCatalano/Imaging/Filters/AlphaTrimmedMean;->setT(I)V

    .line 92
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 186
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 22

    .prologue
    .line 97
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    .line 98
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v13

    .line 100
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a(I)I

    move-result v14

    .line 101
    mul-int v2, v14, v14

    .line 104
    new-instance v15, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 106
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 107
    new-array v8, v2, [I

    .line 108
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v13, :cond_b

    .line 109
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    if-ge v6, v12, :cond_4

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v2, 0x0

    move v4, v2

    :goto_2
    if-ge v4, v14, :cond_2

    .line 112
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    sub-int v2, v4, v2

    add-int v5, v7, v2

    .line 113
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v14, :cond_1

    .line 114
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    sub-int v9, v2, v9

    add-int/2addr v9, v6

    .line 115
    if-ltz v5, :cond_0

    if-ge v5, v13, :cond_0

    if-ltz v9, :cond_0

    if-ge v9, v12, :cond_0

    .line 116
    invoke-virtual {v15, v5, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v3

    .line 121
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 119
    :cond_0
    invoke-virtual {v15, v7, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    aput v9, v8, v3

    goto :goto_4

    .line 111
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 125
    :cond_2
    invoke-static {v8}, Ljava/util/Arrays;->sort([I)V

    .line 128
    const-wide/16 v4, 0x0

    .line 129
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    :goto_5
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    sub-int v9, v3, v9

    if-ge v2, v9, :cond_3

    .line 130
    aget v9, v8, v2

    int-to-double v10, v9

    add-double/2addr v4, v10

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    :cond_3
    array-length v2, v8

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double v2, v4, v2

    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 109
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    .line 108
    :cond_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 137
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 138
    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 139
    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 140
    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 142
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v13, :cond_b

    .line 143
    const/4 v4, 0x0

    :goto_7
    if-ge v4, v12, :cond_a

    .line 144
    const/4 v5, 0x0

    .line 145
    const/4 v2, 0x0

    move v6, v2

    :goto_8
    if-ge v6, v14, :cond_8

    .line 146
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    sub-int v2, v6, v2

    add-int v7, v3, v2

    .line 147
    const/4 v2, 0x0

    :goto_9
    if-ge v2, v14, :cond_7

    .line 148
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    sub-int v8, v2, v8

    add-int/2addr v8, v4

    .line 149
    if-ltz v7, :cond_6

    if-ge v7, v13, :cond_6

    if-ltz v8, :cond_6

    if-ge v8, v12, :cond_6

    .line 150
    invoke-virtual {v15, v7, v8}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v9

    aput v9, v16, v5

    .line 151
    invoke-virtual {v15, v7, v8}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v9

    aput v9, v17, v5

    .line 152
    invoke-virtual {v15, v7, v8}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    aput v8, v18, v5

    .line 159
    :goto_a
    add-int/lit8 v5, v5, 0x1

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 155
    :cond_6
    invoke-virtual {v15, v3, v4}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v8

    aput v8, v16, v5

    .line 156
    invoke-virtual {v15, v3, v4}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v8

    aput v8, v17, v5

    .line 157
    invoke-virtual {v15, v3, v4}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    aput v8, v18, v5

    goto :goto_a

    .line 145
    :cond_7
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_8

    .line 163
    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->sort([I)V

    .line 164
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([I)V

    .line 165
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([I)V

    .line 168
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 169
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    move/from16 v19, v0

    sub-int v19, v5, v19

    move/from16 v0, v19

    if-ge v2, v0, :cond_9

    .line 170
    aget v19, v16, v2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v10, v10, v20

    .line 171
    aget v19, v17, v2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v8, v8, v20

    .line 172
    aget v19, v18, v2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v6, v6, v20

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 175
    :cond_9
    move-object/from16 v0, v16

    array-length v2, v0

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-double v0, v2

    move-wide/from16 v20, v0

    div-double v10, v10, v20

    .line 176
    move-object/from16 v0, v17

    array-length v2, v0

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-double v0, v2

    move-wide/from16 v20, v0

    div-double v8, v8, v20

    .line 177
    move-object/from16 v0, v18

    array-length v2, v0

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v5

    int-to-double v0, v2

    move-wide/from16 v20, v0

    div-double v20, v6, v20

    .line 179
    double-to-int v5, v10

    double-to-int v6, v8

    move-wide/from16 v0, v20

    double-to-int v7, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 143
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 142
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 183
    :cond_b
    return-void
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    return v0
.end method

.method public getT()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    .line 53
    return-void
.end method

.method public setT(I)V
    .locals 2

    .prologue
    .line 68
    iget v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->a:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/AlphaTrimmedMean;->b:I

    .line 69
    return-void
.end method
