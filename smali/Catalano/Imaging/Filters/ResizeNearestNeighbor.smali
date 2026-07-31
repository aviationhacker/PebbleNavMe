.class public LCatalano/Imaging/Filters/ResizeNearestNeighbor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    .line 93
    iput p2, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    .line 94
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 99
    new-instance v0, LCatalano/Imaging/FastBitmap;

    iget v1, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    iget v2, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 101
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    .line 102
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    .line 103
    int-to-double v4, v1

    iget v1, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    int-to-double v8, v1

    div-double v8, v4, v8

    .line 104
    int-to-double v2, v2

    iget v1, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    int-to-double v4, v1

    div-double v10, v2, v4

    .line 106
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    .line 107
    :goto_0
    iget v2, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    if-ge v1, v2, :cond_1

    .line 109
    int-to-double v2, v1

    mul-double/2addr v2, v10

    double-to-int v3, v2

    move v2, v6

    .line 112
    :goto_1
    iget v4, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    if-ge v2, v4, :cond_0

    .line 114
    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v4, v4

    .line 115
    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 117
    invoke-virtual {v0, v1, v2, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 122
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 144
    :goto_2
    return-void

    :cond_2
    move v1, v6

    .line 125
    :goto_3
    iget v2, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    if-ge v1, v2, :cond_4

    .line 127
    int-to-double v2, v1

    mul-double/2addr v2, v10

    double-to-int v7, v2

    move v2, v6

    .line 130
    :goto_4
    iget v3, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    if-ge v2, v3, :cond_3

    .line 132
    int-to-double v4, v2

    mul-double/2addr v4, v8

    double-to-int v5, v4

    .line 133
    invoke-virtual {p1, v7, v5}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    .line 134
    invoke-virtual {p1, v7, v5}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 135
    invoke-virtual {p1, v7, v5}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 137
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 125
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    :cond_4
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 142
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->recycle()V

    goto :goto_2
.end method

.method public getNewHeight()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    return v0
.end method

.method public getNewWidth()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    return v0
.end method

.method public setNewHeight(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    .line 74
    return-void
.end method

.method public setNewSize(II)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    .line 83
    iput p2, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->b:I

    .line 84
    return-void
.end method

.method public setNewWidth(I)V
    .locals 0

    .prologue
    .line 57
    iput p1, p0, LCatalano/Imaging/Filters/ResizeNearestNeighbor;->a:I

    .line 58
    return-void
.end method
