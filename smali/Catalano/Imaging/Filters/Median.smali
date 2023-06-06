.class public LCatalano/Imaging/Filters/Median;
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
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/Median;->a:I

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, LCatalano/Imaging/Filters/Median;->a:I

    .line 66
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Imaging/Filters/Median;->a:I

    .line 67
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 137
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 17

    .prologue
    .line 72
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v7

    .line 73
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v8

    .line 75
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Median;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Median;->a(I)I

    move-result v9

    .line 76
    mul-int v1, v9, v9

    .line 79
    new-instance v10, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 81
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    new-array v6, v1, [I

    .line 84
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v8, :cond_9

    .line 85
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_3

    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v9, :cond_2

    .line 88
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Median;->a:I

    sub-int v1, v3, v1

    add-int v11, v5, v1

    .line 89
    const/4 v1, 0x0

    move/from16 v16, v1

    move v1, v2

    move/from16 v2, v16

    :goto_3
    if-ge v2, v9, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget v12, v0, LCatalano/Imaging/Filters/Median;->a:I

    sub-int v12, v2, v12

    add-int/2addr v12, v4

    .line 91
    if-ltz v11, :cond_0

    if-ge v11, v8, :cond_0

    if-ltz v12, :cond_0

    if-ge v12, v7, :cond_0

    .line 92
    invoke-virtual {v10, v11, v12}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v12

    aput v12, v6, v1

    .line 93
    add-int/lit8 v1, v1, 0x1

    .line 89
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 87
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_2

    .line 97
    :cond_2
    const/4 v1, 0x0

    invoke-static {v6, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 99
    div-int/lit8 v1, v2, 0x2

    .line 100
    aget v1, v6, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 85
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 84
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 105
    new-array v11, v1, [I

    .line 106
    new-array v12, v1, [I

    .line 107
    new-array v13, v1, [I

    .line 110
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_9

    .line 111
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v7, :cond_8

    .line 112
    const/4 v4, 0x0

    .line 113
    const/4 v1, 0x0

    move v5, v1

    :goto_6
    if-ge v5, v9, :cond_7

    .line 114
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Median;->a:I

    sub-int v1, v5, v1

    add-int v6, v2, v1

    .line 115
    const/4 v1, 0x0

    move/from16 v16, v1

    move v1, v4

    move/from16 v4, v16

    :goto_7
    if-ge v4, v9, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget v14, v0, LCatalano/Imaging/Filters/Median;->a:I

    sub-int v14, v4, v14

    add-int/2addr v14, v3

    .line 117
    if-ltz v6, :cond_5

    if-ge v6, v8, :cond_5

    if-ltz v14, :cond_5

    if-ge v14, v7, :cond_5

    .line 118
    invoke-virtual {v10, v6, v14}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v15

    aput v15, v11, v1

    .line 119
    invoke-virtual {v10, v6, v14}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v15

    aput v15, v12, v1

    .line 120
    invoke-virtual {v10, v6, v14}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v14

    aput v14, v13, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 115
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 113
    :cond_6
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v1

    goto :goto_6

    .line 125
    :cond_7
    const/4 v1, 0x0

    invoke-static {v11, v1, v4}, Ljava/util/Arrays;->sort([III)V

    .line 126
    const/4 v1, 0x0

    invoke-static {v12, v1, v4}, Ljava/util/Arrays;->sort([III)V

    .line 127
    const/4 v1, 0x0

    invoke-static {v13, v1, v4}, Ljava/util/Arrays;->sort([III)V

    .line 129
    div-int/lit8 v1, v4, 0x2

    .line 130
    aget v4, v11, v1

    aget v5, v12, v1

    aget v6, v13, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 110
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 134
    :cond_9
    return-void
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, LCatalano/Imaging/Filters/Median;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, LCatalano/Imaging/Filters/Median;->a:I

    .line 54
    return-void
.end method
