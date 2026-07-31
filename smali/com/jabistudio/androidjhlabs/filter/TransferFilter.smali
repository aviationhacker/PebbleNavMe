.class public abstract Lcom/jabistudio/androidjhlabs/filter/TransferFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field protected bTable:[I

.field protected gTable:[I

.field protected initialized:Z

.field protected rTable:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->initialized:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->canFilterIndexColorModel:Z

    .line 29
    return-void
.end method


# virtual methods
.method public filter([III)[I
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->initialized:Z

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->initialize()V

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;->filter([III)[I

    move-result-object v0

    return-object v0
.end method

.method public filterRGB(III)I
    .locals 5

    .prologue
    .line 32
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 33
    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 34
    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 35
    and-int/lit16 v3, p3, 0xff

    .line 36
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->rTable:[I

    aget v1, v4, v1

    .line 37
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->gTable:[I

    aget v2, v4, v2

    .line 38
    iget-object v4, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->bTable:[I

    aget v3, v4, v3

    .line 39
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public getLUT()[I
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x0

    .line 66
    iget-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->initialized:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->initialize()V

    .line 68
    :cond_0
    new-array v2, v5, [I

    move v0, v1

    .line 69
    :goto_0
    if-ge v0, v5, :cond_1

    .line 70
    shl-int/lit8 v3, v0, 0x18

    shl-int/lit8 v4, v0, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    invoke-virtual {p0, v1, v1, v3}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->filterRGB(III)I

    move-result v3

    aput v3, v2, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    return-object v2
.end method

.method protected initialize()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->initialized:Z

    .line 51
    invoke-virtual {p0}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->makeTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->bTable:[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->gTable:[I

    iput-object v0, p0, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->rTable:[I

    .line 52
    return-void
.end method

.method protected makeTable()[I
    .locals 5

    .prologue
    const/16 v4, 0x100

    const/high16 v3, 0x437f0000    # 255.0f

    .line 55
    new-array v1, v4, [I

    .line 56
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 57
    int-to-float v2, v0

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/jabistudio/androidjhlabs/filter/TransferFilter;->transferFunction(F)F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    aput v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-object v1
.end method

.method protected transferFunction(F)F
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
