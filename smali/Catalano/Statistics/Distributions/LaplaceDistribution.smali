.class public LCatalano/Statistics/Distributions/LaplaceDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# instance fields
.field private a:D

.field private b:D

.field private c:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Scale must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const-class v1, LCatalano/Statistics/Distributions/LaplaceDistribution;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    iput-wide p1, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->a:D

    .line 63
    iput-wide p3, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    .line 65
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    iget-wide v4, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->c:D

    .line 66
    return-void
.end method


# virtual methods
.method public DistributionFunction(D)D
    .locals 11

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 85
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->a:D

    sub-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->a:D

    sub-double v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    neg-double v4, v4

    iget-wide v6, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    sub-double v4, v8, v4

    mul-double/2addr v2, v4

    add-double/2addr v2, v8

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Entropy()D
    .locals 4

    .prologue
    .line 80
    const-wide v0, 0x4015bf0a8b145769L    # 5.43656365691809

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 95
    iget-wide v0, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->c:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->a:D

    sub-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public Mean()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->a:D

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 7

    .prologue
    .line 90
    iget-wide v0, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->c:D

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->a:D

    sub-double v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Variance()D
    .locals 4

    .prologue
    .line 75
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Distributions/LaplaceDistribution;->b:D

    mul-double/2addr v0, v2

    return-wide v0
.end method
