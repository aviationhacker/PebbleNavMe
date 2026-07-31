.class public LCatalano/Imaging/Filters/DifferenceEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    new-instance v6, LCatalano/Imaging/FastBitmap;

    invoke-direct {v6, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 62
    invoke-virtual {v6}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v7, v0, -0x2

    .line 63
    invoke-virtual {v6}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, -0x2

    .line 65
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 66
    add-int/lit8 v0, v9, 0x1

    move v5, v1

    .line 69
    :goto_0
    if-ge v5, v8, :cond_9

    move v3, v1

    move v4, v0

    .line 70
    :goto_1
    if-ge v3, v7, :cond_7

    .line 74
    sub-int v0, v4, v9

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    add-int v2, v4, v9

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 75
    if-gez v0, :cond_0

    neg-int v0, v0

    .line 76
    :cond_0
    if-le v0, v1, :cond_a

    .line 78
    :goto_2
    sub-int v2, v4, v9

    invoke-virtual {v6, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    add-int v10, v4, v9

    invoke-virtual {v6, v10}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v10

    sub-int/2addr v2, v10

    .line 79
    if-gez v2, :cond_1

    neg-int v2, v2

    .line 80
    :cond_1
    if-le v2, v0, :cond_2

    move v0, v2

    .line 82
    :cond_2
    sub-int v2, v4, v9

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    add-int v10, v4, v9

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v10

    sub-int/2addr v2, v10

    .line 83
    if-gez v2, :cond_3

    neg-int v2, v2

    .line 84
    :cond_3
    if-le v2, v0, :cond_4

    move v0, v2

    .line 86
    :cond_4
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v6, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    add-int/lit8 v10, v4, -0x1

    invoke-virtual {v6, v10}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v10

    sub-int/2addr v2, v10

    .line 87
    if-gez v2, :cond_5

    neg-int v2, v2

    .line 88
    :cond_5
    if-le v2, v0, :cond_6

    move v0, v2

    .line 90
    :cond_6
    invoke-virtual {p1, v4, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 91
    add-int/lit8 v2, v4, 0x1

    .line 70
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_1

    .line 93
    :cond_7
    add-int/lit8 v2, v4, 0x2

    .line 69
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    goto :goto_0

    .line 97
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DifferenceEdgeDetector only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_9
    return-void

    :cond_a
    move v0, v1

    goto :goto_2
.end method
