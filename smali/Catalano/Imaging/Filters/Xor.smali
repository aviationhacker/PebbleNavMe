.class public LCatalano/Imaging/Filters/Xor;
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, LCatalano/Imaging/Filters/Xor;->a:LCatalano/Imaging/FastBitmap;

    .line 56
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 69
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 70
    mul-int v0, v3, v4

    .line 71
    iget-object v2, p0, LCatalano/Imaging/Filters/Xor;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    iget-object v5, p0, LCatalano/Imaging/Filters/Xor;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v5

    mul-int/2addr v2, v5

    .line 72
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, LCatalano/Imaging/Filters/Xor;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v5}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    if-ne v0, v2, :cond_4

    move v2, v1

    .line 75
    :goto_0
    if-ge v2, v4, :cond_4

    move v0, v1

    .line 76
    :goto_1
    if-ge v0, v3, :cond_3

    .line 77
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 78
    iget-object v6, p0, LCatalano/Imaging/Filters/Xor;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v6, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 79
    if-nez v5, :cond_0

    if-eqz v6, :cond_1

    :cond_0
    if-ne v5, v7, :cond_2

    if-ne v6, v7, :cond_2

    .line 80
    :cond_1
    invoke-virtual {p1, v2, v0, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 76
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p1, v2, v0, v7}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_2

    .line 75
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 89
    :cond_4
    return-void
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, LCatalano/Imaging/Filters/Xor;->a:LCatalano/Imaging/FastBitmap;

    .line 64
    return-void
.end method
