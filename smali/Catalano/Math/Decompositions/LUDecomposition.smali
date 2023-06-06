.class public LCatalano/Math/Decompositions/LUDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[[D

.field private b:I

.field private c:I

.field private d:I

.field private e:[I


# direct methods
.method public constructor <init>([[D)V
    .locals 12

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    .line 71
    array-length v0, p1

    iput v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    .line 72
    const/4 v0, 0x0

    aget-object v0, p1, v0

    array-length v0, v0

    iput v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    .line 73
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    new-array v0, v0, [I

    iput-object v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    .line 75
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v0, v1, :cond_0

    .line 76
    iget-object v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    aput v0, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->d:I

    .line 80
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    new-array v3, v0, [D

    .line 83
    const/4 v2, 0x0

    :goto_1
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v2, v0, :cond_9

    .line 87
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v1, v1, v0

    aget-wide v4, v1, v2

    aput-wide v4, v3, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 93
    :cond_1
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v0, v1, :cond_3

    .line 94
    iget-object v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v6, v1, v0

    .line 98
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 99
    const-wide/16 v4, 0x0

    .line 100
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v7, :cond_2

    .line 101
    aget-wide v8, v6, v1

    aget-wide v10, v3, v1

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 104
    :cond_2
    aget-wide v8, v3, v0

    sub-double v4, v8, v4

    aput-wide v4, v3, v0

    aput-wide v4, v6, v2

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 110
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v1, v2

    :goto_5
    iget v4, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v0, v4, :cond_5

    .line 111
    aget-wide v4, v3, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    aget-wide v6, v3, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    move v1, v0

    .line 110
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 115
    :cond_5
    if-eq v1, v2, :cond_7

    .line 116
    const/4 v0, 0x0

    :goto_6
    iget v4, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v0, v4, :cond_6

    .line 117
    iget-object v4, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v0

    iget-object v6, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v6, v6, v1

    iget-object v7, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v7, v7, v2

    aget-wide v8, v7, v0

    aput-wide v8, v6, v0

    iget-object v6, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v6, v6, v2

    aput-wide v4, v6, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 119
    :cond_6
    iget-object v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    aget v0, v0, v1

    iget-object v4, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    iget-object v5, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    aget v5, v5, v2

    aput v5, v4, v1

    iget-object v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    aput v0, v1, v2

    .line 120
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->d:I

    neg-int v0, v0

    iput v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->d:I

    .line 125
    :cond_7
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v2, v0, :cond_8

    iget-object v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v0, v0, v2

    aget-wide v0, v0, v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_8

    .line 126
    add-int/lit8 v0, v2, 0x1

    :goto_7
    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v0, v1, :cond_8

    .line 127
    iget-object v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v1, v1, v0

    aget-wide v4, v1, v2

    iget-object v6, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v6, v6, v2

    aget-wide v6, v6, v2

    div-double/2addr v4, v6

    aput-wide v4, v1, v2

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 83
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 131
    :cond_9
    return-void
.end method


# virtual methods
.method public determinant()D
    .locals 6

    .prologue
    .line 226
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-eq v0, v1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->d:I

    int-to-double v2, v0

    .line 230
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v0, v1, :cond_1

    .line 231
    iget-object v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v1, v1, v0

    aget-wide v4, v1, v0

    mul-double/2addr v2, v4

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    :cond_1
    return-wide v2
.end method

.method public getDoublePivot()[D
    .locals 4

    .prologue
    .line 214
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    new-array v1, v0, [D

    .line 215
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v0, v2, :cond_0

    .line 216
    iget-object v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    aget v2, v2, v0

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    return-object v1
.end method

.method public getL()[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 158
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 160
    :goto_0
    iget v3, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 161
    :goto_1
    iget v4, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v3, v4, :cond_2

    .line 162
    if-le v1, v3, :cond_0

    .line 163
    aget-object v4, v0, v1

    iget-object v5, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 161
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    :cond_0
    if-ne v1, v3, :cond_1

    .line 165
    aget-object v4, v0, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 167
    :cond_1
    aget-object v4, v0, v1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 160
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_3
    return-object v0
.end method

.method public getPivot()[I
    .locals 3

    .prologue
    .line 198
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    new-array v1, v0, [I

    .line 199
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-ge v0, v2, :cond_0

    .line 200
    iget-object v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-object v1
.end method

.method public getU()[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 179
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 181
    :goto_0
    iget v3, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v1, v3, :cond_2

    move v3, v2

    .line 182
    :goto_1
    iget v4, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v3, v4, :cond_1

    .line 183
    if-gt v1, v3, :cond_0

    .line 184
    aget-object v4, v0, v1

    iget-object v5, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 182
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    :cond_0
    aget-object v4, v0, v1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 181
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_2
    return-object v0
.end method

.method public inverse()[[D
    .locals 2

    .prologue
    .line 150
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    iget v1, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    invoke-static {v0, v1}, LCatalano/Math/Matrix;->Identity(II)[[D

    move-result-object v0

    invoke-virtual {p0, v0}, LCatalano/Math/Decompositions/LUDecomposition;->solve([[D)[[D

    move-result-object v0

    return-object v0
.end method

.method public isNonsingular()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 138
    move v0, v1

    :goto_0
    iget v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v0, v2, :cond_1

    .line 139
    iget-object v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v2, v2, v0

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 142
    :goto_1
    return v1

    .line 138
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public solve([[D)[[D
    .locals 14

    .prologue
    const/4 v1, 0x0

    .line 244
    array-length v0, p1

    iget v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->b:I

    if-eq v0, v2, :cond_0

    .line 245
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix row dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    invoke-virtual {p0}, LCatalano/Math/Decompositions/LUDecomposition;->isNonsingular()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Matrix is singular."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    aget-object v0, p1, v1

    array-length v4, v0

    .line 253
    iget-object v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->e:[I

    add-int/lit8 v2, v4, -0x1

    invoke-static {p1, v0, v1, v2}, LCatalano/Math/Matrix;->Submatrix([[D[III)[[D

    move-result-object v5

    move v0, v1

    .line 256
    :goto_0
    iget v2, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v0, v2, :cond_4

    .line 257
    add-int/lit8 v2, v0, 0x1

    :goto_1
    iget v3, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    if-ge v2, v3, :cond_3

    move v3, v1

    .line 258
    :goto_2
    if-ge v3, v4, :cond_2

    .line 259
    aget-object v6, v5, v2

    aget-wide v8, v6, v3

    aget-object v7, v5, v0

    aget-wide v10, v7, v3

    iget-object v7, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v7, v7, v2

    aget-wide v12, v7, v0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 257
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    :cond_4
    iget v0, p0, LCatalano/Math/Decompositions/LUDecomposition;->c:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_8

    move v0, v1

    .line 265
    :goto_4
    if-ge v0, v4, :cond_5

    .line 266
    aget-object v2, v5, v3

    aget-wide v6, v2, v0

    iget-object v8, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v2, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v2, v1

    .line 268
    :goto_5
    if-ge v2, v3, :cond_7

    move v0, v1

    .line 269
    :goto_6
    if-ge v0, v4, :cond_6

    .line 270
    aget-object v6, v5, v2

    aget-wide v8, v6, v0

    aget-object v7, v5, v3

    aget-wide v10, v7, v0

    iget-object v7, p0, LCatalano/Math/Decompositions/LUDecomposition;->a:[[D

    aget-object v7, v7, v2

    aget-wide v12, v7, v3

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 268
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 264
    :cond_7
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    .line 274
    :cond_8
    return-object v5
.end method
