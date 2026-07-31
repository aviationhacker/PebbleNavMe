.class public LCatalano/Statistics/Distributions/ExponentialDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    .line 43
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->b:D

    .line 44
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 5

    .prologue
    .line 71
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    neg-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 4

    .prologue
    .line 66
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 5

    .prologue
    .line 81
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 48
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Median()D
    .locals 4

    .prologue
    .line 57
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Mode()D
    .locals 2

    .prologue
    .line 61
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 5

    .prologue
    .line 76
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    neg-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 6

    .prologue
    .line 53
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ExponentialDistribution;->a:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method
