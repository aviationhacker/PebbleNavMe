.class public LCatalano/Statistics/Distributions/BinomialDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDiscreteDistribution;


# instance fields
.field private a:I

.field private b:D


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 66
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, LCatalano/Statistics/Distributions/BinomialDistribution;-><init>(ID)V

    .line 67
    return-void
.end method

.method public constructor <init>(ID)V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-gtz p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of trials should be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_2

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A probability must be between 0 and 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    iput p1, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    .line 83
    iput-wide p2, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    .line 84
    return-void
.end method


# virtual methods
.method public DistributionFunction(I)D
    .locals 8

    .prologue
    .line 103
    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    sub-int/2addr v0, p1

    int-to-double v0, v0

    add-int/lit8 v2, p1, 0x1

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    sub-double/2addr v4, v6

    invoke-static/range {v0 .. v5}, LCatalano/Math/Functions/Beta;->Incomplete(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Entropy()D
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public LogProbabilityMassFunction(I)D
    .locals 8

    .prologue
    .line 114
    if-ltz p1, :cond_0

    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    if-le p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 115
    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    invoke-static {v0, p1}, LCatalano/Math/Special;->LogBinomial(II)D

    move-result-wide v0

    int-to-double v2, p1

    iget-wide v4, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    sub-int/2addr v2, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 88
    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    int-to-double v0, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public ProbabilityMassFunction(I)D
    .locals 6

    .prologue
    .line 108
    if-ltz p1, :cond_0

    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    if-le p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    .line 109
    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    invoke-static {v0, p1}, LCatalano/Math/Special;->Binomial(II)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    int-to-double v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    sub-double/2addr v2, v4

    iget v4, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    sub-int/2addr v4, p1

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    goto :goto_0
.end method

.method public Variance()D
    .locals 6

    .prologue
    .line 93
    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    int-to-double v0, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumberOfTrials()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->a:I

    return v0
.end method

.method public getProbability()D
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, LCatalano/Statistics/Distributions/BinomialDistribution;->b:D

    return-wide v0
.end method
