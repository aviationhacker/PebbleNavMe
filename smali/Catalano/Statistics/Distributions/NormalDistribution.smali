.class public LCatalano/Statistics/Distributions/NormalDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/lang/Double;

.field private d:D

.field private e:D

.field private final f:D


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    .line 39
    iput-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    .line 45
    iput-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->d:D

    .line 49
    const-wide v0, 0x3fff5c0331eeff85L    # 1.9599639845400543

    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->f:D

    .line 52
    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    iget-wide v6, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    mul-double/2addr v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LCatalano/Statistics/Distributions/NormalDistribution;->a(DDD)V

    .line 53
    return-void
.end method

.method public constructor <init>(D)V
    .locals 9

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    .line 39
    iput-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    .line 45
    iput-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->d:D

    .line 49
    const-wide v0, 0x3fff5c0331eeff85L    # 1.9599639845400543

    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->f:D

    .line 56
    iget-wide v4, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    mul-double v6, v0, v2

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v7}, LCatalano/Statistics/Distributions/NormalDistribution;->a(DDD)V

    .line 57
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    .line 39
    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    .line 45
    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->d:D

    .line 49
    const-wide v0, 0x3fff5c0331eeff85L    # 1.9599639845400543

    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->f:D

    .line 61
    cmpg-double v0, p3, v2

    if-gtz v0, :cond_0

    .line 63
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Standard deviation must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_0
    mul-double v6, p3, p3

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, LCatalano/Statistics/Distributions/NormalDistribution;->a(DDD)V

    .line 70
    return-void
.end method

.method private a(DDD)V
    .locals 3

    .prologue
    .line 73
    iput-wide p1, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    .line 74
    iput-wide p3, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    .line 75
    iput-wide p5, p0, LCatalano/Statistics/Distributions/NormalDistribution;->d:D

    .line 78
    const-wide v0, 0x40040d931ff62706L    # 2.5066282746310007

    mul-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    neg-double v0, v0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->e:D

    .line 79
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 5

    .prologue
    .line 106
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    sub-double v0, p1, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    div-double/2addr v0, v2

    .line 107
    neg-double v0, v0

    const-wide v2, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    div-double/2addr v0, v2

    invoke-static {v0, v1}, LCatalano/Math/Special;->Erfc(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 6

    .prologue
    .line 97
    iget-object v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 98
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget-wide v4, p0, LCatalano/Statistics/Distributions/NormalDistribution;->d:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->c:Ljava/lang/Double;

    .line 101
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public InverseDistributionFunction(D)D
    .locals 7

    .prologue
    .line 117
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    invoke-static {p1, p2}, LCatalano/Math/Functions/Normal;->Inverse(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 140
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    sub-double v0, p1, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    div-double/2addr v0, v2

    .line 141
    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->e:D

    mul-double/2addr v0, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    .line 143
    return-wide v0
.end method

.method public Mean()D
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 122
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    sub-double v0, p1, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    div-double/2addr v0, v2

    .line 123
    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->e:D

    mul-double/2addr v0, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public StandartDeviation()D
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    return-wide v0
.end method

.method public Variance()D
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->d:D

    return-wide v0
.end method

.method public ZScore(D)D
    .locals 5

    .prologue
    .line 152
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NormalDistribution;->a:D

    sub-double v0, p1, v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NormalDistribution;->b:D

    div-double/2addr v0, v2

    return-wide v0
.end method
