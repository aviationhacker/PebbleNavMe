.class public LCatalano/Statistics/Distributions/BernoulliDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDiscreteDistribution;


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/lang/Double;


# direct methods
.method public constructor <init>(D)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-wide p1, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->a:D

    .line 54
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->b:D

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->c:Ljava/lang/Double;

    .line 57
    return-void
.end method


# virtual methods
.method public DistributionFunction(I)D
    .locals 2

    .prologue
    .line 81
    if-gez p1, :cond_0

    const-wide/16 v0, 0x0

    .line 83
    :goto_0
    return-wide v0

    .line 82
    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 83
    :cond_1
    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->b:D

    goto :goto_0
.end method

.method public Entropy()D
    .locals 6

    .prologue
    .line 71
    iget-object v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 72
    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->a:D

    neg-double v0, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->a:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->b:D

    .line 73
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->c:Ljava/lang/Double;

    .line 76
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public LogProbabilityMassFunction(I)D
    .locals 2

    .prologue
    .line 95
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->a:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    .line 97
    :goto_0
    return-wide v0

    .line 96
    :cond_0
    if-nez p1, :cond_1

    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    goto :goto_0

    .line 97
    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0
.end method

.method public Mean()D
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->a:D

    return-wide v0
.end method

.method public ProbabilityMassFunction(I)D
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->a:D

    .line 90
    :goto_0
    return-wide v0

    .line 89
    :cond_0
    if-nez p1, :cond_1

    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->b:D

    goto :goto_0

    .line 90
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 66
    iget-wide v0, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/BernoulliDistribution;->b:D

    mul-double/2addr v0, v2

    return-wide v0
.end method
