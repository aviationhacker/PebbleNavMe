.class public LCatalano/Statistics/Distributions/WeibullDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    .line 47
    iput-wide p3, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    .line 48
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 7

    .prologue
    const-wide/16 v0, 0x0

    .line 67
    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    .line 68
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    div-double v2, p1, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 71
    :cond_0
    :goto_0
    return-wide v0

    .line 69
    :cond_1
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 70
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0
.end method

.method public Entropy()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 62
    const-wide v0, 0x3fe2788cfc6fb619L    # 0.5772156649015329

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    div-double v2, v6, v2

    sub-double v2, v6, v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    add-double/2addr v0, v6

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 84
    iget-wide v0, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    div-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    div-double v2, p1, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0
.end method

.method public Mean()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 52
    iget-wide v0, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    div-double v2, v4, v2

    add-double/2addr v2, v4

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    .line 76
    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 77
    iget-wide v0, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    div-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    div-double v2, p1, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    div-double v2, p1, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 78
    :cond_0
    return-wide v0
.end method

.method public Variance()D
    .locals 8

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->b:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/WeibullDistribution;->a:D

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, LCatalano/Statistics/Distributions/WeibullDistribution;->Mean()D

    move-result-wide v2

    invoke-virtual {p0}, LCatalano/Statistics/Distributions/WeibullDistribution;->Mean()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method
