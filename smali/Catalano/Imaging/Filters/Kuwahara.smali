.class public LCatalano/Imaging/Filters/Kuwahara;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x5

    iput v0, p0, LCatalano/Imaging/Filters/Kuwahara;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, LCatalano/Imaging/Filters/Kuwahara;->a:I

    .line 49
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Kuwahara;->a:I

    .line 50
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 32

    .prologue
    .line 55
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v21

    .line 56
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v22

    .line 57
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Kuwahara;->a:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v23, v2, 0x2

    .line 58
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Kuwahara;->a:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v24, v2, 0x2

    .line 60
    new-instance v25, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 62
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 63
    add-int v3, v21, v24

    .line 64
    add-int v4, v22, v24

    .line 65
    const/4 v2, 0x3

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [[[F

    .line 66
    const/4 v2, 0x3

    filled-new-array {v3, v4, v2}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, [[[F

    .line 71
    rsub-int/lit8 v18, v24, 0x0

    :goto_0
    add-int/lit8 v2, v22, 0x0

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 72
    rsub-int/lit8 v20, v24, 0x0

    :goto_1
    add-int/lit8 v2, v21, 0x0

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    .line 73
    const-wide/16 v6, 0x0

    .line 74
    const-wide/16 v4, 0x0

    .line 75
    const/4 v2, 0x0

    move/from16 v19, v20

    move-wide v10, v4

    move-wide v12, v6

    move-wide v14, v4

    move-wide/from16 v16, v6

    .line 76
    :goto_2
    add-int v3, v20, v23

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    move/from16 v3, v18

    .line 77
    :goto_3
    add-int v26, v18, v23

    move/from16 v0, v26

    if-ge v3, v0, :cond_1

    .line 78
    if-lez v19, :cond_0

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    if-lez v3, :cond_0

    move/from16 v0, v22

    if-ge v3, v0, :cond_0

    .line 79
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v26

    .line 80
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v27

    .line 81
    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v28

    .line 83
    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v16, v16, v30

    .line 84
    mul-int v26, v26, v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v14, v14, v30

    .line 86
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    add-double v12, v12, v30

    .line 87
    mul-int v26, v27, v27

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v10, v10, v26

    .line 89
    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v6, v6, v26

    .line 90
    mul-int v26, v28, v28

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v4, v4, v26

    .line 92
    add-int/lit8 v2, v2, 0x1

    .line 77
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 95
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 76
    :cond_1
    add-int/lit8 v3, v19, 0x1

    move/from16 v19, v3

    goto :goto_2

    .line 99
    :cond_2
    add-int v3, v20, v24

    aget-object v3, v8, v3

    add-int v19, v18, v24

    aget-object v3, v3, v19

    const/16 v19, 0x0

    int-to-double v0, v2

    move-wide/from16 v26, v0

    div-double v26, v16, v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v3, v19

    .line 100
    add-int v3, v20, v24

    aget-object v3, v8, v3

    add-int v19, v18, v24

    aget-object v3, v3, v19

    const/16 v19, 0x1

    int-to-double v0, v2

    move-wide/from16 v26, v0

    div-double v26, v12, v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v3, v19

    .line 101
    add-int v3, v20, v24

    aget-object v3, v8, v3

    add-int v19, v18, v24

    aget-object v3, v3, v19

    const/16 v19, 0x2

    int-to-double v0, v2

    move-wide/from16 v26, v0

    div-double v26, v6, v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    aput v26, v3, v19

    .line 103
    add-int v3, v20, v24

    aget-object v3, v9, v3

    add-int v19, v18, v24

    aget-object v3, v3, v19

    const/16 v19, 0x0

    mul-double v16, v16, v16

    int-to-double v0, v2

    move-wide/from16 v26, v0

    div-double v16, v16, v26

    sub-double v14, v14, v16

    double-to-float v14, v14

    aput v14, v3, v19

    .line 104
    add-int v3, v20, v24

    aget-object v3, v9, v3

    add-int v14, v18, v24

    aget-object v3, v3, v14

    const/4 v14, 0x1

    mul-double/2addr v12, v12

    int-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v12, v12, v16

    sub-double/2addr v10, v12

    double-to-float v10, v10

    aput v10, v3, v14

    .line 105
    add-int v3, v20, v24

    aget-object v3, v9, v3

    add-int v10, v18, v24

    aget-object v3, v3, v10

    const/4 v10, 0x2

    mul-double/2addr v6, v6

    int-to-double v12, v2

    div-double/2addr v6, v12

    sub-double/2addr v4, v6

    double-to-float v2, v4

    aput v2, v3, v10

    .line 72
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 71
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 109
    :cond_4
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 111
    const/4 v3, 0x0

    :goto_5
    add-int/lit8 v2, v22, 0x0

    if-ge v3, v2, :cond_11

    .line 112
    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v2, v21, 0x0

    if-ge v4, v2, :cond_8

    .line 115
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 117
    aget-object v2, v9, v4

    aget-object v2, v2, v3

    const/4 v10, 0x0

    aget v2, v2, v10

    .line 118
    cmpg-float v10, v2, v5

    if-gez v10, :cond_1d

    move v5, v3

    move v6, v4

    .line 119
    :goto_7
    add-int v10, v4, v24

    .line 120
    aget-object v7, v9, v10

    aget-object v7, v7, v3

    const/4 v11, 0x0

    aget v7, v7, v11

    .line 121
    cmpg-float v11, v7, v2

    if-gez v11, :cond_5

    move v2, v7

    move v5, v3

    move v6, v10

    .line 122
    :cond_5
    add-int v11, v3, v24

    .line 123
    aget-object v7, v9, v10

    aget-object v7, v7, v11

    const/4 v12, 0x0

    aget v7, v7, v12

    .line 124
    cmpg-float v12, v7, v2

    if-gez v12, :cond_1c

    move v2, v7

    move v5, v11

    .line 126
    :goto_8
    aget-object v6, v9, v4

    aget-object v6, v6, v11

    const/4 v7, 0x0

    aget v6, v6, v7

    .line 127
    cmpg-float v2, v6, v2

    if-gez v2, :cond_1b

    move v10, v4

    .line 129
    :goto_9
    aget-object v2, v8, v10

    aget-object v2, v2, v11

    const/4 v5, 0x0

    aget v2, v2, v5

    float-to-double v6, v2

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v12

    double-to-int v5, v6

    .line 132
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    .line 134
    aget-object v2, v9, v4

    aget-object v2, v2, v3

    const/4 v7, 0x1

    aget v2, v2, v7

    .line 135
    cmpg-float v7, v2, v6

    if-gez v7, :cond_1a

    move v11, v3

    move v10, v4

    .line 136
    :goto_a
    add-int v7, v4, v24

    .line 137
    aget-object v6, v9, v7

    aget-object v6, v6, v3

    const/4 v12, 0x1

    aget v6, v6, v12

    .line 138
    cmpg-float v12, v6, v2

    if-gez v12, :cond_6

    move v2, v6

    move v11, v3

    move v10, v7

    .line 139
    :cond_6
    add-int v12, v3, v24

    .line 140
    aget-object v6, v9, v7

    aget-object v6, v6, v12

    const/4 v13, 0x1

    aget v6, v6, v13

    .line 141
    cmpg-float v13, v6, v2

    if-gez v13, :cond_19

    move v2, v6

    move v11, v12

    .line 143
    :goto_b
    aget-object v6, v9, v4

    aget-object v6, v6, v12

    const/4 v10, 0x1

    aget v6, v6, v10

    .line 144
    cmpg-float v2, v6, v2

    if-gez v2, :cond_18

    move v7, v4

    .line 146
    :goto_c
    aget-object v2, v8, v7

    aget-object v2, v2, v12

    const/4 v6, 0x1

    aget v2, v2, v6

    float-to-double v10, v2

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v14

    double-to-int v6, v10

    .line 149
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    .line 151
    aget-object v2, v9, v4

    aget-object v2, v2, v3

    const/4 v11, 0x2

    aget v2, v2, v11

    .line 152
    cmpg-float v11, v2, v10

    if-gez v11, :cond_17

    move v12, v3

    move v7, v4

    .line 153
    :goto_d
    add-int v11, v4, v24

    .line 154
    aget-object v10, v9, v11

    aget-object v10, v10, v3

    const/4 v13, 0x2

    aget v10, v10, v13

    .line 155
    cmpg-float v13, v10, v2

    if-gez v13, :cond_7

    move v2, v10

    move v12, v3

    move v7, v11

    .line 156
    :cond_7
    add-int v13, v3, v24

    .line 157
    aget-object v10, v9, v11

    aget-object v10, v10, v13

    const/4 v14, 0x2

    aget v10, v10, v14

    .line 158
    cmpg-float v14, v10, v2

    if-gez v14, :cond_16

    move v2, v10

    move v12, v13

    .line 160
    :goto_e
    aget-object v7, v9, v4

    aget-object v7, v7, v13

    const/4 v10, 0x2

    aget v7, v7, v10

    .line 161
    cmpg-float v2, v7, v2

    if-gez v2, :cond_15

    move v11, v4

    .line 163
    :goto_f
    aget-object v2, v8, v11

    aget-object v2, v2, v13

    const/4 v7, 0x2

    aget v2, v2, v7

    float-to-double v14, v2

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v7, v14

    move-object/from16 v2, p1

    .line 165
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 112
    add-int/lit8 v4, v4, 0x1

    move v6, v13

    move v7, v11

    goto/16 :goto_6

    .line 111
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 169
    :cond_9
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 170
    add-int v3, v21, v24

    .line 171
    add-int v4, v22, v24

    .line 172
    filled-new-array {v3, v4}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    .line 173
    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    .line 176
    rsub-int/lit8 v10, v24, 0x0

    :goto_10
    add-int/lit8 v4, v22, 0x0

    if-ge v10, v4, :cond_e

    .line 177
    rsub-int/lit8 v12, v24, 0x0

    :goto_11
    add-int/lit8 v4, v21, 0x0

    if-ge v12, v4, :cond_d

    .line 178
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    move v11, v12

    .line 179
    :goto_12
    add-int v5, v12, v23

    if-ge v11, v5, :cond_c

    move v5, v10

    .line 180
    :goto_13
    add-int v13, v10, v23

    if-ge v5, v13, :cond_b

    .line 181
    if-lez v11, :cond_a

    move/from16 v0, v21

    if-ge v11, v0, :cond_a

    if-lez v5, :cond_a

    move/from16 v0, v22

    if-ge v5, v0, :cond_a

    .line 182
    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v13

    .line 183
    int-to-double v14, v13

    add-double/2addr v8, v14

    .line 184
    mul-int/2addr v13, v13

    int-to-double v14, v13

    add-double/2addr v6, v14

    .line 185
    add-int/lit8 v4, v4, 0x1

    .line 180
    :goto_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 188
    :cond_a
    const/4 v13, 0x0

    .line 189
    int-to-double v14, v13

    add-double/2addr v8, v14

    .line 190
    const/4 v13, 0x0

    int-to-double v14, v13

    add-double/2addr v6, v14

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 179
    :cond_b
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_12

    .line 195
    :cond_c
    add-int v5, v12, v24

    aget-object v5, v2, v5

    add-int v11, v10, v24

    int-to-double v14, v4

    div-double v14, v8, v14

    double-to-float v13, v14

    aput v13, v5, v11

    .line 196
    add-int v5, v12, v24

    aget-object v5, v3, v5

    add-int v11, v10, v24

    mul-double/2addr v8, v8

    int-to-double v14, v4

    div-double/2addr v8, v14

    sub-double/2addr v6, v8

    double-to-float v4, v6

    aput v4, v5, v11

    .line 177
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    .line 176
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 200
    :cond_e
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 202
    const/4 v6, 0x0

    :goto_15
    add-int/lit8 v4, v22, 0x0

    if-ge v6, v4, :cond_11

    .line 203
    const/4 v8, 0x0

    :goto_16
    add-int/lit8 v4, v21, 0x0

    if-ge v8, v4, :cond_10

    .line 204
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 206
    aget-object v4, v3, v8

    aget v4, v4, v6

    .line 207
    cmpg-float v10, v4, v5

    if-gez v10, :cond_14

    move v5, v6

    move v7, v8

    .line 208
    :goto_17
    add-int v10, v8, v24

    .line 209
    aget-object v9, v3, v10

    aget v9, v9, v6

    .line 210
    cmpg-float v11, v9, v4

    if-gez v11, :cond_f

    move v4, v9

    move v5, v6

    move v7, v10

    .line 211
    :cond_f
    add-int v11, v6, v24

    .line 212
    aget-object v9, v3, v10

    aget v9, v9, v11

    .line 213
    cmpg-float v12, v9, v4

    if-gez v12, :cond_13

    move v4, v9

    move v5, v11

    .line 215
    :goto_18
    aget-object v7, v3, v8

    aget v7, v7, v11

    .line 216
    cmpg-float v4, v7, v4

    if-gez v4, :cond_12

    move v10, v8

    .line 218
    :goto_19
    aget-object v4, v2, v10

    aget v4, v4, v11

    float-to-double v4, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v12

    double-to-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v8, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 203
    add-int/lit8 v8, v8, 0x1

    move v7, v11

    move v9, v10

    goto :goto_16

    .line 202
    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 222
    :cond_11
    return-void

    :cond_12
    move v11, v5

    goto :goto_19

    :cond_13
    move v10, v7

    goto :goto_18

    :cond_14
    move v4, v5

    move v5, v7

    move v7, v9

    goto :goto_17

    :cond_15
    move v13, v12

    goto/16 :goto_f

    :cond_16
    move v11, v7

    goto/16 :goto_e

    :cond_17
    move v2, v10

    goto/16 :goto_d

    :cond_18
    move v12, v11

    goto/16 :goto_c

    :cond_19
    move v7, v10

    goto/16 :goto_b

    :cond_1a
    move v2, v6

    goto/16 :goto_a

    :cond_1b
    move v11, v5

    goto/16 :goto_9

    :cond_1c
    move v10, v6

    goto/16 :goto_8

    :cond_1d
    move v2, v5

    move v5, v6

    move v6, v7

    goto/16 :goto_7
.end method
