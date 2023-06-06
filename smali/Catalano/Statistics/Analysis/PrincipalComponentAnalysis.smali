.class public LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;
    }
.end annotation


# instance fields
.field private a:[[D

.field private b:[D

.field private c:[D

.field private d:[D

.field private e:[[D

.field private f:[D

.field private g:[[D

.field private h:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;


# direct methods
.method public constructor <init>([[D)V
    .locals 1

    .prologue
    .line 42
    sget-object v0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->Center:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    invoke-direct {p0, p1, v0}, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;-><init>([[DLCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;)V

    .line 43
    return-void
.end method

.method public constructor <init>([[DLCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a:[[D

    .line 47
    iput-object p2, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->h:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    .line 48
    return-void
.end method

.method private a()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method private a([[D[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 96
    array-length v0, p1

    aget-object v1, p1, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 97
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 98
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 99
    aget-object v4, v0, v1

    aget-object v5, p1, v1

    aget-wide v6, v5, v3

    aget-wide v8, p2, v3

    sub-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    return-object v0
.end method


# virtual methods
.method public Compute()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a:[[D

    aget-object v0, v0, v1

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->b:[D

    .line 53
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a:[[D

    aget-object v0, v0, v1

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->c:[D

    .line 56
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a:[[D

    aget-object v0, v0, v1

    array-length v2, v0

    move v0, v1

    .line 57
    :goto_0
    if-ge v0, v2, :cond_0

    .line 58
    iget-object v3, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a:[[D

    invoke-static {v3, v0}, LCatalano/Math/Matrix;->getColumn([[DI)[D

    move-result-object v3

    .line 59
    iget-object v4, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->b:[D

    invoke-static {v3}, LCatalano/Statistics/Tools;->Mean([D)D

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 60
    iget-object v4, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->c:[D

    iget-object v5, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->b:[D

    aget-wide v6, v5, v0

    invoke-static {v3, v6, v7}, LCatalano/Statistics/Tools;->StandartDeviation([DD)D

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a:[[D

    iget-object v2, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->b:[D

    invoke-direct {p0, v0, v2}, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a([[D[D)[[D

    move-result-object v3

    .line 66
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->h:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    sget-object v2, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;->Standartize:LCatalano/Statistics/Analysis/PrincipalComponentAnalysis$AnalysisMethod;

    if-ne v0, v2, :cond_2

    move v0, v1

    .line 67
    :goto_1
    array-length v2, v3

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 68
    :goto_2
    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 69
    aget-object v4, v3, v0

    aget-wide v6, v4, v2

    iget-object v5, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->c:[D

    aget-wide v8, v5, v2

    div-double/2addr v6, v8

    aput-wide v6, v4, v2

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_2
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-direct {v0, v3}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[D)V

    .line 76
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getSingularValues()[D

    move-result-object v2

    iput-object v2, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->d:[D

    .line 77
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getV()[[D

    move-result-object v2

    iput-object v2, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->e:[[D

    .line 80
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getU()[[D

    move-result-object v0

    iget-object v2, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->d:[D

    invoke-static {v0, v2}, LCatalano/Math/Matrix;->MultiplyByDiagonal([[D[D)[[D

    move-result-object v0

    iput-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->g:[[D

    .line 83
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->d:[D

    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->f:[D

    .line 84
    :goto_3
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->d:[D

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 85
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->f:[D

    iget-object v2, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->d:[D

    aget-wide v2, v2, v1

    iget-object v4, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->d:[D

    aget-wide v4, v4, v1

    mul-double/2addr v2, v4

    iget-object v4, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a:[[D

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 87
    :cond_3
    invoke-direct {p0}, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->a()V

    .line 89
    return-void
.end method

.method public getEigenVectors()[[D
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->e:[[D

    return-object v0
.end method

.method public getResult()[[D
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, LCatalano/Statistics/Analysis/PrincipalComponentAnalysis;->g:[[D

    return-object v0
.end method
