.class public LCatalano/Imaging/Filters/Minimum;
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
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/Minimum;->a:I

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, LCatalano/Imaging/Filters/Minimum;->a:I

    .line 47
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 48
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/Minimum;->a:I

    .line 49
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 121
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 17

    .prologue
    .line 70
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v8

    .line 71
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v9

    .line 73
    new-instance v10, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 75
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Minimum;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/Minimum;->a(I)I

    move-result v11

    .line 77
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v9, :cond_4

    .line 80
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v8, :cond_3

    .line 81
    const/16 v2, 0xff

    .line 82
    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v11, :cond_2

    .line 83
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Minimum;->a:I

    sub-int v1, v3, v1

    add-int v6, v5, v1

    .line 84
    const/4 v1, 0x0

    move v15, v1

    move v1, v2

    move v2, v15

    :goto_3
    if-ge v2, v11, :cond_1

    .line 85
    move-object/from16 v0, p0

    iget v7, v0, LCatalano/Imaging/Filters/Minimum;->a:I

    sub-int v7, v2, v7

    add-int/2addr v7, v4

    .line 86
    if-ltz v6, :cond_0

    if-ge v6, v9, :cond_0

    if-ltz v7, :cond_0

    if-ge v7, v8, :cond_0

    .line 87
    invoke-virtual {v10, v6, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 84
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 82
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_2

    .line 91
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v4, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 80
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 79
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 95
    :cond_4
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isRGB()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 100
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v9, :cond_9

    .line 101
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v8, :cond_8

    .line 102
    const/16 v6, 0xff

    .line 103
    const/4 v1, 0x0

    move v7, v1

    move v5, v6

    move v4, v6

    :goto_6
    if-ge v7, v11, :cond_7

    .line 104
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/Minimum;->a:I

    sub-int v1, v7, v1

    add-int v12, v2, v1

    .line 105
    const/4 v1, 0x0

    move v15, v1

    move v1, v6

    move v6, v15

    move/from16 v16, v5

    move v5, v4

    move/from16 v4, v16

    :goto_7
    if-ge v6, v11, :cond_6

    .line 106
    move-object/from16 v0, p0

    iget v13, v0, LCatalano/Imaging/Filters/Minimum;->a:I

    sub-int v13, v6, v13

    add-int/2addr v13, v3

    .line 107
    if-ltz v12, :cond_5

    if-ge v12, v9, :cond_5

    if-ltz v13, :cond_5

    if-ge v13, v8, :cond_5

    .line 108
    invoke-virtual {v10, v12, v13}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v14

    invoke-static {v5, v14}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 109
    invoke-virtual {v10, v12, v13}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v14

    invoke-static {v4, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 110
    invoke-virtual {v10, v12, v13}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v13

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 105
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 103
    :cond_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move v6, v1

    move v15, v4

    move v4, v5

    move v5, v15

    goto :goto_6

    :cond_7
    move-object/from16 v1, p1

    .line 114
    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 100
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 118
    :cond_9
    return-void
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, LCatalano/Imaging/Filters/Minimum;->a:I

    return v0
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, LCatalano/Imaging/Filters/Minimum;->a:I

    .line 65
    return-void
.end method
