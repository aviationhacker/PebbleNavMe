.class public LCatalano/Imaging/Filters/PoissonNoise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(F)I
    .locals 8

    .prologue
    .line 83
    neg-float v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 84
    const/4 v2, 0x0

    .line 85
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 87
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 89
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v0, v6

    .line 90
    cmpl-double v3, v0, v4

    if-gez v3, :cond_0

    .line 91
    add-int/lit8 v0, v2, -0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0xff

    .line 42
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v0

    .line 46
    :goto_0
    if-ge v1, v0, :cond_8

    .line 47
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    .line 48
    int-to-float v2, v2

    invoke-direct {p0, v2}, LCatalano/Imaging/Filters/PoissonNoise;->a(F)I

    move-result v2

    .line 49
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 54
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v6

    move v5, v1

    .line 56
    :goto_1
    if-ge v5, v6, :cond_8

    .line 57
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 58
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v2

    .line 59
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v7

    .line 61
    int-to-float v0, v0

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/PoissonNoise;->a(F)I

    move-result v3

    .line 62
    int-to-float v0, v2

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/PoissonNoise;->a(F)I

    move-result v2

    .line 63
    int-to-float v0, v7

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/PoissonNoise;->a(F)I

    move-result v0

    .line 65
    if-le v3, v4, :cond_1

    move v3, v4

    .line 66
    :cond_1
    if-le v2, v4, :cond_2

    move v2, v4

    .line 67
    :cond_2
    if-le v0, v4, :cond_3

    move v0, v4

    .line 69
    :cond_3
    if-gez v3, :cond_4

    move v3, v1

    .line 70
    :cond_4
    if-gez v2, :cond_5

    move v2, v1

    .line 71
    :cond_5
    if-gez v0, :cond_6

    move v0, v1

    .line 73
    :cond_6
    invoke-virtual {p1, v5, v3, v2, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 56
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 77
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Poisson Noise only works in Grayscale and RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_8
    return-void
.end method
