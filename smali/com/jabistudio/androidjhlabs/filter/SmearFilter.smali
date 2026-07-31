.class public Lcom/jabistudio/androidjhlabs/filter/SmearFilter;
.super Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;
.source "SourceFile"


# static fields
.field public static final CIRCLES:I = 0x2

.field public static final CROSSES:I = 0x0

.field public static final LINES:I = 0x1

.field public static final SQUARES:I = 0x3


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:I

.field private e:Ljava/util/Random;

.field private f:J

.field private g:I

.field private h:F

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/WholeImageFilter;-><init>()V

    .line 32
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->a:F

    .line 33
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->b:F

    .line 34
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->c:F

    .line 35
    const/16 v0, 0x8

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->d:I

    .line 37
    const-wide/16 v0, 0x237

    iput-wide v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->f:J

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->g:I

    .line 39
    iput v2, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    .line 40
    iput v3, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->i:I

    .line 41
    iput-boolean v3, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    .line 45
    return-void
.end method


# virtual methods
.method protected filterPixels(II[ILandroid/graphics/Rect;)[I
    .locals 19

    .prologue
    .line 131
    mul-int v2, p1, p2

    new-array v9, v2, [I

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/util/Random;->setSeed(J)V

    .line 134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v10, v2

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->a:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v11, v2

    .line 137
    const/4 v3, 0x0

    .line 140
    const/4 v2, 0x0

    move v5, v2

    :goto_0
    move/from16 v0, p2

    if-ge v5, v0, :cond_2

    .line 141
    const/4 v2, 0x0

    move v4, v3

    move v3, v2

    :goto_1
    move/from16 v0, p1

    if-ge v3, v0, :cond_1

    .line 142
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    :goto_2
    aput v2, v9, v4

    .line 143
    add-int/lit8 v4, v4, 0x1

    .line 141
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 142
    :cond_0
    aget v2, p3, v4

    goto :goto_2

    .line 140
    :cond_1
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v4

    goto :goto_0

    .line 146
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->g:I

    packed-switch v2, :pswitch_data_0

    .line 268
    :cond_3
    return-object v9

    .line 149
    :pswitch_0
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->b:F

    mul-float/2addr v2, v3

    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v2, v3

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->d:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-int v5, v2

    .line 150
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v5, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int v6, v2, p1

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int v7, v2, p2

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->d:I

    rem-int/2addr v2, v3

    add-int/lit8 v8, v2, 0x1

    .line 154
    mul-int v2, v7, p1

    add-int/2addr v2, v6

    aget v10, p3, v2

    .line 155
    sub-int v2, v6, v8

    move v3, v2

    :goto_4
    add-int v2, v6, v8

    add-int/lit8 v2, v2, 0x1

    if-ge v3, v2, :cond_6

    .line 156
    if-ltz v3, :cond_4

    move/from16 v0, p1

    if-ge v3, v0, :cond_4

    .line 157
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    .line 158
    :goto_5
    mul-int v11, v7, p1

    add-int/2addr v11, v3

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    invoke-static {v12, v2, v10}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v9, v11

    .line 155
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 157
    :cond_5
    mul-int v2, v7, p1

    add-int/2addr v2, v3

    aget v2, v9, v2

    goto :goto_5

    .line 161
    :cond_6
    sub-int v2, v7, v8

    move v3, v2

    :goto_6
    add-int v2, v7, v8

    add-int/lit8 v2, v2, 0x1

    if-ge v3, v2, :cond_9

    .line 162
    if-ltz v3, :cond_7

    move/from16 v0, p2

    if-ge v3, v0, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    .line 164
    :goto_7
    mul-int v11, v3, p1

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    invoke-static {v12, v2, v10}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v9, v11

    .line 161
    :cond_7
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6

    .line 163
    :cond_8
    mul-int v2, v3, p1

    add-int/2addr v2, v6

    aget v2, v9, v2

    goto :goto_7

    .line 150
    :cond_9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_3

    .line 170
    :pswitch_1
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->b:F

    mul-float/2addr v2, v3

    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v2, v3

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v12, v2

    .line 172
    const/4 v2, 0x0

    move v8, v2

    :goto_8
    if-ge v8, v12, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int v2, v2, p1

    .line 174
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int v3, v3, p2

    .line 175
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    aget v13, p3, v4

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->d:I

    rem-int/2addr v4, v5

    .line 177
    int-to-float v5, v4

    mul-float/2addr v5, v11

    float-to-int v7, v5

    .line 178
    int-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    .line 180
    sub-int v6, v2, v7

    .line 181
    sub-int v5, v3, v4

    .line 182
    add-int v14, v2, v7

    .line 183
    add-int v15, v3, v4

    .line 186
    if-ge v14, v6, :cond_b

    .line 187
    const/4 v2, -0x1

    move v7, v2

    .line 190
    :goto_9
    if-ge v15, v5, :cond_c

    .line 191
    const/4 v2, -0x1

    .line 194
    :goto_a
    sub-int v3, v14, v6

    .line 195
    sub-int v4, v15, v5

    .line 196
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v16

    .line 197
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 200
    move/from16 v0, p1

    if-ge v6, v0, :cond_a

    if-ltz v6, :cond_a

    move/from16 v0, p2

    if-ge v5, v0, :cond_a

    if-ltz v5, :cond_a

    .line 201
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    if-eqz v3, :cond_d

    const/4 v3, -0x1

    .line 202
    :goto_b
    mul-int v4, v5, p1

    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v3, v13}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v3

    aput v3, v9, v4

    .line 204
    :cond_a
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_10

    .line 205
    mul-int/lit8 v3, v17, 0x2

    sub-int v4, v3, v16

    .line 206
    mul-int/lit8 v15, v17, 0x2

    .line 207
    sub-int v3, v17, v16

    mul-int/lit8 v16, v3, 0x2

    move v3, v4

    move v4, v5

    .line 209
    :goto_c
    if-eq v6, v14, :cond_13

    .line 210
    if-gtz v3, :cond_e

    .line 211
    add-int/2addr v3, v15

    move v5, v4

    move v4, v3

    .line 216
    :goto_d
    add-int/2addr v6, v7

    .line 217
    move/from16 v0, p1

    if-ge v6, v0, :cond_1a

    if-ltz v6, :cond_1a

    move/from16 v0, p2

    if-ge v5, v0, :cond_1a

    if-ltz v5, :cond_1a

    .line 218
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    if-eqz v3, :cond_f

    const/4 v3, -0x1

    .line 219
    :goto_e
    mul-int v17, v5, p1

    add-int v17, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v3, v13}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v3

    aput v3, v9, v17

    move v3, v4

    move v4, v5

    .line 220
    goto :goto_c

    .line 189
    :cond_b
    const/4 v2, 0x1

    move v7, v2

    goto :goto_9

    .line 193
    :cond_c
    const/4 v2, 0x1

    goto :goto_a

    .line 201
    :cond_d
    mul-int v3, v5, p1

    add-int/2addr v3, v6

    aget v3, v9, v3

    goto :goto_b

    .line 213
    :cond_e
    add-int v3, v3, v16

    .line 214
    add-int/2addr v4, v2

    move v5, v4

    move v4, v3

    goto :goto_d

    .line 218
    :cond_f
    mul-int v3, v5, p1

    add-int/2addr v3, v6

    aget v3, v9, v3

    goto :goto_e

    .line 223
    :cond_10
    mul-int/lit8 v3, v16, 0x2

    sub-int v4, v3, v17

    .line 224
    mul-int/lit8 v14, v16, 0x2

    .line 225
    sub-int v3, v16, v17

    mul-int/lit8 v16, v3, 0x2

    move v3, v4

    move v4, v6

    move v6, v5

    .line 227
    :goto_f
    if-eq v6, v15, :cond_13

    .line 228
    if-gtz v3, :cond_11

    .line 229
    add-int/2addr v3, v14

    move v5, v4

    move v4, v3

    .line 234
    :goto_10
    add-int/2addr v6, v2

    .line 235
    move/from16 v0, p1

    if-ge v5, v0, :cond_19

    if-ltz v5, :cond_19

    move/from16 v0, p2

    if-ge v6, v0, :cond_19

    if-ltz v6, :cond_19

    .line 236
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    if-eqz v3, :cond_12

    const/4 v3, -0x1

    .line 237
    :goto_11
    mul-int v17, v6, p1

    add-int v17, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-static {v0, v3, v13}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v3

    aput v3, v9, v17

    move v3, v4

    move v4, v5

    .line 238
    goto :goto_f

    .line 231
    :cond_11
    add-int v3, v3, v16

    .line 232
    add-int/2addr v4, v7

    move v5, v4

    move v4, v3

    goto :goto_10

    .line 236
    :cond_12
    mul-int v3, v6, p1

    add-int/2addr v3, v5

    aget v3, v9, v3

    goto :goto_11

    .line 172
    :cond_13
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto/16 :goto_8

    .line 245
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->d:I

    add-int/lit8 v6, v2, 0x1

    .line 246
    mul-int v7, v6, v6

    .line 247
    const/high16 v2, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->b:F

    mul-float/2addr v2, v3

    move/from16 v0, p1

    int-to-float v3, v0

    mul-float/2addr v2, v3

    move/from16 v0, p2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    int-to-float v3, v6

    div-float/2addr v2, v3

    float-to-int v8, v2

    .line 248
    const/4 v2, 0x0

    move v5, v2

    :goto_12
    if-ge v5, v8, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int v10, v2, p1

    .line 250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int v11, v2, p2

    .line 251
    mul-int v2, v11, p1

    add-int/2addr v2, v10

    aget v12, p3, v2

    .line 252
    sub-int v2, v10, v6

    move v4, v2

    :goto_13
    add-int v2, v10, v6

    add-int/lit8 v2, v2, 0x1

    if-ge v4, v2, :cond_18

    .line 253
    sub-int v2, v11, v6

    move v3, v2

    :goto_14
    add-int v2, v11, v6

    add-int/lit8 v2, v2, 0x1

    if-ge v3, v2, :cond_17

    .line 255
    move-object/from16 v0, p0

    iget v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->g:I

    const/4 v13, 0x2

    if-ne v2, v13, :cond_15

    .line 256
    sub-int v2, v4, v10

    sub-int v13, v4, v10

    mul-int/2addr v2, v13

    sub-int v13, v3, v11

    sub-int v14, v3, v11

    mul-int/2addr v13, v14

    add-int/2addr v2, v13

    .line 259
    :goto_15
    if-ltz v4, :cond_14

    move/from16 v0, p1

    if-ge v4, v0, :cond_14

    if-ltz v3, :cond_14

    move/from16 v0, p2

    if-ge v3, v0, :cond_14

    if-gt v2, v7, :cond_14

    .line 260
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    if-eqz v2, :cond_16

    const/4 v2, -0x1

    .line 261
    :goto_16
    mul-int v13, v3, p1

    add-int/2addr v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    invoke-static {v14, v2, v12}, Lcom/jabistudio/androidjhlabs/filter/math/ImageMath;->mixColors(FII)I

    move-result v2

    aput v2, v9, v13

    .line 253
    :cond_14
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_14

    .line 258
    :cond_15
    const/4 v2, 0x0

    goto :goto_15

    .line 260
    :cond_16
    mul-int v2, v3, p1

    add-int/2addr v2, v4

    aget v2, v9, v2

    goto :goto_16

    .line 252
    :cond_17
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_13

    .line 248
    :cond_18
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_12

    :cond_19
    move v3, v4

    move v4, v5

    goto/16 :goto_f

    :cond_1a
    move v3, v4

    move v4, v5

    goto/16 :goto_c

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->a:F

    return v0
.end method

.method public getBackground()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->b:F

    return v0
.end method

.method public getDistance()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->d:I

    return v0
.end method

.method public getFadeout()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->i:I

    return v0
.end method

.method public getMix()F
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    return v0
.end method

.method public getScatter()F
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->c:F

    return v0
.end method

.method public getShape()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->g:I

    return v0
.end method

.method public randomize()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->f:J

    .line 124
    return-void
.end method

.method public setAngle(F)V
    .locals 0

    .prologue
    .line 86
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->a:F

    .line 87
    return-void
.end method

.method public setBackground(Z)V
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->j:Z

    .line 116
    return-void
.end method

.method public setDensity(F)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->b:F

    .line 65
    return-void
.end method

.method public setDistance(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->d:I

    .line 57
    return-void
.end method

.method public setFadeout(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->i:I

    .line 108
    return-void
.end method

.method public setMix(F)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->h:F

    .line 100
    return-void
.end method

.method public setScatter(F)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->c:F

    .line 73
    return-void
.end method

.method public setShape(I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmearFilter;->g:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string v0, "Effects/Smear..."

    return-object v0
.end method
