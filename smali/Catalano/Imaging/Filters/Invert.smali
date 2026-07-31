.class public LCatalano/Imaging/Filters/Invert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 43
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    :goto_0
    if-ge v0, v1, :cond_1

    .line 46
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 47
    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    :goto_1
    if-ge v0, v1, :cond_1

    .line 53
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    rsub-int v2, v2, 0xff

    .line 54
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    rsub-int v3, v3, 0xff

    .line 55
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    rsub-int v4, v4, 0xff

    .line 56
    invoke-virtual {p1, v0, v2, v3, v4}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1
    return-void
.end method
