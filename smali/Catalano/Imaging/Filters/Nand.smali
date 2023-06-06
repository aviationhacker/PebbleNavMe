.class public LCatalano/Imaging/Filters/Nand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field a:LCatalano/Imaging/FastBitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, LCatalano/Imaging/Filters/Nand;->a:LCatalano/Imaging/FastBitmap;

    .line 49
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 58
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 59
    mul-int v0, v3, v4

    .line 60
    iget-object v2, p0, LCatalano/Imaging/Filters/Nand;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    iget-object v5, p0, LCatalano/Imaging/Filters/Nand;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    mul-int/2addr v2, v5

    .line 61
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, LCatalano/Imaging/Filters/Nand;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    if-ne v0, v2, :cond_2

    move v2, v1

    .line 64
    :goto_0
    if-ge v2, v4, :cond_2

    move v0, v1

    .line 65
    :goto_1
    if-ge v0, v3, :cond_1

    .line 66
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 67
    iget-object v6, p0, LCatalano/Imaging/Filters/Nand;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 68
    if-ne v5, v7, :cond_0

    if-ne v6, v7, :cond_0

    .line 69
    invoke-virtual {p1, v2, v0, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 65
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p1, v2, v0, v7}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 78
    :cond_2
    return-void
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, LCatalano/Imaging/Filters/Nand;->a:LCatalano/Imaging/FastBitmap;

    .line 53
    return-void
.end method
