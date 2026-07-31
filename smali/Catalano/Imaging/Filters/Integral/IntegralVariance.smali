.class public LCatalano/Imaging/Filters/Integral/IntegralVariance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/Integral/IntegralVariance;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, LCatalano/Imaging/Filters/Integral/IntegralVariance;->a:I

    .line 65
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    new-instance v3, LCatalano/Imaging/Tools/IntegralImage;

    invoke-direct {v3, p1}, LCatalano/Imaging/Tools/IntegralImage;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 75
    new-instance v4, LCatalano/Imaging/Tools/IntegralImage;

    const/4 v0, 0x2

    invoke-direct {v4, p1, v0}, LCatalano/Imaging/Tools/IntegralImage;-><init>(LCatalano/Imaging/FastBitmap;I)V

    .line 77
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v5

    .line 78
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v6

    move v2, v1

    .line 79
    :goto_0
    if-ge v2, v6, :cond_2

    move v0, v1

    .line 80
    :goto_1
    if-ge v0, v5, :cond_0

    .line 81
    iget v7, p0, LCatalano/Imaging/Filters/Integral/IntegralVariance;->a:I

    invoke-virtual {v3, v2, v0, v7}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(III)F

    move-result v7

    .line 82
    iget v8, p0, LCatalano/Imaging/Filters/Integral/IntegralVariance;->a:I

    invoke-virtual {v4, v2, v0, v8}, LCatalano/Imaging/Tools/IntegralImage;->getRectangleMean(III)F

    move-result v8

    .line 83
    mul-float/2addr v7, v7

    sub-float v7, v8, v7

    .line 84
    float-to-int v7, v7

    const/16 v8, 0xff

    invoke-virtual {p1, v7, v1, v8}, LCatalano/Imaging/FastBitmap;->clampValues(III)I

    move-result v7

    invoke-virtual {p1, v2, v0, v7}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 79
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Integral variance only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    return-void
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Imaging/Filters/Integral/IntegralVariance;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Integral/IntegralVariance;->a:I

    .line 50
    return-void
.end method
