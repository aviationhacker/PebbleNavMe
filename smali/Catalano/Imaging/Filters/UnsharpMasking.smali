.class public LCatalano/Imaging/Filters/UnsharpMasking;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->a:I

    .line 35
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    .line 72
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->a:I

    .line 35
    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    .line 80
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/UnsharpMasking;->setRadius(I)V

    .line 81
    invoke-virtual {p0, p2}, LCatalano/Imaging/Filters/UnsharpMasking;->setWeight(F)V

    .line 82
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/16 v1, 0xff

    .line 87
    new-instance v6, LCatalano/Imaging/FastBitmap;

    invoke-direct {v6, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 88
    new-instance v0, LCatalano/Imaging/Filters/GaussianBoxBlur;

    iget v2, p0, LCatalano/Imaging/Filters/UnsharpMasking;->a:I

    int-to-double v2, v2

    invoke-direct {v0, v2, v3}, LCatalano/Imaging/Filters/GaussianBoxBlur;-><init>(D)V

    .line 89
    invoke-virtual {v0, v6}, LCatalano/Imaging/Filters/GaussianBoxBlur;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 91
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v7

    .line 93
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v4

    .line 94
    :goto_0
    if-ge v2, v7, :cond_a

    .line 95
    invoke-virtual {p1, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    invoke-virtual {v6, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    sub-float/2addr v0, v3

    iget v3, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    sub-float v3, v10, v3

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 96
    if-gez v0, :cond_0

    move v0, v4

    .line 97
    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    .line 98
    :cond_1
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 94
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_9

    move v5, v4

    .line 103
    :goto_1
    if-ge v5, v7, :cond_a

    .line 104
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    invoke-virtual {v6, v5}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    sub-float v2, v10, v2

    div-float/2addr v0, v2

    float-to-int v3, v0

    .line 105
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    invoke-virtual {v6, v5}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v2, v8

    sub-float/2addr v0, v2

    iget v2, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    sub-float v2, v10, v2

    div-float/2addr v0, v2

    float-to-int v2, v0

    .line 106
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v0

    int-to-float v0, v0

    iget v8, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    invoke-virtual {v6, v5}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    sub-float/2addr v0, v8

    iget v8, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    sub-float v8, v10, v8

    div-float/2addr v0, v8

    float-to-int v0, v0

    .line 108
    if-gez v3, :cond_3

    move v3, v4

    .line 109
    :cond_3
    if-gez v2, :cond_4

    move v2, v4

    .line 110
    :cond_4
    if-gez v0, :cond_5

    move v0, v4

    .line 112
    :cond_5
    if-le v3, v1, :cond_6

    move v3, v1

    .line 113
    :cond_6
    if-le v2, v1, :cond_7

    move v2, v1

    .line 114
    :cond_7
    if-le v0, v1, :cond_8

    move v0, v1

    .line 116
    :cond_8
    invoke-virtual {p1, v5, v3, v2, v0}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 103
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 120
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsharp mask only works in grayscale or rgb images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_a
    return-void
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->a:I

    return v0
.end method

.method public getWeight()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->a:I

    .line 51
    return-void
.end method

.method public setWeight(F)V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/UnsharpMasking;->b:F

    .line 67
    return-void
.end method
