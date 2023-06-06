.class public LCatalano/Imaging/Filters/NickThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    .line 39
    const-wide v0, -0x4036666666666666L    # -0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/NickThreshold;->b:D

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    .line 39
    const-wide v0, -0x4036666666666666L    # -0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/NickThreshold;->b:D

    .line 83
    iput p1, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    .line 84
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xf

    iput v0, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    .line 39
    const-wide v0, -0x4036666666666666L    # -0.2

    iput-wide v0, p0, LCatalano/Imaging/Filters/NickThreshold;->b:D

    .line 92
    iput p1, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    .line 93
    iput-wide p2, p0, LCatalano/Imaging/Filters/NickThreshold;->b:D

    .line 94
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    new-instance v3, LCatalano/Imaging/FastBitmap;

    invoke-direct {v3, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 102
    new-instance v4, LCatalano/Imaging/FastBitmap;

    invoke-direct {v4, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 104
    new-instance v0, LCatalano/Imaging/Filters/Integral/IntegralMean;

    iget v2, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/Integral/IntegralMean;-><init>(I)V

    .line 105
    invoke-virtual {v0, v3}, LCatalano/Imaging/Filters/Integral/IntegralMean;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 107
    new-instance v0, LCatalano/Imaging/Filters/Integral/IntegralVariance;

    iget v2, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/Integral/IntegralVariance;-><init>(I)V

    .line 108
    invoke-virtual {v0, p1}, LCatalano/Imaging/Filters/Integral/IntegralVariance;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 110
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int v5, v0, v2

    move v2, v1

    .line 111
    :goto_0
    if-ge v2, v5, :cond_2

    .line 112
    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    int-to-float v0, v0

    .line 113
    invoke-virtual {v3, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    int-to-float v6, v6

    .line 114
    invoke-virtual {v4, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v7

    int-to-float v7, v7

    .line 115
    float-to-double v8, v0

    float-to-double v10, v6

    iget-wide v12, p0, LCatalano/Imaging/Filters/NickThreshold;->b:D

    mul-float v0, v6, v6

    add-float/2addr v0, v7

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v6, v12

    add-double/2addr v6, v10

    cmpl-double v0, v8, v6

    if-lez v0, :cond_0

    const/16 v0, 0xff

    .line 117
    :goto_1
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 115
    goto :goto_1

    .line 122
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Nick Threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    return-void
.end method

.method public getK()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, LCatalano/Imaging/Filters/NickThreshold;->b:D

    return-wide v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    return v0
.end method

.method public setK(D)V
    .locals 1

    .prologue
    .line 70
    iput-wide p1, p0, LCatalano/Imaging/Filters/NickThreshold;->b:D

    .line 71
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, LCatalano/Imaging/Filters/NickThreshold;->a:I

    .line 55
    return-void
.end method
