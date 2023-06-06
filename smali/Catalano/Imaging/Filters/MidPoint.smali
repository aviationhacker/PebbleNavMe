.class public LCatalano/Imaging/Filters/MidPoint;
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Imaging/Filters/MidPoint;->a:I

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, LCatalano/Imaging/Filters/MidPoint;->a:I

    .line 46
    if-ge p1, v0, :cond_0

    move p1, v0

    .line 47
    :cond_0
    iput p1, p0, LCatalano/Imaging/Filters/MidPoint;->a:I

    .line 48
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 117
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 20

    .prologue
    .line 53
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    .line 54
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v12

    .line 56
    new-instance v13, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 58
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/MidPoint;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, LCatalano/Imaging/Filters/MidPoint;->a(I)I

    move-result v14

    .line 60
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v12, :cond_9

    .line 64
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v11, :cond_3

    .line 65
    const/4 v3, 0x0

    .line 66
    const/16 v2, 0xff

    .line 67
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    if-ge v4, v14, :cond_2

    .line 68
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/MidPoint;->a:I

    sub-int v1, v4, v1

    add-int v7, v6, v1

    .line 69
    const/4 v1, 0x0

    move/from16 v18, v1

    move v1, v2

    move v2, v3

    move/from16 v3, v18

    :goto_3
    if-ge v3, v14, :cond_1

    .line 70
    move-object/from16 v0, p0

    iget v8, v0, LCatalano/Imaging/Filters/MidPoint;->a:I

    sub-int v8, v3, v8

    add-int/2addr v8, v5

    .line 71
    if-ltz v7, :cond_0

    if-ge v7, v12, :cond_0

    if-ltz v8, :cond_0

    if-ge v8, v11, :cond_0

    .line 72
    invoke-virtual {v13, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 73
    invoke-virtual {v13, v7, v8}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 69
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 67
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_2

    .line 77
    :cond_2
    add-int v1, v3, v2

    div-int/lit8 v1, v1, 0x2

    .line 78
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5, v1}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 64
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 63
    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 88
    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v12, :cond_9

    .line 89
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v11, :cond_8

    .line 90
    const/4 v7, 0x0

    .line 91
    const/16 v6, 0xff

    .line 92
    const/4 v1, 0x0

    move v10, v1

    move v5, v6

    move v8, v7

    move v4, v6

    move v9, v7

    :goto_6
    if-ge v10, v14, :cond_7

    .line 93
    move-object/from16 v0, p0

    iget v1, v0, LCatalano/Imaging/Filters/MidPoint;->a:I

    sub-int v1, v10, v1

    add-int v15, v2, v1

    .line 94
    const/4 v1, 0x0

    move/from16 v18, v1

    move v1, v6

    move v6, v8

    move v8, v9

    move/from16 v9, v18

    move/from16 v19, v4

    move v4, v7

    move/from16 v7, v19

    :goto_7
    if-ge v9, v14, :cond_6

    .line 95
    move-object/from16 v0, p0

    iget v0, v0, LCatalano/Imaging/Filters/MidPoint;->a:I

    move/from16 v16, v0

    sub-int v16, v9, v16

    add-int v16, v16, v3

    .line 96
    if-ltz v15, :cond_5

    if-ge v15, v12, :cond_5

    if-ltz v16, :cond_5

    move/from16 v0, v16

    if-ge v0, v11, :cond_5

    .line 97
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 98
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 99
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 101
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 102
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v17

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 103
    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 94
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 92
    :cond_6
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v8

    move v8, v6

    move v6, v1

    move/from16 v18, v7

    move v7, v4

    move/from16 v4, v18

    goto/16 :goto_6

    .line 107
    :cond_7
    add-int v1, v9, v4

    div-int/lit8 v4, v1, 0x2

    .line 108
    add-int v1, v8, v5

    div-int/lit8 v5, v1, 0x2

    .line 109
    add-int v1, v7, v6

    div-int/lit8 v6, v1, 0x2

    move-object/from16 v1, p1

    .line 110
    invoke-virtual/range {v1 .. v6}, LCatalano/Imaging/FastBitmap;->setRGB(IIIII)V

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 88
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 114
    :cond_9
    return-void
.end method
