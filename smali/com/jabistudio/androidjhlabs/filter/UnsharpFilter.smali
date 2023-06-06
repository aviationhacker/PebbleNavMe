.class public Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;
.super Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;-><init>()V

    .line 27
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->a:F

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->b:I

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->radius:F

    .line 32
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 14

    .prologue
    .line 73
    .line 76
    mul-int v1, p2, p3

    new-array v1, v1, [I

    .line 77
    mul-int v1, p2, p3

    new-array v3, v1, [I

    .line 81
    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->radius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v6, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->alpha:Z

    iget-boolean v2, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->alpha:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->premultiplyAlpha:Z

    if-eqz v2, :cond_4

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x0

    sget v9, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->CLAMP_EDGES:I

    move-object v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-static/range {v1 .. v9}, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    .line 83
    iget-object v2, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v7, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->alpha:Z

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->alpha:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->premultiplyAlpha:Z

    if-eqz v1, :cond_5

    const/4 v9, 0x1

    :goto_1
    sget v10, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->CLAMP_EDGES:I

    move-object v4, p1

    move/from16 v5, p3

    move/from16 v6, p2

    invoke-static/range {v2 .. v10}, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    .line 88
    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    iget v2, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->a:F

    mul-float v7, v1, v2

    .line 90
    const/4 v2, 0x0

    .line 91
    const/4 v1, 0x0

    move v6, v1

    :goto_2
    move/from16 v0, p3

    if-ge v6, v0, :cond_7

    .line 92
    const/4 v1, 0x0

    move v4, v1

    move v5, v2

    :goto_3
    move/from16 v0, p2

    if-ge v4, v0, :cond_6

    .line 93
    aget v8, p1, v5

    .line 94
    shr-int/lit8 v1, v8, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 95
    shr-int/lit8 v2, v8, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 96
    and-int/lit16 v3, v8, 0xff

    .line 98
    aget v9, p1, v5

    .line 99
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    .line 100
    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    .line 101
    and-int/lit16 v9, v9, 0xff

    .line 103
    sub-int v12, v1, v10

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->b:I

    if-lt v12, v13, :cond_1

    .line 104
    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v12, v7

    sub-int/2addr v1, v10

    int-to-float v1, v1

    mul-float/2addr v1, v12

    int-to-float v10, v10

    add-float/2addr v1, v10

    float-to-int v1, v1

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 105
    :cond_1
    sub-int v10, v2, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v12, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->b:I

    if-lt v10, v12, :cond_2

    .line 106
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v7

    sub-int/2addr v2, v11

    int-to-float v2, v2

    mul-float/2addr v2, v10

    int-to-float v10, v11

    add-float/2addr v2, v10

    float-to-int v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 107
    :cond_2
    sub-int v10, v3, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->b:I

    if-lt v10, v11, :cond_3

    .line 108
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v10, v7

    sub-int/2addr v3, v9

    int-to-float v3, v3

    mul-float/2addr v3, v10

    int-to-float v9, v9

    add-float/2addr v3, v9

    float-to-int v3, v3

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    .line 110
    :cond_3
    const/high16 v9, -0x1000000

    and-int/2addr v8, v9

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v8

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v1, v3

    aput v1, p1, v5

    .line 111
    add-int/lit8 v2, v5, 0x1

    .line 92
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v2

    goto :goto_3

    .line 82
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 83
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 91
    :cond_6
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v2, v5

    goto/16 :goto_2

    .line 115
    :cond_7
    return-object p1
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->a:F

    return v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->b:I

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->a:F

    .line 61
    return-void
.end method

.method public setThreshold(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/UnsharpFilter;->b:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "Blur/Unsharp Mask..."

    return-object v0
.end method
