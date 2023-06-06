.class public LCatalano/Imaging/Filters/Shrink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 44
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 46
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    move v2, v8

    move v1, v8

    move v0, v8

    .line 56
    :goto_0
    if-ge v2, v7, :cond_1

    move v3, v8

    .line 57
    :goto_1
    if-ge v3, v9, :cond_0

    .line 58
    mul-int v4, v2, v9

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    if-eqz v4, :cond_9

    mul-int v4, v2, v9

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    if-eqz v4, :cond_9

    mul-int v4, v2, v9

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    if-eqz v4, :cond_9

    move v1, v5

    move v0, v2

    .line 64
    :cond_0
    if-eqz v1, :cond_a

    .line 70
    :cond_1
    add-int/lit8 v3, v7, -0x1

    move v2, v8

    move v1, v8

    :goto_2
    if-ltz v3, :cond_3

    move v4, v8

    .line 71
    :goto_3
    if-ge v4, v9, :cond_2

    .line 72
    mul-int v6, v3, v9

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v6

    if-eqz v6, :cond_b

    mul-int v6, v3, v9

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    if-eqz v6, :cond_b

    mul-int v6, v3, v9

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    if-eqz v6, :cond_b

    move v2, v5

    move v1, v3

    .line 78
    :cond_2
    if-eqz v2, :cond_c

    :cond_3
    move v4, v8

    move v3, v8

    move v2, v8

    .line 84
    :goto_4
    if-ge v4, v7, :cond_5

    move v6, v8

    .line 85
    :goto_5
    if-ge v6, v9, :cond_4

    .line 86
    mul-int v10, v6, v9

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v10

    if-eqz v10, :cond_d

    mul-int v10, v6, v9

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v10

    if-eqz v10, :cond_d

    mul-int v10, v6, v9

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v10

    if-eqz v10, :cond_d

    move v3, v5

    move v2, v4

    .line 92
    :cond_4
    if-eqz v3, :cond_e

    .line 98
    :cond_5
    add-int/lit8 v6, v9, -0x1

    move v4, v8

    move v3, v8

    :goto_6
    if-ltz v6, :cond_7

    move v7, v8

    .line 99
    :goto_7
    if-ge v7, v9, :cond_6

    .line 100
    mul-int v10, v7, v9

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v10

    if-eqz v10, :cond_f

    mul-int v10, v7, v9

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v10

    if-eqz v10, :cond_f

    mul-int v10, v7, v9

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v10

    if-eqz v10, :cond_f

    move v4, v5

    move v3, v6

    .line 106
    :cond_6
    if-eqz v4, :cond_10

    .line 109
    :cond_7
    new-instance v4, LCatalano/Imaging/Filters/Crop;

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v0, v2, v3, v1}, LCatalano/Imaging/Filters/Crop;-><init>(IIII)V

    .line 110
    invoke-virtual {v4, p1}, LCatalano/Imaging/Filters/Crop;->ApplyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 181
    :cond_8
    :goto_8
    return-void

    .line 57
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 56
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 71
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 70
    :cond_c
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    .line 85
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 84
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 99
    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 98
    :cond_10
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    .line 112
    :cond_11
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v9

    .line 115
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v7

    move v2, v8

    move v1, v8

    move v0, v8

    .line 125
    :goto_9
    if-ge v2, v7, :cond_13

    move v3, v8

    .line 126
    :goto_a
    if-ge v3, v9, :cond_12

    .line 127
    mul-int v4, v2, v9

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v4

    if-eqz v4, :cond_1a

    mul-int v4, v2, v9

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v4

    if-eqz v4, :cond_1a

    mul-int v4, v2, v9

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v4

    if-eqz v4, :cond_1a

    move v1, v5

    move v0, v2

    .line 133
    :cond_12
    if-eqz v1, :cond_1b

    .line 139
    :cond_13
    add-int/lit8 v3, v7, -0x1

    move v2, v8

    move v1, v8

    :goto_b
    if-ltz v3, :cond_15

    move v4, v8

    .line 140
    :goto_c
    if-ge v4, v9, :cond_14

    .line 141
    mul-int v6, v3, v9

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v6

    if-eqz v6, :cond_1c

    mul-int v6, v3, v9

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v6

    if-eqz v6, :cond_1c

    mul-int v6, v3, v9

    add-int/2addr v6, v4

    invoke-virtual {p1, v6}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v6

    if-eqz v6, :cond_1c

    move v2, v5

    move v1, v3

    .line 147
    :cond_14
    if-eqz v2, :cond_1d

    :cond_15
    move v4, v8

    move v3, v8

    move v2, v8

    .line 153
    :goto_d
    if-ge v4, v7, :cond_17

    move v6, v8

    .line 154
    :goto_e
    if-ge v6, v9, :cond_16

    .line 155
    mul-int v10, v6, v9

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v10

    if-eqz v10, :cond_1e

    mul-int v10, v6, v9

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v10

    if-eqz v10, :cond_1e

    mul-int v10, v6, v9

    add-int/2addr v10, v4

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v10

    if-eqz v10, :cond_1e

    move v3, v5

    move v2, v4

    .line 161
    :cond_16
    if-eqz v3, :cond_1f

    .line 167
    :cond_17
    add-int/lit8 v6, v9, -0x1

    move v4, v8

    move v3, v8

    :goto_f
    if-ltz v6, :cond_19

    move v7, v8

    .line 168
    :goto_10
    if-ge v7, v9, :cond_18

    .line 169
    mul-int v10, v7, v9

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getRed(I)I

    move-result v10

    if-eqz v10, :cond_20

    mul-int v10, v7, v9

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getGreen(I)I

    move-result v10

    if-eqz v10, :cond_20

    mul-int v10, v7, v9

    add-int/2addr v10, v6

    invoke-virtual {p1, v10}, LCatalano/Imaging/FastBitmap;->getBlue(I)I

    move-result v10

    if-eqz v10, :cond_20

    move v4, v5

    move v3, v6

    .line 175
    :cond_18
    if-eqz v4, :cond_21

    .line 178
    :cond_19
    new-instance v4, LCatalano/Imaging/Filters/Crop;

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v4, v0, v2, v3, v1}, LCatalano/Imaging/Filters/Crop;-><init>(IIII)V

    .line 179
    invoke-virtual {v4, p1}, LCatalano/Imaging/Filters/Crop;->ApplyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto/16 :goto_8

    .line 126
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_a

    .line 125
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 140
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_c

    .line 139
    :cond_1d
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_b

    .line 154
    :cond_1e
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 153
    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 168
    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 167
    :cond_21
    add-int/lit8 v6, v6, -0x1

    goto :goto_f
.end method
