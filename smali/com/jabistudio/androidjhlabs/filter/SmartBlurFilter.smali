.class public Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a:I

    .line 27
    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->b:I

    .line 28
    const/16 v0, 0xa

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    return-void
.end method

.method private a(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZ)V
    .locals 29

    .prologue
    .line 50
    .line 51
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getKernelData([F)[F

    move-result-object v15

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getWidth()I

    move-result v2

    .line 53
    div-int/lit8 v16, v2, 0x2

    .line 55
    const/4 v14, 0x0

    :goto_0
    move/from16 v0, p5

    if-ge v14, v0, :cond_9

    .line 56
    mul-int v17, v14, p4

    .line 58
    const/4 v3, 0x0

    move v13, v14

    :goto_1
    move/from16 v0, p4

    if-ge v3, v0, :cond_8

    .line 59
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 62
    add-int v2, v17, v3

    aget v2, p2, v2

    .line 63
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    .line 64
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v0, v4, 0xff

    move/from16 v19, v0

    .line 65
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    .line 66
    and-int/lit16 v0, v2, 0xff

    move/from16 v21, v0

    .line 67
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 68
    move/from16 v0, v16

    neg-int v2, v0

    move v12, v2

    :goto_2
    move/from16 v0, v16

    if-gt v12, v0, :cond_2

    .line 69
    add-int v2, v16, v12

    aget v22, v15, v2

    .line 71
    const/4 v2, 0x0

    cmpl-float v2, v22, v2

    if-eqz v2, :cond_e

    .line 72
    add-int v2, v3, v12

    .line 73
    if-ltz v2, :cond_0

    move/from16 v0, p4

    if-lt v2, v0, :cond_1

    :cond_0
    move v2, v3

    .line 75
    :cond_1
    add-int v2, v2, v17

    aget v2, p2, v2

    .line 76
    shr-int/lit8 v23, v2, 0x18

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 77
    shr-int/lit8 v24, v2, 0x10

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v24, v0

    .line 78
    shr-int/lit8 v25, v2, 0x8

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 79
    and-int/lit16 v0, v2, 0xff

    move/from16 v26, v0

    .line 82
    sub-int v2, v18, v23

    .line 83
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-lt v2, v0, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-gt v2, v0, :cond_d

    .line 84
    move/from16 v0, v23

    int-to-float v2, v0

    mul-float v2, v2, v22

    add-float/2addr v5, v2

    .line 85
    add-float v2, v4, v22

    move v4, v5

    .line 87
    :goto_3
    sub-int v5, v19, v24

    .line 88
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v5, v0, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-gt v5, v0, :cond_c

    .line 89
    move/from16 v0, v24

    int-to-float v5, v0

    mul-float v5, v5, v22

    add-float/2addr v7, v5

    .line 90
    add-float v5, v6, v22

    move v6, v7

    .line 92
    :goto_4
    sub-int v7, v20, v25

    .line 93
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v7, v0, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-gt v7, v0, :cond_b

    .line 94
    move/from16 v0, v25

    int-to-float v7, v0

    mul-float v7, v7, v22

    add-float/2addr v9, v7

    .line 95
    add-float v7, v8, v22

    move v8, v9

    .line 97
    :goto_5
    sub-int v9, v21, v26

    .line 98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v9, v0, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-gt v9, v0, :cond_a

    .line 99
    move/from16 v0, v26

    int-to-float v9, v0

    mul-float v9, v9, v22

    add-float/2addr v11, v9

    .line 100
    add-float v9, v10, v22

    move v10, v6

    move v6, v4

    move v4, v2

    move v2, v9

    move v9, v8

    move v8, v11

    .line 68
    :goto_6
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    move v11, v8

    move v8, v7

    move v7, v10

    move v10, v2

    move/from16 v28, v6

    move v6, v5

    move/from16 v5, v28

    goto/16 :goto_2

    .line 104
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, v4, v2

    if-nez v2, :cond_3

    move/from16 v0, v18

    int-to-float v2, v0

    move v12, v2

    .line 105
    :goto_7
    const/4 v2, 0x0

    cmpl-float v2, v6, v2

    if-nez v2, :cond_4

    move/from16 v0, v19

    int-to-float v2, v0

    move v6, v2

    .line 106
    :goto_8
    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-nez v2, :cond_5

    move/from16 v0, v20

    int-to-float v2, v0

    move v5, v2

    .line 107
    :goto_9
    const/4 v2, 0x0

    cmpl-float v2, v10, v2

    if-nez v2, :cond_6

    move/from16 v0, v21

    int-to-float v2, v0

    move v4, v2

    .line 108
    :goto_a
    if-eqz p6, :cond_7

    float-to-double v8, v12

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v2, v8

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 109
    :goto_b
    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-static {v6}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    .line 110
    float-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 111
    float-to-double v8, v4

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v4, v8

    invoke-static {v4}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v4

    .line 112
    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    or-int/2addr v2, v4

    aput v2, p3, v13

    .line 113
    add-int v2, v13, p5

    .line 58
    add-int/lit8 v3, v3, 0x1

    move v13, v2

    goto/16 :goto_1

    .line 104
    :cond_3
    div-float v2, v5, v4

    move v12, v2

    goto :goto_7

    .line 105
    :cond_4
    div-float v2, v7, v6

    move v6, v2

    goto :goto_8

    .line 106
    :cond_5
    div-float v2, v9, v8

    move v5, v2

    goto :goto_9

    .line 107
    :cond_6
    div-float v2, v11, v10

    move v4, v2

    goto :goto_a

    .line 108
    :cond_7
    const/16 v2, 0xff

    goto :goto_b

    .line 55
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 116
    :cond_9
    return-void

    :cond_a
    move v9, v8

    move v8, v11

    move/from16 v28, v4

    move v4, v2

    move v2, v10

    move v10, v6

    move/from16 v6, v28

    goto/16 :goto_6

    :cond_b
    move v7, v8

    move v8, v9

    goto/16 :goto_5

    :cond_c
    move v5, v6

    move v6, v7

    goto/16 :goto_4

    :cond_d
    move v2, v4

    move v4, v5

    goto/16 :goto_3

    :cond_e
    move v2, v10

    move v10, v7

    move v7, v8

    move v8, v11

    move/from16 v28, v5

    move v5, v6

    move/from16 v6, v28

    goto/16 :goto_6
.end method


# virtual methods
.method public filter([III)[I
    .locals 11

    .prologue
    .line 31
    .line 34
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 35
    mul-int v0, p2, p3

    new-array v3, v0, [I

    .line 39
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->makeKernel(F)Lcom/jabistudio/androidjhlabs/filter/Kernel;

    move-result-object v1

    .line 40
    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZ)V

    .line 41
    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, v1

    move-object v6, v3

    move-object v7, p1

    move v8, p3

    move v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZ)V

    .line 43
    return-object p1
.end method

.method public getHRadius()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a:I

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    return v0
.end method

.method public getVRadius()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->b:I

    return v0
.end method

.method public setHRadius(I)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a:I

    .line 126
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->b:I

    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->a:I

    .line 164
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->c:I

    .line 182
    return-void
.end method

.method public setVRadius(I)V
    .locals 0

    .prologue
    .line 144
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/SmartBlurFilter;->b:I

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "Blur/Smart Blur..."

    return-object v0
.end method
