.class public LCatalano/Statistics/Regression/PowerRegression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Regression/ILinear;
.implements LCatalano/Statistics/Regression/ISimpleRegression;


# instance fields
.field private a:[D

.field private b:[D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>([D[D)V
    .locals 4

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, LCatalano/Statistics/Regression/PowerRegression;->a:[D

    .line 48
    iput-object p2, p0, LCatalano/Statistics/Regression/PowerRegression;->b:[D

    .line 49
    invoke-static {p1}, LCatalano/Math/Matrix;->Log([D)[D

    move-result-object v0

    .line 50
    invoke-static {p2}, LCatalano/Math/Matrix;->Log([D)[D

    move-result-object v1

    .line 51
    invoke-static {v0, v1}, LCatalano/Statistics/Tools;->Inclination([D[D)D

    move-result-wide v2

    iput-wide v2, p0, LCatalano/Statistics/Regression/PowerRegression;->c:D

    .line 52
    invoke-static {v0, v1}, LCatalano/Statistics/Tools;->Interception([D[D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Regression/PowerRegression;->d:D

    .line 53
    return-void
.end method


# virtual methods
.method public CoefficientOfDetermination()D
    .locals 4

    .prologue
    .line 92
    iget-object v0, p0, LCatalano/Statistics/Regression/PowerRegression;->a:[D

    invoke-virtual {p0, v0}, LCatalano/Statistics/Regression/PowerRegression;->Regression([D)[D

    move-result-object v0

    .line 93
    iget-object v1, p0, LCatalano/Statistics/Regression/PowerRegression;->b:[D

    invoke-static {v0, v1}, LCatalano/Statistics/Correlations;->PearsonCorrelation([D[D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Regression(D)D
    .locals 5

    .prologue
    .line 77
    iget-wide v0, p0, LCatalano/Statistics/Regression/PowerRegression;->d:D

    iget-wide v2, p0, LCatalano/Statistics/Regression/PowerRegression;->c:D

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public Regression([D)[D
    .locals 8

    .prologue
    .line 82
    array-length v0, p1

    new-array v1, v0, [D

    .line 84
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 85
    iget-wide v2, p0, LCatalano/Statistics/Regression/PowerRegression;->d:D

    aget-wide v4, p1, v0

    iget-wide v6, p0, LCatalano/Statistics/Regression/PowerRegression;->c:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-object v1
.end method

.method public getInclination()D
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, LCatalano/Statistics/Regression/PowerRegression;->c:D

    return-wide v0
.end method

.method public getInterception()D
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, LCatalano/Statistics/Regression/PowerRegression;->d:D

    return-wide v0
.end method

.method public setInclination(D)V
    .locals 1

    .prologue
    .line 62
    iput-wide p1, p0, LCatalano/Statistics/Regression/PowerRegression;->c:D

    .line 63
    return-void
.end method

.method public setInterception(D)V
    .locals 1

    .prologue
    .line 72
    iput-wide p1, p0, LCatalano/Statistics/Regression/PowerRegression;->d:D

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.4f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, LCatalano/Statistics/Regression/PowerRegression;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.4f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, LCatalano/Statistics/Regression/PowerRegression;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
