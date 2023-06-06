.class public LCatalano/Statistics/Distributions/EmpiricalDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:[D

.field private b:Ljava/lang/Double;

.field private c:Ljava/lang/Double;

.field private d:Ljava/lang/Double;

.field private e:Ljava/lang/Double;


# direct methods
.method public constructor <init>([D)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a([DLjava/lang/Double;)V

    .line 51
    return-void
.end method

.method public constructor <init>([DD)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a([DLjava/lang/Double;)V

    .line 60
    return-void
.end method

.method private a([DLjava/lang/Double;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 63
    if-nez p2, :cond_0

    .line 68
    invoke-static {p1}, LCatalano/Statistics/Tools;->StandartDeviation([D)D

    move-result-wide v0

    .line 69
    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    array-length v6, p1

    int-to-double v6, v6

    mul-double/2addr v4, v6

    div-double/2addr v2, v4

    const-wide v4, -0x4036666666666666L    # -0.2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    .line 72
    :cond_0
    iput-object p1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    .line 73
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->b:Ljava/lang/Double;

    .line 75
    iput-object v8, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->c:Ljava/lang/Double;

    .line 76
    iput-object v8, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->d:Ljava/lang/Double;

    .line 77
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 118
    move v1, v0

    .line 119
    :goto_0
    iget-object v2, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 120
    iget-object v2, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    aget-wide v2, v2, v0

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    int-to-double v0, v1

    iget-object v2, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    array-length v2, v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 8

    .prologue
    .line 103
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->e:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 105
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->e:Ljava/lang/Double;

    .line 106
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 108
    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    aget-wide v2, v1, v0

    invoke-virtual {p0, v2, v3}, LCatalano/Statistics/Distributions/EmpiricalDistribution;->ProbabilityDensityFunction(D)D

    move-result-wide v2

    .line 110
    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->e:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->e:Ljava/lang/Double;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    .line 141
    const-wide/16 v2, 0x0

    .line 143
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 145
    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    aget-wide v4, v1, v0

    sub-double v4, p1, v4

    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 146
    neg-double v6, v4

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x40040d931ff62706L    # 2.5066282746310007

    iget-object v4, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->b:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    .line 151
    iget-object v2, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    array-length v2, v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    invoke-static {v0}, LCatalano/Statistics/Tools;->Mean([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->c:Ljava/lang/Double;

    .line 91
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    .line 126
    const-wide/16 v2, 0x0

    .line 128
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    aget-wide v4, v1, v0

    sub-double v4, p1, v4

    iget-object v1, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    .line 131
    neg-double v6, v4

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v4, 0x40040d931ff62706L    # 2.5066282746310007

    iget-object v6, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->b:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    mul-double/2addr v0, v2

    .line 136
    iget-object v2, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    array-length v2, v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    invoke-static {v0}, LCatalano/Statistics/Tools;->Variance([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->d:Ljava/lang/Double;

    .line 98
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->d:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSamples()[D
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->a:[D

    return-object v0
.end method

.method public getSmoothing()D
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, LCatalano/Statistics/Distributions/EmpiricalDistribution;->b:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
