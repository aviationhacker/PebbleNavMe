.class public LCatalano/Imaging/Filters/GaussianNoise;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    .line 56
    return-void
.end method

.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    .line 63
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    .line 64
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    .line 69
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    .line 73
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_a

    .line 75
    invoke-virtual {p1, v1}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    .line 76
    int-to-double v4, v0

    iget-wide v6, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    invoke-virtual {v3}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 78
    const/16 v4, 0xff

    if-le v0, v4, :cond_0

    const/16 v0, 0xff

    .line 79
    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 81
    :cond_1
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 86
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v4

    .line 88
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 89
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v4, :cond_a

    .line 90
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 91
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v1

    .line 92
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    .line 94
    int-to-double v8, v0

    iget-wide v10, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    invoke-virtual {v5}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    double-to-int v2, v8

    .line 95
    int-to-double v0, v1

    iget-wide v8, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    invoke-virtual {v5}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v0, v8

    double-to-int v1, v0

    .line 96
    int-to-double v6, v6

    iget-wide v8, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    invoke-virtual {v5}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v0, v6

    .line 98
    const/16 v6, 0xff

    if-le v2, v6, :cond_3

    const/16 v2, 0xff

    .line 99
    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    .line 101
    :cond_4
    const/16 v6, 0xff

    if-le v1, v6, :cond_5

    const/16 v1, 0xff

    .line 102
    :cond_5
    if-gez v1, :cond_6

    const/4 v1, 0x0

    .line 104
    :cond_6
    const/16 v6, 0xff

    if-le v0, v6, :cond_7

    const/16 v0, 0xff

    .line 105
    :cond_7
    if-gez v0, :cond_8

    const/4 v0, 0x0

    .line 107
    :cond_8
    invoke-virtual {p1, v3, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 89
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 111
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Gaussian noise only works in grayscale and rgb images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_a
    return-void
.end method

.method public getStdDev()D
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    return-wide v0
.end method

.method public setStdDev(D)V
    .locals 1

    .prologue
    .line 50
    iput-wide p1, p0, LCatalano/Imaging/Filters/GaussianNoise;->a:D

    .line 51
    return-void
.end method
