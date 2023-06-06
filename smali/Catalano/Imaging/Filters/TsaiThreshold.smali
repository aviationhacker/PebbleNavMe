.class public LCatalano/Imaging/Filters/TsaiThreshold;
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
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0}, LCatalano/Imaging/Filters/TsaiThreshold;-><init>(Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean p1, p0, LCatalano/Imaging/Filters/TsaiThreshold;->a:Z

    .line 65
    return-void
.end method


# virtual methods
.method public CalculateThreshold(LCatalano/Imaging/FastBitmap;)I
    .locals 18

    .prologue
    .line 85
    new-instance v2, LCatalano/Imaging/Tools/ImageStatistics;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, LCatalano/Imaging/Tools/ImageStatistics;-><init>(LCatalano/Imaging/FastBitmap;)V

    .line 86
    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageStatistics;->getHistogramGray()LCatalano/Imaging/Tools/ImageHistogram;

    move-result-object v2

    invoke-virtual {v2}, LCatalano/Imaging/Tools/ImageHistogram;->Normalize()[D

    move-result-object v3

    .line 89
    const-wide/16 v8, 0x0

    .line 90
    const-wide/16 v6, 0x0

    .line 91
    const-wide/16 v4, 0x0

    .line 92
    const/4 v2, 0x0

    :goto_0
    array-length v10, v3

    if-ge v2, v10, :cond_0

    .line 93
    int-to-double v10, v2

    aget-wide v12, v3, v2

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 94
    mul-int v10, v2, v2

    int-to-double v10, v10

    aget-wide v12, v3, v2

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 95
    mul-int v10, v2, v2

    mul-int/2addr v10, v2

    int-to-double v10, v10

    aget-wide v12, v3, v2

    mul-double/2addr v10, v12

    add-double/2addr v4, v10

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    mul-double v10, v8, v8

    sub-double v10, v6, v10

    .line 99
    neg-double v12, v6

    mul-double/2addr v12, v6

    mul-double v14, v8, v4

    add-double/2addr v12, v14

    div-double/2addr v12, v10

    .line 100
    neg-double v4, v4

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    .line 101
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    neg-double v10, v4

    mul-double v14, v4, v4

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v16, v16, v12

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    sub-double/2addr v10, v14

    mul-double/2addr v6, v10

    .line 102
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    neg-double v14, v4

    mul-double/2addr v4, v4

    const-wide/high16 v16, 0x4010000000000000L    # 4.0

    mul-double v12, v12, v16

    sub-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v4, v14

    mul-double/2addr v4, v10

    .line 104
    sub-double v8, v4, v8

    sub-double/2addr v4, v6

    div-double v6, v8, v4

    .line 106
    const-wide/16 v4, 0x0

    .line 107
    const/4 v2, 0x0

    :goto_1
    array-length v8, v3

    if-ge v2, v8, :cond_2

    .line 108
    aget-wide v8, v3, v2

    add-double/2addr v4, v8

    .line 109
    cmpl-double v8, v4, v6

    if-lez v8, :cond_1

    .line 113
    :goto_2
    return v2

    .line 107
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    :cond_2
    const/16 v2, 0xff

    goto :goto_2
.end method

.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, LCatalano/Imaging/Filters/TsaiThreshold;->CalculateThreshold(LCatalano/Imaging/FastBitmap;)I

    move-result v0

    .line 71
    new-instance v1, LCatalano/Imaging/Filters/Threshold;

    iget-boolean v2, p0, LCatalano/Imaging/Filters/TsaiThreshold;->a:Z

    invoke-direct {v1, v0, v2}, LCatalano/Imaging/Filters/Threshold;-><init>(IZ)V

    .line 72
    invoke-virtual {v1, p1}, LCatalano/Imaging/Filters/Threshold;->applyInPlace(LCatalano/Imaging/FastBitmap;)V

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tsai threshold only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isInvert()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, LCatalano/Imaging/Filters/TsaiThreshold;->a:Z

    return v0
.end method

.method public setInvert(Z)V
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, LCatalano/Imaging/Filters/TsaiThreshold;->a:Z

    .line 50
    return-void
.end method
