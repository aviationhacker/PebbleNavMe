.class public Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;
.super Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;
.source "SourceFile"


# instance fields
.field protected kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

.field protected radius:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;-><init>(F)V

    .line 45
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/ConvolveFilter;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->setRadius(F)V

    .line 53
    return-void
.end method

.method public static convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V
    .locals 21

    .prologue
    .line 103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getKernelData([F)[F

    move-result-object v13

    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/jabistudio/androidjhlabs/filter/Kernel;->getWidth()I

    move-result v2

    .line 105
    div-int/lit8 v14, v2, 0x2

    .line 107
    const/4 v12, 0x0

    :goto_0
    move/from16 v0, p4

    if-ge v12, v0, :cond_9

    .line 109
    mul-int v15, v12, p3

    .line 110
    const/4 v2, 0x0

    move v10, v2

    move v11, v12

    :goto_1
    move/from16 v0, p3

    if-ge v10, v0, :cond_8

    .line 111
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 113
    neg-int v2, v14

    move v9, v2

    :goto_2
    if-gt v9, v14, :cond_5

    .line 114
    add-int v2, v14, v9

    aget v16, v13, v2

    .line 116
    const/4 v2, 0x0

    cmpl-float v2, v16, v2

    if-eqz v2, :cond_a

    .line 117
    add-int v2, v10, v9

    .line 118
    if-gez v2, :cond_3

    .line 119
    sget v3, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->CLAMP_EDGES:I

    move/from16 v0, p8

    if-ne v0, v3, :cond_2

    .line 120
    const/4 v2, 0x0

    .line 129
    :cond_0
    :goto_3
    add-int/2addr v2, v15

    aget v2, p1, v2

    .line 130
    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v0, v3, 0xff

    move/from16 v17, v0

    .line 131
    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v4, v3, 0xff

    .line 132
    shr-int/lit8 v3, v2, 0x8

    and-int/lit16 v3, v3, 0xff

    .line 133
    and-int/lit16 v2, v2, 0xff

    .line 134
    if-eqz p6, :cond_1

    .line 135
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3b808081

    mul-float v18, v18, v19

    .line 136
    int-to-float v4, v4

    mul-float v4, v4, v18

    float-to-int v4, v4

    .line 137
    int-to-float v3, v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    .line 138
    int-to-float v2, v2

    mul-float v2, v2, v18

    float-to-int v2, v2

    .line 140
    :cond_1
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v5, v5, v17

    .line 141
    int-to-float v4, v4

    mul-float v4, v4, v16

    add-float/2addr v4, v8

    .line 142
    int-to-float v3, v3

    mul-float v3, v3, v16

    add-float/2addr v3, v7

    .line 143
    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v2, v6

    move/from16 v20, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move/from16 v2, v20

    .line 113
    :goto_4
    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v7, v4

    move v8, v5

    move v5, v2

    move v6, v3

    goto :goto_2

    .line 121
    :cond_2
    sget v3, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->WRAP_EDGES:I

    move/from16 v0, p8

    if-ne v0, v3, :cond_0

    .line 122
    add-int v2, v10, p3

    rem-int v2, v2, p3

    goto :goto_3

    .line 123
    :cond_3
    move/from16 v0, p3

    if-lt v2, v0, :cond_0

    .line 124
    sget v3, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->CLAMP_EDGES:I

    move/from16 v0, p8

    if-ne v0, v3, :cond_4

    .line 125
    add-int/lit8 v2, p3, -0x1

    goto :goto_3

    .line 126
    :cond_4
    sget v3, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->WRAP_EDGES:I

    move/from16 v0, p8

    if-ne v0, v3, :cond_0

    .line 127
    add-int v2, v10, p3

    rem-int v2, v2, p3

    goto :goto_3

    .line 146
    :cond_5
    if-eqz p7, :cond_6

    const/4 v2, 0x0

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x437f0000    # 255.0f

    cmpl-float v2, v5, v2

    if-eqz v2, :cond_6

    .line 147
    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v2, v5

    .line 148
    mul-float/2addr v8, v2

    .line 149
    mul-float/2addr v7, v2

    .line 150
    mul-float/2addr v6, v2

    .line 152
    :cond_6
    if-eqz p5, :cond_7

    float-to-double v2, v5

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 153
    :goto_5
    float-to-double v4, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v8

    double-to-int v3, v4

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    .line 154
    float-to-double v4, v7

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v8

    double-to-int v4, v4

    invoke-static {v4}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v4

    .line 155
    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v5, v6

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 156
    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    or-int/2addr v2, v5

    aput v2, p2, v11

    .line 157
    add-int v3, v11, p4

    .line 110
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    goto/16 :goto_1

    .line 152
    :cond_7
    const/16 v2, 0xff

    goto :goto_5

    .line 107
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 160
    :cond_9
    return-void

    :cond_a
    move v2, v5

    move v3, v6

    move v4, v7

    move v5, v8

    goto/16 :goto_4
.end method

.method public static makeKernel(F)Lcom/jabistudio/androidjhlabs/filter/Kernel;
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 168
    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v5, v2

    .line 169
    mul-int/lit8 v1, v5, 0x2

    add-int/lit8 v6, v1, 0x1

    .line 170
    new-array v7, v6, [F

    .line 171
    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, p0, v1

    .line 172
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    mul-float v8, v2, v1

    .line 173
    const v2, 0x40c90fdb

    mul-float/2addr v1, v2

    .line 174
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v9, v2

    .line 175
    mul-float v10, p0, p0

    .line 178
    neg-int v1, v5

    move v2, v0

    move v3, v4

    :goto_0
    if-gt v1, v5, :cond_1

    .line 179
    mul-int v11, v1, v1

    int-to-float v11, v11

    .line 180
    cmpl-float v12, v11, v10

    if-lez v12, :cond_0

    .line 181
    aput v4, v7, v2

    .line 184
    :goto_1
    aget v11, v7, v2

    add-float/2addr v3, v11

    .line 185
    add-int/lit8 v2, v2, 0x1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    neg-float v11, v11

    div-float/2addr v11, v8

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    double-to-float v11, v12

    div-float/2addr v11, v9

    aput v11, v7, v2

    goto :goto_1

    .line 187
    :cond_1
    :goto_2
    if-ge v0, v6, :cond_2

    .line 188
    aget v1, v7, v0

    div-float/2addr v1, v3

    aput v1, v7, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 190
    :cond_2
    new-instance v0, Lcom/jabistudio/androidjhlabs/filter/Kernel;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v1, v7}, Lcom/jabistudio/androidjhlabs/filter/Kernel;-><init>(II[F)V

    return-object v0
.end method


# virtual methods
.method public filter([III)[I
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 77
    .line 80
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 81
    mul-int v0, p2, p3

    new-array v2, v0, [I

    .line 84
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->radius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v5, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->alpha:Z

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->alpha:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->premultiplyAlpha:Z

    if-eqz v1, :cond_1

    move v6, v9

    :goto_0
    sget v8, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->CLAMP_EDGES:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    .line 86
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v6, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->alpha:Z

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->alpha:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->premultiplyAlpha:Z

    if-eqz v0, :cond_2

    move v8, v9

    :goto_1
    sget v9, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->CLAMP_EDGES:I

    move-object v3, p1

    move v4, p3

    move v5, p2

    invoke-static/range {v1 .. v9}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    .line 89
    :cond_0
    return-object p1

    :cond_1
    move v6, v7

    .line 85
    goto :goto_0

    :cond_2
    move v8, v7

    .line 86
    goto :goto_1
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->radius:F

    return v0
.end method

.method public setRadius(F)V
    .locals 1

    .prologue
    .line 63
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->radius:F

    .line 64
    invoke-static {p1}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->makeKernel(F)Lcom/jabistudio/androidjhlabs/filter/Kernel;

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "Blur/Gaussian Blur..."

    return-object v0
.end method
