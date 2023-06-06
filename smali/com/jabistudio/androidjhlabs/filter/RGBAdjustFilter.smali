.class public Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;
.super Lcom/jabistudio/androidjhlabs/filter/PointFilter;
.source "SourceFile"


# instance fields
.field public bFactor:F

.field public gFactor:F

.field public rFactor:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0, v0}, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;-><init>(FFF)V

    .line 27
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 29
    invoke-direct {p0}, Lcom/jabistudio/androidjhlabs/filter/PointFilter;-><init>()V

    .line 30
    add-float v0, v1, p1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->rFactor:F

    .line 31
    add-float v0, v1, p2

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->gFactor:F

    .line 32
    add-float v0, v1, p3

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->bFactor:F

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->canFilterIndexColorModel:Z

    .line 34
    return-void
.end method


# virtual methods
.method public filterRGB(III)I
    .locals 5

    .prologue
    .line 69
    const/high16 v0, -0x1000000

    and-int/2addr v0, p3

    .line 70
    shr-int/lit8 v1, p3, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 71
    shr-int/lit8 v2, p3, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 72
    and-int/lit16 v3, p3, 0xff

    .line 73
    int-to-float v1, v1

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->rFactor:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-static {v1}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v1

    .line 74
    int-to-float v2, v2

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->gFactor:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {v2}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v2

    .line 75
    int-to-float v3, v3

    iget v4, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->bFactor:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Lcom/jabistudio/androidjhlabs/filter/util/PixelUtils;->clamp(I)I

    move-result v3

    .line 76
    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method public getBFactor()F
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->bFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getGFactor()F
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->gFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLUT()[I
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v1, 0x0

    .line 61
    new-array v2, v5, [I

    move v0, v1

    .line 62
    :goto_0
    if-ge v0, v5, :cond_0

    .line 63
    shl-int/lit8 v3, v0, 0x18

    shl-int/lit8 v4, v0, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    invoke-virtual {p0, v1, v1, v3}, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->filterRGB(III)I

    move-result v3

    aput v3, v2, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    return-object v2
.end method

.method public getRFactor()F
    .locals 2

    .prologue
    .line 41
    iget v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->rFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public setBFactor(F)V
    .locals 1

    .prologue
    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->bFactor:F

    .line 54
    return-void
.end method

.method public setGFactor(F)V
    .locals 1

    .prologue
    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->gFactor:F

    .line 46
    return-void
.end method

.method public setRFactor(F)V
    .locals 1

    .prologue
    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr v0, p1

    iput v0, p0, Lcom/jabistudio/androidjhlabs/filter/RGBAdjustFilter;->rFactor:F

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "Colors/Adjust RGB..."

    return-object v0
.end method
