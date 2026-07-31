.class public LCatalano/Imaging/Filters/RandomConvolution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:LCatalano/Core/DoubleRange;

.field private c:[[D

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x3

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/RandomConvolution;-><init>(I)V

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 90
    new-instance v0, LCatalano/Core/DoubleRange;

    const-wide/high16 v2, -0x3ffc000000000000L    # -2.5

    const-wide/high16 v4, 0x4004000000000000L    # 2.5

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Core/DoubleRange;-><init>(DD)V

    invoke-direct {p0, p1, v0}, LCatalano/Imaging/Filters/RandomConvolution;-><init>(ILCatalano/Core/DoubleRange;)V

    .line 91
    return-void
.end method

.method public constructor <init>(ILCatalano/Core/DoubleRange;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, LCatalano/Imaging/Filters/RandomConvolution;-><init>(ILCatalano/Core/DoubleRange;Z)V

    .line 100
    return-void
.end method

.method public constructor <init>(ILCatalano/Core/DoubleRange;Z)V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/RandomConvolution;->d:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/RandomConvolution;->e:Z

    .line 109
    iput p1, p0, LCatalano/Imaging/Filters/RandomConvolution;->a:I

    .line 110
    iput-object p2, p0, LCatalano/Imaging/Filters/RandomConvolution;->b:LCatalano/Core/DoubleRange;

    .line 111
    iput-boolean p3, p0, LCatalano/Imaging/Filters/RandomConvolution;->d:Z

    .line 112
    return-void
.end method

.method private a([[D)I
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 235
    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 26

    .prologue
    .line 118
    new-instance v4, LCatalano/Math/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v4, v2, v3}, LCatalano/Math/Random;-><init>(J)V

    .line 121
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Filters/RandomConvolution;->e:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/RandomConvolution;->a:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/RandomConvolution;->a:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move-object/from16 v0, p0

    iput-object v2, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    .line 123
    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 124
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v5, v5

    if-ge v3, v5, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v5, v5, v2

    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/RandomConvolution;->b:LCatalano/Core/DoubleRange;

    invoke-virtual {v6}, LCatalano/Core/DoubleRange;->getMin()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/RandomConvolution;->b:LCatalano/Core/DoubleRange;

    invoke-virtual {v8}, LCatalano/Core/DoubleRange;->getMax()D

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, LCatalano/Math/Random;->nextDouble(DD)D

    move-result-wide v6

    aput-wide v6, v5, v3

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v16

    .line 131
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v17

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/RandomConvolution;->a([[D)I

    move-result v18

    .line 135
    new-instance v19, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 137
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 139
    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_1e

    .line 140
    const/4 v2, 0x0

    move v10, v2

    :goto_3
    move/from16 v0, v17

    if-ge v10, v0, :cond_c

    .line 141
    const-wide/16 v4, 0x0

    .line 142
    const-wide/16 v6, 0x0

    .line 143
    const/4 v2, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 144
    sub-int v3, v2, v18

    add-int v12, v11, v3

    .line 145
    const/4 v3, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    const/4 v9, 0x0

    aget-object v8, v8, v9

    array-length v8, v8

    if-ge v3, v8, :cond_8

    .line 146
    sub-int v8, v3, v18

    add-int/2addr v8, v10

    .line 147
    if-ltz v12, :cond_3

    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    if-ltz v8, :cond_3

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    .line 148
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v9, v9, v2

    aget-wide v14, v9, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v14

    add-double/2addr v4, v8

    .line 149
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v3

    add-double/2addr v6, v8

    .line 145
    :cond_2
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 151
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v8, v0, LCatalano/Imaging/Filters/RandomConvolution;->d:Z

    if-eqz v8, :cond_2

    .line 153
    add-int v8, v11, v2

    sub-int v9, v8, v18

    .line 154
    add-int v8, v10, v3

    sub-int v8, v8, v18

    .line 156
    if-gez v9, :cond_4

    const/4 v9, 0x0

    .line 157
    :cond_4
    move/from16 v0, v16

    if-lt v9, v0, :cond_5

    add-int/lit8 v9, v16, -0x1

    .line 159
    :cond_5
    if-gez v8, :cond_6

    const/4 v8, 0x0

    .line 160
    :cond_6
    move/from16 v0, v17

    if-lt v8, v0, :cond_7

    add-int/lit8 v8, v17, -0x1

    .line 162
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v13, v13, v2

    aget-wide v14, v13, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v9, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v14

    add-double/2addr v4, v8

    .line 163
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v3

    add-double/2addr v6, v8

    goto :goto_6

    .line 143
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 168
    :cond_9
    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_1f

    .line 169
    div-double v2, v4, v6

    .line 172
    :goto_7
    const-wide v4, 0x406fe00000000000L    # 255.0

    cmpl-double v4, v2, v4

    if-lez v4, :cond_a

    const-wide v2, 0x406fe00000000000L    # 255.0

    .line 173
    :cond_a
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gez v4, :cond_b

    const-wide/16 v2, 0x0

    .line 175
    :cond_b
    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v10, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 140
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_3

    .line 139
    :cond_c
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_2

    .line 181
    :cond_d
    const/4 v3, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v3, v0, :cond_1e

    .line 182
    const/4 v4, 0x0

    :goto_9
    move/from16 v0, v17

    if-ge v4, v0, :cond_1d

    .line 183
    const-wide/16 v6, 0x0

    .line 184
    const/4 v2, 0x0

    move-wide v8, v6

    move-wide v10, v6

    move-wide v12, v6

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    array-length v5, v5

    if-ge v2, v5, :cond_15

    .line 185
    sub-int v5, v2, v18

    add-int v20, v3, v5

    .line 186
    const/4 v5, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    const/4 v15, 0x0

    aget-object v14, v14, v15

    array-length v14, v14

    if-ge v5, v14, :cond_14

    .line 187
    sub-int v14, v5, v18

    add-int/2addr v14, v4

    .line 188
    if-ltz v20, :cond_f

    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    if-ltz v14, :cond_f

    move/from16 v0, v17

    if-ge v14, v0, :cond_f

    .line 189
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v15, v15, v2

    aget-wide v22, v15, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v10, v10, v22

    .line 190
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v15, v15, v2

    aget-wide v22, v15, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v8, v8, v22

    .line 191
    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v15, v15, v2

    aget-wide v22, v15, v5

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v14

    int-to-double v14, v14

    mul-double v14, v14, v22

    add-double/2addr v6, v14

    .line 192
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v14, v14, v2

    aget-wide v14, v14, v5

    add-double/2addr v12, v14

    .line 186
    :cond_e
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 194
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v14, v0, LCatalano/Imaging/Filters/RandomConvolution;->d:Z

    if-eqz v14, :cond_e

    .line 196
    add-int v14, v3, v2

    sub-int v15, v14, v18

    .line 197
    add-int v14, v4, v5

    sub-int v14, v14, v18

    .line 199
    if-gez v15, :cond_10

    const/4 v15, 0x0

    .line 200
    :cond_10
    move/from16 v0, v16

    if-lt v15, v0, :cond_11

    add-int/lit8 v15, v16, -0x1

    .line 202
    :cond_11
    if-gez v14, :cond_12

    const/4 v14, 0x0

    .line 203
    :cond_12
    move/from16 v0, v17

    if-lt v14, v0, :cond_13

    add-int/lit8 v14, v17, -0x1

    .line 205
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    move-object/from16 v21, v0

    aget-object v21, v21, v2

    aget-wide v22, v21, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v10, v10, v22

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    move-object/from16 v21, v0

    aget-object v21, v21, v2

    aget-wide v22, v21, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v8, v8, v22

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    move-object/from16 v21, v0

    aget-object v21, v21, v2

    aget-wide v22, v21, v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v14

    int-to-double v14, v14

    mul-double v14, v14, v22

    add-double/2addr v6, v14

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    aget-object v14, v14, v2

    aget-wide v14, v14, v5

    add-double/2addr v12, v14

    goto :goto_c

    .line 184
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_a

    .line 213
    :cond_15
    const-wide/16 v14, 0x0

    cmpl-double v2, v12, v14

    if-eqz v2, :cond_16

    .line 214
    div-double/2addr v10, v12

    .line 215
    div-double/2addr v8, v12

    .line 216
    div-double/2addr v6, v12

    .line 219
    :cond_16
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_17

    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 220
    :cond_17
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v8, v12

    if-lez v2, :cond_18

    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 221
    :cond_18
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v6, v12

    if-lez v2, :cond_19

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 223
    :cond_19
    const-wide/16 v12, 0x0

    cmpg-double v2, v10, v12

    if-gez v2, :cond_1a

    const-wide/16 v10, 0x0

    move-wide v12, v10

    .line 224
    :goto_d
    const-wide/16 v10, 0x0

    cmpg-double v2, v8, v10

    if-gez v2, :cond_1b

    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 225
    :goto_e
    const-wide/16 v8, 0x0

    cmpg-double v2, v6, v8

    if-gez v2, :cond_1c

    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 227
    :goto_f
    double-to-int v5, v12

    double-to-int v6, v10

    double-to-int v7, v8

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_1a
    move-wide v12, v10

    .line 223
    goto :goto_d

    :cond_1b
    move-wide v10, v8

    .line 224
    goto :goto_e

    :cond_1c
    move-wide v8, v6

    .line 225
    goto :goto_f

    .line 181
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 231
    :cond_1e
    return-void

    :cond_1f
    move-wide v2, v4

    goto/16 :goto_7
.end method

.method public getKernel()[[D
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    return-object v0
.end method

.method public isReplicate()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, LCatalano/Imaging/Filters/RandomConvolution;->d:Z

    return v0
.end method

.method public setKernel([[D)V
    .locals 1

    .prologue
    .line 58
    iput-object p1, p0, LCatalano/Imaging/Filters/RandomConvolution;->c:[[D

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/RandomConvolution;->e:Z

    .line 60
    return-void
.end method

.method public setReplicate(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, LCatalano/Imaging/Filters/RandomConvolution;->d:Z

    .line 76
    return-void
.end method
