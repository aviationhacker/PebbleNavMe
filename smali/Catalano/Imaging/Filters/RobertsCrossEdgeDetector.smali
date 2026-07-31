.class public LCatalano/Imaging/Filters/RobertsCrossEdgeDetector;
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
    const/4 v1, 0x1

    .line 43
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v3

    .line 46
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    .line 48
    new-instance v5, LCatalano/Imaging/FastBitmap;

    sget-object v0, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v5, v3, v4, v0}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    move v2, v1

    .line 50
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_1

    move v0, v1

    .line 51
    :goto_1
    add-int/lit8 v6, v3, -0x1

    if-ge v0, v6, :cond_0

    .line 53
    add-int/lit8 v6, v2, -0x1

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p1, v6, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v6

    .line 54
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {p1, v7, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    .line 55
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p1, v2, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    .line 56
    invoke-virtual {p1, v2, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    .line 58
    sub-int/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    .line 59
    invoke-virtual {v5, v2, v0, v6}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p1, v5}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 63
    invoke-virtual {v5}, LCatalano/Imaging/FastBitmap;->recycle()V

    .line 68
    return-void

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Roberts Cross Edge Detector only works with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
