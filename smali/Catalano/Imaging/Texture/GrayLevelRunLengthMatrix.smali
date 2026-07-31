.class public LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;
    }
.end annotation


# instance fields
.field private a:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;)V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->c:Z

    .line 115
    iput-object p1, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->a:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    .line 116
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;Z)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->c:Z

    .line 124
    iput-object p1, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->a:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    .line 125
    iput-boolean p2, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->c:Z

    .line 126
    return-void
.end method


# virtual methods
.method public Compute(LCatalano/Imaging/FastBitmap;)[[D
    .locals 19

    .prologue
    .line 135
    const/16 v2, 0xff

    .line 136
    move-object/from16 v0, p0

    iget-boolean v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->c:Z

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, LCatalano/Imaging/Tools/ImageStatistics;->Maximum(LCatalano/Imaging/FastBitmap;)I

    move-result v2

    .line 138
    :cond_0
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    .line 139
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 141
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v9, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 143
    sget-object v3, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$1;->a:[I

    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->a:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    invoke-virtual {v4}, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 303
    :cond_1
    return-object v2

    .line 145
    :pswitch_0
    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v8, :cond_1

    .line 146
    const/4 v4, 0x1

    .line 147
    const/4 v3, 0x1

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    :goto_1
    if-ge v4, v9, :cond_5

    .line 148
    add-int/lit8 v6, v4, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 149
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 150
    if-ne v6, v7, :cond_4

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 158
    :goto_2
    if-ne v6, v7, :cond_2

    add-int/lit8 v10, v9, -0x1

    if-ne v4, v10, :cond_2

    .line 159
    aget-object v10, v2, v6

    aget-wide v12, v10, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v10, v3

    .line 161
    :cond_2
    if-eq v6, v7, :cond_3

    add-int/lit8 v6, v9, -0x1

    if-ne v4, v6, :cond_3

    .line 162
    aget-object v6, v2, v7

    const/4 v7, 0x1

    aget-wide v10, v6, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    aput-wide v10, v6, v7

    .line 147
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    :cond_4
    aget-object v10, v2, v6

    aget-wide v12, v10, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v10, v3

    .line 155
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    .line 156
    const/4 v3, 0x1

    goto :goto_2

    .line 145
    :cond_5
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 171
    :pswitch_1
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-wide v6, v3, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    aput-wide v6, v3, v4

    .line 172
    add-int/lit8 v3, v8, -0x1

    aget-object v3, v2, v3

    add-int/lit8 v4, v9, -0x1

    aget-wide v6, v3, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    aput-wide v6, v3, v4

    .line 175
    const/4 v3, 0x1

    move v5, v3

    :goto_3
    if-ge v5, v8, :cond_a

    .line 176
    const/4 v4, 0x1

    .line 178
    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    :goto_4
    if-ge v4, v5, :cond_9

    .line 179
    sub-int v6, v5, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 180
    sub-int v7, v5, v4

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v10, v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 181
    if-ne v6, v7, :cond_8

    .line 182
    add-int/lit8 v3, v3, 0x1

    .line 189
    :goto_5
    if-ne v6, v7, :cond_6

    add-int/lit8 v10, v5, -0x1

    if-ne v4, v10, :cond_6

    .line 190
    aget-object v10, v2, v6

    aget-wide v12, v10, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v10, v3

    .line 192
    :cond_6
    if-eq v6, v7, :cond_7

    add-int/lit8 v6, v5, -0x1

    if-ne v4, v6, :cond_7

    .line 193
    aget-object v6, v2, v7

    const/4 v7, 0x1

    aget-wide v10, v6, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    aput-wide v10, v6, v7

    .line 178
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 185
    :cond_8
    aget-object v10, v2, v6

    aget-wide v12, v10, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v10, v3

    .line 186
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    .line 187
    const/4 v3, 0x1

    goto :goto_5

    .line 175
    :cond_9
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    .line 199
    :cond_a
    const/4 v3, 0x1

    move v5, v3

    :goto_6
    add-int/lit8 v3, v9, -0x1

    if-ge v5, v3, :cond_1

    .line 200
    const/4 v4, 0x1

    .line 201
    sub-int v6, v8, v5

    .line 202
    const/4 v3, 0x1

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    :goto_7
    if-ge v4, v6, :cond_e

    .line 203
    sub-int v7, v8, v4

    add-int v10, v5, v4

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 204
    sub-int v10, v8, v4

    add-int/lit8 v10, v10, -0x1

    add-int v11, v5, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    .line 205
    if-ne v7, v10, :cond_d

    .line 206
    add-int/lit8 v3, v3, 0x1

    .line 213
    :goto_8
    if-ne v7, v10, :cond_b

    add-int/lit8 v11, v6, -0x1

    if-ne v4, v11, :cond_b

    .line 214
    aget-object v11, v2, v7

    aget-wide v12, v11, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v11, v3

    .line 216
    :cond_b
    if-eq v7, v10, :cond_c

    add-int/lit8 v7, v6, -0x1

    if-ne v4, v7, :cond_c

    .line 217
    aget-object v7, v2, v10

    const/4 v10, 0x1

    aget-wide v12, v7, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v7, v10

    .line 202
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 209
    :cond_d
    aget-object v11, v2, v7

    aget-wide v12, v11, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v11, v3

    .line 210
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    .line 211
    const/4 v3, 0x1

    goto :goto_8

    .line 199
    :cond_e
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_6

    .line 224
    :pswitch_2
    const/4 v3, 0x0

    move v5, v3

    :goto_9
    if-ge v5, v9, :cond_1

    .line 225
    const/4 v4, 0x1

    .line 226
    const/4 v3, 0x0

    move/from16 v18, v3

    move v3, v4

    move/from16 v4, v18

    :goto_a
    add-int/lit8 v6, v8, -0x1

    if-ge v4, v6, :cond_12

    .line 227
    sub-int v6, v8, v4

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 228
    sub-int v7, v8, v4

    add-int/lit8 v7, v7, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 229
    if-ne v6, v7, :cond_11

    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 237
    :goto_b
    if-ne v6, v7, :cond_f

    add-int/lit8 v10, v8, -0x2

    if-ne v4, v10, :cond_f

    .line 238
    aget-object v10, v2, v6

    aget-wide v12, v10, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v10, v3

    .line 240
    :cond_f
    if-eq v6, v7, :cond_10

    add-int/lit8 v6, v8, -0x2

    if-ne v4, v6, :cond_10

    .line 241
    aget-object v6, v2, v7

    const/4 v7, 0x1

    aget-wide v10, v6, v7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v12

    aput-wide v10, v6, v7

    .line 226
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 233
    :cond_11
    aget-object v10, v2, v6

    aget-wide v12, v10, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v10, v3

    .line 234
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    .line 235
    const/4 v3, 0x1

    goto :goto_b

    .line 224
    :cond_12
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_9

    .line 250
    :pswitch_3
    const/4 v3, 0x0

    aget-object v3, v2, v3

    add-int/lit8 v4, v9, -0x1

    aget-wide v6, v3, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    aput-wide v6, v3, v4

    .line 251
    add-int/lit8 v3, v8, -0x1

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aget-wide v6, v3, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v10

    aput-wide v6, v3, v4

    .line 254
    const/4 v3, 0x1

    move v7, v3

    :goto_c
    if-ge v7, v9, :cond_17

    .line 255
    const/4 v5, 0x1

    .line 257
    add-int/lit8 v4, v9, -0x1

    .line 258
    const/4 v3, 0x0

    move v6, v5

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    :goto_d
    if-ge v4, v7, :cond_16

    .line 259
    sub-int v5, v7, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    .line 260
    sub-int v5, v7, v4

    add-int/lit8 v11, v5, -0x1

    add-int/lit8 v5, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    .line 261
    if-ne v10, v11, :cond_15

    .line 262
    add-int/lit8 v3, v6, 0x1

    .line 269
    :goto_e
    if-ne v10, v11, :cond_13

    add-int/lit8 v6, v7, -0x1

    if-ne v4, v6, :cond_13

    .line 270
    aget-object v6, v2, v10

    aget-wide v12, v6, v3

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v6, v3

    .line 272
    :cond_13
    if-eq v10, v11, :cond_14

    add-int/lit8 v6, v7, -0x1

    if-ne v4, v6, :cond_14

    .line 273
    aget-object v6, v2, v11

    const/4 v10, 0x1

    aget-wide v12, v6, v10

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v6, v10

    .line 258
    :cond_14
    add-int/lit8 v4, v4, 0x1

    move v6, v3

    move v3, v5

    goto :goto_d

    .line 265
    :cond_15
    aget-object v3, v2, v10

    aget-wide v12, v3, v6

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v3, v6

    .line 266
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    .line 267
    const/4 v3, 0x1

    goto :goto_e

    .line 254
    :cond_16
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_c

    .line 278
    :cond_17
    const/4 v3, 0x1

    move v7, v3

    :goto_f
    add-int/lit8 v3, v9, -0x1

    if-ge v7, v3, :cond_1

    .line 279
    const/4 v5, 0x1

    .line 280
    sub-int v10, v8, v7

    .line 281
    add-int/lit8 v3, v9, -0x1

    sub-int v4, v3, v7

    .line 282
    const/4 v3, 0x1

    move v6, v5

    move/from16 v18, v4

    move v4, v3

    move/from16 v3, v18

    :goto_10
    if-ge v4, v10, :cond_1b

    .line 283
    sub-int v5, v8, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v11

    .line 284
    sub-int v5, v8, v4

    add-int/lit8 v12, v5, -0x1

    add-int/lit8 v5, v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v12

    .line 285
    if-ne v11, v12, :cond_1a

    .line 286
    add-int/lit8 v3, v6, 0x1

    .line 293
    :goto_11
    if-ne v11, v12, :cond_18

    add-int/lit8 v6, v10, -0x1

    if-ne v4, v6, :cond_18

    .line 294
    aget-object v6, v2, v11

    aget-wide v14, v6, v3

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    aput-wide v14, v6, v3

    .line 296
    :cond_18
    if-eq v11, v12, :cond_19

    add-int/lit8 v6, v10, -0x1

    if-ne v4, v6, :cond_19

    .line 297
    aget-object v6, v2, v12

    const/4 v11, 0x1

    aget-wide v12, v6, v11

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v12, v14

    aput-wide v12, v6, v11

    .line 282
    :cond_19
    add-int/lit8 v4, v4, 0x1

    move v6, v3

    move v3, v5

    goto :goto_10

    .line 289
    :cond_1a
    aget-object v3, v2, v11

    aget-wide v14, v3, v6

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v16

    aput-wide v14, v3, v6

    .line 290
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    .line 291
    const/4 v3, 0x1

    goto :goto_11

    .line 278
    :cond_1b
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_f

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDegree()LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->a:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    return-object v0
.end method

.method public getNumberPrimitives()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    return v0
.end method

.method public isAutoGray()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->c:Z

    return v0
.end method

.method public setAutoGray(Z)V
    .locals 0

    .prologue
    .line 75
    iput-boolean p1, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->c:Z

    .line 76
    return-void
.end method

.method public setDegree(LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->a:LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix$Degree;

    .line 92
    return-void
.end method

.method public setNumberPrimitives(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, LCatalano/Imaging/Texture/GrayLevelRunLengthMatrix;->b:I

    .line 108
    return-void
.end method
