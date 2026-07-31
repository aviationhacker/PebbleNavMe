.class public LCatalano/Statistics/Distributions/ParetoDistribution;
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
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    .line 48
    iput-wide p3, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    .line 49
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 7

    .prologue
    .line 84
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 85
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    div-double/2addr v2, p1

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 86
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Entropy()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 63
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    div-double v2, v4, v2

    add-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 98
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 99
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 100
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Mean()D
    .locals 6

    .prologue
    .line 53
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Median()D
    .locals 8

    .prologue
    .line 79
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    div-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Mode()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 91
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 92
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 93
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Variance()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 58
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    sub-double/2addr v2, v6

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ParetoDistribution;->b:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method
