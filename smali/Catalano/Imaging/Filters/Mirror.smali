.class public LCatalano/Imaging/Filters/Mirror;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Mirror;->a:Z

    .line 41
    iput-boolean p2, p0, LCatalano/Imaging/Filters/Mirror;->b:Z

    .line 42
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    .line 61
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v10

    .line 62
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v11

    .line 63
    div-int/lit8 v12, v10, 0x2

    .line 64
    div-int/lit8 v13, v11, 0x2

    .line 66
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Mirror;->a:Z

    if-eqz v0, :cond_1

    .line 68
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v11, :cond_1

    .line 69
    add-int/lit8 v0, v10, -0x1

    .line 70
    const/4 v2, 0x0

    move v9, v0

    :goto_1
    if-ge v2, v12, :cond_0

    .line 71
    invoke-virtual {p1, v1, v9}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    .line 72
    invoke-virtual {p1, v1, v9}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 73
    invoke-virtual {p1, v1, v9}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 75
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 76
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    .line 77
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    move-object v0, p1

    .line 79
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    move-object v3, p1

    move v4, v1

    move v5, v9

    .line 80
    invoke-virtual/range {v3 .. v8}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 81
    add-int/lit8 v0, v9, -0x1

    .line 70
    add-int/lit8 v2, v2, 0x1

    move v9, v0

    goto :goto_1

    .line 68
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Mirror;->b:Z

    if-eqz v0, :cond_7

    .line 86
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v13, :cond_7

    .line 87
    sub-int v0, v11, v1

    add-int/lit8 v9, v0, -0x1

    .line 88
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v10, :cond_2

    .line 89
    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    .line 90
    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    .line 91
    invoke-virtual {p1, v9, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    .line 93
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v6

    .line 94
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v7

    .line 95
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v8

    move-object v0, p1

    .line 97
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    move-object v3, p1

    move v4, v9

    move v5, v2

    .line 98
    invoke-virtual/range {v3 .. v8}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 88
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 86
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 104
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Mirror;->a:Z

    if-eqz v0, :cond_5

    .line 105
    const/4 v0, 0x0

    move v2, v0

    :goto_4
    if-ge v2, v11, :cond_5

    .line 106
    add-int/lit8 v1, v10, -0x1

    .line 107
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v12, :cond_4

    .line 109
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 110
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 112
    invoke-virtual {p1, v2, v0, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 113
    invoke-virtual {p1, v2, v1, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 115
    add-int/lit8 v1, v1, -0x1

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 105
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 119
    :cond_5
    iget-boolean v0, p0, LCatalano/Imaging/Filters/Mirror;->b:Z

    if-eqz v0, :cond_7

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-ge v1, v13, :cond_7

    .line 121
    sub-int v0, v11, v1

    add-int/lit8 v2, v0, -0x1

    .line 122
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v10, :cond_6

    .line 124
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    .line 125
    invoke-virtual {p1, v1, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    .line 127
    invoke-virtual {p1, v1, v0, v3}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 128
    invoke-virtual {p1, v2, v0, v4}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 120
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 133
    :cond_7
    return-void
.end method

.method public setMirrorX(Z)V
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Mirror;->a:Z

    .line 49
    return-void
.end method

.method public setMirrorY(Z)V
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, LCatalano/Imaging/Filters/Mirror;->b:Z

    .line 56
    return-void
.end method
