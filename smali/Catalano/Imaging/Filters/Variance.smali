.class public LCatalano/Imaging/Filters/Variance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Imaging/Filters/Variance;->a:I

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Imaging/Filters/Variance;->a:I

    .line 61
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/Variance;->setRadius(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 32

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v22

    .line 68
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v23

    .line 69
    new-instance v24, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 72
    const/4 v2, 0x0

    move v12, v2

    :goto_0
    move/from16 v0, v23

    if-ge v12, v0, :cond_7

    .line 73
    const/4 v2, 0x0

    move v7, v2

    :goto_1
    move/from16 v0, v22

    if-ge v7, v0, :cond_6

    .line 74
    const-wide/16 v4, 0x0

    .line 75
    const-wide/16 v10, 0x0

    .line 76
    const/4 v3, 0x0

    .line 77
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v2, v12, v2

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v6, v12

    if-gt v2, v6, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v6, v7, v6

    :goto_3
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v8, v7

    if-gt v6, v8, :cond_0

    .line 79
    if-ltz v2, :cond_17

    move/from16 v0, v23

    if-ge v2, v0, :cond_17

    if-ltz v6, :cond_17

    move/from16 v0, v22

    if-ge v6, v0, :cond_17

    .line 80
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v4, v8

    .line 81
    add-int/lit8 v3, v3, 0x1

    move-wide v8, v4

    move v4, v3

    .line 78
    :goto_4
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move v3, v4

    move-wide v4, v8

    goto :goto_3

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 85
    :cond_1
    int-to-double v8, v3

    div-double v14, v4, v8

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v2, v12, v2

    move-wide v4, v10

    :goto_5
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v6, v12

    if-gt v2, v6, :cond_3

    .line 87
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v6, v7, v6

    :goto_6
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v8, v7

    if-gt v6, v8, :cond_2

    .line 88
    if-ltz v2, :cond_16

    move/from16 v0, v23

    if-ge v2, v0, :cond_16

    if-ltz v6, :cond_16

    move/from16 v0, v22

    if-ge v6, v0, :cond_16

    .line 89
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    sub-double/2addr v8, v14

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    move-wide v8, v4

    .line 87
    :goto_7
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v8

    goto :goto_6

    .line 86
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 92
    :cond_3
    add-int/lit8 v2, v3, -0x1

    int-to-double v2, v2

    div-double v2, v4, v2

    .line 93
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    const-wide/16 v2, 0x0

    .line 94
    :cond_4
    const-wide v4, 0x406fe00000000000L    # 255.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_5

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 95
    :cond_5
    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 73
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto/16 :goto_1

    .line 72
    :cond_6
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_0

    .line 100
    :cond_7
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 102
    const/4 v3, 0x0

    :goto_8
    move/from16 v0, v23

    if-ge v3, v0, :cond_10

    .line 103
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v22

    if-ge v4, v0, :cond_f

    .line 104
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 105
    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v16, 0x0

    .line 106
    const/4 v5, 0x0

    .line 107
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v2, v3, v2

    :goto_a
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v12, v3

    if-gt v2, v12, :cond_9

    .line 108
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v12, v4, v12

    :goto_b
    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v13, v4

    if-gt v12, v13, :cond_8

    .line 109
    if-ltz v2, :cond_15

    move/from16 v0, v23

    if-ge v2, v0, :cond_15

    if-ltz v12, :cond_15

    move/from16 v0, v22

    if-ge v12, v0, :cond_15

    .line 110
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v13

    int-to-double v14, v13

    add-double/2addr v10, v14

    .line 111
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v13

    int-to-double v14, v13

    add-double/2addr v8, v14

    .line 112
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v13

    int-to-double v14, v13

    add-double/2addr v6, v14

    .line 113
    add-int/lit8 v5, v5, 0x1

    move-wide v14, v10

    move-wide v10, v8

    move-wide v8, v6

    move v6, v5

    .line 108
    :goto_c
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    move v5, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v14

    goto :goto_b

    .line 107
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 117
    :cond_9
    int-to-double v12, v5

    div-double v26, v10, v12

    .line 118
    int-to-double v10, v5

    div-double v28, v8, v10

    .line 119
    int-to-double v8, v5

    div-double v30, v6, v8

    .line 120
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v2, v3, v2

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    move-wide/from16 v10, v20

    :goto_d
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v12, v3

    if-gt v2, v12, :cond_b

    .line 121
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Filters/Variance;->a:I

    sub-int v12, v4, v12

    :goto_e
    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/Variance;->a:I

    add-int/2addr v13, v4

    if-gt v12, v13, :cond_a

    .line 122
    if-ltz v2, :cond_14

    move/from16 v0, v23

    if-ge v2, v0, :cond_14

    if-ltz v12, :cond_14

    move/from16 v0, v22

    if-ge v12, v0, :cond_14

    .line 123
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v13

    int-to-double v14, v13

    sub-double v14, v14, v26

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v10, v14

    .line 124
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v13

    int-to-double v14, v13

    sub-double v14, v14, v28

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v8, v14

    .line 125
    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v13

    int-to-double v14, v13

    sub-double v14, v14, v30

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v6, v14

    move-wide v14, v10

    move-wide v10, v8

    move-wide v8, v6

    .line 121
    :goto_f
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move-wide v6, v8

    move-wide v8, v10

    move-wide v10, v14

    goto :goto_e

    .line 120
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 129
    :cond_b
    add-int/lit8 v2, v5, -0x1

    int-to-double v12, v2

    div-double/2addr v10, v12

    .line 130
    add-int/lit8 v2, v5, -0x1

    int-to-double v12, v2

    div-double/2addr v8, v12

    .line 131
    add-int/lit8 v2, v5, -0x1

    int-to-double v12, v2

    div-double/2addr v6, v12

    .line 133
    const-wide/16 v12, 0x0

    cmpg-double v2, v10, v12

    if-gez v2, :cond_c

    const-wide/16 v10, 0x0

    .line 134
    :cond_c
    const-wide/16 v12, 0x0

    cmpg-double v2, v8, v12

    if-gez v2, :cond_d

    const-wide/16 v8, 0x0

    .line 135
    :cond_d
    const-wide/16 v12, 0x0

    cmpg-double v2, v6, v12

    if-gez v2, :cond_e

    const-wide/16 v6, 0x0

    .line 137
    :cond_e
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_13

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-wide v12, v10

    .line 138
    :goto_10
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v8, v10

    if-lez v2, :cond_12

    const-wide v8, 0x406fe00000000000L    # 255.0

    move-wide v10, v8

    .line 139
    :goto_11
    const-wide v8, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_11

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-wide v8, v6

    .line 141
    :goto_12
    double-to-int v5, v12

    double-to-int v6, v10

    double-to-int v7, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    .line 102
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 145
    :cond_10
    return-void

    :cond_11
    move-wide v8, v6

    goto :goto_12

    :cond_12
    move-wide v10, v8

    goto :goto_11

    :cond_13
    move-wide v12, v10

    goto :goto_10

    :cond_14
    move-wide v14, v10

    move-wide v10, v8

    move-wide v8, v6

    goto :goto_f

    :cond_15
    move-wide v14, v10

    move-wide v10, v8

    move-wide v8, v6

    move v6, v5

    goto/16 :goto_c

    :cond_16
    move-wide v8, v4

    goto/16 :goto_7

    :cond_17
    move-wide v8, v4

    move v4, v3

    goto/16 :goto_4
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, LCatalano/Imaging/Filters/Variance;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Variance;->a:I

    .line 49
    return-void
.end method
