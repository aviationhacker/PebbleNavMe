.class public LCatalano/Imaging/Filters/Merge;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    .line 50
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 64
    iget-object v2, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    .line 65
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    if-ne v1, v2, :cond_5

    .line 68
    :goto_0
    if-ge v0, v1, :cond_5

    .line 69
    iget-object v2, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    .line 70
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v3

    if-le v2, v3, :cond_0

    .line 71
    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 68
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 77
    if-ne v1, v2, :cond_5

    .line 79
    :goto_1
    if-ge v0, v1, :cond_5

    .line 80
    iget-object v2, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v2, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    .line 81
    iget-object v3, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v3, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    .line 82
    iget-object v4, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    invoke-virtual {v4, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    .line 84
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v5

    if-le v2, v5, :cond_2

    .line 85
    invoke-virtual {p1, v0, v2}, LCatalano/Imaging/FastBitmap;->setRed(II)V

    .line 87
    :cond_2
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v2

    if-le v3, v2, :cond_3

    .line 88
    invoke-virtual {p1, v0, v3}, LCatalano/Imaging/FastBitmap;->setGreen(II)V

    .line 90
    :cond_3
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v2

    if-le v4, v2, :cond_4

    .line 91
    invoke-virtual {p1, v0, v4}, LCatalano/Imaging/FastBitmap;->setBlue(II)V

    .line 79
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 96
    :cond_5
    return-void
.end method

.method public setOverlayImage(LCatalano/Imaging/FastBitmap;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, LCatalano/Imaging/Filters/Merge;->a:LCatalano/Imaging/FastBitmap;

    .line 58
    return-void
.end method
