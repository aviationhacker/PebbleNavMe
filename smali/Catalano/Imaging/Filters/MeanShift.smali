.class public LCatalano/Imaging/Filters/MeanShift;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, LCatalano/Imaging/Filters/MeanShift;->a:I

    .line 53
    iput p2, p0, LCatalano/Imaging/Filters/MeanShift;->b:F

    .line 54
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 34

    .prologue
    .line 59
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v21

    .line 60
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v22

    .line 62
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 63
    const/4 v4, 0x3

    move/from16 v0, v22

    move/from16 v1, v21

    filled-new-array {v0, v1, v4}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [[[F

    .line 66
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    move/from16 v0, v22

    if-ge v5, v0, :cond_1

    .line 67
    const/4 v4, 0x0

    :goto_1
    move/from16 v0, v21

    if-ge v4, v0, :cond_0

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 69
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    .line 70
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    .line 74
    aget-object v9, v10, v5

    aget-object v9, v9, v4

    const/4 v11, 0x0

    const v12, 0x3e991687    # 0.299f

    int-to-float v13, v6

    mul-float/2addr v12, v13

    const v13, 0x3f1645a2    # 0.587f

    int-to-float v14, v7

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    const v13, 0x3de978d5    # 0.114f

    int-to-float v14, v8

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v9, v11

    .line 75
    aget-object v9, v10, v5

    aget-object v9, v9, v4

    const/4 v11, 0x1

    const v12, 0x3f187fcc    # 0.5957f

    int-to-float v13, v6

    mul-float/2addr v12, v13

    const v13, 0x3e8c7e28    # 0.2744f

    int-to-float v14, v7

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const v13, 0x3ea47454    # 0.3212f

    int-to-float v14, v8

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    aput v12, v9, v11

    .line 76
    aget-object v9, v10, v5

    aget-object v9, v9, v4

    const/4 v11, 0x2

    const v12, 0x3e58793e    # 0.2114f

    int-to-float v6, v6

    mul-float/2addr v6, v12

    const v12, 0x3f05c91d    # 0.5226f

    int-to-float v7, v7

    mul-float/2addr v7, v12

    sub-float/2addr v6, v7

    const v7, 0x3e9f4880    # 0.3111f

    int-to-float v8, v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v9, v11

    .line 67
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 83
    :cond_1
    const/4 v5, 0x0

    :goto_2
    move/from16 v0, v22

    if-ge v5, v0, :cond_7

    .line 84
    const/4 v6, 0x0

    :goto_3
    move/from16 v0, v21

    if-ge v6, v0, :cond_6

    .line 89
    aget-object v4, v10, v5

    aget-object v4, v4, v6

    .line 90
    const/4 v7, 0x0

    aget v8, v4, v7

    .line 91
    const/4 v7, 0x1

    aget v7, v4, v7

    .line 92
    const/4 v9, 0x2

    aget v4, v4, v9

    .line 94
    const/4 v9, 0x0

    move v13, v5

    move v15, v6

    move/from16 v17, v9

    .line 102
    :goto_4
    const/16 v19, 0x0

    .line 103
    const/16 v18, 0x0

    .line 104
    const/16 v16, 0x0

    .line 105
    const/4 v14, 0x0

    .line 106
    const/4 v12, 0x0

    .line 107
    const/4 v11, 0x0

    .line 109
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    move/from16 v20, v0

    mul-int v23, v9, v20

    .line 110
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/MeanShift;->b:F

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/MeanShift;->b:F

    move/from16 v20, v0

    mul-float v24, v9, v20

    .line 111
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    neg-int v9, v9

    move/from16 v33, v12

    move/from16 v12, v16

    move/from16 v16, v14

    move/from16 v14, v33

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-gt v9, v0, :cond_4

    .line 112
    add-int v25, v13, v9

    .line 113
    if-ltz v25, :cond_10

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 114
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v33, v20

    move/from16 v20, v19

    move/from16 v19, v18

    move/from16 v18, v12

    move v12, v11

    move/from16 v11, v33

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-gt v11, v0, :cond_3

    .line 115
    add-int v26, v15, v11

    .line 116
    if-ltz v26, :cond_2

    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 117
    mul-int v27, v9, v9

    mul-int v28, v11, v11

    add-int v27, v27, v28

    move/from16 v0, v27

    move/from16 v1, v23

    if-gt v0, v1, :cond_2

    .line 118
    aget-object v27, v10, v25

    aget-object v27, v27, v26

    .line 120
    const/16 v28, 0x0

    aget v28, v27, v28

    .line 121
    const/16 v29, 0x1

    aget v29, v27, v29

    .line 122
    const/16 v30, 0x2

    aget v27, v27, v30

    .line 124
    sub-float v30, v8, v28

    .line 125
    sub-float v31, v7, v29

    .line 126
    sub-float v32, v4, v27

    .line 128
    mul-float v30, v30, v30

    mul-float v31, v31, v31

    add-float v30, v30, v31

    mul-float v31, v32, v32

    add-float v30, v30, v31

    cmpg-float v30, v30, v24

    if-gtz v30, :cond_2

    .line 129
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v20, v20, v30

    .line 130
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v19, v19, v26

    .line 131
    add-float v18, v18, v28

    .line 132
    add-float v16, v16, v29

    .line 133
    add-float v14, v14, v27

    .line 134
    add-int/lit8 v12, v12, 0x1

    .line 114
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_3
    move v11, v12

    move v12, v14

    move/from16 v14, v16

    move/from16 v16, v18

    move/from16 v18, v19

    move/from16 v19, v20

    .line 111
    :goto_7
    add-int/lit8 v9, v9, 0x1

    move/from16 v33, v12

    move/from16 v12, v16

    move/from16 v16, v14

    move/from16 v14, v33

    goto/16 :goto_5

    .line 141
    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v11, v11

    div-float v20, v9, v11

    .line 142
    mul-float v12, v12, v20

    .line 143
    mul-float v11, v16, v20

    .line 144
    mul-float v9, v14, v20

    .line 145
    mul-float v14, v19, v20

    float-to-double v0, v14

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v14, v0

    .line 146
    mul-float v16, v18, v20

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v18, v18, v24

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 147
    sub-int v13, v14, v13

    .line 148
    sub-int v15, v16, v15

    .line 149
    sub-float v8, v12, v8

    .line 150
    sub-float v7, v11, v7

    .line 151
    sub-float v4, v9, v4

    .line 153
    mul-int/2addr v13, v13

    mul-int/2addr v15, v15

    add-int/2addr v13, v15

    int-to-float v13, v13

    mul-float/2addr v8, v8

    add-float/2addr v8, v13

    mul-float/2addr v7, v7

    add-float/2addr v7, v8

    mul-float/2addr v4, v4

    add-float/2addr v7, v4

    .line 154
    add-int/lit8 v4, v17, 0x1

    .line 156
    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    const/16 v7, 0x64

    if-lt v4, v7, :cond_11

    .line 158
    :cond_5
    const v4, 0x3f74d014    # 0.9563f

    mul-float/2addr v4, v11

    add-float/2addr v4, v12

    const v7, 0x3f1ef9db    # 0.621f

    mul-float/2addr v7, v9

    add-float/2addr v4, v7

    float-to-int v7, v4

    .line 159
    const v4, 0x3e8b50b1    # 0.2721f

    mul-float/2addr v4, v11

    sub-float v4, v12, v4

    const v8, 0x3f25b574    # 0.6473f

    mul-float/2addr v8, v9

    sub-float/2addr v4, v8

    float-to-int v8, v4

    .line 160
    const v4, 0x3f8db22d    # 1.107f

    mul-float/2addr v4, v11

    sub-float v4, v12, v4

    const v11, 0x3fda3055    # 1.7046f

    mul-float/2addr v9, v11

    add-float/2addr v4, v9

    float-to-int v9, v4

    move-object/from16 v4, p1

    .line 162
    invoke-virtual/range {v4 .. v9}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 84
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 83
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 166
    :cond_7
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 170
    const/4 v7, 0x0

    :goto_8
    move/from16 v0, v22

    if-ge v7, v0, :cond_e

    .line 171
    const/4 v10, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v10, v0, :cond_d

    .line 176
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-float v4, v4

    .line 178
    const/4 v5, 0x0

    move v6, v7

    move v9, v10

    move v12, v5

    .line 184
    :goto_a
    const/4 v14, 0x0

    .line 185
    const/4 v13, 0x0

    .line 186
    const/4 v11, 0x0

    .line 187
    const/4 v8, 0x0

    .line 189
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    mul-int v16, v5, v15

    .line 190
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/MeanShift;->b:F

    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/MeanShift;->b:F

    mul-float v17, v5, v15

    .line 191
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    neg-int v5, v5

    :goto_b
    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    if-gt v5, v15, :cond_b

    .line 192
    add-int v18, v6, v5

    .line 193
    if-ltz v18, :cond_a

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 194
    move-object/from16 v0, p0

    iget v15, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    neg-int v15, v15

    move/from16 v33, v15

    move v15, v14

    move v14, v13

    move v13, v11

    move v11, v8

    move/from16 v8, v33

    :goto_c
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/MeanShift;->a:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-gt v8, v0, :cond_9

    .line 195
    add-int v19, v9, v8

    .line 196
    if-ltz v19, :cond_8

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 197
    mul-int v20, v5, v5

    mul-int v23, v8, v8

    add-int v20, v20, v23

    move/from16 v0, v20

    move/from16 v1, v16

    if-gt v0, v1, :cond_8

    .line 199
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    .line 201
    sub-float v23, v4, v20

    .line 203
    mul-float v23, v23, v23

    cmpg-float v23, v23, v17

    if-gtz v23, :cond_8

    .line 204
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v15, v15, v23

    .line 205
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v14, v14, v19

    .line 206
    add-float v13, v13, v20

    .line 207
    add-int/lit8 v11, v11, 0x1

    .line 194
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_9
    move v8, v11

    move v11, v13

    move v13, v14

    move v14, v15

    .line 191
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 214
    :cond_b
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v8, v8

    div-float v15, v5, v8

    .line 215
    mul-float v5, v11, v15

    .line 216
    mul-float v8, v14, v15

    float-to-double v0, v8

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v8, v0

    .line 217
    mul-float v11, v13, v15

    float-to-double v14, v11

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v11, v14

    .line 218
    sub-int v6, v8, v6

    .line 219
    sub-int v9, v11, v9

    .line 220
    sub-float v4, v5, v4

    .line 222
    mul-int/2addr v6, v6

    mul-int/2addr v9, v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    mul-float/2addr v4, v4

    add-float/2addr v6, v4

    .line 223
    add-int/lit8 v4, v12, 0x1

    .line 225
    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    const/16 v6, 0x64

    if-lt v4, v6, :cond_f

    .line 227
    :cond_c
    float-to-int v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 171
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_9

    .line 170
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 231
    :cond_e
    return-void

    :cond_f
    move v6, v8

    move v9, v11

    move v12, v4

    move v4, v5

    goto/16 :goto_a

    :cond_10
    move/from16 v33, v14

    move/from16 v14, v16

    move/from16 v16, v12

    move/from16 v12, v33

    goto/16 :goto_7

    :cond_11
    move v7, v11

    move v8, v12

    move v13, v14

    move/from16 v15, v16

    move/from16 v17, v4

    move v4, v9

    goto/16 :goto_4
.end method
