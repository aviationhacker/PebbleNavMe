.class public LCatalano/Imaging/Filters/ConservativeSmoothing;
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
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    .line 68
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/ConservativeSmoothing;->setRadius(I)V

    .line 69
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 176
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 19

    .prologue
    .line 74
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v12

    .line 75
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v13

    .line 78
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/ConservativeSmoothing;->a(I)I

    move-result v14

    .line 80
    new-instance v15, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v13, :cond_e

    .line 86
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v12, :cond_7

    .line 87
    const/16 v6, 0xff

    .line 88
    const/4 v5, 0x0

    .line 89
    const/4 v1, 0x0

    move v10, v1

    move v7, v5

    move v8, v5

    move v4, v6

    move v1, v5

    move v5, v6

    :goto_2
    if-ge v10, v14, :cond_6

    .line 90
    move-object/from16 v0, p0

    iget v9, v0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    sub-int v9, v10, v9

    add-int v11, v2, v9

    .line 91
    const/4 v9, 0x0

    move/from16 v18, v1

    move v1, v8

    move v8, v6

    move v6, v4

    move v4, v7

    move v7, v5

    move/from16 v5, v18

    :goto_3
    if-ge v9, v14, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    move/from16 v16, v0

    sub-int v16, v9, v16

    add-int v16, v16, v3

    .line 93
    if-ltz v11, :cond_17

    if-ge v11, v13, :cond_17

    if-ltz v16, :cond_17

    move/from16 v0, v16

    if-ge v0, v12, :cond_17

    if-eq v10, v9, :cond_17

    .line 95
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v1, :cond_0

    .line 96
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v1

    .line 99
    :cond_0
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v4, :cond_1

    .line 100
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 103
    :cond_1
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v17

    move/from16 v0, v17

    if-le v0, v5, :cond_2

    .line 104
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 107
    :cond_2
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v6, :cond_3

    .line 108
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 111
    :cond_3
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v7, :cond_4

    .line 112
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    .line 115
    :cond_4
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v17

    move/from16 v0, v17

    if-ge v0, v8, :cond_17

    .line 116
    move/from16 v0, v16

    invoke-virtual {v15, v11, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    .line 91
    :goto_4
    add-int/lit8 v9, v9, 0x1

    move/from16 v18, v6

    move v6, v8

    move/from16 v8, v18

    goto/16 :goto_3

    .line 89
    :cond_5
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move/from16 v18, v5

    move v5, v7

    move v7, v4

    move v4, v6

    move v6, v8

    move v8, v1

    move/from16 v1, v18

    goto/16 :goto_2

    .line 123
    :cond_6
    invoke-virtual {v15, v2, v3}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v11

    .line 124
    invoke-virtual {v15, v2, v3}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v10

    .line 125
    invoke-virtual {v15, v2, v3}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v9

    .line 127
    if-le v11, v8, :cond_16

    .line 128
    :goto_5
    if-le v10, v7, :cond_15

    .line 129
    :goto_6
    if-le v9, v1, :cond_14

    .line 131
    :goto_7
    if-ge v8, v4, :cond_13

    .line 132
    :goto_8
    if-ge v7, v5, :cond_12

    .line 133
    :goto_9
    if-ge v1, v6, :cond_11

    :goto_a
    move-object/from16 v1, p1

    .line 135
    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 85
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 142
    :cond_8
    const/4 v1, 0x0

    move v6, v1

    :goto_b
    if-ge v6, v13, :cond_e

    .line 143
    const/4 v1, 0x0

    move v5, v1

    :goto_c
    if-ge v5, v12, :cond_d

    .line 144
    const/16 v3, 0xff

    .line 145
    const/4 v2, 0x0

    .line 146
    const/4 v1, 0x0

    move v4, v1

    move v1, v3

    :goto_d
    if-ge v4, v14, :cond_c

    .line 147
    move-object/from16 v0, p0

    iget v3, v0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    sub-int v3, v4, v3

    add-int v7, v6, v3

    .line 148
    const/4 v3, 0x0

    move/from16 v18, v2

    move v2, v1

    move/from16 v1, v18

    :goto_e
    if-ge v3, v14, :cond_b

    .line 149
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    sub-int v8, v3, v8

    add-int/2addr v8, v5

    .line 150
    if-ltz v7, :cond_a

    if-ge v7, v13, :cond_a

    if-ltz v8, :cond_a

    if-ge v8, v12, :cond_a

    if-eq v4, v3, :cond_a

    .line 152
    invoke-virtual {v15, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-le v9, v1, :cond_9

    .line 153
    invoke-virtual {v15, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v1

    .line 156
    :cond_9
    invoke-virtual {v15, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    if-ge v9, v2, :cond_a

    .line 157
    invoke-virtual {v15, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v2

    .line 148
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 146
    :cond_b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move/from16 v18, v1

    move v1, v2

    move/from16 v2, v18

    goto :goto_d

    .line 164
    :cond_c
    invoke-virtual {v15, v6, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 166
    if-le v3, v2, :cond_10

    .line 167
    :goto_f
    if-ge v2, v1, :cond_f

    .line 169
    :goto_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 143
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_c

    .line 142
    :cond_d
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_b

    .line 173
    :cond_e
    return-void

    :cond_f
    move v1, v2

    goto :goto_10

    :cond_10
    move v2, v3

    goto :goto_f

    :cond_11
    move v6, v1

    goto :goto_a

    :cond_12
    move v5, v7

    goto :goto_9

    :cond_13
    move v4, v8

    goto/16 :goto_8

    :cond_14
    move v1, v9

    goto/16 :goto_7

    :cond_15
    move v7, v10

    goto/16 :goto_6

    :cond_16
    move v8, v11

    goto/16 :goto_5

    :cond_17
    move/from16 v18, v8

    move v8, v6

    move/from16 v6, v18

    goto/16 :goto_4
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/ConservativeSmoothing;->a:I

    .line 56
    return-void
.end method
