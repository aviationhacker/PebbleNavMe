.class public LCatalano/Imaging/Tools/ImagePadding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    .line 35
    iput v0, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    .line 35
    iput v0, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    .line 87
    iput p1, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    .line 88
    iput p1, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    .line 89
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    .line 35
    iput v0, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    .line 97
    iput p1, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    .line 98
    iput p2, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    .line 99
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    .line 105
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    .line 107
    iget v4, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    add-int v10, v2, v4

    .line 108
    iget v4, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    add-int v11, v3, v4

    .line 110
    sub-int v3, v11, v3

    div-int/lit8 v9, v3, 0x2

    .line 111
    sub-int v2, v10, v2

    div-int/lit8 v8, v2, 0x2

    .line 116
    iget v2, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_5

    move v6, v0

    .line 119
    :goto_0
    iget v2, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    move v7, v0

    .line 123
    :goto_1
    new-instance v0, LCatalano/Imaging/FastBitmap;

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getColorSpace()LCatalano/Imaging/FastBitmap$ColorSpace;

    move-result-object v1

    invoke-direct {v0, v10, v11, v1}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 125
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v9

    .line 126
    :goto_2
    sub-int v1, v11, v9

    sub-int/2addr v1, v6

    if-ge v2, v1, :cond_1

    move v1, v8

    .line 127
    :goto_3
    sub-int v3, v10, v8

    sub-int/2addr v3, v7

    if-ge v1, v3, :cond_0

    .line 128
    sub-int v3, v2, v9

    sub-int v4, v1, v8

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 126
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 132
    :cond_1
    invoke-virtual {v0}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v9

    .line 133
    :goto_4
    sub-int v2, v11, v9

    sub-int/2addr v2, v6

    if-ge v1, v2, :cond_3

    move v2, v8

    .line 134
    :goto_5
    sub-int v3, v10, v8

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_2

    .line 135
    sub-int v3, v1, v9

    sub-int v4, v2, v8

    invoke-virtual {p1, v3, v4}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    sub-int v4, v1, v9

    sub-int v5, v2, v8

    invoke-virtual {p1, v4, v5}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    sub-int v5, v1, v9

    sub-int v12, v2, v8

    invoke-virtual {p1, v5, v12}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 133
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 140
    :cond_3
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 141
    return-void

    :cond_4
    move v7, v1

    goto :goto_1

    :cond_5
    move v6, v1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0

    .prologue
    .line 66
    iput p1, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    .line 67
    return-void
.end method

.method public setSize(I)V
    .locals 0

    .prologue
    .line 74
    iput p1, p0, LCatalano/Imaging/Tools/ImagePadding;->b:I

    iput p1, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    .line 75
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, LCatalano/Imaging/Tools/ImagePadding;->a:I

    .line 51
    return-void
.end method
