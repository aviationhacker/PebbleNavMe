.class public LCatalano/Imaging/Filters/HueModifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, LCatalano/Imaging/Filters/HueModifier;->a:F

    .line 59
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 9

    .prologue
    const/16 v1, 0xff

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int v4, v0, v3

    move v3, v2

    .line 66
    :goto_0
    if-ge v3, v4, :cond_7

    .line 67
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v0

    .line 68
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v5

    .line 69
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    .line 71
    invoke-static {v0, v5, v6}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoHLS(III)[F

    move-result-object v0

    .line 72
    iget v5, p0, LCatalano/Imaging/Filters/HueModifier;->a:F

    aget v6, v0, v7

    aget v0, v0, v8

    invoke-static {v5, v6, v0}, LCatalano/Imaging/Tools/ColorConverter;->HSLtoRGB(FFF)[I

    move-result-object v5

    .line 74
    aget v0, v5, v2

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_1
    aput v0, v5, v2

    .line 75
    aget v0, v5, v2

    if-gez v0, :cond_1

    move v0, v2

    :goto_2
    aput v0, v5, v2

    .line 77
    aget v0, v5, v7

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_3
    aput v0, v5, v7

    .line 78
    aget v0, v5, v7

    if-gez v0, :cond_3

    move v0, v2

    :goto_4
    aput v0, v5, v7

    .line 80
    aget v0, v5, v8

    if-le v0, v1, :cond_4

    move v0, v1

    :goto_5
    aput v0, v5, v8

    .line 81
    aget v0, v5, v8

    if-gez v0, :cond_5

    move v0, v2

    :goto_6
    aput v0, v5, v8

    .line 83
    invoke-virtual {p1, v3, v5}, LCatalano/Imaging/FastBitmap;->setRGB(I[I)V

    .line 66
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 74
    :cond_0
    aget v0, v5, v2

    goto :goto_1

    .line 75
    :cond_1
    aget v0, v5, v2

    goto :goto_2

    .line 77
    :cond_2
    aget v0, v5, v7

    goto :goto_3

    .line 78
    :cond_3
    aget v0, v5, v7

    goto :goto_4

    .line 80
    :cond_4
    aget v0, v5, v8

    goto :goto_5

    .line 81
    :cond_5
    aget v0, v5, v8

    goto :goto_6

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hue modifier only works in RGB images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_7
    return-void
.end method

.method public getDegree()F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, LCatalano/Imaging/Filters/HueModifier;->a:F

    return v0
.end method

.method public setDegree(F)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, LCatalano/Imaging/Filters/HueModifier;->a:F

    .line 51
    return-void
.end method
