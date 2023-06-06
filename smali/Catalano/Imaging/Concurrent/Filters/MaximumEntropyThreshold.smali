.class public LCatalano/Imaging/Concurrent/Filters/MaximumEntropyThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CalculateThreshold(LCatalano/Imaging/FastBitmap;)I
    .locals 18

    .prologue
    .line 58
    new-instance v2, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 59
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v8

    .line 63
    const-wide/16 v4, 0x0

    .line 64
    const/4 v2, 0x0

    :goto_0
    array-length v3, v8

    if-ge v2, v3, :cond_0

    .line 65
    aget v3, v8, v2

    int-to-double v6, v3

    add-double/2addr v4, v6

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_1

    .line 69
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty histogram: sum of all bins is zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1
    array-length v2, v8

    new-array v6, v2, [D

    .line 73
    const/4 v2, 0x0

    :goto_1
    array-length v3, v8

    if-ge v2, v3, :cond_2

    .line 74
    aget v3, v8, v2

    int-to-double v10, v3

    div-double/2addr v10, v4

    aput-wide v10, v6, v2

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 78
    :cond_2
    array-length v2, v8

    new-array v7, v2, [D

    .line 79
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v6, v3

    aput-wide v4, v7, v2

    .line 80
    const/4 v2, 0x1

    :goto_2
    array-length v3, v8

    if-ge v2, v3, :cond_3

    .line 81
    add-int/lit8 v3, v2, -0x1

    aget-wide v4, v7, v3

    aget-wide v10, v6, v2

    add-double/2addr v4, v10

    aput-wide v4, v7, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 86
    :cond_3
    array-length v2, v8

    new-array v9, v2, [D

    .line 87
    array-length v2, v8

    new-array v10, v2, [D

    .line 88
    const/4 v2, 0x0

    :goto_3
    array-length v3, v8

    if-ge v2, v3, :cond_a

    .line 90
    aget-wide v4, v7, v2

    const-wide/16 v12, 0x1

    cmpl-double v3, v4, v12

    if-lez v3, :cond_7

    .line 91
    const-wide/16 v4, 0x0

    .line 92
    const/4 v3, 0x0

    :goto_4
    if-gt v3, v2, :cond_5

    .line 93
    aget-wide v12, v6, v3

    const-wide/16 v14, 0x1

    cmpl-double v11, v12, v14

    if-lez v11, :cond_4

    .line 94
    aget-wide v12, v6, v3

    aget-wide v14, v7, v2

    div-double/2addr v12, v14

    aget-wide v14, v6, v3

    aget-wide v16, v7, v2

    div-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    sub-double/2addr v4, v12

    .line 92
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 97
    :cond_5
    aput-wide v4, v9, v2

    .line 103
    :goto_5
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aget-wide v12, v7, v2

    sub-double v12, v4, v12

    .line 104
    const-wide/16 v4, 0x1

    cmpl-double v3, v12, v4

    if-lez v3, :cond_9

    .line 105
    const-wide/16 v4, 0x0

    .line 106
    add-int/lit8 v3, v2, 0x1

    :goto_6
    array-length v11, v8

    if-ge v3, v11, :cond_8

    .line 107
    aget-wide v14, v6, v3

    const-wide/16 v16, 0x1

    cmpl-double v11, v14, v16

    if-lez v11, :cond_6

    .line 108
    aget-wide v14, v6, v3

    div-double/2addr v14, v12

    aget-wide v16, v6, v3

    div-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v4, v14

    .line 106
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 99
    :cond_7
    const-wide/16 v4, 0x0

    aput-wide v4, v9, v2

    goto :goto_5

    .line 111
    :cond_8
    aput-wide v4, v10, v2

    .line 88
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 113
    :cond_9
    const-wide/16 v4, 0x0

    aput-wide v4, v10, v2

    goto :goto_7

    .line 118
    :cond_a
    const/4 v2, 0x0

    aget-wide v2, v9, v2

    const/4 v4, 0x0

    aget-wide v4, v10, v4

    add-double/2addr v4, v2

    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v2, 0x1

    :goto_8
    array-length v6, v8

    if-ge v2, v6, :cond_c

    .line 121
    aget-wide v6, v9, v2

    aget-wide v12, v10, v2

    add-double/2addr v6, v12

    .line 122
    cmpl-double v11, v6, v4

    if-lez v11, :cond_b

    move v3, v2

    move-wide v4, v6

    .line 120
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 128
    :cond_c
    return v3
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 2

    .prologue
    .line 44
    invoke-virtual {p0, p1}, LCatalano/Imaging/Concurrent/Filters/MaximumEntropyThreshold;->CalculateThreshold(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 46
    new-instance v1, LCatalano/Imaging/Concurrent/Filters/Threshold;

    invoke-direct {v1, v0}, LCatalano/Imaging/Concurrent/Filters/Threshold;-><init>(I)V

    .line 47
    invoke-virtual {v1, p1}, LCatalano/Imaging/Concurrent/Filters/Threshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 49
    return-void
.end method
