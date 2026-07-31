.class public LCatalano/Imaging/Filters/MaximumEntropyThreshold;
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
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/MaximumEntropyThreshold;->a:Z

    .line 42
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, LCatalano/Imaging/Filters/MaximumEntropyThreshold;->a:Z

    .line 49
    iput-boolean p1, p0, LCatalano/Imaging/Filters/MaximumEntropyThreshold;->a:Z

    .line 50
    return-void
.end method


# virtual methods
.method public CalculateThreshold(LCatalano/Imaging/FastBitmap;)I
    .locals 18

    .prologue
    .line 68
    new-instance v2, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 69
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->getValues()[I

    move-result-object v8

    .line 73
    const-wide/16 v4, 0x0

    .line 74
    const/4 v2, 0x0

    :goto_0
    array-length v3, v8

    if-ge v2, v3, :cond_0

    .line 75
    aget v3, v8, v2

    int-to-double v6, v3

    add-double/2addr v4, v6

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-nez v2, :cond_1

    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Empty histogram: sum of all bins is zero."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_1
    array-length v2, v8

    new-array v6, v2, [D

    .line 83
    const/4 v2, 0x0

    :goto_1
    array-length v3, v8

    if-ge v2, v3, :cond_2

    .line 84
    aget v3, v8, v2

    int-to-double v10, v3

    div-double/2addr v10, v4

    aput-wide v10, v6, v2

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    :cond_2
    array-length v2, v8

    new-array v7, v2, [D

    .line 89
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, v6, v3

    aput-wide v4, v7, v2

    .line 90
    const/4 v2, 0x1

    :goto_2
    array-length v3, v8

    if-ge v2, v3, :cond_3

    .line 91
    add-int/lit8 v3, v2, -0x1

    aget-wide v4, v7, v3

    aget-wide v10, v6, v2

    add-double/2addr v4, v10

    aput-wide v4, v7, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 96
    :cond_3
    array-length v2, v8

    new-array v9, v2, [D

    .line 97
    array-length v2, v8

    new-array v10, v2, [D

    .line 98
    const/4 v2, 0x0

    :goto_3
    array-length v3, v8

    if-ge v2, v3, :cond_a

    .line 100
    aget-wide v4, v7, v2

    const-wide/16 v12, 0x1

    cmpl-double v3, v4, v12

    if-lez v3, :cond_7

    .line 101
    const-wide/16 v4, 0x0

    .line 102
    const/4 v3, 0x0

    :goto_4
    if-gt v3, v2, :cond_5

    .line 103
    aget-wide v12, v6, v3

    const-wide/16 v14, 0x1

    cmpl-double v11, v12, v14

    if-lez v11, :cond_4

    .line 104
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

    .line 102
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 107
    :cond_5
    aput-wide v4, v9, v2

    .line 113
    :goto_5
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aget-wide v12, v7, v2

    sub-double v12, v4, v12

    .line 114
    const-wide/16 v4, 0x1

    cmpl-double v3, v12, v4

    if-lez v3, :cond_9

    .line 115
    const-wide/16 v4, 0x0

    .line 116
    add-int/lit8 v3, v2, 0x1

    :goto_6
    array-length v11, v8

    if-ge v3, v11, :cond_8

    .line 117
    aget-wide v14, v6, v3

    const-wide/16 v16, 0x1

    cmpl-double v11, v14, v16

    if-lez v11, :cond_6

    .line 118
    aget-wide v14, v6, v3

    div-double/2addr v14, v12

    aget-wide v16, v6, v3

    div-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v4, v14

    .line 116
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 109
    :cond_7
    const-wide/16 v4, 0x0

    aput-wide v4, v9, v2

    goto :goto_5

    .line 121
    :cond_8
    aput-wide v4, v10, v2

    .line 98
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 123
    :cond_9
    const-wide/16 v4, 0x0

    aput-wide v4, v10, v2

    goto :goto_7

    .line 128
    :cond_a
    const/4 v2, 0x0

    aget-wide v2, v9, v2

    const/4 v4, 0x0

    aget-wide v4, v10, v4

    add-double/2addr v4, v2

    .line 129
    const/4 v3, 0x0

    .line 130
    const/4 v2, 0x1

    :goto_8
    array-length v6, v8

    if-ge v2, v6, :cond_c

    .line 131
    aget-wide v6, v9, v2

    aget-wide v12, v10, v2

    add-double/2addr v6, v12

    .line 132
    cmpl-double v11, v6, v4

    if-lez v11, :cond_b

    move v3, v2

    move-wide v4, v6

    .line 130
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 138
    :cond_c
    return v3
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/MaximumEntropyThreshold;->CalculateThreshold(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 56
    new-instance v1, LCatalano/Imaging/Filters/Threshold;

    iget-boolean v2, p0, LCatalano/Imaging/Filters/MaximumEntropyThreshold;->a:Z

    invoke-direct {v1, v0, v2}, LCatalano/Imaging/Filters/Threshold;-><init>(IZ)V

    .line 57
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Threshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 59
    return-void
.end method
