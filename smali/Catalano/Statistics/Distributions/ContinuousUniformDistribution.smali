.class public LCatalano/Statistics/Distributions/ContinuousUniformDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 40
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;-><init>(DD)V

    .line 41
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    cmpl-double v0, p1, p3

    if-lez v0, :cond_0

    .line 52
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The starting number a must be lower than b."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :cond_0
    iput-wide p1, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    .line 59
    iput-wide p3, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    .line 60
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 7

    .prologue
    .line 91
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 92
    const-wide/16 v0, 0x0

    .line 95
    :goto_0
    return-wide v0

    .line 93
    :cond_0
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 94
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 95
    :cond_1
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double v0, p1, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public Entropy()D
    .locals 4

    .prologue
    .line 86
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public Length()D
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 5

    .prologue
    .line 107
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 108
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    .line 109
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0
.end method

.method public Maximum()D
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    return-wide v0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Minimum()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 100
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 101
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    .line 102
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Variance()D
    .locals 6

    .prologue
    .line 81
    iget-wide v0, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/ContinuousUniformDistribution;->a:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    return-wide v0
.end method
