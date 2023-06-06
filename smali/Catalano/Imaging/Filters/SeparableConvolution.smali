.class public LCatalano/Imaging/Filters/SeparableConvolution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I

.field private c:[D

.field private d:[D

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    .line 57
    return-void
.end method

.method public constructor <init>([D[D)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    .line 65
    iput-object p1, p0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    .line 66
    iput-object p2, p0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    .line 67
    return-void
.end method

.method public constructor <init>([D[DZ)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    .line 76
    iput-object p1, p0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    .line 77
    iput-object p2, p0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    .line 78
    iput-boolean p3, p0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    .line 79
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 18

    .prologue
    .line 84
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    .line 85
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    .line 88
    move-object/from16 v0, p0

    iget-object v2, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v9, v2, 0x2

    .line 90
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 91
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 95
    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-ge v3, v4, :cond_6

    .line 96
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-ge v4, v5, :cond_5

    .line 97
    const-wide/16 v6, 0x0

    .line 98
    const/4 v5, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v8, v8

    if-ge v5, v8, :cond_4

    .line 99
    sub-int v8, v4, v9

    add-int/2addr v8, v5

    .line 100
    if-ltz v8, :cond_1

    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-ge v8, v10, :cond_1

    .line 101
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    aget-wide v10, v10, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v12, v8

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 98
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v8, v0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    if-eqz v8, :cond_0

    .line 105
    add-int v8, v4, v5

    sub-int/2addr v8, v9

    .line 107
    if-gez v8, :cond_2

    const/4 v8, 0x0

    .line 108
    :cond_2
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-lt v8, v10, :cond_3

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    add-int/lit8 v8, v8, -0x1

    .line 110
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    move-object/from16 v0, p0

    iget-object v11, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v11, v11

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, -0x1

    aget-wide v10, v10, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    int-to-double v12, v8

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    goto :goto_3

    .line 114
    :cond_4
    aget-object v5, v2, v3

    aput-wide v6, v5, v4

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 95
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_6
    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-ge v3, v4, :cond_23

    .line 121
    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-ge v4, v5, :cond_e

    .line 122
    const-wide/16 v6, 0x0

    .line 123
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v8, v8

    if-ge v5, v8, :cond_b

    .line 124
    sub-int v8, v3, v9

    add-int/2addr v8, v5

    .line 125
    if-ltz v8, :cond_8

    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-ge v8, v10, :cond_8

    .line 126
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v10, v10, v5

    aget-object v8, v2, v8

    aget-wide v12, v8, v4

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 123
    :cond_7
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 128
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v8, v0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    if-eqz v8, :cond_7

    .line 130
    add-int v8, v3, v5

    sub-int/2addr v8, v9

    .line 132
    if-gez v8, :cond_9

    const/4 v8, 0x0

    .line 133
    :cond_9
    move-object/from16 v0, p0

    iget v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-lt v8, v10, :cond_a

    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    add-int/lit8 v8, v8, -0x1

    .line 135
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v10, v10, v5

    aget-object v8, v2, v8

    aget-wide v12, v8, v4

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    goto :goto_7

    .line 139
    :cond_b
    const-wide/16 v10, 0x0

    cmpg-double v5, v6, v10

    if-gez v5, :cond_c

    const-wide/16 v6, 0x0

    .line 140
    :cond_c
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v5, v6, v10

    if-lez v5, :cond_d

    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 142
    :cond_d
    double-to-int v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 120
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 148
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    const/4 v4, 0x3

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [[[D

    .line 152
    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-ge v2, v3, :cond_16

    .line 153
    const/4 v3, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-ge v3, v4, :cond_15

    .line 154
    const-wide/16 v6, 0x0

    .line 155
    const/4 v4, 0x0

    move-wide v10, v6

    move-wide v12, v6

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v5, v5

    if-ge v4, v5, :cond_14

    .line 156
    sub-int v5, v3, v9

    add-int/2addr v5, v4

    .line 157
    if-ltz v5, :cond_11

    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-ge v5, v14, :cond_11

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    aget-wide v14, v14, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    aget-wide v14, v14, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    .line 160
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    aget-wide v14, v14, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 155
    :cond_10
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 162
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    if-eqz v5, :cond_10

    .line 164
    add-int v5, v3, v4

    sub-int/2addr v5, v9

    .line 166
    if-gez v5, :cond_12

    const/4 v5, 0x0

    .line 167
    :cond_12
    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-lt v5, v14, :cond_13

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    add-int/lit8 v5, v5, -0x1

    .line 169
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v15, v15

    sub-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v15, v15

    sub-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    .line 171
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    move-object/from16 v0, p0

    iget-object v15, v0, LCatalano/Imaging/Filters/SeparableConvolution;->c:[D

    array-length v15, v15

    sub-int/2addr v15, v4

    add-int/lit8 v15, v15, -0x1

    aget-wide v14, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    int-to-double v0, v5

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    goto :goto_b

    .line 174
    :cond_14
    aget-object v4, v8, v2

    aget-object v4, v4, v3

    const/4 v5, 0x0

    aput-wide v12, v4, v5

    .line 175
    aget-object v4, v8, v2

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aput-wide v10, v4, v5

    .line 176
    aget-object v4, v8, v2

    aget-object v4, v4, v3

    const/4 v5, 0x2

    aput-wide v6, v4, v5

    .line 153
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 152
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 181
    :cond_16
    const/4 v3, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-ge v3, v2, :cond_23

    .line 182
    const/4 v4, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/SeparableConvolution;->a:I

    if-ge v4, v2, :cond_22

    .line 183
    const-wide/16 v6, 0x0

    .line 184
    const/4 v2, 0x0

    move-wide v10, v6

    move-wide v12, v6

    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    array-length v5, v5

    if-ge v2, v5, :cond_1b

    .line 185
    sub-int v5, v3, v9

    add-int/2addr v5, v2

    .line 186
    if-ltz v5, :cond_18

    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-ge v5, v14, :cond_18

    .line 187
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v14, v14, v2

    aget-object v16, v8, v5

    aget-object v16, v16, v4

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 188
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v14, v14, v2

    aget-object v16, v8, v5

    aget-object v16, v16, v4

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    .line 189
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v14, v14, v2

    aget-object v5, v8, v5

    aget-object v5, v5, v4

    const/16 v16, 0x2

    aget-wide v16, v5, v16

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    .line 184
    :cond_17
    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 191
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    if-eqz v5, :cond_17

    .line 193
    add-int v5, v3, v2

    sub-int/2addr v5, v9

    .line 195
    if-gez v5, :cond_19

    const/4 v5, 0x0

    .line 196
    :cond_19
    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    if-lt v5, v14, :cond_1a

    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/SeparableConvolution;->b:I

    add-int/lit8 v5, v5, -0x1

    .line 198
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v14, v14, v2

    aget-object v16, v8, v5

    aget-object v16, v16, v4

    const/16 v17, 0x0

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v14, v14, v2

    aget-object v16, v8, v5

    aget-object v16, v16, v4

    const/16 v17, 0x1

    aget-wide v16, v16, v17

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, LCatalano/Imaging/Filters/SeparableConvolution;->d:[D

    aget-wide v14, v14, v2

    aget-object v5, v8, v5

    aget-object v5, v5, v4

    const/16 v16, 0x2

    aget-wide v16, v5, v16

    mul-double v14, v14, v16

    add-double/2addr v6, v14

    goto :goto_f

    .line 204
    :cond_1b
    const-wide/16 v14, 0x0

    cmpg-double v2, v12, v14

    if-gez v2, :cond_1c

    const-wide/16 v12, 0x0

    .line 205
    :cond_1c
    const-wide v14, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v12, v14

    if-lez v2, :cond_1f

    const-wide v12, 0x406fe00000000000L    # 255.0

    move-wide v14, v12

    .line 207
    :goto_10
    const-wide/16 v12, 0x0

    cmpg-double v2, v10, v12

    if-gez v2, :cond_1d

    const-wide/16 v10, 0x0

    .line 208
    :cond_1d
    const-wide v12, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_20

    const-wide v10, 0x406fe00000000000L    # 255.0

    move-wide v12, v10

    .line 210
    :goto_11
    const-wide/16 v10, 0x0

    cmpg-double v2, v6, v10

    if-gez v2, :cond_1e

    const-wide/16 v6, 0x0

    .line 211
    :cond_1e
    const-wide v10, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v6, v10

    if-lez v2, :cond_21

    const-wide v6, 0x406fe00000000000L    # 255.0

    move-wide v10, v6

    .line 213
    :goto_12
    double-to-int v5, v14

    double-to-int v6, v12

    double-to-int v7, v10

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 182
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_d

    :cond_1f
    move-wide v14, v12

    .line 205
    goto :goto_10

    :cond_20
    move-wide v12, v10

    .line 208
    goto :goto_11

    :cond_21
    move-wide v10, v6

    .line 211
    goto :goto_12

    .line 181
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_c

    .line 217
    :cond_23
    return-void
.end method

.method public isReplicate()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    return v0
.end method

.method public setReplicate(Z)V
    .locals 0

    .prologue
    .line 51
    iput-boolean p1, p0, LCatalano/Imaging/Filters/SeparableConvolution;->e:Z

    .line 52
    return-void
.end method
