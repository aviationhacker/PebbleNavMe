.class public LCatalano/Statistics/Distributions/CauchyDistribution;
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
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 44
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1, v2, v3}, LCatalano/Statistics/Distributions/CauchyDistribution;-><init>(DD)V

    .line 45
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    .line 50
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scale must be greater than zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, LCatalano/Statistics/Distributions/CauchyDistribution;->a(DD)V

    .line 56
    return-void
.end method

.method private a(DD)V
    .locals 7

    .prologue
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 59
    iput-wide p1, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->a:D

    .line 60
    iput-wide p3, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->b:D

    .line 62
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double v2, v4, p3

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->d:D

    .line 63
    mul-double v0, v4, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->c:D

    .line 64
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 7

    .prologue
    .line 99
    const-wide v0, 0x3fd45f306dc9c883L    # 0.3183098861837907

    iget-wide v2, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->a:D

    sub-double v2, p1, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->b:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 4

    .prologue
    .line 94
    iget-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x402921fb54442d18L    # 12.566370614359172

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 110
    iget-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->a:D

    sub-double v0, p1, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->b:D

    div-double/2addr v0, v2

    .line 111
    iget-wide v2, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->c:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v0

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    return-wide v0
.end method

.method public Mean()D
    .locals 2

    .prologue
    .line 76
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public Median()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->a:D

    return-wide v0
.end method

.method public Mode()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->a:D

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 104
    iget-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->a:D

    sub-double v0, p1, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->b:D

    div-double/2addr v0, v2

    .line 105
    iget-wide v2, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->d:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v0

    add-double/2addr v0, v4

    div-double v0, v2, v0

    return-wide v0
.end method

.method public Variance()D
    .locals 2

    .prologue
    .line 89
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getLocation()D
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->a:D

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, LCatalano/Statistics/Distributions/CauchyDistribution;->b:D

    return-wide v0
.end method
