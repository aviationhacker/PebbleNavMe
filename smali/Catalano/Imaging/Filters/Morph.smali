.class public LCatalano/Imaging/Filters/Morph;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/Morph;->b:D

    .line 43
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, LCatalano/Imaging/Filters/Morph;->b:D

    .line 50
    iput-object p1, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    .line 51
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 14

    .prologue
    const/4 v0, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 82
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 83
    iget-object v2, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 84
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    if-ne v1, v2, :cond_1

    .line 88
    iget-wide v2, p0, LCatalano/Imaging/Filters/Morph;->b:D

    sub-double v2, v4, v2

    .line 89
    :goto_0
    if-ge v0, v1, :cond_1

    .line 90
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    .line 91
    iget-object v5, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v5

    .line 92
    iget-wide v6, p0, LCatalano/Imaging/Filters/Morph;->b:D

    int-to-double v8, v4

    mul-double/2addr v6, v8

    int-to-double v4, v5

    mul-double/2addr v4, v2

    add-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {p1, v0, v4}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    if-ne v1, v2, :cond_1

    .line 100
    iget-wide v2, p0, LCatalano/Imaging/Filters/Morph;->b:D

    sub-double v2, v4, v2

    .line 101
    :goto_1
    if-ge v0, v1, :cond_1

    .line 102
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    .line 103
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    .line 104
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    .line 106
    iget-object v7, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v7, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v7

    .line 107
    iget-object v8, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v8, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v8

    .line 108
    iget-object v9, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v9, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v9

    .line 110
    iget-wide v10, p0, LCatalano/Imaging/Filters/Morph;->b:D

    int-to-double v12, v4

    mul-double/2addr v10, v12

    int-to-double v12, v7

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    double-to-int v4, v10

    .line 111
    iget-wide v10, p0, LCatalano/Imaging/Filters/Morph;->b:D

    int-to-double v12, v5

    mul-double/2addr v10, v12

    int-to-double v12, v8

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    double-to-int v5, v10

    .line 112
    iget-wide v10, p0, LCatalano/Imaging/Filters/Morph;->b:D

    int-to-double v6, v6

    mul-double/2addr v6, v10

    int-to-double v8, v9

    mul-double/2addr v8, v2

    add-double/2addr v6, v8

    double-to-int v6, v6

    .line 114
    invoke-virtual {p1, v0, v4, v5, v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_1
    return-void
.end method

.method public getSourcePercent()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, LCatalano/Imaging/Filters/Morph;->b:D

    return-wide v0
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, LCatalano/Imaging/Filters/Morph;->a:LCatalano/Imaging/FastBitmap;

    .line 59
    return-void
.end method

.method public setSourcePercent(D)V
    .locals 5

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 74
    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    .line 75
    :goto_0
    cmpl-double v4, v2, v0

    if-lez v4, :cond_1

    .line 76
    :goto_1
    iput-wide v0, p0, LCatalano/Imaging/Filters/Morph;->b:D

    .line 77
    return-void

    :cond_0
    move-wide v2, p1

    .line 74
    goto :goto_0

    :cond_1
    move-wide v0, v2

    .line 75
    goto :goto_1
.end method
