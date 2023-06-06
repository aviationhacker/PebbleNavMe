.class public LCatalano/Statistics/Distributions/DiscreteUniformDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDiscreteDistribution;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-le p1, p2, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The starting number a must be lower than b."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iput p1, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    .line 74
    iput p2, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    .line 75
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->c:I

    .line 76
    return-void
.end method


# virtual methods
.method public DistributionFunction(I)D
    .locals 4

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 95
    iget v2, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    if-ge p1, v2, :cond_1

    .line 96
    const-wide/16 v0, 0x0

    .line 99
    :cond_0
    :goto_0
    return-wide v0

    .line 97
    :cond_1
    iget v2, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    if-ge p1, v2, :cond_0

    .line 99
    iget v2, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    sub-int v2, p1, v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public Entropy()D
    .locals 2

    .prologue
    .line 90
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    iget v1, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public LogProbabilityMassFunction(I)D
    .locals 2

    .prologue
    .line 111
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    if-gt p1, v0, :cond_0

    .line 112
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->c:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    .line 113
    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 80
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    iget v1, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    add-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public ProbabilityMassFunction(I)D
    .locals 4

    .prologue
    .line 104
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    if-gt p1, v0, :cond_0

    .line 105
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget v2, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->c:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 106
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 85
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    iget v1, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    sub-int/2addr v0, v1

    iget v1, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->b:I

    iget v2, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getLength()D
    .locals 2

    .prologue
    .line 61
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->c:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getMaximum()D
    .locals 2

    .prologue
    .line 53
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public getMinimum()D
    .locals 2

    .prologue
    .line 45
    iget v0, p0, LCatalano/Statistics/Distributions/DiscreteUniformDistribution;->a:I

    int-to-double v0, v0

    return-wide v0
.end method
