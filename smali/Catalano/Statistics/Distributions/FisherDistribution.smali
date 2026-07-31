.class public LCatalano/Statistics/Distributions/FisherDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:I

.field private b:I

.field private c:D

.field private d:Ljava/lang/Double;

.field private e:Ljava/lang/Double;


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-gtz p1, :cond_0

    .line 53
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Degrees of freedom must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :cond_0
    if-gtz p2, :cond_1

    .line 61
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Degrees of freedom must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    :catch_1
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    :cond_1
    iput p1, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    .line 68
    iput p2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    .line 70
    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, LCatalano/Math/Functions/Beta;->Function(DD)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->c:D

    .line 71
    return-void
.end method


# virtual methods
.method public ComplementaryDistributionFunction(D)D
    .locals 9

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 126
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, p1

    iget v4, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    div-double v4, v0, v2

    .line 127
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static/range {v0 .. v5}, LCatalano/Math/Functions/Beta;->Incomplete(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public DistributionFunction(D)D
    .locals 9

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 121
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, p1

    iget v4, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    div-double v4, v0, v2

    .line 122
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v0, v0

    mul-double/2addr v0, v6

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    invoke-static/range {v0 .. v5}, LCatalano/Math/Functions/Beta;->Incomplete(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Entropy()D
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 9

    .prologue
    .line 139
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v2, v2

    iget v4, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    iget v3, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    add-int/2addr v2, v3

    int-to-double v2, v2

    iget v4, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v4, v4

    mul-double/2addr v4, p1

    iget v6, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v6, v6

    add-double/2addr v4, v6

    .line 140
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    .line 141
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->c:D

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 6

    .prologue
    .line 83
    iget-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 85
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 87
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->d:Ljava/lang/Double;

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->d:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 91
    :cond_1
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v0, v0

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->d:Ljava/lang/Double;

    goto :goto_0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 132
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v2, v2

    iget v4, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, p1

    iget v4, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    iget v4, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    iget v5, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    add-int/2addr v4, v5

    int-to-double v4, v4

    .line 133
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->c:D

    mul-double/2addr v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 99
    iget-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->e:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 100
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 102
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->e:Ljava/lang/Double;

    .line 111
    :cond_0
    :goto_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->e:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 106
    :cond_1
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    iget v3, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    iget v3, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    add-int/lit8 v3, v3, -0x2

    mul-int/2addr v2, v3

    iget v3, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    add-int/lit8 v3, v3, -0x2

    mul-int/2addr v2, v3

    iget v3, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    add-int/lit8 v3, v3, -0x4

    mul-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->e:Ljava/lang/Double;

    goto :goto_0
.end method

.method public getDegreesOfFreedom1()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->a:I

    return v0
.end method

.method public getDegreesOfFreedom2()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, LCatalano/Statistics/Distributions/FisherDistribution;->b:I

    return v0
.end method
