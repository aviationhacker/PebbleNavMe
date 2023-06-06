.class public LCatalano/Imaging/Filters/RGChromaticity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const-wide v8, 0x406fe00000000000L    # 255.0

    .line 42
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v2

    move v0, v1

    .line 45
    :goto_0
    if-ge v0, v2, :cond_1

    .line 46
    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v3

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    invoke-virtual {p1, v0}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v5

    invoke-static {v3, v4, v5}, LCatalano/Imaging/Tools/ColorConverter;->RGChromaticity(III)[D

    move-result-object v3

    .line 47
    aget-wide v4, v3, v1

    mul-double/2addr v4, v8

    double-to-int v4, v4

    const/4 v5, 0x1

    aget-wide v6, v3, v5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    const/4 v6, 0x2

    aget-wide v6, v3, v6

    mul-double/2addr v6, v8

    double-to-int v3, v6

    invoke-virtual {p1, v0, v4, v5, v3}, LCatalano/Imaging/FastBitmap;->setRGB(IIII)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RGChromaticity only works with RGB images"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    return-void
.end method
