.class public LCatalano/Statistics/Distributions/InverseGammaDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    cmpg-double v0, p1, v2

    if-lez v0, :cond_0

    cmpg-double v0, p3, v2

    if-gtz v0, :cond_1

    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mean or shape must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    :cond_1
    iput-wide p1, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    .line 63
    iput-wide p3, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    .line 64
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 11

    .prologue
    const-wide v8, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 77
    iget-wide v0, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 79
    iget-wide v2, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    sub-double/2addr v2, p1

    mul-double/2addr v2, v0

    iget-wide v4, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v4, v8

    div-double/2addr v2, v4

    invoke-static {v2, v3}, LCatalano/Math/Special;->Erfc(D)D

    move-result-wide v2

    mul-double/2addr v2, v6

    .line 80
    iget-wide v4, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    add-double/2addr v4, p1

    mul-double/2addr v0, v4

    iget-wide v4, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v4, v8

    div-double/2addr v0, v4

    invoke-static {v0, v1}, LCatalano/Math/Special;->Erfc(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    .line 81
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    .line 83
    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    .line 96
    iget-wide v0, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 97
    iget-wide v2, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    neg-double v2, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    sub-double v4, p1, v4

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    sub-double v6, p1, v6

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, p1

    div-double/2addr v2, v4

    .line 99
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    .line 88
    iget-wide v0, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 89
    iget-wide v2, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    neg-double v2, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    sub-double v4, p1, v4

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    sub-double v6, p1, v6

    mul-double/2addr v4, v6

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, p1

    div-double/2addr v2, v4

    .line 91
    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 72
    iget-wide v0, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, LCatalano/Statistics/Distributions/InverseGammaDistribution;->b:D

    return-wide v0
.end method
