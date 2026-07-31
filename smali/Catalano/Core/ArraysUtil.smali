.class public LCatalano/Core/ArraysUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Argsort([DZ)[I
    .locals 3

    .prologue
    .line 61
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 62
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, LCatalano/Core/ArraysUtil$1;

    invoke-direct {v0, p1, p0}, LCatalano/Core/ArraysUtil$1;-><init>(Z[D)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 71
    invoke-static {v1}, LCatalano/Core/ArraysUtil;->asArray([Ljava/lang/Number;)[I

    move-result-object v0

    return-object v0
.end method

.method public static Argsort([FZ)[I
    .locals 3

    .prologue
    .line 101
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 102
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, LCatalano/Core/ArraysUtil$3;

    invoke-direct {v0, p1, p0}, LCatalano/Core/ArraysUtil$3;-><init>(Z[F)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 111
    invoke-static {v1}, LCatalano/Core/ArraysUtil;->asArray([Ljava/lang/Number;)[I

    move-result-object v0

    return-object v0
.end method

.method public static Argsort([IZ)[I
    .locals 3

    .prologue
    .line 81
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 82
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, LCatalano/Core/ArraysUtil$2;

    invoke-direct {v0, p1, p0}, LCatalano/Core/ArraysUtil$2;-><init>(Z[I)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 91
    invoke-static {v1}, LCatalano/Core/ArraysUtil;->asArray([Ljava/lang/Number;)[I

    move-result-object v0

    return-object v0
.end method

.method public static Concatenate([D[D)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 142
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v4, v0, [D

    move v0, v1

    move v2, v1

    .line 146
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 147
    add-int/lit8 v3, v2, 0x1

    aget-wide v6, p0, v0

    aput-wide v6, v4, v2

    .line 146
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 150
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 151
    add-int/lit8 v0, v2, 0x1

    aget-wide v6, p1, v1

    aput-wide v6, v4, v2

    .line 150
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 153
    :cond_1
    return-object v4
.end method

.method public static Concatenate([F[F)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 163
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v4, v0, [F

    move v0, v1

    move v2, v1

    .line 167
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 168
    add-int/lit8 v3, v2, 0x1

    aget v5, p0, v0

    aput v5, v4, v2

    .line 167
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 171
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 172
    add-int/lit8 v0, v2, 0x1

    aget v3, p1, v1

    aput v3, v4, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 174
    :cond_1
    return-object v4
.end method

.method public static Concatenate([I[I)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 121
    array-length v0, p0

    array-length v2, p1

    add-int/2addr v0, v2

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    .line 125
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 126
    add-int/lit8 v3, v2, 0x1

    aget v5, p0, v0

    aput v5, v4, v2

    .line 125
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    .line 129
    :cond_0
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    .line 130
    add-int/lit8 v0, v2, 0x1

    aget v3, p1, v1

    aput v3, v4, v2

    .line 129
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    .line 132
    :cond_1
    return-object v4
.end method

.method public static ConcatenateDouble(Ljava/util/List;)[D
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[D>;)[D"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 209
    move v1, v2

    move v3, v2

    .line 210
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 211
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    add-int/2addr v3, v0

    .line 210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 214
    :cond_0
    new-array v6, v3, [D

    move v1, v2

    move v3, v2

    .line 217
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 218
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move v4, v2

    .line 219
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 220
    add-int/lit8 v5, v3, 0x1

    aget-wide v8, v0, v1

    aput-wide v8, v6, v3

    .line 219
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_2

    .line 217
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 224
    :cond_2
    return-object v6
.end method

.method public static ConcatenateFloat(Ljava/util/List;)[F
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)[F"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 234
    move v1, v2

    move v3, v2

    .line 235
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 236
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v0, v0

    add-int/2addr v3, v0

    .line 235
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 239
    :cond_0
    new-array v6, v3, [F

    move v1, v2

    move v3, v2

    .line 242
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 243
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move v4, v2

    .line 244
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 245
    add-int/lit8 v5, v3, 0x1

    aget v7, v0, v1

    aput v7, v6, v3

    .line 244
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_2

    .line 242
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 249
    :cond_2
    return-object v6
.end method

.method public static ConcatenateInt(Ljava/util/List;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 184
    move v1, v2

    move v3, v2

    .line 185
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 186
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    add-int/2addr v3, v0

    .line 185
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 189
    :cond_0
    new-array v6, v3, [I

    move v1, v2

    move v3, v2

    .line 192
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 193
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move v4, v2

    .line 194
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 195
    add-int/lit8 v5, v3, 0x1

    aget v7, v0, v1

    aput v7, v6, v3

    .line 194
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_2

    .line 192
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 199
    :cond_2
    return-object v6
.end method

.method public static Shuffle([D)V
    .locals 8

    .prologue
    .line 271
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 272
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 274
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 275
    aget-wide v4, p0, v2

    .line 276
    aget-wide v6, p0, v0

    aput-wide v6, p0, v2

    .line 277
    aput-wide v4, p0, v0

    .line 272
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public static Shuffle([F)V
    .locals 5

    .prologue
    .line 301
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 302
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 304
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 305
    aget v3, p0, v2

    .line 306
    aget v4, p0, v0

    aput v4, p0, v2

    .line 307
    aput v3, p0, v0

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public static Shuffle([I)V
    .locals 5

    .prologue
    .line 286
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 287
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 289
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 290
    aget v3, p0, v2

    .line 291
    aget v4, p0, v0

    aput v4, p0, v2

    .line 292
    aput v3, p0, v0

    .line 287
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 294
    :cond_0
    return-void
.end method

.method public static varargs asArray([Ljava/lang/Number;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Number;",
            ">([TT;)[I"
        }
    .end annotation

    .prologue
    .line 259
    array-length v0, p0

    new-array v1, v0, [I

    .line 260
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 261
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-object v1
.end method

.method public static toDouble([F)[D
    .locals 4

    .prologue
    .line 457
    array-length v0, p0

    new-array v1, v0, [D

    .line 458
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 459
    aget v2, p0, v0

    float-to-double v2, v2

    aput-wide v2, v1, v0

    .line 458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_0
    return-object v1
.end method

.method public static toDouble([I)[D
    .locals 4

    .prologue
    .line 429
    array-length v0, p0

    new-array v1, v0, [D

    .line 430
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 431
    aget v2, p0, v0

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_0
    return-object v1
.end method

.method public static toDouble([[F)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 470
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 471
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 472
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 473
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    float-to-double v6, v5

    aput-wide v6, v4, v3

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 471
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return-object v0
.end method

.method public static toDouble([[I)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 442
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 443
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 444
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 445
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    int-to-double v6, v5

    aput-wide v6, v4, v3

    .line 444
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 443
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_1
    return-object v0
.end method

.method public static toFloat([D)[F
    .locals 4

    .prologue
    .line 345
    array-length v0, p0

    new-array v1, v0, [F

    .line 346
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 347
    aget-wide v2, p0, v0

    double-to-float v2, v2

    aput v2, v1, v0

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    return-object v1
.end method

.method public static toFloat([I)[F
    .locals 3

    .prologue
    .line 317
    array-length v0, p0

    new-array v1, v0, [F

    .line 318
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 319
    aget v2, p0, v0

    int-to-float v2, v2

    aput v2, v1, v0

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    return-object v1
.end method

.method public static toFloat([[D)[[F
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 358
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 359
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 360
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 361
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    double-to-float v5, v6

    aput v5, v4, v3

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 359
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 364
    :cond_1
    return-object v0
.end method

.method public static toFloat([[I)[[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 330
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 331
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 332
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 333
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    int-to-float v5, v5

    aput v5, v4, v3

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 331
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    return-object v0
.end method

.method public static toInt([D)[I
    .locals 4

    .prologue
    .line 373
    array-length v0, p0

    new-array v1, v0, [I

    .line 374
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 375
    aget-wide v2, p0, v0

    double-to-int v2, v2

    aput v2, v1, v0

    .line 374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_0
    return-object v1
.end method

.method public static toInt([F)[I
    .locals 3

    .prologue
    .line 401
    array-length v0, p0

    new-array v1, v0, [I

    .line 402
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 403
    aget v2, p0, v0

    float-to-int v2, v2

    aput v2, v1, v0

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_0
    return-object v1
.end method

.method public static toInt([[D)[[I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 386
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

    .line 387
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 388
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 389
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    double-to-int v5, v6

    aput v5, v4, v3

    .line 388
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 387
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    :cond_1
    return-object v0
.end method

.method public static toInt([[F)[[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 414
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

    .line 415
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 416
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 417
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    float-to-int v5, v5

    aput v5, v4, v3

    .line 416
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 415
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_1
    return-object v0
.end method
