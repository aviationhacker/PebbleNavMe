.class public LCatalano/Math/Decompositions/QRDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:[[D

.field private b:I

.field private c:I

.field private d:[D


# direct methods
.method public constructor <init>([[D)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    .line 69
    array-length v0, p1

    iput v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    .line 70
    aget-object v0, p1, v1

    array-length v0, v0

    iput v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    .line 71
    iget v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    new-array v0, v0, [D

    iput-object v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->d:[D

    move v0, v1

    .line 74
    :goto_0
    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v0, v1, :cond_6

    move v1, v0

    move-wide v2, v4

    .line 77
    :goto_1
    iget v6, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v1, v6, :cond_0

    .line 78
    iget-object v6, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v0

    invoke-static {v2, v3, v6, v7}, LCatalano/Math/Tools;->Hypotenuse(DD)D

    move-result-wide v2

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_0
    cmpl-double v1, v2, v4

    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v1, v1, v0

    aget-wide v6, v1, v0

    cmpg-double v1, v6, v4

    if-gez v1, :cond_1

    .line 84
    neg-double v2, v2

    :cond_1
    move v1, v0

    .line 86
    :goto_2
    iget v6, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v1, v6, :cond_2

    .line 87
    iget-object v6, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v6, v6, v1

    aget-wide v8, v6, v0

    div-double/2addr v8, v2

    aput-wide v8, v6, v0

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 89
    :cond_2
    iget-object v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v1, v1, v0

    aget-wide v6, v1, v0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v8

    aput-wide v6, v1, v0

    .line 92
    add-int/lit8 v1, v0, 0x1

    :goto_3
    iget v6, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v1, v6, :cond_5

    move v6, v0

    move-wide v8, v4

    .line 94
    :goto_4
    iget v7, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v6, v7, :cond_3

    .line 95
    iget-object v7, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v7, v7, v6

    aget-wide v10, v7, v0

    iget-object v7, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v7, v7, v6

    aget-wide v12, v7, v1

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 94
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 97
    :cond_3
    neg-double v6, v8

    iget-object v8, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v8, v8, v0

    aget-wide v8, v8, v0

    div-double v8, v6, v8

    move v6, v0

    .line 98
    :goto_5
    iget v7, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v6, v7, :cond_4

    .line 99
    iget-object v7, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v7, v7, v6

    aget-wide v10, v7, v1

    iget-object v12, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v12, v12, v6

    aget-wide v12, v12, v0

    mul-double/2addr v12, v8

    add-double/2addr v10, v12

    aput-wide v10, v7, v1

    .line 98
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 92
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 103
    :cond_5
    iget-object v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->d:[D

    neg-double v2, v2

    aput-wide v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 105
    :cond_6
    return-void
.end method


# virtual methods
.method public getH()[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 124
    iget v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 126
    :goto_0
    iget v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v1, v3, :cond_2

    move v3, v2

    .line 127
    :goto_1
    iget v4, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v3, v4, :cond_1

    .line 128
    if-lt v1, v3, :cond_0

    .line 129
    aget-object v4, v0, v1

    iget-object v5, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 127
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 131
    :cond_0
    aget-object v4, v0, v1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 126
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_2
    return-object v0
.end method

.method public getQ()[[D
    .locals 14

    .prologue
    const-wide/16 v6, 0x0

    .line 164
    iget v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 166
    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 167
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v1, v3, :cond_0

    .line 168
    aget-object v3, v0, v1

    aput-wide v6, v3, v2

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    :cond_0
    aget-object v1, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v1, v2

    move v1, v2

    .line 171
    :goto_2
    iget v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v1, v3, :cond_3

    .line 172
    iget-object v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_2

    move v3, v2

    move-wide v4, v6

    .line 174
    :goto_3
    iget v8, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v3, v8, :cond_1

    .line 175
    iget-object v8, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v2

    aget-object v10, v0, v3

    aget-wide v10, v10, v1

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 177
    :cond_1
    neg-double v4, v4

    iget-object v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v3, v3, v2

    aget-wide v8, v3, v2

    div-double/2addr v4, v8

    move v3, v2

    .line 178
    :goto_4
    iget v8, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v3, v8, :cond_2

    .line 179
    aget-object v8, v0, v3

    aget-wide v10, v8, v1

    iget-object v9, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v9, v9, v3

    aget-wide v12, v9, v2

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    aput-wide v10, v8, v1

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 171
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 166
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 184
    :cond_4
    return-object v0
.end method

.method public getR()[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 143
    iget v0, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 145
    :goto_0
    iget v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 146
    :goto_1
    iget v4, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v3, v4, :cond_2

    .line 147
    if-ge v1, v3, :cond_0

    .line 148
    aget-object v4, v0, v1

    iget-object v5, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v5, v5, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 146
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 149
    :cond_0
    if-ne v1, v3, :cond_1

    .line 150
    aget-object v4, v0, v1

    iget-object v5, p0, LCatalano/Math/Decompositions/QRDecomposition;->d:[D

    aget-wide v6, v5, v1

    aput-wide v6, v4, v3

    goto :goto_2

    .line 152
    :cond_1
    aget-object v4, v0, v1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_2

    .line 145
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_3
    return-object v0
.end method

.method public isFullRank()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 112
    move v0, v1

    :goto_0
    iget v2, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v0, v2, :cond_1

    .line 113
    iget-object v2, p0, LCatalano/Math/Decompositions/QRDecomposition;->d:[D

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 116
    :goto_1
    return v1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public solve([[D)[[D
    .locals 14

    .prologue
    const/4 v2, 0x0

    .line 195
    array-length v0, p1

    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Matrix row dimensions must agree."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-virtual {p0}, LCatalano/Math/Decompositions/QRDecomposition;->isFullRank()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Matrix is rank deficient."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    aget-object v0, p1, v2

    array-length v7, v0

    .line 204
    invoke-virtual {p1}, [[D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 207
    :goto_0
    iget v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    if-ge v1, v3, :cond_5

    move v6, v2

    .line 208
    :goto_1
    if-ge v6, v7, :cond_4

    .line 209
    const-wide/16 v4, 0x0

    move v3, v1

    .line 210
    :goto_2
    iget v8, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v3, v8, :cond_2

    .line 211
    iget-object v8, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v1

    aget-object v10, v0, v3

    aget-wide v10, v10, v6

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    :cond_2
    neg-double v4, v4

    iget-object v3, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v3, v3, v1

    aget-wide v8, v3, v1

    div-double/2addr v4, v8

    move v3, v1

    .line 214
    :goto_3
    iget v8, p0, LCatalano/Math/Decompositions/QRDecomposition;->b:I

    if-ge v3, v8, :cond_3

    .line 215
    aget-object v8, v0, v3

    aget-wide v10, v8, v6

    iget-object v9, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v9, v9, v3

    aget-wide v12, v9, v1

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    aput-wide v10, v8, v6

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 208
    :cond_3
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_1

    .line 207
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    :cond_5
    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_4
    if-ltz v4, :cond_9

    move v1, v2

    .line 221
    :goto_5
    if-ge v1, v7, :cond_6

    .line 222
    aget-object v3, v0, v4

    aget-wide v8, v3, v1

    iget-object v5, p0, LCatalano/Math/Decompositions/QRDecomposition;->d:[D

    aget-wide v10, v5, v4

    div-double/2addr v8, v10

    aput-wide v8, v3, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move v3, v2

    .line 224
    :goto_6
    if-ge v3, v4, :cond_8

    move v1, v2

    .line 225
    :goto_7
    if-ge v1, v7, :cond_7

    .line 226
    aget-object v5, v0, v3

    aget-wide v8, v5, v1

    aget-object v6, v0, v4

    aget-wide v10, v6, v1

    iget-object v6, p0, LCatalano/Math/Decompositions/QRDecomposition;->a:[[D

    aget-object v6, v6, v3

    aget-wide v12, v6, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v5, v1

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 224
    :cond_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 220
    :cond_8
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_4

    .line 230
    :cond_9
    iget v1, p0, LCatalano/Math/Decompositions/QRDecomposition;->c:I

    filled-new-array {v1, v7}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v3, v2

    .line 231
    :goto_8
    array-length v4, v1

    if-ge v3, v4, :cond_b

    move v4, v2

    .line 232
    :goto_9
    aget-object v5, v1, v2

    array-length v5, v5

    if-ge v4, v5, :cond_a

    .line 233
    aget-object v5, v1, v3

    aget-object v6, v0, v3

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 231
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 237
    :cond_b
    return-object v1
.end method
