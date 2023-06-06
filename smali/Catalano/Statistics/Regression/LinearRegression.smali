.class public LCatalano/Statistics/Regression/LinearRegression;
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
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, LCatalano/Statistics/Regression/LinearRegression;->a:[D

    .line 46
    iput-object p2, p0, LCatalano/Statistics/Regression/LinearRegression;->b:[D

    .line 47
    invoke-static {p1, p2}, LCatalano/Statistics/Tools;->Inclination([D[D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Regression/LinearRegression;->c:D

    .line 48
    invoke-static {p1, p2}, LCatalano/Statistics/Tools;->Interception([D[D)D

    move-result-wide v0

    iput-wide v0, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    .line 49
    return-void
.end method


# virtual methods
.method public CoefficientOfDetermination()D
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, LCatalano/Statistics/Regression/LinearRegression;->a:[D

    iget-object v1, p0, LCatalano/Statistics/Regression/LinearRegression;->b:[D

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
    .line 73
    iget-wide v0, p0, LCatalano/Statistics/Regression/LinearRegression;->c:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public Regression([D)[D
    .locals 6

    .prologue
    .line 78
    array-length v0, p1

    new-array v1, v0, [D

    .line 80
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 81
    iget-wide v2, p0, LCatalano/Statistics/Regression/LinearRegression;->c:D

    aget-wide v4, p1, v0

    mul-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    add-double/2addr v2, v4

    aput-wide v2, v1, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    return-object v1
.end method

.method public getInclination()D
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, LCatalano/Statistics/Regression/LinearRegression;->c:D

    return-wide v0
.end method

.method public getInterception()D
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    return-wide v0
.end method

.method public setInclination(D)V
    .locals 1

    .prologue
    .line 58
    iput-wide p1, p0, LCatalano/Statistics/Regression/LinearRegression;->c:D

    .line 59
    return-void
.end method

.method public setInterception(D)V
    .locals 1

    .prologue
    .line 68
    iput-wide p1, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    iget-wide v0, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.4f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, LCatalano/Statistics/Regression/LinearRegression;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.4f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.4f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, LCatalano/Statistics/Regression/LinearRegression;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.4f"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, LCatalano/Statistics/Regression/LinearRegression;->d:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
