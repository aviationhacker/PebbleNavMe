.class public LCatalano/Statistics/Regression/PolynomialRegression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Regression/ISimpleRegression;


# instance fields
.field private a:[D

.field private b:[D

.field private c:[[D

.field private d:I


# direct methods
.method public constructor <init>([D[D)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, LCatalano/Statistics/Regression/PolynomialRegression;-><init>([D[DI)V

    .line 62
    return-void
.end method

.method public constructor <init>([D[DI)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, LCatalano/Statistics/Regression/PolynomialRegression;->d:I

    .line 71
    iput-object p1, p0, LCatalano/Statistics/Regression/PolynomialRegression;->a:[D

    .line 72
    iput-object p2, p0, LCatalano/Statistics/Regression/PolynomialRegression;->b:[D

    .line 73
    iput p3, p0, LCatalano/Statistics/Regression/PolynomialRegression;->d:I

    .line 76
    array-length v0, p1

    add-int/lit8 v1, p3, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 77
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 78
    :goto_1
    if-gt v3, p3, :cond_0

    .line 79
    aget-object v4, v0, v1

    aget-wide v6, p1, v1

    int-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    array-length v1, p2

    invoke-direct {p0, p2, v1}, LCatalano/Statistics/Regression/PolynomialRegression;->a([DI)[[D

    move-result-object v1

    .line 87
    new-instance v2, LCatalano/Math/Decompositions/QRDecomposition;

    invoke-direct {v2, v0}, LCatalano/Math/Decompositions/QRDecomposition;-><init>([[D)V

    .line 88
    invoke-virtual {v2, v1}, LCatalano/Math/Decompositions/QRDecomposition;->solve([[D)[[D

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    .line 90
    return-void
.end method

.method private a([DI)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 93
    array-length v5, p1

    .line 94
    if-eqz v5, :cond_0

    array-length v0, p1

    div-int/2addr v0, v5

    move v1, v0

    .line 95
    :goto_0
    mul-int v0, v5, v1

    array-length v3, p1

    if-eq v0, v3, :cond_1

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array length must be a multiple of m."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    .line 94
    goto :goto_0

    .line 98
    :cond_1
    filled-new-array {v5, v1}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v4, v2

    .line 99
    :goto_1
    if-ge v4, v5, :cond_3

    move v3, v2

    .line 100
    :goto_2
    if-ge v3, v1, :cond_2

    .line 101
    aget-object v6, v0, v4

    mul-int v7, v3, v5

    add-int/2addr v7, v4

    aget-wide v8, p1, v7

    aput-wide v8, v6, v3

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 99
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 104
    :cond_3
    return-object v0
.end method


# virtual methods
.method public CoefficientOfDetermination()D
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, LCatalano/Statistics/Regression/PolynomialRegression;->a:[D

    invoke-virtual {p0, v0}, LCatalano/Statistics/Regression/PolynomialRegression;->Regression([D)[D

    move-result-object v0

    .line 137
    iget-object v1, p0, LCatalano/Statistics/Regression/PolynomialRegression;->b:[D

    invoke-static {v0, v1}, LCatalano/Statistics/Correlations;->PearsonCorrelation([D[D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public Regression(D)D
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 110
    iget-object v0, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    aget-object v0, v0, v8

    aget-wide v2, v0, v8

    .line 112
    const/4 v0, 0x1

    move-wide v4, v2

    move-wide v2, p1

    :goto_0
    iget-object v1, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    aget-object v1, v1, v0

    aget-wide v6, v1, v8

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    .line 114
    mul-double/2addr v2, p1

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-wide v4
.end method

.method public Regression([D)[D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 122
    array-length v0, p1

    new-array v3, v0, [D

    move v0, v1

    .line 123
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_1

    .line 124
    iget-object v2, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    aget-object v2, v2, v1

    aget-wide v4, v2, v1

    aput-wide v4, v3, v0

    .line 125
    aget-wide v4, p1, v0

    .line 126
    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 127
    aget-wide v6, v3, v0

    iget-object v8, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    aget-object v8, v8, v2

    aget-wide v8, v8, v1

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    aput-wide v6, v3, v0

    .line 128
    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    return-object v3
.end method

.method public getDegree()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, LCatalano/Statistics/Regression/PolynomialRegression;->d:I

    return v0
.end method

.method public setDegree(I)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, LCatalano/Statistics/Regression/PolynomialRegression;->d:I

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 143
    const-string v1, "y = "

    .line 145
    iget-object v0, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v0, v1

    move v1, v2

    .line 146
    :goto_0
    iget-object v4, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 147
    if-eqz v3, :cond_0

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%.4f"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "x^"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "%.4f"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, LCatalano/Statistics/Regression/PolynomialRegression;->c:[[D

    aget-object v6, v6, v3

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_1
    return-object v0
.end method
