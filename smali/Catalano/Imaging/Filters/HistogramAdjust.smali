.class public LCatalano/Imaging/Filters/HistogramAdjust;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Filters/HistogramAdjust;-><init>(II)V

    .line 61
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 67
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-direct {p0, v0, v1, p1, p2}, LCatalano/Imaging/Filters/HistogramAdjust;-><init>(IID)V

    .line 68
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 76
    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    invoke-direct {p0, p1, p2, v0, v1}, LCatalano/Imaging/Filters/HistogramAdjust;-><init>(IID)V

    .line 77
    return-void
.end method

.method public constructor <init>(IID)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    .line 38
    const/16 v0, 0xff

    iput v0, p0, LCatalano/Imaging/Filters/HistogramAdjust;->c:I

    .line 86
    iput p1, p0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    .line 87
    iput p2, p0, LCatalano/Imaging/Filters/HistogramAdjust;->c:I

    .line 88
    iput-wide p3, p0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    .line 89
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 18

    .prologue
    .line 93
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    new-instance v2, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 95
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v2

    .line 98
    invoke-static {v2}, LCatalano/Statistics/Histogram;->CDF([I)[D

    move-result-object v5

    .line 100
    const/16 v3, 0xff

    .line 101
    const/4 v4, 0x0

    .line 103
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v8, v0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    sub-double/2addr v6, v8

    .line 104
    const/4 v2, 0x0

    :goto_0
    array-length v8, v5

    if-ge v2, v8, :cond_11

    .line 105
    aget-wide v8, v5, v2

    move-object/from16 v0, p0

    iget-wide v10, v0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    .line 111
    :goto_1
    const/4 v3, 0x0

    :goto_2
    array-length v8, v5

    if-ge v3, v8, :cond_10

    .line 112
    aget-wide v8, v5, v3

    cmpl-double v8, v8, v6

    if-lez v8, :cond_1

    .line 118
    :goto_3
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v5

    .line 119
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_9

    .line 120
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    .line 121
    sub-int/2addr v6, v2

    int-to-double v6, v6

    sub-int v8, v3, v2

    int-to-double v8, v8

    div-double/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/HistogramAdjust;->c:I

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    int-to-double v8, v8

    add-double/2addr v6, v8

    .line 122
    double-to-int v6, v6

    const/4 v7, 0x0

    const/16 v8, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 104
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 111
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    :cond_2
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 126
    new-instance v2, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 127
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramRed()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v3

    .line 128
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGreen()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v4

    invoke-virtual {v4}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v4

    .line 129
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramBlue()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v2

    .line 132
    invoke-static {v3}, LCatalano/Statistics/Histogram;->CDF([I)[D

    move-result-object v9

    .line 133
    invoke-static {v4}, LCatalano/Statistics/Histogram;->CDF([I)[D

    move-result-object v10

    .line 134
    invoke-static {v2}, LCatalano/Statistics/Histogram;->CDF([I)[D

    move-result-object v11

    .line 136
    const/16 v3, 0xff

    .line 137
    const/16 v4, 0xff

    .line 138
    const/16 v5, 0xff

    .line 140
    const/4 v6, 0x0

    .line 141
    const/4 v7, 0x0

    .line 142
    const/4 v8, 0x0

    .line 144
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v14, v0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    sub-double/2addr v12, v14

    .line 145
    const/4 v2, 0x0

    :goto_5
    array-length v14, v9

    if-ge v2, v14, :cond_f

    .line 146
    aget-wide v14, v9, v2

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_3

    .line 151
    :goto_6
    const/4 v3, 0x0

    :goto_7
    array-length v14, v10

    if-ge v3, v14, :cond_e

    .line 152
    aget-wide v14, v10, v3

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_4

    .line 157
    :goto_8
    const/4 v4, 0x0

    :goto_9
    array-length v14, v11

    if-ge v4, v14, :cond_d

    .line 158
    aget-wide v14, v11, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_5

    .line 165
    :goto_a
    const/4 v5, 0x0

    :goto_b
    array-length v14, v9

    if-ge v5, v14, :cond_c

    .line 166
    aget-wide v14, v9, v5

    cmpl-double v14, v14, v12

    if-lez v14, :cond_6

    .line 171
    :goto_c
    const/4 v6, 0x0

    :goto_d
    array-length v9, v10

    if-ge v6, v9, :cond_b

    .line 172
    aget-wide v14, v10, v6

    cmpl-double v9, v14, v12

    if-lez v9, :cond_7

    .line 177
    :goto_e
    const/4 v7, 0x0

    :goto_f
    array-length v9, v11

    if-ge v7, v9, :cond_a

    .line 178
    aget-wide v14, v11, v7

    cmpl-double v9, v14, v12

    if-lez v9, :cond_8

    .line 184
    :goto_10
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v9

    .line 185
    const/4 v8, 0x0

    :goto_11
    if-ge v8, v9, :cond_9

    .line 186
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v10

    .line 187
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v11

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v12

    .line 191
    sub-int/2addr v10, v2

    int-to-double v14, v10

    sub-int v10, v5, v2

    int-to-double v0, v10

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/HistogramAdjust;->c:I

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    sub-int/2addr v10, v13

    int-to-double v0, v10

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v10, v14

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    add-int/2addr v10, v13

    const/4 v13, 0x0

    const/16 v14, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v13, v14}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v10

    .line 192
    sub-int/2addr v11, v3

    int-to-double v14, v11

    sub-int v11, v6, v3

    int-to-double v0, v11

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Imaging/Filters/HistogramAdjust;->c:I

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    sub-int/2addr v11, v13

    int-to-double v0, v11

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v11, v14

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    add-int/2addr v11, v13

    const/4 v13, 0x0

    const/16 v14, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v13, v14}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v11

    .line 193
    sub-int/2addr v12, v4

    int-to-double v12, v12

    sub-int v14, v7, v4

    int-to-double v14, v14

    div-double/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/HistogramAdjust;->c:I

    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    sub-int/2addr v14, v15

    int-to-double v14, v14

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/HistogramAdjust;->b:I

    add-int/2addr v12, v13

    const/4 v13, 0x0

    const/16 v14, 0xff

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v12

    .line 195
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v10, v11, v12}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 185
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_11

    .line 145
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 151
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    .line 157
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 165
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_b

    .line 171
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_d

    .line 177
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_f

    .line 198
    :cond_9
    return-void

    :cond_a
    move v7, v8

    goto/16 :goto_10

    :cond_b
    move v6, v7

    goto/16 :goto_e

    :cond_c
    move v5, v6

    goto/16 :goto_c

    :cond_d
    move v4, v5

    goto/16 :goto_a

    :cond_e
    move v3, v4

    goto/16 :goto_8

    :cond_f
    move v2, v3

    goto/16 :goto_6

    :cond_10
    move v3, v4

    goto/16 :goto_3

    :cond_11
    move v2, v3

    goto/16 :goto_1
.end method

.method public getTolerance()D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    return-wide v0
.end method

.method public setTolerance(D)V
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, LCatalano/Imaging/Filters/HistogramAdjust;->a:D

    .line 54
    return-void
.end method
