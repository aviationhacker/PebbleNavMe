.class public LCatalano/Imaging/Filters/FastVariance;
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

    iput v0, p0, LCatalano/Imaging/Filters/FastVariance;->a:I

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

    iput v0, p0, LCatalano/Imaging/Filters/FastVariance;->a:I

    .line 61
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/FastVariance;->setRadius(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 32

    .prologue
    .line 67
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v20

    .line 68
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v21

    .line 69
    new-instance v22, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 70
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    const/4 v2, 0x0

    move v11, v2

    :goto_0
    move/from16 v0, v21

    if-ge v11, v0, :cond_5

    .line 73
    const/4 v2, 0x0

    move v10, v2

    :goto_1
    move/from16 v0, v20

    if-ge v10, v0, :cond_4

    .line 74
    const/4 v3, 0x0

    .line 75
    const-wide/16 v6, 0x0

    .line 76
    const-wide/16 v4, 0x0

    .line 77
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    sub-int v2, v11, v2

    :goto_2
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    add-int/2addr v8, v11

    if-gt v2, v8, :cond_1

    .line 78
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    sub-int v8, v10, v8

    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    add-int/2addr v9, v10

    if-gt v8, v9, :cond_0

    .line 79
    if-ltz v2, :cond_11

    move/from16 v0, v21

    if-ge v2, v0, :cond_11

    if-ltz v8, :cond_11

    move/from16 v0, v20

    if-ge v8, v0, :cond_11

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    int-to-double v12, v9

    sub-double/2addr v12, v6

    .line 82
    int-to-double v14, v3

    div-double v14, v12, v14

    add-double/2addr v6, v14

    .line 83
    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    int-to-double v14, v9

    sub-double/2addr v14, v6

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    move v9, v3

    .line 78
    :goto_4
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move v3, v9

    goto :goto_3

    .line 77
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 87
    :cond_1
    add-int/lit8 v2, v3, -0x1

    int-to-double v2, v2

    div-double v2, v4, v2

    .line 88
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    const-wide/16 v2, 0x0

    .line 89
    :cond_2
    const-wide v4, 0x406fe00000000000L    # 255.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 90
    :cond_3
    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 73
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_1

    .line 72
    :cond_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    .line 95
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 97
    const/4 v3, 0x0

    :goto_5
    move/from16 v0, v21

    if-ge v3, v0, :cond_c

    .line 98
    const/4 v4, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v4, v0, :cond_b

    .line 99
    const/4 v5, 0x0

    .line 100
    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    .line 101
    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    .line 102
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    sub-int v2, v3, v2

    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    move/from16 v18, v0

    add-int v18, v18, v3

    move/from16 v0, v18

    if-gt v2, v0, :cond_7

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    move/from16 v18, v0

    sub-int v18, v4, v18

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/FastVariance;->a:I

    move/from16 v19, v0

    add-int v19, v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 104
    if-ltz v2, :cond_10

    move/from16 v0, v21

    if-ge v2, v0, :cond_10

    if-ltz v18, :cond_10

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 105
    add-int/lit8 v5, v5, 0x1

    .line 106
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v24, v24, v16

    .line 107
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v26, v26, v14

    .line 108
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v28, v28, v12

    .line 110
    int-to-double v0, v5

    move-wide/from16 v30, v0

    div-double v30, v24, v30

    add-double v16, v16, v30

    .line 111
    int-to-double v0, v5

    move-wide/from16 v30, v0

    div-double v30, v26, v30

    add-double v14, v14, v30

    .line 112
    int-to-double v0, v5

    move-wide/from16 v30, v0

    div-double v30, v28, v30

    add-double v12, v12, v30

    .line 114
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v30, v0

    sub-double v30, v30, v16

    mul-double v24, v24, v30

    add-double v10, v10, v24

    .line 115
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v24, v24, v14

    mul-double v24, v24, v26

    add-double v8, v8, v24

    .line 116
    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v2, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v24, v24, v12

    mul-double v24, v24, v28

    add-double v6, v6, v24

    move/from16 v19, v5

    .line 103
    :goto_9
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    move/from16 v5, v19

    goto/16 :goto_8

    .line 102
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 121
    :cond_7
    add-int/lit8 v2, v5, -0x1

    int-to-double v12, v2

    div-double/2addr v10, v12

    .line 122
    add-int/lit8 v2, v5, -0x1

    int-to-double v12, v2

    div-double/2addr v8, v12

    .line 123
    add-int/lit8 v2, v5, -0x1

    int-to-double v12, v2

    div-double/2addr v6, v12

    .line 125
    const-wide/16 v12, 0x0

    cmpg-double v2, v10, v12

    if-gez v2, :cond_8

    const-wide/16 v10, 0x0

    .line 126
    :cond_8
    const-wide/16 v12, 0x0

    cmpg-double v2, v8, v12

    if-gez v2, :cond_9

    const-wide/16 v8, 0x0

    .line 127
    :cond_9
    const-wide/16 v12, 0x0

    cmpg-double v2, v6, v12

    if-gez v2, :cond_a

    const-wide/16 v6, 0x0

    .line 129
    :cond_a
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_f

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-wide v12, v10

    .line 130
    :goto_a
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v8, v10

    if-lez v2, :cond_e

    const-wide v8, 0x406fe00000000000L    # 255.0

    move-wide v10, v8

    .line 131
    :goto_b
    const-wide v8, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v6, v8

    if-lez v2, :cond_d

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-wide v8, v6

    .line 133
    :goto_c
    double-to-int v5, v12

    double-to-int v6, v10

    double-to-int v7, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 97
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 137
    :cond_c
    return-void

    :cond_d
    move-wide v8, v6

    goto :goto_c

    :cond_e
    move-wide v10, v8

    goto :goto_b

    :cond_f
    move-wide v12, v10

    goto :goto_a

    :cond_10
    move/from16 v19, v5

    goto :goto_9

    :cond_11
    move v9, v3

    goto/16 :goto_4
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, LCatalano/Imaging/Filters/FastVariance;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/FastVariance;->a:I

    .line 49
    return-void
.end method
