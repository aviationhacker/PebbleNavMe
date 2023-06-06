.class public LCatalano/Statistics/Distributions/ChiSquareDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:I

.field private b:D


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method public ComplementaryDistributionFunction(D)D
    .locals 5

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 73
    iget v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    div-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, LCatalano/Math/Functions/Gamma;->ComplementedIncomplete(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public DistributionFunction(D)D
    .locals 5

    .prologue
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 78
    iget v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    int-to-double v0, v0

    div-double/2addr v0, v2

    div-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, LCatalano/Math/Functions/Gamma;->Incomplete(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Entropy()D
    .locals 8

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 64
    iget v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    int-to-double v0, v0

    div-double/2addr v0, v4

    .line 65
    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    .line 66
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Digamma(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    .line 67
    add-double/2addr v0, v2

    add-double/2addr v0, v4

    iput-wide v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->b:D

    .line 69
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->b:D

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 13

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 92
    iget v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    int-to-double v0, v0

    .line 93
    sub-double v2, v0, v10

    div-double/2addr v2, v10

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    .line 94
    neg-double v4, p1

    div-double/2addr v4, v10

    .line 95
    div-double v6, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    div-double/2addr v0, v10

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v0

    add-double/2addr v0, v6

    .line 96
    add-double/2addr v2, v4

    sub-double v0, v2, v0

    return-wide v0
.end method

.method public Mean()D
    .locals 2

    .prologue
    .line 54
    iget v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 11

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 83
    iget v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    int-to-double v0, v0

    .line 84
    sub-double v2, v0, v8

    div-double/2addr v2, v8

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 85
    neg-double v4, p1

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 86
    div-double v6, v0, v8

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v0, v8

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 87
    mul-double/2addr v2, v4

    div-double v0, v2, v0

    return-wide v0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 59
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getDegreesOfFreedom()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, LCatalano/Statistics/Distributions/ChiSquareDistribution;->a:I

    return v0
.end method
