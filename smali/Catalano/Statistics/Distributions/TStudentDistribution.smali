.class public LCatalano/Statistics/Distributions/TStudentDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(D)V
    .locals 7

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    cmpg-double v0, p1, v2

    if-gez v0, :cond_0

    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "degreesOfFreedom"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    :cond_0
    iput-wide p1, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    .line 73
    add-double v0, p1, v2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double v4, p1, v4

    invoke-static {v4, v5}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->a:D

    .line 74
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 9

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 97
    iget-wide v2, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    .line 98
    mul-double v0, p1, p1

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 99
    add-double v4, p1, v0

    mul-double/2addr v0, v6

    div-double/2addr v4, v0

    .line 100
    div-double v0, v2, v6

    div-double/2addr v2, v6

    invoke-static/range {v0 .. v5}, LCatalano/Math/Functions/Beta;->Incomplete(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Entropy()D
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 11

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 111
    iget-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    .line 112
    iget-wide v2, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v8

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    mul-double v4, p1, p1

    iget-wide v6, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    return-wide v0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 78
    iget-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 11

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 105
    iget-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    .line 106
    iget-wide v2, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->a:D

    mul-double v4, p1, p1

    iget-wide v6, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    add-double/2addr v0, v8

    neg-double v0, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v6

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 83
    iget-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    cmpl-double v0, v0, v4

    if-lez v0, :cond_0

    .line 84
    iget-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 87
    :goto_0
    return-wide v0

    .line 85
    :cond_0
    iget-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 86
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    .line 87
    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0
.end method

.method public getDegreesOfFreedom()D
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    return-wide v0
.end method

.method public setDegreesOfFreedom(D)V
    .locals 1

    .prologue
    .line 52
    iput-wide p1, p0, LCatalano/Statistics/Distributions/TStudentDistribution;->b:D

    .line 53
    return-void
.end method
