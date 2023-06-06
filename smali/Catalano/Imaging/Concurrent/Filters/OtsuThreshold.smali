.class public LCatalano/Imaging/Concurrent/Filters/OtsuThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CalculateThreshold(LCatalano/Imaging/FastBitmap;)I
    .locals 23

    .prologue
    .line 58
    new-instance v2, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 59
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    .line 61
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v11

    .line 62
    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v3

    mul-int v14, v2, v3

    .line 64
    const-wide/16 v4, 0x0

    .line 65
    const/4 v2, 0x0

    move-wide v12, v4

    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    aget v3, v11, v2

    mul-int/2addr v3, v2

    int-to-double v4, v3

    add-double/2addr v4, v12

    add-int/lit8 v2, v2, 0x1

    move-wide v12, v4

    goto :goto_0

    .line 67
    :cond_0
    const-wide/16 v8, 0x0

    .line 68
    const/4 v6, 0x0

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    const/4 v2, 0x0

    .line 74
    const/4 v3, 0x0

    move/from16 v22, v6

    move-wide v6, v8

    move/from16 v8, v22

    :goto_1
    const/16 v9, 0x100

    if-ge v3, v9, :cond_2

    .line 75
    aget v9, v11, v3

    add-int v10, v8, v9

    .line 76
    if-nez v10, :cond_1

    .line 74
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v8, v10

    goto :goto_1

    .line 77
    :cond_1
    sub-int v15, v14, v10

    .line 79
    if-nez v15, :cond_3

    .line 93
    :cond_2
    return v2

    .line 81
    :cond_3
    aget v8, v11, v3

    mul-int/2addr v8, v3

    int-to-double v8, v8

    add-double/2addr v8, v6

    .line 82
    int-to-double v6, v10

    div-double v6, v8, v6

    .line 83
    sub-double v16, v12, v8

    int-to-double v0, v15

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    .line 85
    int-to-double v0, v10

    move-wide/from16 v18, v0

    int-to-double v0, v15

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    sub-double v20, v6, v16

    mul-double v18, v18, v20

    sub-double v6, v6, v16

    mul-double v6, v6, v18

    .line 87
    cmpl-double v15, v6, v4

    if-lez v15, :cond_4

    move v2, v3

    move-wide v4, v6

    move-wide v6, v8

    .line 89
    goto :goto_2

    :cond_4
    move-wide v6, v8

    goto :goto_2
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0, p1}, LCatalano/Imaging/Concurrent/Filters/OtsuThreshold;->CalculateThreshold(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 47
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Threshold;

    invoke-direct {v1, v0}, LCatalano/Imaging/Concurrent/Filters/Threshold;-><init>(I)V

    .line 48
    invoke-virtual {v1, p1}, LCatalano/Imaging/Concurrent/Filters/Threshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 49
    return-void
.end method
