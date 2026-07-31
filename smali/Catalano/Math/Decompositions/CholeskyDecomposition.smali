.class public LCatalano/Math/Decompositions/CholeskyDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[[D

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>([[D)V
    .locals 14

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    array-length v0, p1

    iput v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    .line 67
    iget v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    iget v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    .line 68
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    iget v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->c:Z

    .line 70
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    if-ge v0, v1, :cond_6

    .line 71
    iget-object v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v5, v1, v0

    .line 72
    const-wide/16 v2, 0x0

    .line 73
    const/4 v1, 0x0

    move v4, v1

    move-wide v6, v2

    :goto_2
    if-ge v4, v0, :cond_3

    .line 74
    iget-object v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v8, v1, v4

    .line 75
    const-wide/16 v2, 0x0

    .line 76
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_1

    .line 77
    aget-wide v10, v8, v1

    aget-wide v12, v5, v1

    mul-double/2addr v10, v12

    add-double/2addr v2, v10

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 68
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_1
    aget-object v1, p1, v0

    aget-wide v8, v1, v4

    sub-double v2, v8, v2

    iget-object v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v1, v1, v4

    aget-wide v8, v1, v4

    div-double/2addr v2, v8

    aput-wide v2, v5, v4

    .line 80
    mul-double/2addr v2, v2

    add-double/2addr v2, v6

    .line 81
    iget-boolean v6, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->c:Z

    aget-object v1, p1, v4

    aget-wide v8, v1, v0

    aget-object v1, p1, v0

    aget-wide v10, v1, v4

    cmpl-double v1, v8, v10

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_4
    and-int/2addr v1, v6

    iput-boolean v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->c:Z

    .line 73
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-wide v6, v2

    goto :goto_2

    .line 81
    :cond_2
    const/4 v1, 0x0

    goto :goto_4

    .line 83
    :cond_3
    aget-object v1, p1, v0

    aget-wide v2, v1, v0

    sub-double/2addr v2, v6

    .line 84
    iget-boolean v4, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->c:Z

    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-lez v1, :cond_4

    const/4 v1, 0x1

    :goto_5
    and-int/2addr v1, v4

    iput-boolean v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->c:Z

    .line 85
    iget-object v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v1, v1, v0

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 86
    add-int/lit8 v1, v0, 0x1

    :goto_6
    iget v2, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    if-ge v1, v2, :cond_5

    .line 87
    iget-object v2, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v2, v2, v0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 70
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 90
    :cond_6
    return-void
.end method


# virtual methods
.method public getL()[[D
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    iget v1, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    iget v2, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    invoke-static {v0, v1, v2}, LCatalano/Math/Matrix;->SubMatrix([[DII)[[D

    move-result-object v0

    return-object v0
.end method

.method public isSPD()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->c:Z

    return v0
.end method

.method public solve([[D)[[D
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 114
    array-length v0, p1

    iget v2, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    if-eq v0, v2, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix row dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-boolean v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->c:Z

    if-nez v0, :cond_1

    .line 118
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Matrix is not symmetric positive definite."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    invoke-static {p1}, LCatalano/Math/Matrix;->Copy([[D)[[D

    move-result-object v4

    .line 123
    aget-object v0, p1, v1

    array-length v5, v0

    move v0, v1

    .line 126
    :goto_0
    iget v2, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    if-ge v0, v2, :cond_4

    move v3, v1

    .line 127
    :goto_1
    if-ge v3, v5, :cond_3

    move v2, v1

    .line 128
    :goto_2
    if-ge v2, v0, :cond_2

    .line 129
    aget-object v6, v4, v0

    aget-wide v8, v6, v3

    aget-object v7, v4, v2

    aget-wide v10, v7, v3

    iget-object v7, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v7, v7, v0

    aget-wide v12, v7, v2

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 131
    :cond_2
    aget-object v2, v4, v0

    aget-wide v6, v2, v3

    iget-object v8, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v0

    div-double/2addr v6, v8

    aput-wide v6, v2, v3

    .line 127
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 126
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_4
    iget v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_7

    move v2, v1

    .line 137
    :goto_4
    if-ge v2, v5, :cond_6

    .line 138
    add-int/lit8 v0, v3, 0x1

    :goto_5
    iget v6, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    if-ge v0, v6, :cond_5

    .line 139
    aget-object v6, v4, v3

    aget-wide v8, v6, v2

    aget-object v7, v4, v0

    aget-wide v10, v7, v2

    iget-object v7, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v7, v7, v0

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 141
    :cond_5
    aget-object v0, v4, v3

    aget-wide v6, v0, v2

    iget-object v8, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->a:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v0, v2

    .line 137
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 136
    :cond_6
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    .line 145
    :cond_7
    iget v0, p0, LCatalano/Math/Decompositions/CholeskyDecomposition;->b:I

    invoke-static {v4, v0, v5}, LCatalano/Math/Matrix;->SubMatrix([[DII)[[D

    move-result-object v0

    return-object v0
.end method
