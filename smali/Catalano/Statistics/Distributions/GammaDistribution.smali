.class public LCatalano/Statistics/Distributions/GammaDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    .line 50
    iput-wide p3, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    .line 52
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {p3, p4}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->c:D

    .line 53
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, p3

    invoke-static {p3, p4}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    neg-double v0, v0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->d:D

    .line 54
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 5

    .prologue
    .line 85
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    div-double v2, p1, v2

    invoke-static {v0, v1, v2, v3}, LCatalano/Math/Functions/Gamma;->LowerIncomplete(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Entropy()D
    .locals 6

    .prologue
    .line 80
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    invoke-static {v4, v5}, LCatalano/Math/Functions/Gamma;->Digamma(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 95
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->d:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    div-double v2, p1, v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Median()D
    .locals 2

    .prologue
    .line 75
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 90
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->c:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    neg-double v2, p1

    iget-wide v4, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->a:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, LCatalano/Statistics/Distributions/GammaDistribution;->b:D

    return-wide v0
.end method
