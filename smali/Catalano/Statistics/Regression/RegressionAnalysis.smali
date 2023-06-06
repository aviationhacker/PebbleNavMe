.class public LCatalano/Statistics/Regression/RegressionAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x2

    invoke-direct {p0, v0}, LCatalano/Statistics/Regression/RegressionAnalysis;-><init>(I)V

    .line 48
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->a:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->b:I

    .line 20
    iput-boolean v1, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->c:Z

    .line 55
    iput-boolean v1, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->c:Z

    .line 56
    invoke-virtual {p0, p1}, LCatalano/Statistics/Regression/RegressionAnalysis;->setMaxDegree(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v1, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->a:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->b:I

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->c:Z

    .line 64
    iput-boolean p1, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->c:Z

    .line 65
    invoke-virtual {p0, v1}, LCatalano/Statistics/Regression/RegressionAnalysis;->setMaxDegree(I)V

    .line 66
    return-void
.end method


# virtual methods
.method public BestFit(Ljava/util/List;)LCatalano/Statistics/Regression/ISimpleRegression;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Statistics/Regression/ISimpleRegression;",
            ">;)",
            "LCatalano/Statistics/Regression/ISimpleRegression;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    const-wide/16 v4, 0x0

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Statistics/Regression/ISimpleRegression;

    .line 135
    invoke-interface {v0}, LCatalano/Statistics/Regression/ISimpleRegression;->CoefficientOfDetermination()D

    move-result-wide v2

    .line 136
    cmpl-double v7, v2, v4

    if-lez v7, :cond_1

    move-wide v8, v2

    move-object v2, v0

    move-wide v0, v8

    :goto_1
    move-wide v4, v0

    move-object v1, v2

    .line 140
    goto :goto_0

    .line 141
    :cond_0
    return-object v1

    :cond_1
    move-object v2, v1

    move-wide v0, v4

    goto :goto_1
.end method

.method public BestFit([D[D)LCatalano/Statistics/Regression/ISimpleRegression;
    .locals 13

    .prologue
    const/4 v10, 0x2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v1, LCatalano/Statistics/Regression/LinearRegression;

    invoke-direct {v1, p1, p2}, LCatalano/Statistics/Regression/LinearRegression;-><init>([D[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v1, LCatalano/Statistics/Regression/LogarithmicRegression;

    invoke-direct {v1, p1, p2}, LCatalano/Statistics/Regression/LogarithmicRegression;-><init>([D[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, LCatalano/Statistics/Regression/ExponentialRegression;

    invoke-direct {v1, p1, p2}, LCatalano/Statistics/Regression/ExponentialRegression;-><init>([D[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance v1, LCatalano/Statistics/Regression/PowerRegression;

    invoke-direct {v1, p1, p2}, LCatalano/Statistics/Regression/PowerRegression;-><init>([D[D)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    const/4 v1, 0x0

    .line 84
    const-wide/16 v4, 0x0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Statistics/Regression/ISimpleRegression;

    .line 87
    invoke-interface {v0}, LCatalano/Statistics/Regression/ISimpleRegression;->CoefficientOfDetermination()D

    move-result-wide v2

    .line 88
    cmpl-double v7, v2, v8

    if-nez v7, :cond_1

    .line 122
    :cond_0
    :goto_1
    return-object v0

    .line 89
    :cond_1
    cmpl-double v7, v2, v4

    if-lez v7, :cond_7

    move-wide v11, v2

    move-object v2, v0

    move-wide v0, v11

    :goto_2
    move-wide v4, v0

    move-object v1, v2

    .line 93
    goto :goto_0

    .line 97
    :cond_2
    iget-boolean v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->c:Z

    if-eqz v0, :cond_6

    .line 100
    new-instance v0, LCatalano/Statistics/Regression/PolynomialRegression;

    invoke-direct {v0, p1, p2, v10}, LCatalano/Statistics/Regression/PolynomialRegression;-><init>([D[DI)V

    .line 101
    invoke-interface {v0}, LCatalano/Statistics/Regression/ISimpleRegression;->CoefficientOfDetermination()D

    move-result-wide v2

    .line 102
    cmpl-double v6, v2, v8

    if-eqz v6, :cond_0

    .line 103
    cmpl-double v6, v2, v4

    if-lez v6, :cond_3

    .line 106
    iput v10, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->b:I

    move-wide v4, v2

    move-object v1, v0

    .line 110
    :cond_3
    const/4 v0, 0x3

    :goto_3
    iget v2, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->a:I

    if-gt v0, v2, :cond_6

    .line 111
    new-instance v6, LCatalano/Statistics/Regression/PolynomialRegression;

    invoke-direct {v6, p1, p2, v0}, LCatalano/Statistics/Regression/PolynomialRegression;-><init>([D[DI)V

    .line 112
    invoke-interface {v6}, LCatalano/Statistics/Regression/ISimpleRegression;->CoefficientOfDetermination()D

    move-result-wide v2

    .line 113
    cmpl-double v7, v2, v8

    if-nez v7, :cond_4

    move-object v0, v6

    goto :goto_1

    .line 114
    :cond_4
    cmpl-double v7, v2, v4

    if-lez v7, :cond_5

    .line 117
    iput v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->b:I

    move-wide v4, v2

    move-object v1, v6

    .line 110
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 122
    goto :goto_1

    :cond_7
    move-object v2, v1

    move-wide v0, v4

    goto :goto_2
.end method

.method public getMaxDegree()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->a:I

    return v0
.end method

.method public getUsedDegree()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->b:I

    return v0
.end method

.method public isUsePolynomial()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->c:Z

    return v0
.end method

.method public setMaxDegree(I)V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->a:I

    .line 28
    return-void
.end method

.method public setUsePolynomial(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, LCatalano/Statistics/Regression/RegressionAnalysis;->c:Z

    .line 40
    return-void
.end method
