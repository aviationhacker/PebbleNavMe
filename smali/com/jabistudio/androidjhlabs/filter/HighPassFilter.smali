.class public Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;
.super Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/GaussianFilter;-><init>()V

    .line 26
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->radius:F

    .line 27
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 30
    .line 33
    mul-int v0, p2, p3

    new-array v0, v0, [I

    .line 34
    mul-int v0, p2, p3

    new-array v10, v0, [I

    .line 35
    mul-int v0, p2, p3

    new-array v2, v0, [I

    move v0, v7

    .line 38
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 39
    aget v1, p1, v0

    aput v1, v10, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->radius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v5, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->alpha:Z

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->alpha:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->premultiplyAlpha:Z

    if-eqz v1, :cond_2

    move v6, v9

    :goto_1
    sget v8, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->CLAMP_EDGES:I

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v8}, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    .line 44
    iget-object v1, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->kernel:Lcom/jabistudio/androidjhlabs/filter/Kernel;

    iget-boolean v6, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->alpha:Z

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->alpha:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->premultiplyAlpha:Z

    if-eqz v0, :cond_3

    move v8, v9

    :goto_2
    sget v9, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->CLAMP_EDGES:I

    move-object v3, p1

    move v4, p3

    move v5, p2

    invoke-static/range {v1 .. v9}, Lcom/jabistudio/androidjhlabs/filter/HighPassFilter;->convolveAndTranspose(Lcom/jabistudio/androidjhlabs/filter/Kernel;[I[IIIZZZI)V

    :cond_1
    move v2, v7

    move v0, v7

    .line 50
    :goto_3
    if-ge v2, p3, :cond_5

    move v1, v0

    move v0, v7

    .line 51
    :goto_4
    if-ge v0, p2, :cond_4

    .line 52
    aget v3, v10, v1

    .line 53
    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    .line 54
    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    .line 55
    and-int/lit16 v6, v3, 0xff

    .line 57
    aget v8, p1, v1

    .line 58
    shr-int/lit8 v9, v8, 0x10

    and-int/lit16 v9, v9, 0xff

    .line 59
    shr-int/lit8 v11, v8, 0x8

    and-int/lit16 v11, v11, 0xff

    .line 60
    and-int/lit16 v8, v8, 0xff

    .line 62
    add-int/lit16 v4, v4, 0xff

    sub-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x2

    .line 63
    add-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v11

    div-int/lit8 v5, v5, 0x2

    .line 64
    add-int/lit16 v6, v6, 0xff

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    .line 66
    const/high16 v8, -0x1000000

    and-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v6

    aput v3, p1, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    move v6, v7

    .line 43
    goto :goto_1

    :cond_3
    move v8, v7

    .line 44
    goto :goto_2

    .line 50
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_3

    .line 71
    :cond_5
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Blur/High Pass..."

    return-object v0
.end method
