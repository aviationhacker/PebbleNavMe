.class public LCatalano/Statistics/Distributions/RayleighDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    .line 53
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 9

    .prologue
    .line 72
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    neg-double v2, p1

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 6

    .prologue
    .line 67
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    const-wide v4, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    const-wide v2, 0x3fd2788cfc6fb619L    # 0.28860783245076643

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    .line 82
    iget-wide v0, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v0, v2

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v2, p1

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    .line 77
    iget-wide v0, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v0, v2

    div-double v0, p1, v0

    neg-double v2, p1

    mul-double/2addr v2, p1

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    iget-wide v6, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 62
    const-wide v0, 0x3fdb7812aeef4ba0L    # 0.42920367320510344

    iget-wide v2, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/RayleighDistribution;->a:D

    mul-double/2addr v0, v2

    return-wide v0
.end method
