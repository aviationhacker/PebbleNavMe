.class public LCatalano/Imaging/Filters/HomogenityEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 49
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    add-int/lit8 v6, v0, -0x2

    .line 50
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v0

    add-int/lit8 v7, v0, -0x2

    .line 52
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 53
    add-int/lit8 v0, v8, 0x1

    .line 55
    new-instance v9, LCatalano/Imaging/FastBitmap;

    invoke-direct {v9, p1}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    move v5, v1

    .line 58
    :goto_0
    if-ge v5, v7, :cond_11

    move v3, v1

    move v4, v0

    .line 59
    :goto_1
    if-ge v3, v6, :cond_f

    .line 62
    invoke-virtual {v9, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v10

    .line 64
    sub-int v0, v4, v8

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v0

    sub-int v0, v10, v0

    .line 65
    if-gez v0, :cond_0

    neg-int v0, v0

    .line 66
    :cond_0
    if-le v0, v1, :cond_12

    .line 68
    :goto_2
    sub-int v2, v4, v8

    invoke-virtual {v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int v2, v10, v2

    .line 69
    if-gez v2, :cond_1

    neg-int v2, v2

    .line 70
    :cond_1
    if-le v2, v0, :cond_2

    move v0, v2

    .line 72
    :cond_2
    sub-int v2, v4, v8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int v2, v10, v2

    .line 73
    if-gez v2, :cond_3

    neg-int v2, v2

    .line 74
    :cond_3
    if-le v2, v0, :cond_4

    move v0, v2

    .line 76
    :cond_4
    add-int/lit8 v2, v4, -0x1

    invoke-virtual {v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int v2, v10, v2

    .line 77
    if-gez v2, :cond_5

    neg-int v2, v2

    .line 78
    :cond_5
    if-le v2, v0, :cond_6

    move v0, v2

    .line 80
    :cond_6
    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int v2, v10, v2

    .line 81
    if-gez v2, :cond_7

    neg-int v2, v2

    .line 82
    :cond_7
    if-le v2, v0, :cond_8

    move v0, v2

    .line 84
    :cond_8
    add-int v2, v4, v8

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int v2, v10, v2

    .line 85
    if-gez v2, :cond_9

    neg-int v2, v2

    .line 86
    :cond_9
    if-le v2, v0, :cond_a

    move v0, v2

    .line 88
    :cond_a
    add-int v2, v4, v8

    invoke-virtual {v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int v2, v10, v2

    .line 89
    if-gez v2, :cond_b

    neg-int v2, v2

    .line 90
    :cond_b
    if-le v2, v0, :cond_c

    move v0, v2

    .line 92
    :cond_c
    add-int v2, v4, v8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v2

    sub-int v2, v10, v2

    .line 93
    if-gez v2, :cond_d

    neg-int v2, v2

    .line 94
    :cond_d
    if-le v2, v0, :cond_e

    move v0, v2

    .line 96
    :cond_e
    invoke-virtual {p1, v4, v0}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 97
    add-int/lit8 v2, v4, 0x1

    .line 59
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto/16 :goto_1

    .line 99
    :cond_f
    add-int/lit8 v2, v4, 0x2

    .line 58
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move v0, v2

    goto/16 :goto_0

    .line 103
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Homogenity Edge Detector only works with grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_11
    return-void

    :cond_12
    move v0, v1

    goto/16 :goto_2
.end method
