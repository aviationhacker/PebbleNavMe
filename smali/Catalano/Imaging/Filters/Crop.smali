.class public LCatalano/Imaging/Filters/Crop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, LCatalano/Imaging/Filters/Crop;->a:I

    .line 133
    iput p2, p0, LCatalano/Imaging/Filters/Crop;->b:I

    .line 134
    iput p3, p0, LCatalano/Imaging/Filters/Crop;->c:I

    .line 135
    iput p4, p0, LCatalano/Imaging/Filters/Crop;->d:I

    .line 136
    return-void
.end method


# virtual methods
.method public ApplyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 144
    iget v0, p0, LCatalano/Imaging/Filters/Crop;->a:I

    iget v2, p0, LCatalano/Imaging/Filters/Crop;->d:I

    add-int/2addr v0, v2

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    if-gt v0, v2, :cond_0

    iget v0, p0, LCatalano/Imaging/Filters/Crop;->b:I

    iget v2, p0, LCatalano/Imaging/Filters/Crop;->c:I

    add-int/2addr v0, v2

    .line 145
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size is higher than original image."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    new-instance v3, LCatalano/Imaging/FastBitmap;

    iget v0, p0, LCatalano/Imaging/Filters/Crop;->c:I

    iget v2, p0, LCatalano/Imaging/Filters/Crop;->d:I

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;

    move-result-object v4

    invoke-direct {v3, v0, v2, v4}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 151
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getCoordinateSystem()LCatalano/Imaging/FastBitmap$CoordinateSystem;

    move-result-object v0

    sget-object v2, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    if-ne v0, v2, :cond_4

    move v0, v1

    .line 153
    :goto_0
    iget v2, p0, LCatalano/Imaging/Filters/Crop;->d:I

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 154
    :goto_1
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->c:I

    if-ge v2, v4, :cond_2

    .line 155
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 193
    :goto_2
    return-void

    :cond_4
    move v0, v1

    .line 162
    :goto_3
    iget v2, p0, LCatalano/Imaging/Filters/Crop;->d:I

    if-ge v0, v2, :cond_6

    move v2, v1

    .line 163
    :goto_4
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->c:I

    if-ge v2, v4, :cond_5

    .line 164
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 162
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 168
    :cond_6
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    goto :goto_2

    .line 172
    :cond_7
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getCoordinateSystem()LCatalano/Imaging/FastBitmap$CoordinateSystem;

    move-result-object v0

    sget-object v2, LCatalano/Imaging/FastBitmap$CoordinateSystem;->Matrix:LCatalano/Imaging/FastBitmap$CoordinateSystem;

    if-ne v0, v2, :cond_a

    move v0, v1

    .line 173
    :goto_5
    iget v2, p0, LCatalano/Imaging/Filters/Crop;->d:I

    if-ge v0, v2, :cond_9

    move v2, v1

    .line 174
    :goto_6
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->c:I

    if-ge v2, v4, :cond_8

    .line 175
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 176
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 177
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v4

    invoke-virtual {v3, v0, v2, v4}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 173
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 180
    :cond_9
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    goto :goto_2

    :cond_a
    move v0, v1

    .line 183
    :goto_7
    iget v2, p0, LCatalano/Imaging/Filters/Crop;->d:I

    if-ge v0, v2, :cond_c

    move v2, v1

    .line 184
    :goto_8
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->c:I

    if-ge v2, v4, :cond_b

    .line 185
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 186
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 187
    iget v4, p0, LCatalano/Imaging/Filters/Crop;->b:I

    add-int/2addr v4, v0

    iget v5, p0, LCatalano/Imaging/Filters/Crop;->a:I

    add-int/2addr v5, v2

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 183
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 190
    :cond_c
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    goto/16 :goto_2
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, LCatalano/Imaging/Filters/Crop;->d:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, LCatalano/Imaging/Filters/Crop;->c:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, LCatalano/Imaging/Filters/Crop;->a:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, LCatalano/Imaging/Filters/Crop;->b:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, LCatalano/Imaging/Filters/Crop;->d:I

    .line 96
    return-void
.end method

.method public setPosition(II)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, LCatalano/Imaging/Filters/Crop;->a:I

    .line 80
    iput p2, p0, LCatalano/Imaging/Filters/Crop;->b:I

    .line 81
    return-void
.end method

.method public setSize(II)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, LCatalano/Imaging/Filters/Crop;->d:I

    .line 121
    iput p2, p0, LCatalano/Imaging/Filters/Crop;->c:I

    .line 122
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 111
    iput p1, p0, LCatalano/Imaging/Filters/Crop;->c:I

    .line 112
    return-void
.end method

.method public setX(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, LCatalano/Imaging/Filters/Crop;->a:I

    .line 55
    return-void
.end method

.method public setY(I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, LCatalano/Imaging/Filters/Crop;->b:I

    .line 71
    return-void
.end method
