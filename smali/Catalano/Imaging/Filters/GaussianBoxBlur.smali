.class public LCatalano/Imaging/Filters/GaussianBoxBlur;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 61
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1}, LCatalano/Imaging/Filters/GaussianBoxBlur;-><init>(D)V

    .line 62
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, LCatalano/Imaging/Filters/GaussianBoxBlur;-><init>(DI)V

    .line 70
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaussianBoxBlur;->a:D

    .line 79
    iput p3, p0, LCatalano/Imaging/Filters/GaussianBoxBlur;->b:I

    .line 80
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 104
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 105
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    invoke-virtual {p2, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-direct {p0, p2, p1, p3}, LCatalano/Imaging/Filters/GaussianBoxBlur;->c(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 109
    invoke-direct {p0, p1, p2, p3}, LCatalano/Imaging/Filters/GaussianBoxBlur;->e(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 111
    return-void
.end method

.method private a(DI)[I
    .locals 15

    .prologue
    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 240
    mul-double v2, v12, p1

    mul-double v2, v2, p1

    move/from16 v0, p3

    int-to-double v4, v0

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 241
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    rem-double v4, v2, v10

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-nez v4, :cond_0

    sub-double/2addr v2, v8

    .line 242
    :cond_0
    add-double v6, v2, v10

    .line 244
    mul-double v4, v12, p1

    mul-double v4, v4, p1

    move/from16 v0, p3

    int-to-double v8, v0

    mul-double/2addr v8, v2

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    mul-int/lit8 v8, p3, 0x4

    int-to-double v8, v8

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    mul-int/lit8 v8, p3, 0x3

    int-to-double v8, v8

    sub-double/2addr v4, v8

    const-wide/high16 v8, -0x3ff0000000000000L    # -4.0

    mul-double/2addr v8, v2

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    sub-double/2addr v8, v10

    div-double/2addr v4, v8

    .line 245
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v8, v4

    .line 248
    move/from16 v0, p3

    new-array v5, v0, [I

    .line 249
    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v4, v0, :cond_2

    .line 250
    int-to-double v10, v4

    cmpg-double v10, v10, v8

    if-gez v10, :cond_1

    .line 251
    double-to-int v10, v2

    aput v10, v5, v4

    .line 249
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    :cond_1
    double-to-int v10, v6

    aput v10, v5, v4

    goto :goto_1

    .line 256
    :cond_2
    return-object v5
.end method

.method private b(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V
    .locals 3

    .prologue
    .line 115
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 117
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRGB(I)[I

    move-result-object v2

    invoke-virtual {p2, v0, v2}, LCatalano/Imaging/FastBitmap;->setRGB(I[I)V

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, p2, p1, p3}, LCatalano/Imaging/Filters/GaussianBoxBlur;->d(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 122
    invoke-direct {p0, p1, p2, p3}, LCatalano/Imaging/Filters/GaussianBoxBlur;->f(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 124
    return-void
.end method

.method private c(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V
    .locals 19

    .prologue
    .line 128
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 129
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 131
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-int v4, p3, p3

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double v12, v2, v4

    .line 132
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v10, :cond_4

    .line 133
    mul-int v5, v8, v9

    add-int v4, v5, p3

    .line 134
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v11

    add-int v2, v5, v9

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v14

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v11

    .line 135
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v2, v0, :cond_0

    add-int v6, v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_0
    const/4 v2, 0x0

    move v6, v5

    :goto_2
    move/from16 v0, p3

    if-gt v2, v0, :cond_1

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    sub-int/2addr v4, v11

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v15}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v7

    goto :goto_2

    .line 137
    :cond_1
    add-int/lit8 v2, p3, 0x1

    move/from16 v18, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    :goto_3
    sub-int v7, v9, p3

    if-ge v2, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v11

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    sub-int v4, v11, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v11}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v6

    move v6, v7

    goto :goto_3

    .line 138
    :cond_2
    sub-int v2, v9, p3

    move v6, v5

    :goto_4
    if-ge v2, v9, :cond_3

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    sub-int v4, v14, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v7, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v5

    goto :goto_4

    .line 132
    :cond_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    .line 141
    :cond_4
    return-void
.end method

.method private d(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V
    .locals 19

    .prologue
    .line 145
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 146
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 148
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-int v4, p3, p3

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double v12, v2, v4

    .line 151
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v10, :cond_4

    .line 152
    mul-int v5, v8, v9

    add-int v4, v5, p3

    .line 153
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v11

    add-int v2, v5, v9

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v14

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v11

    .line 154
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v2, v0, :cond_0

    add-int v6, v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    :cond_0
    const/4 v2, 0x0

    move v6, v5

    :goto_2
    move/from16 v0, p3

    if-gt v2, v0, :cond_1

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    sub-int/2addr v4, v11

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v15}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v7

    goto :goto_2

    .line 156
    :cond_1
    add-int/lit8 v2, p3, 0x1

    move/from16 v18, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    :goto_3
    sub-int v7, v9, p3

    if-ge v2, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v11

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    sub-int v4, v11, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v11}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v6

    move v6, v7

    goto :goto_3

    .line 157
    :cond_2
    sub-int v2, v9, p3

    move v6, v5

    :goto_4
    if-ge v2, v9, :cond_3

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    sub-int v4, v14, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v7, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v5

    goto :goto_4

    .line 151
    :cond_3
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_0

    .line 161
    :cond_4
    const/4 v2, 0x0

    move v8, v2

    :goto_5
    if-ge v8, v10, :cond_9

    .line 162
    mul-int v5, v8, v9

    add-int v4, v5, p3

    .line 163
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v11

    add-int v2, v5, v9

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v14

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v11

    .line 164
    const/4 v2, 0x0

    :goto_6
    move/from16 v0, p3

    if-ge v2, v0, :cond_5

    add-int v6, v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 165
    :cond_5
    const/4 v2, 0x0

    move v6, v5

    :goto_7
    move/from16 v0, p3

    if-gt v2, v0, :cond_6

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    sub-int/2addr v4, v11

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v15}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v7

    goto :goto_7

    .line 166
    :cond_6
    add-int/lit8 v2, p3, 0x1

    move/from16 v18, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    :goto_8
    sub-int v7, v9, p3

    if-ge v2, v7, :cond_7

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v11

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    sub-int v4, v11, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v11}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v6

    move v6, v7

    goto :goto_8

    .line 167
    :cond_7
    sub-int v2, v9, p3

    move v6, v5

    :goto_9
    if-ge v2, v9, :cond_8

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    sub-int v4, v14, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v7, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v5

    goto :goto_9

    .line 161
    :cond_8
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_5

    .line 171
    :cond_9
    const/4 v2, 0x0

    move v8, v2

    :goto_a
    if-ge v8, v10, :cond_e

    .line 172
    mul-int v5, v8, v9

    add-int v4, v5, p3

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v11

    add-int v2, v5, v9

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v14

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v11

    .line 174
    const/4 v2, 0x0

    :goto_b
    move/from16 v0, p3

    if-ge v2, v0, :cond_a

    add-int v6, v5, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 175
    :cond_a
    const/4 v2, 0x0

    move v6, v5

    :goto_c
    move/from16 v0, p3

    if-gt v2, v0, :cond_b

    add-int/lit8 v7, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    sub-int/2addr v4, v11

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v15}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v7

    goto :goto_c

    .line 176
    :cond_b
    add-int/lit8 v2, p3, 0x1

    move/from16 v18, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v18

    :goto_d
    sub-int v7, v9, p3

    if-ge v2, v7, :cond_c

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v11

    add-int/lit8 v6, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    sub-int v4, v11, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v5, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v11, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v11}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v6

    move v6, v7

    goto :goto_d

    .line 177
    :cond_c
    sub-int v2, v9, p3

    move v6, v5

    :goto_e
    if-ge v2, v9, :cond_d

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    sub-int v4, v14, v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v6, 0x1

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v7, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v5

    goto :goto_e

    .line 171
    :cond_d
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_a

    .line 180
    :cond_e
    return-void
.end method

.method private e(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V
    .locals 16

    .prologue
    .line 184
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 185
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 187
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-int v4, p3, p3

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double v12, v2, v4

    .line 188
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_4

    .line 189
    mul-int v2, p3, v9

    add-int v4, v7, v2

    .line 190
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    add-int/lit8 v2, v10, -0x1

    mul-int/2addr v2, v9

    add-int/2addr v2, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v11

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v6

    .line 191
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v2, v0, :cond_0

    mul-int v5, v2, v9

    add-int/2addr v5, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_0
    const/4 v2, 0x0

    move v5, v7

    :goto_2
    move/from16 v0, p3

    if-gt v2, v0, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v8

    sub-int/2addr v8, v6

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 193
    :cond_1
    add-int/lit8 v2, p3, 0x1

    move v6, v4

    move v4, v7

    :goto_3
    sub-int v8, v10, p3

    if-ge v2, v8, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v14

    sub-int/2addr v8, v14

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    add-int v8, v4, v9

    add-int v4, v6, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v8

    goto :goto_3

    .line 194
    :cond_2
    sub-int v2, v10, p3

    :goto_4
    if-ge v2, v10, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    sub-int v6, v11, v6

    add-int/2addr v3, v6

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v6, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 188
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 197
    :cond_4
    return-void
.end method

.method private f(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V
    .locals 16

    .prologue
    .line 201
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 202
    invoke-virtual/range {p2 .. p2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v10

    .line 204
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-int v4, p3, p3

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double v12, v2, v4

    .line 207
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_4

    .line 208
    mul-int v2, p3, v9

    add-int v4, v7, v2

    .line 209
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v6

    add-int/lit8 v2, v10, -0x1

    mul-int/2addr v2, v9

    add-int/2addr v2, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v11

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v6

    .line 210
    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p3

    if-ge v2, v0, :cond_0

    mul-int v5, v2, v9

    add-int/2addr v5, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    :cond_0
    const/4 v2, 0x0

    move v5, v7

    :goto_2
    move/from16 v0, p3

    if-gt v2, v0, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v8

    sub-int/2addr v8, v6

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    :cond_1
    add-int/lit8 v2, p3, 0x1

    move v6, v4

    move v4, v7

    :goto_3
    sub-int v8, v10, p3

    if-ge v2, v8, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v14

    sub-int/2addr v8, v14

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    add-int v8, v4, v9

    add-int v4, v6, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v8

    goto :goto_3

    .line 213
    :cond_2
    sub-int v2, v10, p3

    :goto_4
    if-ge v2, v10, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v6

    sub-int v6, v11, v6

    add-int/2addr v3, v6

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v6, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 207
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 217
    :cond_4
    const/4 v7, 0x0

    :goto_5
    if-ge v7, v9, :cond_9

    .line 218
    mul-int v2, p3, v9

    add-int v4, v7, v2

    .line 219
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    add-int/lit8 v2, v10, -0x1

    mul-int/2addr v2, v9

    add-int/2addr v2, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v11

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v6

    .line 220
    const/4 v2, 0x0

    :goto_6
    move/from16 v0, p3

    if-ge v2, v0, :cond_5

    mul-int v5, v2, v9

    add-int/2addr v5, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 221
    :cond_5
    const/4 v2, 0x0

    move v5, v7

    :goto_7
    move/from16 v0, p3

    if-gt v2, v0, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v8

    sub-int/2addr v8, v6

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 222
    :cond_6
    add-int/lit8 v2, p3, 0x1

    move v6, v4

    move v4, v7

    :goto_8
    sub-int v8, v10, p3

    if-ge v2, v8, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v14

    sub-int/2addr v8, v14

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    add-int v8, v4, v9

    add-int v4, v6, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v8

    goto :goto_8

    .line 223
    :cond_7
    sub-int v2, v10, p3

    :goto_9
    if-ge v2, v10, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    sub-int v6, v11, v6

    add-int/2addr v3, v6

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v6, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 217
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 227
    :cond_9
    const/4 v7, 0x0

    :goto_a
    if-ge v7, v9, :cond_e

    .line 228
    mul-int v2, p3, v9

    add-int v4, v7, v2

    .line 229
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    add-int/lit8 v2, v10, -0x1

    mul-int/2addr v2, v9

    add-int/2addr v2, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v11

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v2, v6

    .line 230
    const/4 v2, 0x0

    :goto_b
    move/from16 v0, p3

    if-ge v2, v0, :cond_a

    mul-int v5, v2, v9

    add-int/2addr v5, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 231
    :cond_a
    const/4 v2, 0x0

    move v5, v7

    :goto_c
    move/from16 v0, p3

    if-gt v2, v0, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v8

    sub-int/2addr v8, v6

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 232
    :cond_b
    add-int/lit8 v2, p3, 0x1

    move v6, v4

    move v4, v7

    :goto_d
    sub-int v8, v10, p3

    if-ge v2, v8, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v14

    sub-int/2addr v8, v14

    add-int/2addr v3, v8

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v8, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v8}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    add-int v8, v4, v9

    add-int v4, v6, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    move v6, v4

    move v4, v8

    goto :goto_d

    .line 233
    :cond_c
    sub-int v2, v10, p3

    :goto_e
    if-ge v2, v10, :cond_d

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    sub-int v6, v11, v6

    add-int/2addr v3, v6

    int-to-double v14, v3

    mul-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v6, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    add-int/2addr v4, v9

    add-int/2addr v5, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 227
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    .line 236
    :cond_e
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 86
    iget-wide v2, p0, LCatalano/Imaging/Filters/GaussianBoxBlur;->a:D

    iget v1, p0, LCatalano/Imaging/Filters/GaussianBoxBlur;->b:I

    invoke-direct {p0, v2, v3, v1}, LCatalano/Imaging/Filters/GaussianBoxBlur;->a(DI)[I

    move-result-object v1

    .line 88
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v2}, LCatalano/Imaging/Filters/GaussianBoxBlur;->a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 90
    aget v2, v1, v5

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, p1, v2}, LCatalano/Imaging/Filters/GaussianBoxBlur;->a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 91
    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/GaussianBoxBlur;->a(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    aget v2, v1, v4

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v2}, LCatalano/Imaging/Filters/GaussianBoxBlur;->b(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 95
    aget v2, v1, v5

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v0, p1, v2}, LCatalano/Imaging/Filters/GaussianBoxBlur;->b(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    .line 96
    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1}, LCatalano/Imaging/Filters/GaussianBoxBlur;->b(LCatalano/Imaging/FastBitmap;LCatalano/Imaging/FastBitmap;I)V

    goto :goto_0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, LCatalano/Imaging/Filters/GaussianBoxBlur;->b:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/GaussianBoxBlur;->b:I

    .line 55
    return-void
.end method
