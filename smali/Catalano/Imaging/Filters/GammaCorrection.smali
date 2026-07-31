.class public LCatalano/Imaging/Filters/GammaCorrection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, LCatalano/Imaging/Filters/GammaCorrection;->a:D

    .line 46
    return-void
.end method

.method private static a(D)[I
    .locals 6

    .prologue
    const-wide v4, 0x406fe00000000000L    # 255.0

    .line 100
    const/16 v0, 0x100

    new-array v1, v0, [I

    .line 102
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 103
    int-to-double v2, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    aput v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-object v1
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-wide v2, p0, LCatalano/Imaging/Filters/GammaCorrection;->a:D

    invoke-static {v2, v3}, LCatalano/Imaging/Filters/GammaCorrection;->a(D)[I

    move-result-object v1

    .line 72
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 73
    :goto_0
    if-ge v0, v2, :cond_1

    .line 75
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    aget v3, v1, v3

    .line 76
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    aget v4, v1, v4

    .line 77
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    aget v5, v1, v5

    .line 79
    invoke-virtual {p1, v0, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-wide v2, p0, LCatalano/Imaging/Filters/GammaCorrection;->a:D

    invoke-static {v2, v3}, LCatalano/Imaging/Filters/GammaCorrection;->a(D)[I

    move-result-object v1

    .line 87
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 88
    :goto_1
    if-ge v0, v2, :cond_1

    .line 89
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    aget v3, v1, v3

    invoke-virtual {p1, v0, v3}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_1
    return-void
.end method

.method public getGamma()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, LCatalano/Imaging/Filters/GammaCorrection;->a:D

    return-wide v0
.end method

.method public setGamma(D)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, LCatalano/Imaging/Filters/GammaCorrection;->a:D

    .line 62
    return-void
.end method
