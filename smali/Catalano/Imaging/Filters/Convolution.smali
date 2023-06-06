.class public LCatalano/Imaging/Filters/Convolution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I

.field private c:[[I

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 37
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 83
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 37
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 90
    iput-object p1, p0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    .line 91
    return-void
.end method

.method public constructor <init>([[II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 37
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 109
    iput-object p1, p0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    .line 110
    iput p2, p0, LCatalano/Imaging/Filters/Convolution;->d:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 112
    return-void
.end method

.method public constructor <init>([[IIZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 37
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 121
    iput-object p1, p0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    .line 122
    iput p2, p0, LCatalano/Imaging/Filters/Convolution;->d:I

    .line 123
    iput-boolean p3, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 125
    return-void
.end method

.method public constructor <init>([[IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 37
    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 99
    iput-object p1, p0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    .line 100
    iput-boolean p2, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 101
    return-void
.end method

.method private a([[I)I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    .line 245
    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 17

    .prologue
    .line 130
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    .line 131
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    .line 135
    move-object/from16 v0, p0

    iget-object v1, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Convolution;->a([[I)I

    move-result v12

    .line 137
    new-instance v13, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 139
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 141
    const/4 v1, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    if-ge v1, v2, :cond_17

    .line 142
    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    if-ge v2, v3, :cond_8

    .line 143
    const/4 v4, 0x0

    .line 144
    const/4 v3, 0x0

    move v5, v4

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 145
    sub-int v6, v3, v12

    add-int v10, v1, v6

    .line 146
    const/4 v6, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 147
    sub-int v7, v6, v12

    add-int/2addr v7, v2

    .line 148
    if-ltz v10, :cond_0

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    if-ge v10, v8, :cond_0

    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    if-ge v7, v8, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v8, v8, v3

    aget v8, v8, v6

    invoke-virtual {v13, v10, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    mul-int/2addr v7, v8

    add-int/2addr v4, v7

    .line 150
    move-object/from16 v0, p0

    iget-object v7, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v7, v7, v3

    aget v7, v7, v6

    add-int/2addr v5, v7

    move v7, v5

    move v5, v4

    .line 146
    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v5

    move v5, v7

    goto :goto_3

    .line 152
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, LCatalano/Imaging/Filters/Convolution;->f:Z

    if-eqz v7, :cond_1f

    .line 153
    add-int v7, v1, v3

    sub-int/2addr v7, v12

    .line 154
    add-int v8, v2, v6

    sub-int/2addr v8, v12

    .line 156
    if-gez v7, :cond_1

    const/4 v7, 0x0

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    if-lt v7, v9, :cond_1e

    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    add-int/lit8 v7, v7, -0x1

    move v9, v7

    .line 159
    :goto_5
    if-gez v8, :cond_1d

    const/4 v7, 0x0

    .line 160
    :goto_6
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    if-lt v7, v8, :cond_2

    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    add-int/lit8 v7, v7, -0x1

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v8, v8, v3

    aget v8, v8, v6

    invoke-virtual {v13, v9, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    mul-int/2addr v7, v8

    add-int/2addr v4, v7

    move v7, v5

    move v5, v4

    goto :goto_4

    .line 144
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 167
    :cond_4
    if-eqz v5, :cond_1c

    .line 168
    move-object/from16 v0, p0

    iget-boolean v3, v0, LCatalano/Imaging/Filters/Convolution;->e:Z

    if-eqz v3, :cond_7

    .line 169
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/Convolution;->d:I

    div-int v3, v4, v3

    .line 176
    :goto_7
    const/16 v4, 0xff

    if-le v3, v4, :cond_5

    const/16 v3, 0xff

    .line 177
    :cond_5
    if-gez v3, :cond_6

    const/4 v3, 0x0

    .line 179
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 172
    :cond_7
    div-int v3, v4, v5

    goto :goto_7

    .line 141
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 185
    :cond_9
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    if-ge v2, v1, :cond_17

    .line 186
    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    if-ge v3, v1, :cond_16

    .line 187
    const/4 v4, 0x0

    .line 188
    const/4 v1, 0x0

    move v5, v4

    move v6, v4

    move v7, v4

    :goto_a
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    array-length v8, v8

    if-ge v1, v8, :cond_e

    .line 189
    sub-int v8, v1, v12

    add-int v14, v2, v8

    .line 190
    const/4 v8, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    const/4 v10, 0x0

    aget-object v9, v9, v10

    array-length v9, v9

    if-ge v8, v9, :cond_d

    .line 191
    sub-int v9, v8, v12

    add-int v10, v3, v9

    .line 192
    if-ltz v14, :cond_a

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    if-ge v14, v9, :cond_a

    if-ltz v10, :cond_a

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    if-ge v10, v9, :cond_a

    .line 193
    move-object/from16 v0, p0

    iget-object v9, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v9, v9, v1

    aget v9, v9, v8

    invoke-virtual {v13, v14, v10}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v11

    mul-int/2addr v9, v11

    add-int/2addr v9, v6

    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v6, v6, v1

    aget v6, v6, v8

    invoke-virtual {v13, v14, v10}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v11

    mul-int/2addr v6, v11

    add-int/2addr v6, v5

    .line 195
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v5, v5, v1

    aget v5, v5, v8

    invoke-virtual {v13, v14, v10}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v10

    mul-int/2addr v5, v10

    add-int/2addr v5, v4

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v4, v4, v1

    aget v4, v4, v8

    add-int/2addr v7, v4

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    .line 190
    :goto_c
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    goto :goto_b

    .line 198
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v9, v0, LCatalano/Imaging/Filters/Convolution;->f:Z

    if-eqz v9, :cond_1b

    .line 199
    add-int v9, v2, v1

    sub-int/2addr v9, v12

    .line 200
    add-int v10, v3, v8

    sub-int/2addr v10, v12

    .line 202
    if-gez v9, :cond_b

    const/4 v9, 0x0

    .line 203
    :cond_b
    move-object/from16 v0, p0

    iget v11, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    if-lt v9, v11, :cond_1a

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/Convolution;->b:I

    add-int/lit8 v9, v9, -0x1

    move v11, v9

    .line 205
    :goto_d
    if-gez v10, :cond_19

    const/4 v9, 0x0

    .line 206
    :goto_e
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    if-lt v9, v10, :cond_c

    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/Convolution;->a:I

    add-int/lit8 v9, v9, -0x1

    .line 208
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v10, v10, v1

    aget v10, v10, v8

    invoke-virtual {v13, v11, v9}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    mul-int/2addr v10, v15

    add-int/2addr v10, v6

    .line 209
    move-object/from16 v0, p0

    iget-object v6, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v6, v6, v1

    aget v6, v6, v8

    invoke-virtual {v13, v11, v9}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    mul-int/2addr v6, v15

    add-int/2addr v6, v5

    .line 210
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v5, v5, v1

    aget v5, v5, v8

    invoke-virtual {v13, v11, v9}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    mul-int/2addr v5, v9

    add-int/2addr v5, v4

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    aget-object v4, v4, v1

    aget v4, v4, v8

    add-int v9, v7, v4

    move v7, v10

    goto :goto_c

    .line 188
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    .line 216
    :cond_e
    if-eqz v7, :cond_18

    .line 217
    move-object/from16 v0, p0

    iget-boolean v1, v0, LCatalano/Imaging/Filters/Convolution;->e:Z

    if-eqz v1, :cond_15

    .line 218
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Convolution;->d:I

    div-int v1, v6, v1

    .line 219
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/Convolution;->d:I

    div-int/2addr v5, v6

    .line 220
    move-object/from16 v0, p0

    iget v6, v0, LCatalano/Imaging/Filters/Convolution;->d:I

    div-int v6, v4, v6

    move v4, v1

    .line 229
    :goto_f
    const/16 v1, 0xff

    if-le v4, v1, :cond_f

    const/16 v4, 0xff

    .line 230
    :cond_f
    const/16 v1, 0xff

    if-le v5, v1, :cond_10

    const/16 v5, 0xff

    .line 231
    :cond_10
    const/16 v1, 0xff

    if-le v6, v1, :cond_11

    const/16 v6, 0xff

    .line 233
    :cond_11
    if-gez v4, :cond_12

    const/4 v4, 0x0

    .line 234
    :cond_12
    if-gez v5, :cond_13

    const/4 v5, 0x0

    .line 235
    :cond_13
    if-gez v6, :cond_14

    const/4 v6, 0x0

    :cond_14
    move-object/from16 v1, p1

    .line 237
    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 223
    :cond_15
    div-int v1, v6, v7

    .line 224
    div-int/2addr v5, v7

    .line 225
    div-int v6, v4, v7

    move v4, v1

    goto :goto_f

    .line 185
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 241
    :cond_17
    return-void

    :cond_18
    move/from16 v16, v4

    move v4, v6

    move/from16 v6, v16

    goto :goto_f

    :cond_19
    move v9, v10

    goto/16 :goto_e

    :cond_1a
    move v11, v9

    goto/16 :goto_d

    :cond_1b
    move v9, v7

    move v7, v6

    move v6, v5

    move v5, v4

    goto/16 :goto_c

    :cond_1c
    move v3, v4

    goto/16 :goto_7

    :cond_1d
    move v7, v8

    goto/16 :goto_6

    :cond_1e
    move v9, v7

    goto/16 :goto_5

    :cond_1f
    move v7, v5

    move v5, v4

    goto/16 :goto_4
.end method

.method public getKernel()[[I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    return-object v0
.end method

.method public isReplicate()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    return v0
.end method

.method public setDivision(I)V
    .locals 1

    .prologue
    .line 60
    iput p1, p0, LCatalano/Imaging/Filters/Convolution;->d:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/Convolution;->e:Z

    .line 62
    return-void
.end method

.method public setKernel([[I)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, LCatalano/Imaging/Filters/Convolution;->c:[[I

    .line 53
    return-void
.end method

.method public setReplicate(Z)V
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Convolution;->f:Z

    .line 78
    return-void
.end method
