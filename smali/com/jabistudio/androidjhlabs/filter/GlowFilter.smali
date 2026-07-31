.class public Lcom/jabistudio/androidjhlabs/filter/GlowFilter;
.super Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;
.source "SourceFile"


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;-><init>()V

    .line 27
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->a:F

    .line 30
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->radius:F

    .line 31
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 54
    .line 57
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 58
    mul-int v0, p2, p3

    new-array v2, v0, [I

    .line 62
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->radius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v5, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->alpha:Z

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->alpha:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->premultiplyAlpha:Z

    if-eqz v1, :cond_1

    move v6, v9

    :goto_0
    sget v8, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->CLAMP_EDGES:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    .line 64
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v6, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->alpha:Z

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->alpha:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->premultiplyAlpha:Z

    if-eqz v0, :cond_2

    move v8, v9

    :goto_1
    sget v9, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->CLAMP_EDGES:I

    move-object v3, p1

    move v4, p3

    move v5, p2

    invoke-static/range {v1 .. v9}, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    .line 69
    :cond_0
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->a:F

    mul-float v3, v0, v1

    move v2, v7

    move v0, v7

    .line 72
    :goto_2
    if-ge v2, p3, :cond_4

    move v1, v0

    move v0, v7

    .line 73
    :goto_3
    if-ge v0, p2, :cond_3

    .line 74
    aget v4, p1, v1

    .line 75
    shr-int/lit8 v5, v4, 0x10

    and-int/lit16 v5, v5, 0xff

    .line 76
    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    .line 77
    and-int/lit16 v8, v4, 0xff

    .line 79
    aget v9, p1, v1

    .line 80
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    .line 81
    shr-int/lit8 v11, v9, 0x8

    and-int/lit16 v11, v11, 0xff

    .line 82
    and-int/lit16 v9, v9, 0xff

    .line 84
    int-to-float v5, v5

    int-to-float v10, v10

    mul-float/2addr v10, v3

    add-float/2addr v5, v10

    float-to-int v5, v5

    invoke-static {v5}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v5

    .line 85
    int-to-float v6, v6

    int-to-float v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v6, v10

    float-to-int v6, v6

    invoke-static {v6}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v6

    .line 86
    int-to-float v8, v8

    int-to-float v9, v9

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v8

    .line 88
    const/high16 v9, -0x1000000

    and-int/2addr v4, v9

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v8

    aput v4, p1, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    move v6, v7

    .line 63
    goto :goto_0

    :cond_2
    move v8, v7

    .line 64
    goto :goto_1

    .line 72
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_2

    .line 93
    :cond_4
    return-object p1
.end method

.method public getAmount()F
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->a:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/jabistudio/androidjhlabs/filter/GlowFilter;->a:F

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "Blur/Glow..."

    return-object v0
.end method
