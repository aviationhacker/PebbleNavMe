.class public LCatalano/Imaging/Filters/HistogramEqualization;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LCatalano/Imaging/FastBitmap;",
            ")",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v2, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 91
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 95
    const-wide v4, 0x406fe00000000000L    # 255.0

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    mul-int/2addr v3, v6

    int-to-double v6, v3

    div-double/2addr v4, v6

    double-to-float v13, v4

    .line 97
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 102
    const/16 v2, 0x100

    new-array v8, v2, [I

    .line 103
    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x100

    if-ge v2, v4, :cond_0

    const/4 v4, 0x0

    aput v4, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_0
    const-wide/16 v4, 0x0

    .line 107
    const/4 v2, 0x0

    move-wide v6, v4

    move v4, v2

    :goto_1
    const/16 v2, 0x100

    if-ge v4, v2, :cond_2

    .line 108
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v4

    int-to-long v10, v2

    add-long/2addr v6, v10

    .line 109
    long-to-float v2, v6

    mul-float/2addr v2, v13

    float-to-int v2, v2

    .line 110
    const/16 v5, 0xff

    if-le v2, v5, :cond_1

    .line 111
    const/16 v2, 0xff

    aput v2, v8, v4

    .line 107
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 114
    :cond_1
    aput v2, v8, v4

    goto :goto_2

    .line 117
    :cond_2
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    .line 168
    :goto_3
    return-object v2

    .line 122
    :cond_3
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramRed()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGreen()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v3

    invoke-virtual {v3}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramBlue()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 129
    const/16 v2, 0x100

    new-array v14, v2, [I

    .line 130
    const/16 v2, 0x100

    new-array v15, v2, [I

    .line 131
    const/16 v2, 0x100

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 132
    const/4 v2, 0x0

    :goto_4
    const/16 v4, 0x100

    if-ge v2, v4, :cond_4

    .line 133
    const/4 v4, 0x0

    aput v4, v14, v2

    .line 134
    const/4 v4, 0x0

    aput v4, v15, v2

    .line 135
    const/4 v4, 0x0

    aput v4, v16, v2

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 137
    :cond_4
    const-wide/16 v8, 0x0

    .line 138
    const-wide/16 v6, 0x0

    .line 139
    const-wide/16 v4, 0x0

    .line 141
    const/4 v2, 0x0

    move-wide v10, v8

    move-wide v8, v6

    move-wide v6, v4

    move v4, v2

    :goto_5
    const/16 v2, 0x100

    if-ge v4, v2, :cond_8

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v4

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v10, v10, v18

    .line 143
    long-to-float v2, v10

    mul-float/2addr v2, v13

    float-to-int v2, v2

    .line 144
    const/16 v5, 0xff

    if-le v2, v5, :cond_5

    .line 145
    const/16 v2, 0xff

    aput v2, v14, v4

    .line 149
    :goto_6
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v4

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    .line 150
    long-to-float v2, v8

    mul-float/2addr v2, v13

    float-to-int v2, v2

    .line 151
    const/16 v5, 0xff

    if-le v2, v5, :cond_6

    .line 152
    const/16 v2, 0xff

    aput v2, v15, v4

    .line 156
    :goto_7
    const/4 v2, 0x2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v4

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    .line 157
    long-to-float v2, v6

    mul-float/2addr v2, v13

    float-to-int v2, v2

    .line 158
    const/16 v5, 0xff

    if-le v2, v5, :cond_7

    .line 159
    const/16 v2, 0xff

    aput v2, v16, v4

    .line 141
    :goto_8
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_5

    .line 147
    :cond_5
    aput v2, v14, v4

    goto :goto_6

    .line 154
    :cond_6
    aput v2, v15, v4

    goto :goto_7

    .line 161
    :cond_7
    aput v2, v16, v4

    goto :goto_8

    .line 164
    :cond_8
    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    .line 168
    goto/16 :goto_3
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1}, LCatalano/Imaging/Filters/HistogramEqualization;->a(LCatalano/Imaging/FastBitmap;)Ljava/util/ArrayList;

    move-result-object v3

    .line 47
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v4

    .line 49
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 51
    :goto_0
    if-ge v1, v4, :cond_1

    .line 53
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v5

    .line 56
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v5

    .line 59
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 66
    :goto_1
    if-ge v1, v4, :cond_1

    .line 68
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v5

    .line 69
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    .line 70
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v7

    .line 73
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v5, v0, v5

    .line 74
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v6, v0, v6

    .line 75
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v7

    .line 78
    invoke-virtual {p1, v1, v5, v6, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 81
    :cond_1
    return-void
.end method
