.class public LCatalano/Imaging/Filters/Mean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Imaging/Filters/Mean$Arithmetic;
    }
.end annotation


# instance fields
.field private a:I

.field private b:LCatalano/Imaging/Filters/Mean$Arithmetic;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, LCatalano/Imaging/Filters/Mean;->a:I

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 59
    iput v1, p0, LCatalano/Imaging/Filters/Mean;->c:I

    .line 64
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, LCatalano/Imaging/Filters/Mean;->a:I

    .line 58
    sget-object v1, LCatalano/Imaging/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Filters/Mean$Arithmetic;

    iput-object v1, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 59
    iput v0, p0, LCatalano/Imaging/Filters/Mean;->c:I

    .line 71
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 72
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/Mean;->a:I

    .line 73
    return-void
.end method

.method public constructor <init>(ILCatalano/Imaging/Filters/Mean$Arithmetic;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, LCatalano/Imaging/Filters/Mean;->a:I

    .line 58
    sget-object v1, LCatalano/Imaging/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Filters/Mean$Arithmetic;

    iput-object v1, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 59
    iput v0, p0, LCatalano/Imaging/Filters/Mean;->c:I

    .line 89
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 90
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/Mean;->a:I

    .line 91
    iput-object p2, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 92
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/Filters/Mean$Arithmetic;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v1, p0, LCatalano/Imaging/Filters/Mean;->a:I

    .line 58
    sget-object v0, LCatalano/Imaging/Filters/Mean$Arithmetic;->Mean:LCatalano/Imaging/Filters/Mean$Arithmetic;

    iput-object v0, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 59
    iput v1, p0, LCatalano/Imaging/Filters/Mean;->c:I

    .line 80
    iput-object p1, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 81
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 368
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 31

    .prologue
    .line 145
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v18

    .line 146
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v19

    .line 148
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/Mean;->a(I)I

    move-result v20

    .line 151
    new-instance v21, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 153
    sget-object v2, LCatalano/Imaging/Filters/Mean$1;->a:[I

    move-object/from16 v0, p0

    iget-object v3, v0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    invoke-virtual {v3}, LCatalano/Imaging/Filters/Mean$Arithmetic;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 365
    :cond_0
    return-void

    .line 155
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    move/from16 v0, v19

    if-ge v7, v0, :cond_0

    .line 159
    const/4 v2, 0x0

    move v6, v2

    :goto_1
    move/from16 v0, v18

    if-ge v6, v0, :cond_4

    .line 160
    const/4 v4, 0x0

    .line 161
    const/4 v3, 0x0

    .line 162
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    move/from16 v0, v20

    if-ge v5, v0, :cond_3

    .line 163
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v5, v2

    add-int v8, v7, v2

    .line 164
    const/4 v2, 0x0

    move/from16 v28, v2

    move v2, v3

    move v3, v4

    move/from16 v4, v28

    :goto_3
    move/from16 v0, v20

    if-ge v4, v0, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v9, v4, v9

    add-int/2addr v9, v6

    .line 166
    if-ltz v8, :cond_1

    move/from16 v0, v19

    if-ge v8, v0, :cond_1

    if-ltz v9, :cond_1

    move/from16 v0, v18

    if-ge v9, v0, :cond_1

    .line 167
    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    add-int/2addr v2, v9

    .line 168
    add-int/lit8 v3, v3, 0x1

    .line 164
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 162
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    move v3, v2

    goto :goto_2

    .line 172
    :cond_3
    div-int v2, v3, v4

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 159
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    .line 158
    :cond_4
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 177
    :cond_5
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    const/4 v3, 0x0

    :goto_4
    move/from16 v0, v19

    if-ge v3, v0, :cond_0

    .line 183
    const/4 v4, 0x0

    :goto_5
    move/from16 v0, v18

    if-ge v4, v0, :cond_9

    .line 184
    const/4 v8, 0x0

    .line 185
    const/4 v7, 0x0

    .line 186
    const/4 v2, 0x0

    move v9, v2

    move v6, v7

    move v5, v7

    :goto_6
    move/from16 v0, v20

    if-ge v9, v0, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v9, v2

    add-int v10, v3, v2

    .line 188
    const/4 v2, 0x0

    move/from16 v28, v2

    move v2, v7

    move v7, v8

    move/from16 v8, v28

    move/from16 v29, v5

    move v5, v6

    move/from16 v6, v29

    :goto_7
    move/from16 v0, v20

    if-ge v8, v0, :cond_7

    .line 189
    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v11, v8, v11

    add-int/2addr v11, v4

    .line 190
    if-ltz v10, :cond_6

    move/from16 v0, v19

    if-ge v10, v0, :cond_6

    if-ltz v11, :cond_6

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 191
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v12

    add-int/2addr v6, v12

    .line 192
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v12

    add-int/2addr v5, v12

    .line 193
    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v11

    add-int/2addr v2, v11

    .line 194
    add-int/lit8 v7, v7, 0x1

    .line 188
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 186
    :cond_7
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v7

    move v7, v2

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    goto :goto_6

    .line 198
    :cond_8
    div-int/2addr v5, v8

    .line 199
    div-int/2addr v6, v8

    .line 200
    div-int/2addr v7, v8

    move-object/from16 v2, p1

    .line 201
    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 182
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 208
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 210
    const/4 v2, 0x0

    move v8, v2

    :goto_8
    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 211
    const/4 v2, 0x0

    move v7, v2

    :goto_9
    move/from16 v0, v18

    if-ge v7, v0, :cond_d

    .line 212
    const/4 v3, 0x0

    .line 213
    const-wide/16 v4, 0x0

    .line 214
    const/4 v2, 0x0

    move v6, v2

    :goto_a
    move/from16 v0, v20

    if-ge v6, v0, :cond_c

    .line 215
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v6, v2

    add-int v9, v8, v2

    .line 216
    const/4 v2, 0x0

    move/from16 v28, v2

    move-wide/from16 v29, v4

    move/from16 v5, v28

    move v4, v3

    move-wide/from16 v2, v29

    :goto_b
    move/from16 v0, v20

    if-ge v5, v0, :cond_b

    .line 217
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v10, v5, v10

    add-int/2addr v10, v7

    .line 218
    if-ltz v9, :cond_a

    move/from16 v0, v19

    if-ge v9, v0, :cond_a

    if-ltz v10, :cond_a

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 219
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    int-to-double v10, v10

    div-double v10, v12, v10

    add-double/2addr v2, v10

    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 216
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 214
    :cond_b
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-wide/from16 v28, v2

    move v3, v4

    move-wide/from16 v4, v28

    goto :goto_a

    .line 224
    :cond_c
    int-to-double v2, v3

    div-double/2addr v2, v4

    .line 225
    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 211
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_9

    .line 210
    :cond_d
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_8

    .line 229
    :cond_e
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const/4 v3, 0x0

    :goto_c
    move/from16 v0, v19

    if-ge v3, v0, :cond_0

    .line 235
    const/4 v4, 0x0

    :goto_d
    move/from16 v0, v18

    if-ge v4, v0, :cond_12

    .line 236
    const/4 v5, 0x0

    .line 237
    const-wide/16 v6, 0x0

    .line 238
    const/4 v2, 0x0

    move v12, v2

    move-wide v8, v6

    move-wide v10, v6

    :goto_e
    move/from16 v0, v20

    if-ge v12, v0, :cond_11

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v12, v2

    add-int v13, v3, v2

    .line 240
    const/4 v2, 0x0

    move/from16 v28, v2

    move v2, v5

    move/from16 v5, v28

    :goto_f
    move/from16 v0, v20

    if-ge v5, v0, :cond_10

    .line 241
    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v14, v5, v14

    add-int/2addr v14, v4

    .line 242
    if-ltz v13, :cond_f

    move/from16 v0, v19

    if-ge v13, v0, :cond_f

    if-ltz v14, :cond_f

    move/from16 v0, v18

    if-ge v14, v0, :cond_f

    .line 243
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v22, v0

    div-double v16, v16, v22

    add-double v10, v10, v16

    .line 244
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v22, v0

    div-double v16, v16, v22

    add-double v8, v8, v16

    .line 245
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v14

    int-to-double v14, v14

    div-double v14, v16, v14

    add-double/2addr v6, v14

    .line 246
    add-int/lit8 v2, v2, 0x1

    .line 240
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 238
    :cond_10
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    move v5, v2

    goto :goto_e

    .line 250
    :cond_11
    int-to-double v12, v5

    div-double v10, v12, v10

    .line 251
    int-to-double v12, v5

    div-double v8, v12, v8

    .line 252
    int-to-double v12, v5

    div-double/2addr v12, v6

    .line 253
    double-to-int v5, v10

    double-to-int v6, v8

    double-to-int v7, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 234
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 260
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 263
    const/4 v2, 0x0

    move v10, v2

    :goto_10
    move/from16 v0, v19

    if-ge v10, v0, :cond_0

    .line 264
    const/4 v2, 0x0

    move v9, v2

    :goto_11
    move/from16 v0, v18

    if-ge v9, v0, :cond_16

    .line 265
    const-wide/16 v4, 0x0

    .line 266
    const/4 v2, 0x0

    move v8, v2

    move-wide v6, v4

    :goto_12
    move/from16 v0, v20

    if-ge v8, v0, :cond_15

    .line 267
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v8, v2

    add-int v11, v10, v2

    .line 268
    const/4 v2, 0x0

    move/from16 v28, v2

    move-wide v2, v4

    move-wide v4, v6

    move/from16 v6, v28

    :goto_13
    move/from16 v0, v20

    if-ge v6, v0, :cond_14

    .line 269
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v7, v6, v7

    add-int/2addr v7, v9

    .line 270
    if-ltz v11, :cond_13

    move/from16 v0, v19

    if-ge v11, v0, :cond_13

    if-ltz v7, :cond_13

    move/from16 v0, v18

    if-ge v7, v0, :cond_13

    .line 271
    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v12

    int-to-double v12, v12

    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/Mean;->c:I

    add-int/lit8 v14, v14, 0x1

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v4, v12

    .line 272
    move-object/from16 v0, v21

    invoke-virtual {v0, v11, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    int-to-double v12, v7

    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/Mean;->c:I

    int-to-double v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v2, v12

    .line 268
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 266
    :cond_14
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-wide v6, v4

    move-wide v4, v2

    goto :goto_12

    .line 276
    :cond_15
    div-double v2, v6, v4

    .line 277
    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 264
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_11

    .line 263
    :cond_16
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_10

    .line 281
    :cond_17
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const/4 v3, 0x0

    :goto_14
    move/from16 v0, v19

    if-ge v3, v0, :cond_0

    .line 286
    const/4 v4, 0x0

    :goto_15
    move/from16 v0, v18

    if-ge v4, v0, :cond_1b

    .line 287
    const-wide/16 v12, 0x0

    .line 288
    const-wide/16 v6, 0x0

    .line 289
    const/4 v2, 0x0

    move v5, v2

    move-wide v8, v6

    move-wide v10, v6

    move-wide v14, v12

    move-wide/from16 v16, v12

    :goto_16
    move/from16 v0, v20

    if-ge v5, v0, :cond_1a

    .line 290
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v5, v2

    add-int v22, v3, v2

    .line 291
    const/4 v2, 0x0

    :goto_17
    move/from16 v0, v20

    if-ge v2, v0, :cond_19

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mean;->a:I

    move/from16 v23, v0

    sub-int v23, v2, v23

    add-int v23, v23, v4

    .line 293
    if-ltz v22, :cond_18

    move/from16 v0, v22

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    if-ltz v23, :cond_18

    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    .line 294
    invoke-virtual/range {v21 .. v23}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mean;->c:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v16, v16, v24

    .line 295
    invoke-virtual/range {v21 .. v23}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mean;->c:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v14, v14, v24

    .line 296
    invoke-virtual/range {v21 .. v23}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mean;->c:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v12, v12, v24

    .line 298
    invoke-virtual/range {v21 .. v23}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mean;->c:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v10, v10, v24

    .line 299
    invoke-virtual/range {v21 .. v23}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mean;->c:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v8, v8, v24

    .line 300
    invoke-virtual/range {v21 .. v23}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/Mean;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    add-double v6, v6, v24

    .line 291
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17

    .line 289
    :cond_19
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_16

    .line 304
    :cond_1a
    div-double v10, v16, v10

    .line 305
    div-double v8, v14, v8

    .line 306
    div-double/2addr v12, v6

    .line 307
    double-to-int v5, v10

    double-to-int v6, v8

    double-to-int v7, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_15

    .line 285
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    .line 314
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 316
    const/4 v2, 0x0

    move v8, v2

    :goto_18
    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 317
    const/4 v2, 0x0

    move v7, v2

    :goto_19
    move/from16 v0, v18

    if-ge v7, v0, :cond_1f

    .line 318
    const/4 v3, 0x0

    .line 319
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 320
    const/4 v2, 0x0

    move v6, v2

    :goto_1a
    move/from16 v0, v20

    if-ge v6, v0, :cond_1e

    .line 321
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v6, v2

    add-int v9, v8, v2

    .line 322
    const/4 v2, 0x0

    move/from16 v28, v2

    move-wide/from16 v29, v4

    move/from16 v5, v28

    move v4, v3

    move-wide/from16 v2, v29

    :goto_1b
    move/from16 v0, v20

    if-ge v5, v0, :cond_1d

    .line 323
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v10, v5, v10

    add-int/2addr v10, v7

    .line 324
    if-ltz v9, :cond_1c

    move/from16 v0, v19

    if-ge v9, v0, :cond_1c

    if-ltz v10, :cond_1c

    move/from16 v0, v18

    if-ge v10, v0, :cond_1c

    .line 325
    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v10}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v2, v10

    .line 326
    add-int/lit8 v4, v4, 0x1

    .line 322
    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 320
    :cond_1d
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move-wide/from16 v28, v2

    move v3, v4

    move-wide/from16 v4, v28

    goto :goto_1a

    .line 330
    :cond_1e
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v3

    div-double v2, v10, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 331
    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v7, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 317
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_19

    .line 316
    :cond_1f
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_18

    .line 335
    :cond_20
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    const/4 v3, 0x0

    :goto_1c
    move/from16 v0, v19

    if-ge v3, v0, :cond_0

    .line 341
    const/4 v4, 0x0

    :goto_1d
    move/from16 v0, v18

    if-ge v4, v0, :cond_24

    .line 342
    const/4 v5, 0x0

    .line 343
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 344
    const/4 v2, 0x0

    move v12, v2

    move-wide v8, v6

    move-wide v10, v6

    :goto_1e
    move/from16 v0, v20

    if-ge v12, v0, :cond_23

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v2, v12, v2

    add-int v13, v3, v2

    .line 346
    const/4 v2, 0x0

    move/from16 v28, v2

    move v2, v5

    move/from16 v5, v28

    :goto_1f
    move/from16 v0, v20

    if-ge v5, v0, :cond_22

    .line 347
    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/Mean;->a:I

    sub-int v14, v5, v14

    add-int/2addr v14, v4

    .line 348
    if-ltz v13, :cond_21

    move/from16 v0, v19

    if-ge v13, v0, :cond_21

    if-ltz v14, :cond_21

    move/from16 v0, v18

    if-ge v14, v0, :cond_21

    .line 349
    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v10, v10, v16

    .line 350
    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    int-to-double v0, v15

    move-wide/from16 v16, v0

    mul-double v8, v8, v16

    .line 351
    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v14

    int-to-double v14, v14

    mul-double/2addr v6, v14

    .line 352
    add-int/lit8 v2, v2, 0x1

    .line 346
    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 344
    :cond_22
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    move v5, v2

    goto :goto_1e

    .line 356
    :cond_23
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    int-to-double v14, v5

    div-double/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    .line 357
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    int-to-double v14, v5

    div-double/2addr v12, v14

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 358
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    int-to-double v14, v5

    div-double/2addr v12, v14

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 359
    double-to-int v5, v10

    double-to-int v6, v8

    double-to-int v7, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 340
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1c

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getArithmetic()LCatalano/Imaging/Filters/Mean$Arithmetic;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, LCatalano/Imaging/Filters/Mean;->c:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, LCatalano/Imaging/Filters/Mean;->a:I

    return v0
.end method

.method public setArithmetic(LCatalano/Imaging/Filters/Mean$Arithmetic;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, LCatalano/Imaging/Filters/Mean;->b:LCatalano/Imaging/Filters/Mean$Arithmetic;

    .line 108
    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .prologue
    .line 139
    iput p1, p0, LCatalano/Imaging/Filters/Mean;->c:I

    .line 140
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, LCatalano/Imaging/Filters/Mean;->a:I

    .line 124
    return-void
.end method
