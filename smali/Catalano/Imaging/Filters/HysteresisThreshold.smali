.class public LCatalano/Imaging/Filters/HysteresisThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->a:I

    .line 38
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    .line 75
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x14

    iput v0, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->a:I

    .line 38
    const/16 v0, 0x64

    iput v0, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    .line 83
    iput p1, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->a:I

    .line 84
    iput p2, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    .line 85
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 90
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 92
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 94
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_4

    move v0, v1

    .line 95
    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v0, v5, :cond_2

    .line 96
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    .line 97
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->a:I

    if-ge v5, v6, :cond_1

    .line 99
    invoke-virtual {p1, v2, v0, v7}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 95
    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_1
    add-int/lit8 v5, v0, -0x1

    invoke-virtual {p1, v2, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v0, 0x1

    .line 105
    invoke-virtual {p1, v2, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v0, -0x1

    .line 106
    invoke-virtual {p1, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v2, -0x1

    .line 107
    invoke-virtual {p1, v5, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v6, v0, 0x1

    .line 108
    invoke-virtual {p1, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, -0x1

    .line 109
    invoke-virtual {p1, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v2, 0x1

    .line 110
    invoke-virtual {p1, v5, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, 0x1

    .line 111
    invoke-virtual {p1, v5, v6}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    iget v6, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    if-ge v5, v6, :cond_0

    .line 113
    invoke-virtual {p1, v2, v0, v7}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_2

    .line 94
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 122
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hysteresis Threshold only works with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_4
    return-void
.end method

.method public getHighThreshold()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    return v0
.end method

.method public getLowThreshold()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->a:I

    return v0
.end method

.method public setHighThreshold(I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->b:I

    .line 70
    return-void
.end method

.method public setLowThreshold(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, LCatalano/Imaging/Filters/HysteresisThreshold;->a:I

    .line 54
    return-void
.end method
