.class public LCatalano/Imaging/Filters/RotateChannels;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v1

    .line 49
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 50
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v2

    .line 51
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v3

    .line 52
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    .line 56
    invoke-virtual {p1, v0, v3, v4, v2}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RotateChannels only works in RGB imagens."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_1
    return-void
.end method
