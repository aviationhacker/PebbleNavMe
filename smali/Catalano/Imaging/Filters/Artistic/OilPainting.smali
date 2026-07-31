.class public LCatalano/Imaging/Filters/Artistic/OilPainting;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    .line 62
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/Artistic/OilPainting;->setRadius(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 20

    .prologue
    .line 68
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 69
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 71
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    new-instance v10, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 75
    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_7

    .line 76
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    if-ge v6, v8, :cond_2

    .line 78
    const/16 v1, 0x100

    new-array v11, v1, [I

    .line 79
    const/16 v1, 0x100

    new-array v12, v1, [I

    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v2, 0x0

    .line 83
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    sub-int v1, v7, v1

    :goto_2
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    add-int/2addr v4, v7

    if-ge v1, v4, :cond_1

    .line 84
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    sub-int v4, v6, v4

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_0

    .line 86
    if-lez v1, :cond_9

    if-ge v1, v9, :cond_9

    if-lez v4, :cond_9

    if-ge v4, v8, :cond_9

    .line 87
    invoke-virtual {v10, v1, v4}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v5

    .line 88
    aget v13, v11, v5

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v5

    .line 89
    aget v13, v12, v5

    add-int/2addr v13, v5

    aput v13, v12, v5

    .line 91
    aget v13, v11, v5

    if-le v13, v3, :cond_9

    .line 92
    aget v3, v11, v5

    move/from16 v19, v5

    move v5, v3

    move/from16 v3, v19

    .line 84
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    move v3, v5

    goto :goto_3

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 99
    :cond_1
    aget v1, v12, v2

    div-int/2addr v1, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 76
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    .line 75
    :cond_2
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 107
    :cond_3
    new-instance v10, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 109
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v9, :cond_7

    .line 110
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v8, :cond_6

    .line 112
    const/16 v1, 0x100

    new-array v11, v1, [I

    .line 114
    const/16 v1, 0x100

    new-array v12, v1, [I

    .line 115
    const/16 v1, 0x100

    new-array v13, v1, [I

    .line 116
    const/16 v1, 0x100

    new-array v14, v1, [I

    .line 118
    const/4 v5, 0x0

    .line 119
    const/4 v4, 0x0

    .line 121
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    sub-int v1, v2, v1

    move v6, v4

    move v7, v5

    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    add-int/2addr v4, v2

    if-ge v1, v4, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    sub-int v4, v3, v4

    move v5, v7

    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    :goto_8
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    add-int/2addr v7, v3

    if-ge v6, v7, :cond_4

    .line 124
    if-lez v1, :cond_8

    if-ge v1, v9, :cond_8

    if-lez v6, :cond_8

    if-ge v6, v8, :cond_8

    .line 125
    invoke-virtual {v10, v1, v6}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    .line 126
    invoke-virtual {v10, v1, v6}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v16

    .line 127
    invoke-virtual {v10, v1, v6}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v17

    .line 129
    invoke-static/range {v15 .. v17}, LCatalano/Imaging/Tools/ColorConverter;->RGBtoGrayscale(III)F

    move-result v7

    float-to-int v7, v7

    .line 131
    aget v18, v11, v7

    add-int/lit8 v18, v18, 0x1

    aput v18, v11, v7

    .line 133
    aget v18, v12, v7

    add-int v15, v15, v18

    aput v15, v12, v7

    .line 134
    aget v15, v13, v7

    add-int v15, v15, v16

    aput v15, v13, v7

    .line 135
    aget v15, v14, v7

    add-int v15, v15, v17

    aput v15, v14, v7

    .line 137
    aget v15, v11, v7

    if-le v15, v5, :cond_8

    .line 138
    aget v5, v11, v7

    move/from16 v19, v7

    move v7, v5

    move/from16 v5, v19

    .line 122
    :goto_9
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v5

    move v5, v7

    goto :goto_8

    .line 121
    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v6, v4

    move v7, v5

    goto :goto_7

    .line 145
    :cond_5
    aget v1, v12, v6

    div-int v4, v1, v7

    aget v1, v13, v6

    div-int v5, v1, v7

    aget v1, v14, v6

    div-int v6, v1, v7

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    .line 109
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 152
    :cond_7
    return-void

    :cond_8
    move v7, v5

    move v5, v4

    goto :goto_9

    :cond_9
    move v5, v3

    move v3, v2

    goto/16 :goto_4
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Artistic/OilPainting;->a:I

    .line 50
    return-void
.end method
