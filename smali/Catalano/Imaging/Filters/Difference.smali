.class public LCatalano/Imaging/Filters/Difference;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    .line 47
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 60
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 61
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    .line 62
    mul-int v0, v7, v8

    .line 63
    iget-object v1, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 64
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    if-ne v0, v1, :cond_7

    move v2, v6

    .line 68
    :goto_0
    if-ge v2, v8, :cond_7

    move v1, v6

    .line 69
    :goto_1
    if-ge v1, v7, :cond_1

    .line 70
    invoke-virtual {p1, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v2, v1}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v3

    sub-int/2addr v0, v3

    .line 71
    if-gez v0, :cond_0

    neg-int v0, v0

    .line 72
    :cond_0
    invoke-virtual {p1, v2, v1, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 78
    if-ne v0, v1, :cond_7

    move v1, v6

    .line 80
    :goto_2
    if-ge v1, v8, :cond_7

    move v2, v6

    .line 81
    :goto_3
    if-ge v2, v7, :cond_6

    .line 82
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v0

    iget-object v3, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v1, v2}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v3

    sub-int v3, v0, v3

    .line 83
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v0

    iget-object v4, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v1, v2}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v4

    sub-int v4, v0, v4

    .line 84
    invoke-virtual {p1, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    iget-object v5, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5, v1, v2}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v5

    sub-int v5, v0, v5

    .line 86
    if-gez v3, :cond_3

    neg-int v3, v3

    .line 87
    :cond_3
    if-gez v4, :cond_4

    neg-int v4, v4

    .line 88
    :cond_4
    if-gez v5, :cond_5

    neg-int v5, v5

    :cond_5
    move-object v0, p1

    .line 90
    invoke-virtual/range {v0 .. v5}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 80
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    :cond_7
    return-void
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, LCatalano/Imaging/Filters/Difference;->a:LCatalano/Imaging/FastBitmap;

    .line 55
    return-void
.end method
