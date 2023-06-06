.class public LCatalano/Statistics/Distributions/LognormalDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/lang/Double;

.field private d:Ljava/lang/Double;

.field private e:Ljava/lang/Double;

.field private f:D

.field private g:D


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    .line 39
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    .line 51
    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    iget-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    iget-wide v6, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    mul-double/2addr v6, v0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, LCatalano/Statistics/Distributions/LognormalDistribution;->a(DDD)V

    .line 52
    return-void
.end method

.method public constructor <init>(D)V
    .locals 9

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    .line 39
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    .line 55
    iget-wide v4, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    iget-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    mul-double v6, v0, v2

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v7}, LCatalano/Statistics/Distributions/LognormalDistribution;->a(DDD)V

    .line 56
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 9

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    .line 39
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    .line 59
    mul-double v6, p3, p3

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v7}, LCatalano/Statistics/Distributions/LognormalDistribution;->a(DDD)V

    .line 60
    return-void
.end method

.method private a(DDD)V
    .locals 5

    .prologue
    .line 63
    iput-wide p1, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    .line 64
    iput-wide p3, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    .line 65
    iput-wide p5, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->f:D

    .line 68
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x40040d931ff62706L    # 2.5066282746310007

    mul-double/2addr v2, p3

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->g:D

    .line 69
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 7

    .prologue
    .line 102
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    div-double/2addr v0, v2

    .line 103
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    neg-double v0, v0

    const-wide v4, 0x3ff6a09e667f3bcdL    # 1.4142135623730951

    div-double/2addr v0, v4

    invoke-static {v0, v1}, LCatalano/Math/Special;->Erfc(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 95
    iget-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->e:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 96
    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->f:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v4

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->e:Ljava/lang/Double;

    .line 97
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 114
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    div-double/2addr v0, v2

    .line 115
    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->g:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    neg-double v4, v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 6

    .prologue
    .line 81
    iget-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 82
    iget-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->f:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->c:Ljava/lang/Double;

    .line 83
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 108
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    div-double/2addr v0, v2

    .line 109
    iget-wide v2, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->g:D

    neg-double v4, v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public Variance()D
    .locals 6

    .prologue
    .line 88
    iget-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 89
    iget-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->f:D

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->f:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->d:Ljava/lang/Double;

    .line 90
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->d:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLocation()D
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->a:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, LCatalano/Statistics/Distributions/LognormalDistribution;->b:D

    return-wide v0
.end method
