.class public LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field a:I

.field b:D

.field c:D

.field d:D

.field e:D


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->a:I

    .line 46
    iput-wide p2, p0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->b:D

    .line 47
    iput-wide p4, p0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->c:D

    .line 48
    iput-wide p6, p0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->e:D

    .line 49
    iput-wide p8, p0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->d:D

    .line 50
    return-void
.end method

.method private a(LCatalano/Imaging/FastBitmap;)D
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 119
    move v0, v1

    move v2, v1

    .line 120
    :goto_0
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 121
    :goto_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 122
    invoke-virtual {p1, v0, v3}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    add-int/2addr v4, v2

    .line 121
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    div-int v0, v2, v0

    int-to-double v0, v0

    return-wide v0
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 130
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 25

    .prologue
    .line 55
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    .line 56
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v12

    .line 57
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->a:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->a(I)I

    move-result v13

    .line 59
    new-instance v14, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 61
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 64
    invoke-direct/range {p0 .. p1}, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->a(LCatalano/Imaging/FastBitmap;)D

    move-result-wide v16

    .line 66
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v12, :cond_8

    .line 67
    const/4 v2, 0x0

    move v9, v2

    :goto_1
    if-ge v9, v11, :cond_6

    .line 69
    const/4 v3, 0x0

    .line 70
    move-object/from16 v0, p0

    iget v2, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->a:I

    move-object/from16 v0, p0

    iget v4, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->a:I

    mul-int v15, v2, v4

    .line 71
    new-array v0, v15, [I

    move-object/from16 v18, v0

    .line 73
    const-wide/16 v6, 0x0

    .line 74
    const-wide/16 v4, 0x0

    .line 77
    sub-int v2, v10, v13

    move v8, v2

    :goto_2
    add-int v2, v10, v13

    if-gt v8, v2, :cond_2

    .line 78
    sub-int v2, v9, v13

    move/from16 v22, v2

    move-wide/from16 v23, v4

    move-wide v4, v6

    move/from16 v7, v22

    move v6, v3

    move-wide/from16 v2, v23

    :goto_3
    add-int v19, v9, v13

    move/from16 v0, v19

    if-gt v7, v0, :cond_1

    .line 80
    if-ltz v8, :cond_0

    if-ge v8, v12, :cond_0

    if-ltz v7, :cond_0

    if-ge v7, v11, :cond_0

    .line 81
    invoke-virtual {v14, v8, v7}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v19

    aput v19, v18, v6

    .line 83
    aget v19, v18, v6

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v4, v4, v20

    .line 84
    aget v19, v18, v6

    aget v20, v18, v6

    mul-int v19, v19, v20

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    add-double v2, v2, v20

    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 78
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 77
    :cond_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move-wide/from16 v22, v2

    move v3, v6

    move-wide v6, v4

    move-wide/from16 v4, v22

    goto :goto_2

    .line 90
    :cond_2
    int-to-double v2, v15

    div-double/2addr v6, v2

    .line 91
    int-to-double v2, v15

    div-double v2, v4, v2

    .line 92
    mul-double v4, v6, v6

    sub-double/2addr v2, v4

    .line 94
    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_5

    .line 95
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->b:D

    div-double v2, v16, v2

    mul-double/2addr v2, v4

    .line 99
    :goto_4
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->d:D

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->d:D

    .line 100
    :cond_3
    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->e:D

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->e:D

    .line 102
    :cond_4
    invoke-virtual {v14, v10, v9}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v4

    int-to-double v4, v4

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->c:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 103
    double-to-int v2, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v9, v2}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    .line 67
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_1

    .line 97
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, LCatalano/Imaging/Filters/AdaptiveContrastEnhancement;->d:D

    goto :goto_4

    .line 66
    :cond_6
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_0

    .line 110
    :cond_7
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "AdaptiveContrastEnhancement works only with grayscale."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    :cond_8
    return-void
.end method
