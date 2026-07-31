.class public LCatalano/Statistics/Distributions/NakagamiDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D

.field private c:Ljava/lang/Double;

.field private d:Ljava/lang/Double;

.field private e:D

.field private f:D

.field private g:D


# direct methods
.method public constructor <init>(DD)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 56
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Shape parameter (mu) should be greater than or equal to 0.5."

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
    :cond_0
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_1

    .line 64
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spread parameter (omega) should be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :catch_1
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    :cond_1
    iput-wide p1, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    .line 71
    iput-wide p3, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->b:D

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, LCatalano/Statistics/Distributions/NakagamiDistribution;->a(DD)V

    .line 74
    return-void
.end method

.method private a(DD)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 77
    invoke-static {p1, p2, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    .line 78
    invoke-static {p1, p2}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v2

    .line 79
    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 80
    neg-double v6, p1

    div-double/2addr v6, p3

    iput-wide v6, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->f:D

    .line 81
    mul-double v6, v8, p1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    iput-wide v6, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->g:D

    .line 83
    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->e:D

    .line 85
    iput-object v10, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->c:Ljava/lang/Double;

    .line 86
    iput-object v10, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->d:Ljava/lang/Double;

    .line 87
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 7

    .prologue
    .line 121
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->b:D

    div-double/2addr v2, v4

    mul-double v4, p1, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, LCatalano/Math/Functions/Gamma;->LowerIncomplete(DD)D

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
    .locals 7

    .prologue
    .line 131
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->e:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->g:D

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->f:D

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 6

    .prologue
    .line 99
    iget-object v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->c:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 100
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->c:Ljava/lang/Double;

    .line 101
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->c:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 5

    .prologue
    .line 126
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->e:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->g:D

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->f:D

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 106
    iget-object v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->d:Ljava/lang/Double;

    if-nez v0, :cond_0

    .line 108
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    invoke-static {v2, v3}, LCatalano/Math/Functions/Gamma;->Function(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 109
    iget-wide v2, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->b:D

    iget-wide v4, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    div-double v4, v6, v4

    mul-double/2addr v0, v0

    mul-double/2addr v0, v4

    sub-double v0, v6, v0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->d:Ljava/lang/Double;

    .line 111
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->d:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->a:D

    return-wide v0
.end method

.method public getSpread()D
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, LCatalano/Statistics/Distributions/NakagamiDistribution;->b:D

    return-wide v0
.end method
