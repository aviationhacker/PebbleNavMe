.class public LCatalano/Statistics/Regression/LogarithmicRegression;
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
    iput-object p1, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->a:[D

    .line 48
    iput-object p2, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->b:[D

    .line 49
    invoke-static {p1}, LCatalano/Math/Matrix;->Log([D)[D

    move-result-object v0

    .line 50
    invoke-static {v0, p2}, LCatalano/Statistics/Tools;->Inclination([D[D)D

    move-result-wide v2

    iput-wide v2, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->c:D

    .line 51
    invoke-static {v0, p2}, LCatalano/Statistics/Tools;->Interception([D[D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    .line 52
    return-void
.end method


# virtual methods
.method public CoefficientOfDetermination()D
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->a:[D

    invoke-virtual {p0, v0}, LCatalano/Statistics/Regression/LogarithmicRegression;->Regression([D)[D

    move-result-object v0

    .line 91
    iget-object v1, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->b:[D

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
    .line 76
    iget-wide v0, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->c:D

    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public Regression([D)[D
    .locals 6

    .prologue
    .line 81
    array-length v0, p1

    new-array v1, v0, [D

    .line 82
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 83
    iget-wide v2, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->c:D

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method

.method public getInclination()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->c:D

    return-wide v0
.end method

.method public getInterception()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    return-wide v0
.end method

.method public setInclination(D)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->c:D

    .line 62
    return-void
.end method

.method public setInterception(D)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 96
    iget-wide v0, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.4f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ln(x) + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ln(x) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Statistics/Regression/LogarithmicRegression;->d:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
