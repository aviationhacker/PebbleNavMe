.class public LCatalano/Imaging/Filters/SobelEdgeDetector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/SobelEdgeDetector;->a:Z

    .line 73
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 22

    .prologue
    .line 78
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    add-int/lit8 v9, v2, -0x2

    .line 80
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    add-int/lit8 v10, v2, -0x2

    .line 81
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v11

    .line 83
    add-int/lit8 v3, v11, 0x1

    .line 85
    new-instance v12, LCatalano/Imaging/FastBitmap;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, LCatalano/Imaging/FastBitmap;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 86
    const-wide/16 v4, 0x0

    .line 87
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v10, :cond_2

    .line 88
    const/4 v2, 0x0

    move v6, v2

    move v7, v3

    move-wide v2, v4

    :goto_1
    if-ge v6, v9, :cond_1

    .line 89
    sub-int v4, v7, v11

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v12, v4}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v4

    .line 90
    sub-int v5, v7, v11

    invoke-virtual {v12, v5}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v5

    .line 91
    sub-int v13, v7, v11

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v13

    .line 92
    add-int/lit8 v14, v7, 0x1

    invoke-virtual {v12, v14}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v14

    .line 93
    add-int v15, v7, v11

    invoke-virtual {v12, v15}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v15

    .line 94
    add-int v16, v7, v11

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v16

    .line 95
    add-int v17, v7, v11

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v17

    .line 96
    add-int/lit8 v18, v7, -0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v18

    .line 98
    const/16 v19, 0xff

    add-int/2addr v13, v4

    sub-int v13, v13, v17

    sub-int/2addr v13, v5

    sub-int v15, v5, v15

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v13, v15

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int v5, v5, v16

    sub-int v4, v5, v4

    sub-int v4, v4, v17

    sub-int v5, v14, v18

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v13

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v4, v4

    .line 99
    cmpl-double v13, v4, v2

    if-lez v13, :cond_0

    move-wide v2, v4

    .line 100
    :cond_0
    double-to-int v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v4}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 101
    add-int/lit8 v5, v7, 0x1

    .line 88
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v7, v5

    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v5, v7, 0x2

    .line 87
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide/from16 v20, v2

    move v3, v5

    move-wide/from16 v4, v20

    goto/16 :goto_0

    .line 106
    :cond_2
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getSize()I

    move-result v3

    .line 107
    move-object/from16 v0, p0

    iget-boolean v2, v0, LCatalano/Imaging/Filters/SobelEdgeDetector;->a:Z

    if-eqz v2, :cond_4

    const-wide v6, 0x406fe00000000000L    # 255.0

    cmpl-double v2, v4, v6

    if-eqz v2, :cond_4

    .line 108
    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double v4, v6, v4

    .line 110
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    .line 111
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, LCatalano/Imaging/FastBitmap;->getGray(I)I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, LCatalano/Imaging/FastBitmap;->setGray(II)V

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 117
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SobelEdgeDetector only works in grayscale images."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 119
    :cond_4
    return-void
.end method

.method public isScaleIntensity()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, LCatalano/Imaging/Filters/SobelEdgeDetector;->a:Z

    return v0
.end method

.method public setScaleIntensity(Z)V
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, LCatalano/Imaging/Filters/SobelEdgeDetector;->a:Z

    .line 68
    return-void
.end method
