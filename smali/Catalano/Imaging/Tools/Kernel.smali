.class public LCatalano/Imaging/Tools/Kernel;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decompose([[D)[[D
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-direct {v0, p0}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[D)V

    .line 43
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getU()[[D

    move-result-object v2

    .line 44
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getV()[[D

    move-result-object v3

    .line 45
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getS()[[D

    move-result-object v4

    aget-object v4, v4, v1

    aget-wide v4, v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 47
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getU()[[D

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [D

    .line 48
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getV()[[D

    move-result-object v0

    array-length v0, v0

    new-array v7, v0, [D

    .line 49
    const/4 v0, 0x2

    new-array v8, v0, [[D

    move v0, v1

    .line 51
    :goto_0
    array-length v9, v6

    if-ge v0, v9, :cond_0

    .line 52
    aget-object v9, v2, v0

    aget-wide v10, v9, v1

    mul-double/2addr v10, v4

    aput-wide v10, v6, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 55
    :goto_1
    array-length v2, v7

    if-ge v0, v2, :cond_1

    .line 56
    aget-object v2, v3, v0

    aget-wide v10, v2, v1

    mul-double/2addr v10, v4

    aput-wide v10, v7, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_1
    aput-object v6, v8, v1

    .line 60
    const/4 v0, 0x1

    aput-object v7, v8, v0

    .line 62
    return-object v8
.end method

.method public static isNormalized([[D)Z
    .locals 4

    .prologue
    .line 75
    invoke-static {p0}, LCatalano/Math/Matrix;->Sum([[D)D

    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 77
    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSeparable([[I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-static {p0}, LCatalano/Core/ArraysUtil;->toDouble([[I)[[D

    move-result-object v1

    .line 90
    new-instance v2, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-direct {v2, v1}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[D)V

    .line 91
    invoke-virtual {v2}, LCatalano/Math/Decompositions/SingularValueDecomposition;->rank()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toDouble([[I)[[D
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 102
    const-wide/16 v2, 0x0

    move v0, v1

    .line 103
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 104
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 105
    aget-object v5, p0, v0

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v6, v5

    add-double/2addr v6, v2

    .line 104
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 109
    :cond_1
    array-length v0, p0

    aget-object v4, p0, v1

    array-length v4, v4

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v4, v1

    .line 110
    :goto_2
    array-length v5, p0

    if-ge v4, v5, :cond_4

    move v5, v1

    .line 111
    :goto_3
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v5, v6, :cond_3

    .line 112
    aget-object v8, v0, v4

    aget-object v6, p0, v4

    aget v6, v6, v5

    if-gez v6, :cond_2

    aget-object v6, p0, v4

    aget v6, v6, v5

    int-to-double v6, v6

    div-double/2addr v6, v2

    neg-double v6, v6

    :goto_4
    aput-wide v6, v8, v5

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 112
    :cond_2
    aget-object v6, p0, v4

    aget v6, v6, v5

    int-to-double v6, v6

    div-double/2addr v6, v2

    goto :goto_4

    .line 110
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 116
    :cond_4
    return-object v0
.end method

.method public static toInt([[D)[[I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-static {p0}, LCatalano/Math/Matrix;->Min([[D)D

    move-result-wide v4

    .line 129
    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The kernel can\'t be normalized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 133
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    move v3, v2

    .line 134
    :goto_1
    aget-object v6, p0, v2

    array-length v6, v6

    if-ge v3, v6, :cond_1

    .line 135
    aget-object v6, v0, v1

    aget-object v7, p0, v1

    aget-wide v8, v7, v3

    div-double/2addr v8, v4

    double-to-int v7, v8

    aput v7, v6, v3

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 133
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    :cond_2
    return-object v0
.end method
