.class public final LCatalano/Statistics/Correlations;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PearsonCorrelation([D[D)D
    .locals 6

    .prologue
    .line 67
    invoke-static {p0}, LCatalano/Statistics/Tools;->Mean([D)D

    move-result-wide v2

    .line 68
    invoke-static {p1}, LCatalano/Statistics/Tools;->Mean([D)D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    .line 69
    invoke-static/range {v0 .. v5}, LCatalano/Statistics/Correlations;->PearsonCorrelation([D[DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static PearsonCorrelation([D[DDD)D
    .locals 12

    .prologue
    .line 73
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    .line 74
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 75
    aget-wide v8, p0, v0

    sub-double/2addr v8, p2

    aget-wide v10, p1, v0

    sub-double v10, v10, p4

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 76
    aget-wide v8, p0, v0

    sub-double/2addr v8, p2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 77
    aget-wide v8, p1, v0

    sub-double v8, v8, p4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v2, v8

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    mul-double v0, v4, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 80
    div-double v0, v6, v0

    return-wide v0
.end method

.method public static SpearmanCorrelation([D[D)D
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 85
    const-wide/16 v2, 0x0

    .line 86
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 87
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    sub-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const-wide/high16 v0, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    .line 91
    array-length v2, p0

    int-to-double v2, v2

    array-length v4, p0

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v4, v8

    mul-double/2addr v2, v4

    .line 93
    div-double/2addr v0, v2

    sub-double v0, v8, v0

    return-wide v0
.end method

.method public static Tanimoto([D[D)D
    .locals 12

    .prologue
    const-wide/16 v2, 0x0

    .line 56
    .line 58
    const/4 v0, 0x0

    move-wide v4, v2

    move-wide v6, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 59
    aget-wide v8, p0, v0

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    .line 60
    aget-wide v8, p0, v0

    aget-wide v10, p0, v0

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 61
    aget-wide v8, p1, v0

    aget-wide v10, p1, v0

    mul-double/2addr v8, v10

    add-double/2addr v2, v8

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    add-double v0, v4, v2

    sub-double/2addr v0, v6

    div-double v0, v6, v0

    return-wide v0
.end method

.method public static VectorInnerProduct([D[D)D
    .locals 8

    .prologue
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 44
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-wide v2
.end method
