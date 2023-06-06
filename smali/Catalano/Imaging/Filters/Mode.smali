.class public LCatalano/Imaging/Filters/Mode;
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
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/Mode;->a:I

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput v0, p0, LCatalano/Imaging/Filters/Mode;->a:I

    .line 65
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Mode;->a:I

    .line 66
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 296
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 45

    .prologue
    .line 71
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v21

    .line 72
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v22

    .line 74
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Mode;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, LCatalano/Imaging/Filters/Mode;->a(I)I

    move-result v23

    .line 75
    mul-int v4, v23, v23

    .line 78
    new-instance v24, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 80
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 81
    new-array v14, v4, [I

    .line 86
    const/4 v4, 0x0

    move v13, v4

    :goto_0
    move/from16 v0, v22

    if-ge v13, v0, :cond_18

    .line 87
    const/4 v4, 0x0

    move v12, v4

    :goto_1
    move/from16 v0, v21

    if-ge v12, v0, :cond_7

    .line 88
    const/4 v10, 0x0

    .line 89
    const-wide/16 v8, 0x0

    .line 90
    const/16 v7, 0xff

    .line 91
    const/4 v6, 0x0

    .line 92
    const/4 v4, 0x0

    move v11, v4

    :goto_2
    move/from16 v0, v23

    if-ge v11, v0, :cond_2

    .line 93
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Mode;->a:I

    sub-int v4, v11, v4

    add-int v15, v13, v4

    .line 94
    const/4 v4, 0x0

    move/from16 v38, v4

    move v4, v6

    move v6, v7

    move v7, v10

    move/from16 v10, v38

    :goto_3
    move/from16 v0, v23

    if-ge v10, v0, :cond_1

    .line 95
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Mode;->a:I

    sub-int v5, v10, v5

    add-int/2addr v5, v12

    .line 96
    if-ltz v15, :cond_1b

    move/from16 v0, v22

    if-ge v15, v0, :cond_1b

    if-ltz v5, :cond_1b

    move/from16 v0, v21

    if-ge v5, v0, :cond_1b

    .line 97
    move-object/from16 v0, v24

    invoke-virtual {v0, v15, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 98
    aput v5, v14, v7

    .line 99
    int-to-double v0, v5

    move-wide/from16 v16, v0

    add-double v8, v8, v16

    .line 100
    add-int/lit8 v7, v7, 0x1

    .line 101
    if-le v5, v4, :cond_0

    move v4, v5

    .line 103
    :cond_0
    if-ge v5, v6, :cond_1b

    move-wide/from16 v38, v8

    move v8, v7

    move-wide/from16 v6, v38

    .line 94
    :goto_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move-wide/from16 v38, v6

    move v6, v5

    move v7, v8

    move-wide/from16 v8, v38

    goto :goto_3

    .line 92
    :cond_1
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move v10, v7

    move v7, v6

    move v6, v4

    goto :goto_2

    .line 108
    :cond_2
    const/4 v4, 0x0

    invoke-static {v14, v4, v10}, Ljava/util/Arrays;->sort([III)V

    .line 109
    div-int/lit8 v4, v10, 0x2

    .line 110
    aget v5, v14, v4

    .line 112
    int-to-double v10, v10

    div-double/2addr v8, v10

    .line 114
    mul-int/lit8 v4, v5, 0x2

    sub-int v10, v4, v7

    .line 115
    mul-int/lit8 v4, v5, 0x2

    sub-int v11, v4, v6

    .line 116
    const/4 v6, 0x0

    .line 118
    const/4 v4, 0x0

    move v7, v4

    :goto_5
    move/from16 v0, v23

    if-ge v7, v0, :cond_6

    .line 119
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Mode;->a:I

    sub-int v4, v7, v4

    add-int v15, v13, v4

    .line 120
    const/4 v4, 0x0

    move/from16 v38, v4

    move v4, v6

    move/from16 v6, v38

    :goto_6
    move/from16 v0, v23

    if-ge v6, v0, :cond_5

    .line 121
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mode;->a:I

    move/from16 v16, v0

    sub-int v16, v6, v16

    add-int v16, v16, v12

    .line 122
    if-ltz v15, :cond_4

    move/from16 v0, v22

    if-ge v15, v0, :cond_4

    if-ltz v16, :cond_4

    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 123
    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v16

    .line 124
    move/from16 v0, v16

    if-ge v0, v10, :cond_3

    int-to-double v0, v5

    move-wide/from16 v18, v0

    cmpg-double v17, v18, v8

    if-gez v17, :cond_3

    .line 125
    aput v16, v14, v4

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 128
    :cond_3
    move/from16 v0, v16

    if-le v0, v11, :cond_4

    int-to-double v0, v5

    move-wide/from16 v18, v0

    cmpl-double v17, v18, v8

    if-lez v17, :cond_4

    .line 129
    aput v16, v14, v4

    .line 130
    add-int/lit8 v4, v4, 0x1

    .line 120
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 118
    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v4

    goto :goto_5

    .line 136
    :cond_6
    if-lez v6, :cond_1a

    .line 137
    const/4 v4, 0x0

    invoke-static {v14, v4, v6}, Ljava/util/Arrays;->sort([III)V

    .line 138
    div-int/lit8 v4, v6, 0x2

    .line 139
    aget v4, v14, v4

    .line 140
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 143
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 87
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto/16 :goto_1

    .line 86
    :cond_7
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    goto/16 :goto_0

    .line 147
    :cond_8
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 148
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 149
    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 150
    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 155
    const/4 v4, 0x0

    move/from16 v20, v4

    :goto_8
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_18

    .line 156
    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_9
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_16

    .line 157
    const/4 v11, 0x0

    .line 158
    const-wide/16 v12, 0x0

    .line 159
    const/16 v8, 0xff

    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v4, 0x0

    move/from16 v18, v4

    move v6, v5

    move v7, v5

    move v9, v8

    move v10, v8

    move-wide v14, v12

    move-wide/from16 v16, v12

    :goto_a
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    .line 162
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Mode;->a:I

    sub-int v4, v18, v4

    add-int v28, v20, v4

    .line 163
    const/4 v4, 0x0

    move/from16 v38, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move-wide/from16 v39, v12

    move-wide v12, v14

    move-wide/from16 v14, v16

    move/from16 v17, v38

    move/from16 v16, v11

    move-wide/from16 v10, v39

    :goto_b
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    .line 164
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mode;->a:I

    move/from16 v29, v0

    sub-int v29, v17, v29

    add-int v29, v29, v19

    .line 165
    if-ltz v28, :cond_9

    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    if-ltz v29, :cond_9

    move/from16 v0, v29

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 166
    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v30

    .line 167
    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v31

    .line 168
    move-object/from16 v0, v24

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v29

    .line 170
    aput v30, v25, v16

    .line 171
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v14, v14, v32

    .line 173
    aput v31, v26, v16

    .line 174
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v12, v12, v32

    .line 176
    aput v29, v27, v16

    .line 177
    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v32, v0

    add-double v10, v10, v32

    .line 179
    move/from16 v0, v30

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 180
    move/from16 v0, v31

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 181
    move/from16 v0, v29

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 183
    move/from16 v0, v30

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 184
    move/from16 v0, v31

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 185
    move/from16 v0, v29

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 187
    add-int/lit8 v16, v16, 0x1

    .line 163
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_b

    .line 161
    :cond_a
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    move/from16 v38, v5

    move v5, v4

    move/from16 v39, v6

    move/from16 v6, v38

    move/from16 v40, v7

    move/from16 v7, v39

    move/from16 v41, v8

    move/from16 v8, v40

    move/from16 v42, v9

    move/from16 v9, v41

    move-wide/from16 v43, v10

    move/from16 v10, v42

    move/from16 v11, v16

    move-wide/from16 v16, v14

    move-wide v14, v12

    move-wide/from16 v12, v43

    goto/16 :goto_a

    .line 191
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v4, v11}, Ljava/util/Arrays;->sort([III)V

    .line 192
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4, v11}, Ljava/util/Arrays;->sort([III)V

    .line 193
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v4, v11}, Ljava/util/Arrays;->sort([III)V

    .line 195
    div-int/lit8 v4, v11, 0x2

    .line 196
    aget v18, v25, v4

    .line 198
    div-int/lit8 v4, v11, 0x2

    .line 199
    aget v28, v26, v4

    .line 201
    div-int/lit8 v4, v11, 0x2

    .line 202
    aget v29, v27, v4

    .line 204
    int-to-double v0, v11

    move-wide/from16 v30, v0

    div-double v16, v16, v30

    .line 205
    int-to-double v0, v11

    move-wide/from16 v30, v0

    div-double v14, v14, v30

    .line 206
    int-to-double v0, v11

    move-wide/from16 v30, v0

    div-double v12, v12, v30

    .line 208
    mul-int/lit8 v4, v18, 0x2

    sub-int v10, v4, v10

    .line 209
    mul-int/lit8 v4, v28, 0x2

    sub-int v9, v4, v9

    .line 210
    mul-int/lit8 v4, v29, 0x2

    sub-int v11, v4, v8

    .line 212
    mul-int/lit8 v4, v18, 0x2

    sub-int v30, v4, v7

    .line 213
    mul-int/lit8 v4, v28, 0x2

    sub-int v31, v4, v6

    .line 214
    mul-int/lit8 v4, v29, 0x2

    sub-int v32, v4, v5

    .line 216
    const/4 v7, 0x0

    .line 217
    const/4 v5, 0x0

    .line 218
    const/4 v6, 0x0

    .line 219
    const/4 v4, 0x0

    move v8, v4

    :goto_c
    move/from16 v0, v23

    if-ge v8, v0, :cond_12

    .line 220
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Mode;->a:I

    sub-int v4, v8, v4

    add-int v33, v20, v4

    .line 221
    const/4 v4, 0x0

    move/from16 v38, v4

    move v4, v7

    move/from16 v7, v38

    :goto_d
    move/from16 v0, v23

    if-ge v7, v0, :cond_11

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mode;->a:I

    move/from16 v34, v0

    sub-int v34, v7, v34

    add-int v34, v34, v19

    .line 223
    if-ltz v33, :cond_19

    move/from16 v0, v33

    move/from16 v1, v22

    if-ge v0, v1, :cond_19

    if-ltz v34, :cond_19

    move/from16 v0, v34

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    .line 224
    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v35

    .line 225
    move/from16 v0, v35

    if-ge v0, v10, :cond_c

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v36, v0

    cmpg-double v36, v36, v16

    if-gez v36, :cond_c

    .line 226
    aput v35, v25, v4

    .line 227
    add-int/lit8 v4, v4, 0x1

    .line 229
    :cond_c
    move/from16 v0, v35

    move/from16 v1, v30

    if-le v0, v1, :cond_d

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v36, v0

    cmpl-double v36, v36, v16

    if-lez v36, :cond_d

    .line 230
    aput v35, v25, v4

    .line 231
    add-int/lit8 v4, v4, 0x1

    .line 234
    :cond_d
    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v35

    .line 235
    move/from16 v0, v35

    if-ge v0, v9, :cond_e

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v36, v0

    cmpg-double v36, v36, v14

    if-gez v36, :cond_e

    .line 236
    aput v35, v26, v5

    .line 237
    add-int/lit8 v5, v5, 0x1

    .line 239
    :cond_e
    move/from16 v0, v35

    move/from16 v1, v31

    if-le v0, v1, :cond_f

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v36, v0

    cmpl-double v36, v36, v14

    if-lez v36, :cond_f

    .line 240
    aput v35, v26, v5

    .line 241
    add-int/lit8 v5, v5, 0x1

    .line 244
    :cond_f
    move-object/from16 v0, v24

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v34

    .line 245
    move/from16 v0, v34

    if-ge v0, v11, :cond_10

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v36, v0

    cmpg-double v35, v36, v12

    if-gez v35, :cond_10

    .line 246
    aput v34, v27, v6

    .line 247
    add-int/lit8 v6, v6, 0x1

    .line 249
    :cond_10
    move/from16 v0, v34

    move/from16 v1, v32

    if-le v0, v1, :cond_19

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v36, v0

    cmpl-double v35, v36, v12

    if-lez v35, :cond_19

    .line 250
    aput v34, v27, v6

    .line 251
    add-int/lit8 v6, v6, 0x1

    move/from16 v38, v6

    move v6, v4

    move/from16 v4, v38

    .line 221
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move/from16 v38, v4

    move v4, v6

    move/from16 v6, v38

    goto/16 :goto_d

    .line 219
    :cond_11
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v4

    goto/16 :goto_c

    .line 257
    :cond_12
    if-lez v7, :cond_13

    .line 258
    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-static {v0, v4, v7}, Ljava/util/Arrays;->sort([III)V

    .line 259
    div-int/lit8 v4, v7, 0x2

    .line 260
    aget v4, v25, v4

    .line 261
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 267
    :goto_f
    if-lez v5, :cond_14

    .line 268
    const/4 v4, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->sort([III)V

    .line 269
    div-int/lit8 v4, v5, 0x2

    .line 270
    aget v4, v26, v4

    .line 271
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 277
    :goto_10
    if-lez v6, :cond_15

    .line 278
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v4, v6}, Ljava/util/Arrays;->sort([III)V

    .line 279
    div-int/lit8 v4, v6, 0x2

    .line 280
    aget v4, v27, v4

    .line 281
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    .line 156
    :goto_11
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    goto/16 :goto_9

    .line 264
    :cond_13
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    goto :goto_f

    .line 274
    :cond_14
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    goto :goto_10

    .line 284
    :cond_15
    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v19

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    goto :goto_11

    .line 155
    :cond_16
    add-int/lit8 v4, v20, 0x1

    move/from16 v20, v4

    goto/16 :goto_8

    .line 291
    :cond_17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Mode only works in grayscale or rgb images."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    :cond_18
    return-void

    :cond_19
    move/from16 v38, v6

    move v6, v4

    move/from16 v4, v38

    goto/16 :goto_e

    :cond_1a
    move v4, v5

    goto/16 :goto_7

    :cond_1b
    move v5, v6

    move-wide/from16 v38, v8

    move v8, v7

    move-wide/from16 v6, v38

    goto/16 :goto_4
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LCatalano/Imaging/Filters/Mode;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, LCatalano/Imaging/Filters/Mode;->a:I

    .line 53
    return-void
.end method
