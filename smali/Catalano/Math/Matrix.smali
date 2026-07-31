.class public final LCatalano/Math/Matrix;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Abs([[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 49
    array-length v4, p0

    .line 50
    aget-object v0, p0, v2

    array-length v5, v0

    .line 51
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v2

    .line 53
    :goto_0
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 54
    :goto_1
    if-ge v1, v5, :cond_0

    .line 55
    aget-object v6, v0, v3

    aget-object v7, p0, v3

    aget-wide v8, v7, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 59
    :cond_1
    return-object v0
.end method

.method public static Abs([[F)[[F
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 89
    array-length v4, p0

    .line 90
    aget-object v0, p0, v2

    array-length v5, v0

    .line 91
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v3, v2

    .line 93
    :goto_0
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 94
    :goto_1
    if-ge v1, v5, :cond_0

    .line 95
    aget-object v6, v0, v3

    aget-object v7, p0, v3

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v6, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 99
    :cond_1
    return-object v0
.end method

.method public static Abs([[I)[[I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 69
    array-length v4, p0

    .line 70
    aget-object v0, p0, v2

    array-length v5, v0

    .line 71
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v3, v2

    .line 73
    :goto_0
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 74
    :goto_1
    if-ge v1, v5, :cond_0

    .line 75
    aget-object v6, v0, v3

    aget-object v7, p0, v3

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    aput v7, v6, v1

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 79
    :cond_1
    return-object v0
.end method

.method public static Add([DD)V
    .locals 5

    .prologue
    .line 395
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 396
    aget-wide v2, p0, v0

    add-double/2addr v2, p1

    aput-wide v2, p0, v0

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method public static Add([FF)V
    .locals 2

    .prologue
    .line 417
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 418
    aget v1, p0, v0

    add-float/2addr v1, p1

    aput v1, p0, v0

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    return-void
.end method

.method public static Add([II)V
    .locals 2

    .prologue
    .line 406
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 407
    aget v1, p0, v0

    add-int/2addr v1, p1

    aput v1, p0, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    return-void
.end method

.method public static Add([[DD)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 428
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 429
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 430
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    add-double/2addr v4, p1

    aput-wide v4, v3, v2

    .line 429
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 428
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_1
    return-void
.end method

.method public static Add([[FF)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 454
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 455
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 456
    aget-object v3, p0, v0

    aget v4, v3, v2

    add-float/2addr v4, p1

    aput v4, v3, v2

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    return-void
.end method

.method public static Add([[II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 441
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 442
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 443
    aget-object v3, p0, v0

    aget v4, v3, v2

    add-int/2addr v4, p1

    aput v4, v3, v2

    .line 442
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    :cond_1
    return-void
.end method

.method public static Add([D[D)[D
    .locals 6

    .prologue
    .line 312
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 313
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    add-double/2addr v2, v4

    aput-wide v2, p0, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    return-object p1
.end method

.method public static Add([F[F)[F
    .locals 3

    .prologue
    .line 338
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 339
    aget v1, p0, v0

    aget v2, p1, v0

    add-float/2addr v1, v2

    aput v1, p0, v0

    .line 338
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_0
    return-object p1
.end method

.method public static Add([I[I)[I
    .locals 3

    .prologue
    .line 325
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 326
    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_0
    return-object p1
.end method

.method public static Add([[D[[D)[[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 351
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 352
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 353
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    aget-object v6, p1, v0

    aget-wide v6, v6, v2

    add-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    return-object p0
.end method

.method public static Add([[F[[F)[[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 381
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 382
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 383
    aget-object v3, p0, v0

    aget v4, v3, v2

    aget-object v5, p1, v0

    aget v5, v5, v2

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 382
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 381
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_1
    return-object p0
.end method

.method public static Add([[I[[I)[[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 366
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 367
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 368
    aget-object v3, p0, v0

    aget v4, v3, v2

    aget-object v5, p1, v0

    aget v5, v5, v2

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 366
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    :cond_1
    return-object p0
.end method

.method public static Clear([D)V
    .locals 4

    .prologue
    .line 486
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 487
    const-wide/16 v2, 0x0

    aput-wide v2, p0, v0

    .line 486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 489
    :cond_0
    return-void
.end method

.method public static Clear([F)V
    .locals 2

    .prologue
    .line 476
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 477
    const/4 v1, 0x0

    aput v1, p0, v0

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_0
    return-void
.end method

.method public static Clear([I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 466
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 467
    aput v1, p0, v0

    .line 466
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public static Clear([[D)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 520
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 521
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 522
    aget-object v3, p0, v0

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 520
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 525
    :cond_1
    return-void
.end method

.method public static Clear([[F)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 508
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 509
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 510
    aget-object v3, p0, v0

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 508
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 513
    :cond_1
    return-void
.end method

.method public static Clear([[I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 496
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 497
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 498
    aget-object v3, p0, v0

    aput v1, v3, v2

    .line 497
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 496
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    return-void
.end method

.method public static Copy([[D)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 533
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

    .line 534
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 535
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 536
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 535
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 534
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_1
    return-object v0
.end method

.method public static Copy([[F)[[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 563
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

    .line 564
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 565
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 566
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    aput v5, v4, v3

    .line 565
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 564
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_1
    return-object v0
.end method

.method public static Copy([[I)[[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 548
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

    .line 549
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 550
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 551
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    aput v5, v4, v3

    .line 550
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 549
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 554
    :cond_1
    return-object v0
.end method

.method public static CreateMatrix1D(ID)[D
    .locals 3

    .prologue
    .line 110
    new-array v1, p0, [D

    .line 112
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 113
    aput-wide p1, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object v1
.end method

.method public static CreateMatrix1D(IF)[F
    .locals 2

    .prologue
    .line 144
    new-array v1, p0, [F

    .line 146
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 147
    aput p1, v1, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-object v1
.end method

.method public static CreateMatrix1D(II)[I
    .locals 2

    .prologue
    .line 127
    new-array v1, p0, [I

    .line 129
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    .line 130
    aput p1, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-object v1
.end method

.method public static CreateMatrix2D(IID)[[D
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 162
    filled-new-array {p0, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v2

    .line 164
    :goto_0
    if-ge v3, p0, :cond_1

    move v1, v2

    .line 165
    :goto_1
    if-ge v1, p1, :cond_0

    .line 166
    aget-object v4, v0, v3

    aput-wide p2, v4, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 170
    :cond_1
    return-object v0
.end method

.method public static CreateMatrix2D(IIF)[[F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 204
    filled-new-array {p0, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v3, v2

    .line 206
    :goto_0
    if-ge v3, p0, :cond_1

    move v1, v2

    .line 207
    :goto_1
    if-ge v1, p1, :cond_0

    .line 208
    aget-object v4, v0, v3

    aput p2, v4, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 212
    :cond_1
    return-object v0
.end method

.method public static CreateMatrix2D(III)[[I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 183
    filled-new-array {p0, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v3, v2

    .line 185
    :goto_0
    if-ge v3, p0, :cond_1

    move v1, v2

    .line 186
    :goto_1
    if-ge v1, p1, :cond_0

    .line 187
    aget-object v4, v0, v3

    aput p2, v4, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 191
    :cond_1
    return-object v0
.end method

.method public static Determinant([[D)D
    .locals 2

    .prologue
    .line 578
    new-instance v0, LCatalano/Math/Decompositions/LUDecomposition;

    invoke-direct {v0, p0}, LCatalano/Math/Decompositions/LUDecomposition;-><init>([[D)V

    invoke-virtual {v0}, LCatalano/Math/Decompositions/LUDecomposition;->determinant()D

    move-result-wide v0

    return-wide v0
.end method

.method public static Divide([[DD)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 587
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 588
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 589
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    div-double/2addr v4, p1

    aput-wide v4, v3, v2

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 587
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    :cond_1
    return-void
.end method

.method public static Divide([[FF)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 633
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 634
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 635
    aget-object v3, p0, v0

    aget v4, v3, v2

    div-float/2addr v4, p1

    aput v4, v3, v2

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 633
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    return-void
.end method

.method public static Divide([[II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 620
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 621
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 622
    aget-object v3, p0, v0

    aget v4, v3, v2

    div-int/2addr v4, p1

    aput v4, v3, v2

    .line 621
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_1
    return-void
.end method

.method public static DotProduct([[D[[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 646
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

    .line 647
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 648
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 649
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    aget-object v5, p1, v1

    aget-wide v8, v5, v3

    mul-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 648
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 647
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_1
    return-object v0
.end method

.method public static DotProduct([[F[[F)[[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 676
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

    .line 677
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 678
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 679
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    aget-object v6, p1, v1

    aget v6, v6, v3

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 677
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 682
    :cond_1
    return-object v0
.end method

.method public static DotProduct([[I[[I)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 661
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

    .line 662
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 663
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 664
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    aget-object v6, p1, v1

    aget v6, v6, v3

    mul-int/2addr v5, v6

    aput v5, v4, v3

    .line 663
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 662
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 667
    :cond_1
    return-object v0
.end method

.method public static Exp([[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 601
    array-length v4, p0

    .line 602
    aget-object v0, p0, v2

    array-length v5, v0

    .line 603
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v2

    .line 605
    :goto_0
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 606
    :goto_1
    if-ge v1, v5, :cond_0

    .line 607
    aget-object v6, v0, v3

    aget-object v7, p0, v3

    aget-wide v8, v7, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 605
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 611
    :cond_1
    return-object v0
.end method

.method public static Fill([DD)V
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 692
    aput-wide p1, p0, v0

    .line 691
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_0
    return-void
.end method

.method public static Fill([FF)V
    .locals 2

    .prologue
    .line 1065
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1066
    aput p1, p0, v0

    .line 1065
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1068
    :cond_0
    return-void
.end method

.method public static Fill([II)V
    .locals 2

    .prologue
    .line 1054
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1055
    aput p1, p0, v0

    .line 1054
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1057
    :cond_0
    return-void
.end method

.method public static Fill([[DD)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1076
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1077
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1078
    aget-object v3, p0, v0

    aput-wide p1, v3, v2

    .line 1077
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1076
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1081
    :cond_1
    return-void
.end method

.method public static Fill([[FF)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1102
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1103
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1104
    aget-object v3, p0, v0

    aput p1, v3, v2

    .line 1103
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    return-void
.end method

.method public static Fill([[II)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1089
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1090
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1091
    aget-object v3, p0, v0

    aput p1, v3, v2

    .line 1090
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1089
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    :cond_1
    return-void
.end method

.method public static Identity(I)[[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2124
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2126
    filled-new-array {v4, v4}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v1

    .line 2128
    :goto_0
    if-ge v3, v4, :cond_1

    move v2, v1

    .line 2129
    :goto_1
    if-ge v2, v4, :cond_0

    .line 2130
    aget-object v5, v0, v3

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v2

    .line 2129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2128
    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 2134
    :cond_1
    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v2, v0, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2135
    :cond_2
    return-object v0
.end method

.method public static Identity(II)[[D
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 2145
    filled-new-array {p0, p1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v5, v4

    .line 2146
    :goto_0
    if-ge v5, p0, :cond_2

    move v1, v4

    .line 2147
    :goto_1
    if-ge v1, p1, :cond_1

    .line 2148
    aget-object v6, v0, v5

    if-ne v5, v1, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_2
    aput-wide v2, v6, v1

    .line 2147
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2148
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_2

    .line 2146
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 2151
    :cond_2
    return-object v0
.end method

.method public static Indices(II)[I
    .locals 3

    .prologue
    .line 223
    sub-int v0, p1, p0

    new-array v2, v0, [I

    .line 224
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_0

    .line 225
    add-int/lit8 v1, p0, 0x1

    aput p0, v2, v0

    .line 224
    add-int/lit8 v0, v0, 0x1

    move p0, v1

    goto :goto_0

    .line 226
    :cond_0
    return-object v2
.end method

.method public static InnerProduct([D[D)D
    .locals 8

    .prologue
    .line 236
    const-wide/16 v2, 0x0

    .line 237
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 238
    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    return-wide v2
.end method

.method public static InnerProduct([F[F)F
    .locals 4

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 266
    aget v2, p0, v0

    aget v3, p1, v0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_0
    return v1
.end method

.method public static InnerProduct([I[I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 250
    move v1, v0

    .line 251
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 252
    aget v2, p0, v0

    aget v3, p1, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    return v1
.end method

.method public static Inverse([[D)[[D
    .locals 1

    .prologue
    .line 2160
    new-instance v0, LCatalano/Math/Decompositions/LUDecomposition;

    invoke-direct {v0, p0}, LCatalano/Math/Decompositions/LUDecomposition;-><init>([[D)V

    invoke-virtual {v0}, LCatalano/Math/Decompositions/LUDecomposition;->inverse()[[D

    move-result-object v0

    return-object v0
.end method

.method public static Log([D)[D
    .locals 6

    .prologue
    .line 277
    array-length v1, p0

    .line 278
    new-array v2, v1, [D

    .line 279
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 280
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return-object v2
.end method

.method public static Log([[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 292
    array-length v4, p0

    .line 293
    aget-object v0, p0, v2

    array-length v5, v0

    .line 294
    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v2

    .line 296
    :goto_0
    if-ge v3, v4, :cond_1

    move v1, v2

    .line 297
    :goto_1
    if-ge v1, v5, :cond_0

    .line 298
    aget-object v6, v0, v3

    aget-object v7, p0, v3

    aget-wide v8, v7, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    aput-wide v8, v6, v1

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 302
    :cond_1
    return-object v0
.end method

.method public static Max([D)D
    .locals 6

    .prologue
    .line 2184
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    .line 2185
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2186
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 2185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2188
    :cond_0
    return-wide v2
.end method

.method public static Max([[D)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2169
    const-wide/high16 v2, -0x3e20000000000000L    # -2.147483648E9

    move v0, v1

    .line 2170
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2171
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2172
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 2171
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 2170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2175
    :cond_1
    return-wide v2
.end method

.method public static Max([F)F
    .locals 3

    .prologue
    .line 2210
    const/high16 v1, -0x31000000

    .line 2211
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2212
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2214
    :cond_0
    return v1
.end method

.method public static Max([[F)F
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2238
    const/high16 v0, -0x31000000

    move v2, v0

    move v0, v1

    .line 2239
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2240
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2241
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2240
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2244
    :cond_1
    return v2
.end method

.method public static Max([I)I
    .locals 3

    .prologue
    .line 2197
    const/high16 v1, -0x80000000

    .line 2198
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2199
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2201
    :cond_0
    return v1
.end method

.method public static Max([[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2223
    const/high16 v0, -0x80000000

    move v2, v0

    move v0, v1

    .line 2224
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2225
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2226
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2225
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2229
    :cond_1
    return v2
.end method

.method public static MaxIndex([D)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2253
    .line 2254
    const-wide/16 v2, 0x1

    move v1, v0

    .line 2255
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 2256
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 2257
    cmpl-double v6, v4, v2

    if-lez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    .line 2255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2262
    :cond_1
    return v1
.end method

.method public static MaxIndex([F)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2329
    .line 2330
    const/4 v1, 0x1

    move v2, v0

    .line 2331
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 2332
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2333
    cmpl-float v4, v3, v1

    if-lez v4, :cond_0

    move v1, v3

    move v2, v0

    .line 2331
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2338
    :cond_1
    return v2
.end method

.method public static MaxIndex([I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2291
    .line 2292
    const/high16 v1, -0x80000000

    move v2, v0

    .line 2293
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 2294
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2295
    if-le v3, v1, :cond_0

    move v1, v3

    move v2, v0

    .line 2293
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2300
    :cond_1
    return v2
.end method

.method public static MaxIndex([[D)LCatalano/Core/IntPoint;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2271
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5}, LCatalano/Core/IntPoint;-><init>()V

    .line 2272
    const-wide/16 v2, 0x1

    move v0, v1

    .line 2273
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2274
    :goto_1
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 2275
    aget-object v6, p0, v0

    aget-wide v6, v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    .line 2276
    cmpl-double v8, v6, v2

    if-lez v8, :cond_2

    .line 2278
    invoke-virtual {v5, v0, v4}, LCatalano/Core/IntPoint;->setXY(II)V

    .line 2274
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 2273
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2282
    :cond_1
    return-object v5

    :cond_2
    move-wide v6, v2

    goto :goto_2
.end method

.method public static MaxIndex([[F)LCatalano/Core/IntPoint;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2347
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5}, LCatalano/Core/IntPoint;-><init>()V

    .line 2348
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    .line 2349
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2350
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2351
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2352
    cmpl-float v6, v4, v2

    if-lez v6, :cond_2

    .line 2354
    invoke-virtual {v5, v0, v3}, LCatalano/Core/IntPoint;->setXY(II)V

    .line 2350
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2349
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2358
    :cond_1
    return-object v5

    :cond_2
    move v4, v2

    goto :goto_2
.end method

.method public static MaxIndex([[I)LCatalano/Core/IntPoint;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2309
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5}, LCatalano/Core/IntPoint;-><init>()V

    .line 2310
    const/high16 v0, -0x80000000

    move v2, v0

    move v0, v1

    .line 2311
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2312
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2313
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2314
    if-le v4, v2, :cond_2

    .line 2316
    invoke-virtual {v5, v0, v3}, LCatalano/Core/IntPoint;->setXY(II)V

    .line 2312
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2320
    :cond_1
    return-object v5

    :cond_2
    move v4, v2

    goto :goto_2
.end method

.method public static Mean([[D)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2367
    const-wide/16 v2, 0x0

    move v0, v1

    .line 2368
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2369
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2370
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    add-double/2addr v6, v2

    .line 2369
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 2368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2373
    :cond_1
    array-length v0, p0

    aget-object v1, p0, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Mean([[I)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2382
    const-wide/16 v2, 0x0

    move v0, v1

    .line 2383
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2384
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2385
    aget-object v5, p0, v0

    aget v5, v5, v4

    int-to-double v6, v5

    add-double/2addr v6, v2

    .line 2384
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 2383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2388
    :cond_1
    array-length v0, p0

    aget-object v1, p0, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static Mean([[F)F
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2397
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 2398
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2399
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2400
    aget-object v4, p0, v0

    aget v4, v4, v3

    add-float/2addr v4, v2

    .line 2399
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2398
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2403
    :cond_1
    array-length v0, p0

    aget-object v1, p0, v1

    array-length v1, v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float v0, v2, v0

    return v0
.end method

.method public static MemberwiseClone([[D)[[D
    .locals 3

    .prologue
    .line 2421
    array-length v0, p0

    new-array v2, v0, [[D

    .line 2422
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 2423
    aget-object v0, p0, v1

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    check-cast v0, [D

    aput-object v0, v2, v1

    .line 2422
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2424
    :cond_0
    return-object v2
.end method

.method public static MemberwiseClone([[F)[[F
    .locals 3

    .prologue
    .line 2414
    array-length v0, p0

    new-array v2, v0, [[F

    .line 2415
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 2416
    aget-object v0, p0, v1

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    check-cast v0, [F

    aput-object v0, v2, v1

    .line 2415
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2417
    :cond_0
    return-object v2
.end method

.method public static MemberwiseClone([[I)[[I
    .locals 3

    .prologue
    .line 2407
    array-length v0, p0

    new-array v2, v0, [[I

    .line 2408
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 2409
    aget-object v0, p0, v1

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    .line 2408
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2410
    :cond_0
    return-object v2
.end method

.method public static Min([D)D
    .locals 6

    .prologue
    .line 2433
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    .line 2434
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2435
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 2434
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2437
    :cond_0
    return-wide v2
.end method

.method public static Min([[D)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2446
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    move v0, v1

    .line 2447
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2448
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2449
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 2448
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 2447
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2452
    :cond_1
    return-wide v2
.end method

.method public static Min([F)F
    .locals 3

    .prologue
    .line 2474
    const/high16 v1, 0x4f000000

    .line 2475
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2476
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2478
    :cond_0
    return v1
.end method

.method public static Min([[F)F
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2502
    const/high16 v0, 0x4f000000

    move v2, v0

    move v0, v1

    .line 2503
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2504
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2505
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2504
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2503
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2508
    :cond_1
    return v2
.end method

.method public static Min([I)I
    .locals 3

    .prologue
    .line 2461
    const v1, 0x7fffffff

    .line 2462
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 2463
    aget v2, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2465
    :cond_0
    return v1
.end method

.method public static Min([[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2487
    const v0, 0x7fffffff

    move v2, v0

    move v0, v1

    .line 2488
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2489
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2490
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2489
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2488
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2493
    :cond_1
    return v2
.end method

.method public static MinIndex([D)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 2517
    .line 2518
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v1, v0

    .line 2519
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    .line 2520
    aget-wide v4, p0, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 2521
    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    move-wide v2, v4

    move v1, v0

    .line 2519
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2526
    :cond_1
    return v1
.end method

.method public static MinIndex([F)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2644
    .line 2645
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v0

    .line 2646
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 2647
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2648
    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    move v1, v3

    move v2, v0

    .line 2646
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2653
    :cond_1
    return v2
.end method

.method public static MinIndex([I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2606
    .line 2607
    const v1, 0x7fffffff

    move v2, v0

    .line 2608
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 2609
    aget v3, p0, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2610
    if-ge v3, v1, :cond_0

    move v1, v3

    move v2, v0

    .line 2608
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2615
    :cond_1
    return v2
.end method

.method public static MinIndex([[D)LCatalano/Core/IntPoint;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2535
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5}, LCatalano/Core/IntPoint;-><init>()V

    .line 2536
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v0, v1

    .line 2537
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2538
    :goto_1
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 2539
    aget-object v6, p0, v0

    aget-wide v6, v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    .line 2540
    cmpg-double v8, v6, v2

    if-gez v8, :cond_2

    .line 2542
    invoke-virtual {v5, v0, v4}, LCatalano/Core/IntPoint;->setXY(II)V

    .line 2538
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 2537
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2546
    :cond_1
    return-object v5

    :cond_2
    move-wide v6, v2

    goto :goto_2
.end method

.method public static MinIndex([[F)LCatalano/Core/IntPoint;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2662
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5}, LCatalano/Core/IntPoint;-><init>()V

    .line 2663
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    move v2, v0

    move v0, v1

    .line 2664
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2665
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2666
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 2667
    cmpg-float v6, v4, v2

    if-gez v6, :cond_2

    .line 2669
    invoke-virtual {v5, v0, v3}, LCatalano/Core/IntPoint;->setXY(II)V

    .line 2665
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2664
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2673
    :cond_1
    return-object v5

    :cond_2
    move v4, v2

    goto :goto_2
.end method

.method public static MinIndex([[I)LCatalano/Core/IntPoint;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2624
    new-instance v5, LCatalano/Core/IntPoint;

    invoke-direct {v5}, LCatalano/Core/IntPoint;-><init>()V

    .line 2625
    const v0, 0x7fffffff

    move v2, v0

    move v0, v1

    .line 2626
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 2627
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2628
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2629
    if-ge v4, v2, :cond_2

    .line 2631
    invoke-virtual {v5, v0, v3}, LCatalano/Core/IntPoint;->setXY(II)V

    .line 2627
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 2626
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2635
    :cond_1
    return-object v5

    :cond_2
    move v4, v2

    goto :goto_2
.end method

.method public static MinMax([[D)[D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 2555
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2556
    const-wide v2, -0x10000000000001L

    move v0, v1

    .line 2557
    :goto_0
    array-length v6, p0

    if-ge v0, v6, :cond_1

    move v6, v1

    .line 2558
    :goto_1
    aget-object v7, p0, v1

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 2559
    aget-object v7, p0, v0

    aget-wide v8, v7, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    .line 2560
    aget-object v4, p0, v0

    aget-wide v4, v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 2558
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move-wide v2, v4

    move-wide v4, v8

    goto :goto_1

    .line 2557
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2563
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [D

    aput-wide v4, v0, v1

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public static MinMax([[F)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2589
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 2590
    const v0, -0x800001

    move v3, v2

    move v2, v0

    move v0, v1

    .line 2591
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2592
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2593
    aget-object v5, p0, v0

    aget v5, v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2594
    aget-object v3, p0, v0

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2592
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    move v3, v5

    goto :goto_1

    .line 2591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2597
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method public static MinMax([[I)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2572
    const v2, 0x7fffffff

    .line 2573
    const v0, -0x7fffffff

    move v3, v2

    move v2, v0

    move v0, v1

    .line 2574
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 2575
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2576
    aget-object v5, p0, v0

    aget v5, v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2577
    aget-object v3, p0, v0

    aget v3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2575
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v3

    move v3, v5

    goto :goto_1

    .line 2574
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2580
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    return-object v0
.end method

.method public static Multiply([[DD)[[D
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 1585
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

    .line 1586
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 1587
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1588
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    mul-double/2addr v6, p1

    aput-wide v6, v4, v3

    .line 1587
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1586
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1591
    :cond_1
    return-object v0
.end method

.method public static Multiply([[D[[D)[[D
    .locals 18

    .prologue
    .line 1471
    const/4 v2, 0x0

    aget-object v2, p0, v2

    array-length v2, v2

    move-object/from16 v0, p1

    array-length v3, v0

    if-eq v2, v3, :cond_0

    .line 1472
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal matrix dimensions."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1474
    :cond_0
    move-object/from16 v0, p0

    array-length v2, v0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v3, v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 1476
    const/4 v3, 0x0

    aget-object v3, p0, v3

    array-length v8, v3

    .line 1477
    move-object/from16 v0, p0

    array-length v9, v0

    .line 1478
    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v10, v3

    .line 1480
    new-array v11, v8, [D

    .line 1481
    const/4 v3, 0x0

    move v7, v3

    :goto_0
    if-ge v7, v10, :cond_4

    .line 1483
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_1

    .line 1484
    aget-object v4, p1, v3

    aget-wide v4, v4, v7

    aput-wide v4, v11, v3

    .line 1483
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1486
    :cond_1
    const/4 v3, 0x0

    move v6, v3

    :goto_2
    if-ge v6, v9, :cond_3

    .line 1488
    aget-object v12, p0, v6

    .line 1490
    const-wide/16 v4, 0x0

    .line 1491
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_2

    .line 1492
    aget-wide v14, v12, v3

    aget-wide v16, v11, v3

    mul-double v14, v14, v16

    add-double/2addr v4, v14

    .line 1491
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1494
    :cond_2
    aget-object v3, v2, v6

    aput-wide v4, v3, v7

    .line 1486
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_2

    .line 1481
    :cond_3
    add-int/lit8 v3, v7, 0x1

    move v7, v3

    goto :goto_0

    .line 1498
    :cond_4
    return-object v2
.end method

.method public static Multiply([[FF)[[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1603
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

    .line 1604
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 1605
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1606
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    mul-float/2addr v5, p1

    aput v5, v4, v3

    .line 1605
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1604
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1609
    :cond_1
    return-object v0
.end method

.method public static Multiply([[F[[F)[[F
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1547
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 1548
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal matrix dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1550
    :cond_0
    array-length v0, p0

    aget-object v1, p1, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 1552
    aget-object v1, p0, v2

    array-length v6, v1

    .line 1553
    array-length v7, p0

    .line 1554
    aget-object v1, p1, v2

    array-length v8, v1

    .line 1556
    new-array v9, v6, [F

    move v5, v2

    .line 1557
    :goto_0
    if-ge v5, v8, :cond_4

    move v1, v2

    .line 1559
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1560
    aget-object v3, p1, v1

    aget v3, v3, v5

    aput v3, v9, v1

    .line 1559
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1562
    :goto_2
    if-ge v4, v7, :cond_3

    .line 1564
    aget-object v10, p0, v4

    .line 1566
    const/4 v1, 0x0

    move v3, v1

    move v1, v2

    .line 1567
    :goto_3
    if-ge v1, v6, :cond_2

    .line 1568
    aget v11, v10, v1

    aget v12, v9, v1

    mul-float/2addr v11, v12

    add-float/2addr v3, v11

    .line 1567
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1570
    :cond_2
    aget-object v1, v0, v4

    aput v3, v1, v5

    .line 1562
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 1557
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 1574
    :cond_4
    return-object v0
.end method

.method public static Multiply([[II)[[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1621
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

    .line 1622
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 1623
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1624
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v5, v5, v3

    mul-int/2addr v5, p1

    aput v5, v4, v3

    .line 1623
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1622
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1627
    :cond_1
    return-object v0
.end method

.method public static Multiply([[I[[I)[[I
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 1509
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 1510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal matrix dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    :cond_0
    array-length v0, p0

    aget-object v1, p1, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 1514
    aget-object v1, p0, v2

    array-length v6, v1

    .line 1515
    array-length v7, p0

    .line 1516
    aget-object v1, p1, v2

    array-length v8, v1

    .line 1518
    new-array v9, v6, [I

    move v5, v2

    .line 1519
    :goto_0
    if-ge v5, v8, :cond_4

    move v1, v2

    .line 1521
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1522
    aget-object v3, p1, v1

    aget v3, v3, v5

    aput v3, v9, v1

    .line 1521
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1524
    :goto_2
    if-ge v4, v7, :cond_3

    .line 1526
    aget-object v10, p0, v4

    move v1, v2

    move v3, v2

    .line 1529
    :goto_3
    if-ge v1, v6, :cond_2

    .line 1530
    aget v11, v10, v1

    aget v12, v9, v1

    mul-int/2addr v11, v12

    add-int/2addr v3, v11

    .line 1529
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1532
    :cond_2
    aget-object v1, v0, v4

    aput v3, v1, v5

    .line 1524
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 1519
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 1536
    :cond_4
    return-object v0
.end method

.method public static MultiplyByDiagonal([[D[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1632
    array-length v0, p0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 1634
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 1635
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1636
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    aget-wide v8, p1, v3

    mul-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 1635
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1634
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1640
    :cond_1
    return-object v0
.end method

.method public static MultiplyByTranspose([[D[D)[D
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 1708
    aget-object v0, p0, v1

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_0

    .line 1709
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The columns of the matrix A must be the same of the vector B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1711
    :cond_0
    array-length v0, p0

    new-array v6, v0, [D

    move v0, v1

    .line 1712
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1713
    const-wide/16 v2, 0x0

    move-wide v4, v2

    move v2, v1

    .line 1714
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1715
    aget-object v3, p0, v0

    aget-wide v8, v3, v2

    aget-wide v10, p1, v2

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 1714
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1717
    :cond_1
    aput-wide v4, v6, v0

    .line 1712
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1719
    :cond_2
    return-object v6
.end method

.method public static MultiplyByTranspose([[F[F)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1752
    aget-object v0, p0, v1

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_0

    .line 1753
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The columns of the matrix A must be the same of the vector B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1755
    :cond_0
    array-length v0, p0

    new-array v4, v0, [F

    move v0, v1

    .line 1756
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 1757
    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    .line 1758
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 1759
    aget-object v5, p0, v0

    aget v5, v5, v2

    aget v6, p1, v2

    mul-float/2addr v5, v6

    add-float/2addr v3, v5

    .line 1758
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1761
    :cond_1
    aput v3, v4, v0

    .line 1756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1763
    :cond_2
    return-object v4
.end method

.method public static MultiplyByTranspose([[I[I)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1730
    aget-object v0, p0, v1

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_0

    .line 1731
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The columns of the matrix A must be the same of the vector B"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1733
    :cond_0
    array-length v0, p0

    new-array v4, v0, [I

    move v0, v1

    .line 1734
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v2, v1

    move v3, v1

    .line 1736
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 1737
    aget-object v5, p0, v0

    aget v5, v5, v2

    aget v6, p1, v2

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 1736
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1739
    :cond_1
    aput v3, v4, v0

    .line 1734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1741
    :cond_2
    return-object v4
.end method

.method public static MultiplyByTranspose([[D)[[D
    .locals 1

    .prologue
    .line 1649
    invoke-static {p0}, LCatalano/Math/Matrix;->Transpose([[D)[[D

    move-result-object v0

    invoke-static {p0, v0}, LCatalano/Math/Matrix;->Multiply([[D[[D)[[D

    move-result-object v0

    return-object v0
.end method

.method public static MultiplyByTranspose([[D[[D)[[D
    .locals 1

    .prologue
    .line 1677
    invoke-static {p1}, LCatalano/Math/Matrix;->Transpose([[D)[[D

    move-result-object v0

    invoke-static {p0, v0}, LCatalano/Math/Matrix;->Multiply([[D[[D)[[D

    move-result-object v0

    return-object v0
.end method

.method public static MultiplyByTranspose([[F)[[F
    .locals 1

    .prologue
    .line 1667
    invoke-static {p0}, LCatalano/Math/Matrix;->Transpose([[F)[[F

    move-result-object v0

    invoke-static {p0, v0}, LCatalano/Math/Matrix;->Multiply([[F[[F)[[F

    move-result-object v0

    return-object v0
.end method

.method public static MultiplyByTranspose([[F[[F)[[F
    .locals 1

    .prologue
    .line 1697
    invoke-static {p1}, LCatalano/Math/Matrix;->Transpose([[F)[[F

    move-result-object v0

    invoke-static {p0, v0}, LCatalano/Math/Matrix;->Multiply([[F[[F)[[F

    move-result-object v0

    return-object v0
.end method

.method public static MultiplyByTranspose([[I)[[I
    .locals 1

    .prologue
    .line 1658
    invoke-static {p0}, LCatalano/Math/Matrix;->Transpose([[I)[[I

    move-result-object v0

    invoke-static {p0, v0}, LCatalano/Math/Matrix;->Multiply([[I[[I)[[I

    move-result-object v0

    return-object v0
.end method

.method public static MultiplyByTranspose([[I[[I)[[I
    .locals 1

    .prologue
    .line 1687
    invoke-static {p1}, LCatalano/Math/Matrix;->Transpose([[I)[[I

    move-result-object v0

    invoke-static {p0, v0}, LCatalano/Math/Matrix;->Multiply([[I[[I)[[I

    move-result-object v0

    return-object v0
.end method

.method public static Norm1([[D)D
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 1773
    move v0, v1

    move-wide v2, v4

    .line 1774
    :goto_0
    aget-object v6, p0, v1

    array-length v6, v6

    if-ge v0, v6, :cond_1

    move v6, v1

    move-wide v8, v4

    .line 1776
    :goto_1
    array-length v7, p0

    if-ge v6, v7, :cond_0

    .line 1777
    aget-object v7, p0, v6

    aget-wide v10, v7, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    add-double/2addr v8, v10

    .line 1776
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1779
    :cond_0
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 1774
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1782
    :cond_1
    return-wide v2
.end method

.method public static Norm1([[F)F
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1813
    move v0, v1

    move v2, v3

    .line 1814
    :goto_0
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v0, v4, :cond_1

    move v4, v1

    move v5, v3

    .line 1816
    :goto_1
    array-length v6, p0

    if-ge v4, v6, :cond_0

    .line 1817
    aget-object v6, p0, v4

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    .line 1816
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1819
    :cond_0
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1822
    :cond_1
    return v2
.end method

.method public static Norm1([[I)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1793
    move v0, v1

    move v2, v1

    .line 1794
    :goto_0
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v0, v3, :cond_1

    move v3, v1

    move v4, v1

    .line 1796
    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 1797
    aget-object v5, p0, v3

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 1796
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1799
    :cond_0
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1802
    :cond_1
    return v2
.end method

.method public static Norm2([[D)D
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1832
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-direct {v0, p0}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[D)V

    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->getS()[[D

    move-result-object v0

    aget-object v0, v0, v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public static NormF([[D)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1842
    const-wide/16 v2, 0x0

    move v0, v1

    .line 1843
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 1844
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1845
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v2

    .line 1844
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 1843
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1849
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static NormF([[I)D
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1860
    const-wide/16 v2, 0x0

    move v0, v1

    .line 1861
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 1862
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1863
    aget-object v5, p0, v0

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v6, v2

    .line 1862
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 1861
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1867
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static NormF([[F)F
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1878
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 1879
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 1880
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1881
    float-to-double v4, v2

    aget-object v2, p0, v0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-float v4, v4

    .line 1880
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 1879
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1885
    :cond_1
    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static NormP([DI)D
    .locals 8

    .prologue
    .line 1896
    const-wide/16 v2, 0x0

    .line 1897
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1898
    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    int-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 1897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1900
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p1

    div-double/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static OuterProduct([D)[[D
    .locals 1

    .prologue
    .line 1910
    invoke-static {p0, p0}, LCatalano/Math/Matrix;->OuterProduct([D[D)[[D

    move-result-object v0

    return-object v0
.end method

.method public static OuterProduct([D[D)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 1921
    array-length v0, p0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 1923
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 1924
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1925
    aget-object v4, v0, v1

    aget-wide v6, p0, v1

    aget-wide v8, p1, v3

    mul-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 1924
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1923
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1929
    :cond_1
    return-object v0
.end method

.method public static OuterProduct([F)[[F
    .locals 1

    .prologue
    .line 1968
    invoke-static {p0, p0}, LCatalano/Math/Matrix;->OuterProduct([F[F)[[F

    move-result-object v0

    return-object v0
.end method

.method public static OuterProduct([F[F)[[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1979
    array-length v0, p0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 1981
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 1982
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1983
    aget-object v4, v0, v1

    aget v5, p0, v1

    aget v6, p1, v3

    mul-float/2addr v5, v6

    aput v5, v4, v3

    .line 1982
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1981
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1987
    :cond_1
    return-object v0
.end method

.method public static OuterProduct([I)[[I
    .locals 1

    .prologue
    .line 1939
    invoke-static {p0, p0}, LCatalano/Math/Matrix;->OuterProduct([I[I)[[I

    move-result-object v0

    return-object v0
.end method

.method public static OuterProduct([I[I)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1950
    array-length v0, p0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 1952
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 1953
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1954
    aget-object v4, v0, v1

    aget v5, p0, v1

    aget v6, p1, v3

    mul-int/2addr v5, v6

    aput v5, v4, v3

    .line 1953
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1952
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1958
    :cond_1
    return-object v0
.end method

.method public static PseudoInverse([[D)[[D
    .locals 1

    .prologue
    .line 1996
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-direct {v0, p0}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[D)V

    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->inverse()[[D

    move-result-object v0

    return-object v0
.end method

.method public static Rank([[D)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2931
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-direct {v0, p0, v1, v1}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[DZZ)V

    .line 2932
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->rank()I

    move-result v0

    return v0
.end method

.method public static Rank([[F)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2951
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-static {p0}, LCatalano/Core/ArraysUtil;->toDouble([[F)[[D

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[DZZ)V

    .line 2952
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->rank()I

    move-result v0

    return v0
.end method

.method public static Rank([[I)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2941
    new-instance v0, LCatalano/Math/Decompositions/SingularValueDecomposition;

    invoke-static {p0}, LCatalano/Core/ArraysUtil;->toDouble([[I)[[D

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, LCatalano/Math/Decompositions/SingularValueDecomposition;-><init>([[DZZ)V

    .line 2942
    invoke-virtual {v0}, LCatalano/Math/Decompositions/SingularValueDecomposition;->rank()I

    move-result v0

    return v0
.end method

.method public static RemoveColumn([DI)[D
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 3121
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 3122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3124
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v3, v1, [D

    move v1, v0

    .line 3126
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3127
    if-eq v0, p1, :cond_1

    .line 3128
    add-int/lit8 v2, v1, 0x1

    aget-wide v4, p0, v0

    aput-wide v4, v3, v1

    move v1, v2

    .line 3126
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3132
    :cond_2
    return-object v3
.end method

.method public static RemoveColumn([FI)[F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3163
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 3164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3166
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v3, v1, [F

    move v1, v0

    .line 3168
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3169
    if-eq v0, p1, :cond_1

    .line 3170
    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v0

    aput v4, v3, v1

    move v1, v2

    .line 3168
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3174
    :cond_2
    return-object v3
.end method

.method public static RemoveColumn([II)[I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3142
    array-length v1, p0

    sub-int/2addr v1, p1

    if-gtz v1, :cond_0

    .line 3143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3145
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    new-array v3, v1, [I

    move v1, v0

    .line 3147
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3148
    if-eq v0, p1, :cond_1

    .line 3149
    add-int/lit8 v2, v1, 0x1

    aget v4, p0, v0

    aput v4, v3, v1

    move v1, v2

    .line 3147
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3153
    :cond_2
    return-object v3
.end method

.method public static RemoveColumn([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3185
    array-length v0, p0

    sub-int/2addr v0, p1

    if-gtz v0, :cond_0

    .line 3186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3188
    :cond_0
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move v2, v1

    .line 3190
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 3191
    if-eq v1, p1, :cond_1

    .line 3192
    add-int/lit8 v3, v2, 0x1

    aget-object v4, p0, v1

    aput-object v4, v0, v2

    move v2, v3

    .line 3190
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3196
    :cond_2
    return-object v0
.end method

.method public static RemoveColumn([[DI)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2994
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 2996
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    move v3, v2

    move v4, v2

    .line 2998
    :goto_1
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 2999
    if-eq v3, p1, :cond_0

    .line 3000
    aget-object v5, v0, v1

    aget-object v6, p0, v1

    aget-wide v6, v6, v3

    aput-wide v6, v5, v4

    .line 3001
    add-int/lit8 v4, v4, 0x1

    .line 2998
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2996
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3005
    :cond_2
    return-object v0
.end method

.method public static RemoveColumn([[FI)[[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3036
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 3038
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    move v3, v2

    move v4, v2

    .line 3040
    :goto_1
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 3041
    if-eq v3, p1, :cond_0

    .line 3042
    aget-object v5, v0, v1

    aget-object v6, p0, v1

    aget v6, v6, v3

    aput v6, v5, v4

    .line 3043
    add-int/lit8 v4, v4, 0x1

    .line 3040
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3038
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3047
    :cond_2
    return-object v0
.end method

.method public static RemoveColumn([[II)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3015
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 3017
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    move v3, v2

    move v4, v2

    .line 3019
    :goto_1
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 3020
    if-eq v3, p1, :cond_0

    .line 3021
    aget-object v5, v0, v1

    aget-object v6, p0, v1

    aget v6, v6, v3

    aput v6, v5, v4

    .line 3022
    add-int/lit8 v4, v4, 0x1

    .line 3019
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3017
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3026
    :cond_2
    return-object v0
.end method

.method public static RemoveColumns([D[I)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3206
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    if-gtz v0, :cond_0

    .line 3207
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3209
    :cond_0
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    new-array v5, v0, [D

    move v0, v1

    move v2, v1

    .line 3211
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_4

    move v3, v1

    move v4, v1

    .line 3213
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 3214
    aget v6, p1, v3

    if-ne v6, v0, :cond_1

    const/4 v4, 0x1

    .line 3213
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3215
    :cond_2
    if-nez v4, :cond_3

    .line 3216
    aget-wide v6, p0, v0

    aput-wide v6, v5, v2

    .line 3217
    add-int/lit8 v2, v2, 0x1

    .line 3211
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3221
    :cond_4
    return-object v5
.end method

.method public static RemoveColumns([F[I)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3256
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    if-gtz v0, :cond_0

    .line 3257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3259
    :cond_0
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    new-array v5, v0, [F

    move v0, v1

    move v2, v1

    .line 3261
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_4

    move v3, v1

    move v4, v1

    .line 3263
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 3264
    aget v6, p1, v3

    if-ne v6, v0, :cond_1

    const/4 v4, 0x1

    .line 3263
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3265
    :cond_2
    if-nez v4, :cond_3

    .line 3266
    aget v3, p0, v0

    aput v3, v5, v2

    .line 3267
    add-int/lit8 v2, v2, 0x1

    .line 3261
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3271
    :cond_4
    return-object v5
.end method

.method public static RemoveColumns([I[I)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3231
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    if-gtz v0, :cond_0

    .line 3232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3234
    :cond_0
    array-length v0, p0

    array-length v2, p1

    sub-int/2addr v0, v2

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    .line 3236
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_4

    move v3, v1

    move v4, v1

    .line 3238
    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_2

    .line 3239
    aget v6, p1, v3

    if-ne v6, v0, :cond_1

    const/4 v4, 0x1

    .line 3238
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3240
    :cond_2
    if-nez v4, :cond_3

    .line 3241
    aget v3, p0, v0

    aput v3, v5, v2

    .line 3242
    add-int/lit8 v2, v2, 0x1

    .line 3236
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3246
    :cond_4
    return-object v5
.end method

.method public static RemoveColumns([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3282
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 3283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3285
    :cond_0
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    array-length v1, p0

    array-length v3, p1

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move v1, v2

    move v3, v2

    .line 3287
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_4

    move v4, v2

    move v5, v2

    .line 3289
    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_2

    .line 3290
    aget v6, p1, v4

    if-ne v6, v1, :cond_1

    const/4 v5, 0x1

    .line 3289
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3291
    :cond_2
    if-nez v5, :cond_3

    .line 3292
    aget-object v4, p0, v1

    aput-object v4, v0, v3

    .line 3293
    add-int/lit8 v3, v3, 0x1

    .line 3287
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3297
    :cond_4
    return-object v0
.end method

.method public static RemoveColumns([[D[I)[[D
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 3058
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 3059
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3061
    :cond_0
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    array-length v3, p1

    sub-int/2addr v1, v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 3065
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 3066
    aget v3, p1, v2

    move v4, v2

    move v5, v2

    move v6, v3

    move v3, v2

    .line 3069
    :goto_1
    aget-object v7, p0, v2

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 3070
    if-ne v3, v6, :cond_2

    .line 3071
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_1

    .line 3072
    add-int/lit8 v5, v5, 0x1

    aget v6, p1, v5

    .line 3069
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3075
    :cond_2
    aget-object v8, v0, v1

    add-int/lit8 v7, v4, 0x1

    aget-object v9, p0, v1

    aget-wide v10, v9, v3

    aput-wide v10, v8, v4

    move v4, v7

    goto :goto_2

    .line 3065
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3079
    :cond_4
    return-object v0
.end method

.method public static RemoveColumns([[F[I)[[F
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 3090
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 3091
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3093
    :cond_0
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    array-length v3, p1

    sub-int/2addr v1, v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 3097
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 3098
    aget v3, p1, v2

    move v4, v2

    move v5, v2

    move v6, v3

    move v3, v2

    .line 3101
    :goto_1
    aget-object v7, p0, v2

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 3102
    if-ne v3, v6, :cond_2

    .line 3103
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_1

    .line 3104
    add-int/lit8 v5, v5, 0x1

    aget v6, p1, v5

    .line 3101
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3107
    :cond_2
    aget-object v8, v0, v1

    add-int/lit8 v7, v4, 0x1

    aget-object v9, p0, v1

    aget v9, v9, v3

    aput v9, v8, v4

    move v4, v7

    goto :goto_2

    .line 3097
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3111
    :cond_4
    return-object v0
.end method

.method public static RemoveColumns([[I[I)[[I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2963
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 2964
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of columns is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2966
    :cond_0
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    array-length v3, p1

    sub-int/2addr v1, v3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 2970
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_4

    .line 2971
    aget v3, p1, v2

    move v4, v2

    move v5, v2

    move v6, v3

    move v3, v2

    .line 2974
    :goto_1
    aget-object v7, p0, v2

    array-length v7, v7

    if-ge v3, v7, :cond_3

    .line 2975
    if-ne v3, v6, :cond_2

    .line 2976
    array-length v7, p1

    add-int/lit8 v7, v7, -0x1

    if-ge v5, v7, :cond_1

    .line 2977
    add-int/lit8 v5, v5, 0x1

    aget v6, p1, v5

    .line 2974
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2980
    :cond_2
    aget-object v8, v0, v1

    add-int/lit8 v7, v4, 0x1

    aget-object v9, p0, v1

    aget v9, v9, v3

    aput v9, v8, v4

    move v4, v7

    goto :goto_2

    .line 2970
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2984
    :cond_4
    return-object v0
.end method

.method public static RemoveRow([[DI)[[D
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3307
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 3308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3310
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    move v3, v2

    .line 3312
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 3313
    if-eq v1, p1, :cond_1

    .line 3314
    aget-object v4, p0, v1

    aget-object v5, v0, v3

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3315
    add-int/lit8 v3, v3, 0x1

    .line 3312
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3319
    :cond_2
    return-object v0
.end method

.method public static RemoveRow([[FI)[[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3351
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 3352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3354
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    move v3, v2

    .line 3356
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 3357
    if-eq v1, p1, :cond_1

    .line 3358
    aget-object v4, p0, v1

    aget-object v5, v0, v3

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3359
    add-int/lit8 v3, v3, 0x1

    .line 3356
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3363
    :cond_2
    return-object v0
.end method

.method public static RemoveRow([[II)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3329
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 3330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3332
    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    move v3, v2

    .line 3334
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 3335
    if-eq v1, p1, :cond_1

    .line 3336
    aget-object v4, p0, v1

    aget-object v5, v0, v3

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3337
    add-int/lit8 v3, v3, 0x1

    .line 3334
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3341
    :cond_2
    return-object v0
.end method

.method public static RemoveRow([[Ljava/lang/Object;I)[[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;I)[[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3373
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 3374
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3376
    :cond_0
    aget-object v0, p0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, p0, v2

    array-length v4, v4

    aput v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    move v1, v2

    move v3, v2

    .line 3378
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 3379
    if-eq v1, p1, :cond_1

    .line 3380
    aget-object v4, p0, v1

    aget-object v5, v0, v3

    aget-object v6, p0, v2

    array-length v6, v6

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3381
    add-int/lit8 v3, v3, 0x1

    .line 3378
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3385
    :cond_2
    return-object v0
.end method

.method public static RemoveRows([[D[I)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 3427
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 3428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3430
    :cond_0
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 3435
    aget v1, p1, v2

    move v3, v2

    move v4, v2

    move v5, v1

    move v1, v2

    .line 3437
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_4

    .line 3438
    if-ne v1, v5, :cond_2

    .line 3439
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    .line 3440
    add-int/lit8 v4, v4, 0x1

    aget v5, p1, v4

    .line 3437
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    .line 3443
    :goto_2
    aget-object v7, p0, v2

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 3444
    aget-object v7, v0, v3

    aget-object v8, p0, v1

    aget-wide v8, v8, v6

    aput-wide v8, v7, v6

    .line 3443
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3446
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3449
    :cond_4
    return-object v0
.end method

.method public static RemoveRows([[F[I)[[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3459
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 3460
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3462
    :cond_0
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 3467
    aget v1, p1, v2

    move v3, v2

    move v4, v2

    move v5, v1

    move v1, v2

    .line 3469
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_4

    .line 3470
    if-ne v1, v5, :cond_2

    .line 3471
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    .line 3472
    add-int/lit8 v4, v4, 0x1

    aget v5, p1, v4

    .line 3469
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    .line 3475
    :goto_2
    aget-object v7, p0, v2

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 3476
    aget-object v7, v0, v3

    aget-object v8, p0, v1

    aget v8, v8, v6

    aput v8, v7, v6

    .line 3475
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3478
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3481
    :cond_4
    return-object v0
.end method

.method public static RemoveRows([[I[I)[[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3395
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    .line 3396
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The number of rows is less or equal zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3398
    :cond_0
    array-length v0, p0

    array-length v1, p1

    sub-int/2addr v0, v1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 3403
    aget v1, p1, v2

    move v3, v2

    move v4, v2

    move v5, v1

    move v1, v2

    .line 3405
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_4

    .line 3406
    if-ne v1, v5, :cond_2

    .line 3407
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_1

    .line 3408
    add-int/lit8 v4, v4, 0x1

    aget v5, p1, v4

    .line 3405
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v6, v2

    .line 3411
    :goto_2
    aget-object v7, p0, v2

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 3412
    aget-object v7, v0, v3

    aget-object v8, p0, v1

    aget v8, v8, v6

    aput v8, v7, v6

    .line 3411
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3414
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3417
    :cond_4
    return-object v0
.end method

.method public static Reshape([[D)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3563
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [D

    move v0, v1

    move v2, v1

    .line 3565
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 3566
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 3567
    add-int/lit8 v4, v2, 0x1

    aget-object v6, p0, v0

    aget-wide v6, v6, v3

    aput-wide v6, v5, v2

    .line 3566
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 3565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3571
    :cond_1
    return-object v5
.end method

.method public static Reshape([[F)[F
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3599
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [F

    move v0, v1

    move v2, v1

    .line 3601
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 3602
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 3603
    add-int/lit8 v4, v2, 0x1

    aget-object v6, p0, v0

    aget v6, v6, v3

    aput v6, v5, v2

    .line 3602
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 3601
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3607
    :cond_1
    return-object v5
.end method

.method public static Reshape([[I)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 3581
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    .line 3583
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 3584
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 3585
    add-int/lit8 v4, v2, 0x1

    aget-object v6, p0, v0

    aget v6, v6, v3

    aput v6, v5, v2

    .line 3584
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 3583
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3589
    :cond_1
    return-object v5
.end method

.method public static Reshape([DII)[[D
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 3493
    array-length v0, p0

    mul-int v1, p1, p2

    if-eq v0, v1, :cond_0

    .line 3494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of vector must be the same of product of m and n."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3497
    :cond_0
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v5, v2

    move v1, v2

    .line 3498
    :goto_0
    if-ge v5, p1, :cond_2

    move v3, v1

    move v1, v2

    .line 3499
    :goto_1
    if-ge v1, p2, :cond_1

    .line 3500
    aget-object v6, v0, v5

    add-int/lit8 v4, v3, 0x1

    aget-wide v8, p0, v3

    aput-wide v8, v6, v1

    .line 3499
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    .line 3498
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_0

    .line 3504
    :cond_2
    return-object v0
.end method

.method public static Reshape([FII)[[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3541
    array-length v0, p0

    mul-int v1, p1, p2

    if-eq v0, v1, :cond_0

    .line 3542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of vector must be the same of product of m and n."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3545
    :cond_0
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v5, v2

    move v1, v2

    .line 3546
    :goto_0
    if-ge v5, p1, :cond_2

    move v3, v1

    move v1, v2

    .line 3547
    :goto_1
    if-ge v1, p2, :cond_1

    .line 3548
    aget-object v6, v0, v5

    add-int/lit8 v4, v3, 0x1

    aget v3, p0, v3

    aput v3, v6, v1

    .line 3547
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    .line 3546
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_0

    .line 3552
    :cond_2
    return-object v0
.end method

.method public static Reshape([III)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3517
    array-length v0, p0

    mul-int v1, p1, p2

    if-eq v0, v1, :cond_0

    .line 3518
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size of vector must be the same of product of m and n."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3521
    :cond_0
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v5, v2

    move v1, v2

    .line 3522
    :goto_0
    if-ge v5, p1, :cond_2

    move v3, v1

    move v1, v2

    .line 3523
    :goto_1
    if-ge v1, p2, :cond_1

    .line 3524
    aget-object v6, v0, v5

    add-int/lit8 v4, v3, 0x1

    aget v3, p0, v3

    aput v3, v6, v1

    .line 3523
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    .line 3522
    :cond_1
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v3

    goto :goto_0

    .line 3528
    :cond_2
    return-object v0
.end method

.method public static SubMatrix([DI)[D
    .locals 2

    .prologue
    .line 3631
    if-ltz p1, :cond_0

    array-length v0, p0

    if-le p1, v0, :cond_1

    .line 3632
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3634
    :cond_1
    if-nez p1, :cond_2

    .line 3637
    :goto_0
    return-object p0

    :cond_2
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v0, v1}, LCatalano/Math/Matrix;->Submatrix([DII)[D

    move-result-object p0

    goto :goto_0
.end method

.method public static SubMatrix([II)[I
    .locals 2

    .prologue
    .line 3621
    if-ltz p1, :cond_0

    array-length v0, p0

    if-le p1, v0, :cond_1

    .line 3622
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3624
    :cond_1
    if-nez p1, :cond_2

    .line 3627
    :goto_0
    return-object p0

    :cond_2
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {p0, v0, v1}, LCatalano/Math/Matrix;->Submatrix([III)[I

    move-result-object p0

    goto :goto_0
.end method

.method public static SubMatrix([[DII)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3611
    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, v2

    .line 3612
    :goto_0
    if-ge v3, p1, :cond_1

    move v1, v2

    .line 3613
    :goto_1
    if-ge v1, p2, :cond_0

    .line 3614
    aget-object v4, v0, v3

    aget-object v5, p0, v3

    aget-wide v6, v5, v1

    aput-wide v6, v4, v1

    .line 3613
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3612
    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 3617
    :cond_1
    return-object v0
.end method

.method public static Submatrix([DII)[D
    .locals 6

    .prologue
    .line 3655
    if-gez p1, :cond_0

    .line 3656
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startRow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3657
    :cond_0
    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endRow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3660
    :cond_1
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [D

    move v0, p1

    .line 3662
    :goto_0
    if-gt v0, p2, :cond_2

    .line 3663
    sub-int v2, v0, p1

    aget-wide v4, p0, v0

    aput-wide v4, v1, v2

    .line 3662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3665
    :cond_2
    return-object v1
.end method

.method public static Submatrix([III)[I
    .locals 4

    .prologue
    .line 3641
    if-gez p1, :cond_0

    .line 3642
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startRow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3643
    :cond_0
    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3644
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endRow"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3646
    :cond_1
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    move v0, p1

    .line 3648
    :goto_0
    if-gt v0, p2, :cond_2

    .line 3649
    sub-int v2, v0, p1

    aget v3, p0, v0

    aput v3, v1, v2

    .line 3648
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3651
    :cond_2
    return-object v1
.end method

.method public static Submatrix([[DIIII)[[D
    .locals 8

    .prologue
    .line 3678
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3680
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3683
    :cond_1
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, p1

    .line 3685
    :goto_0
    if-gt v2, p2, :cond_3

    move v1, p3

    .line 3686
    :goto_1
    if-gt v1, p4, :cond_2

    .line 3688
    sub-int v3, v2, p1

    aget-object v3, v0, v3

    sub-int v4, v1, p3

    aget-object v5, p0, v2

    aget-wide v6, v5, v1

    aput-wide v6, v3, v4

    .line 3686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3685
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3692
    :cond_3
    return-object v0
.end method

.method public static Submatrix([[DII[I)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3758
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3760
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3763
    :cond_1
    if-nez p3, :cond_2

    .line 3764
    aget-object v0, p0, v2

    array-length v0, v0

    invoke-static {v2, v0}, LCatalano/Math/Matrix;->Indices(II)[I

    move-result-object p3

    .line 3766
    :cond_2
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v3, p1

    .line 3768
    :goto_0
    if-gt v3, p2, :cond_6

    move v1, v2

    .line 3769
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_5

    .line 3770
    aget v4, p3, v1

    if-ltz v4, :cond_3

    aget v4, p3, v1

    aget-object v5, p0, v2

    array-length v5, v5

    if-lt v4, v5, :cond_4

    .line 3771
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3774
    :cond_4
    sub-int v4, v3, p1

    aget-object v4, v0, v4

    aget-object v5, p0, v3

    aget v6, p3, v1

    aget-wide v6, v5, v6

    aput-wide v6, v4, v1

    .line 3769
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3768
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 3778
    :cond_6
    return-object v0
.end method

.method public static Submatrix([[D[I)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3875
    array-length v0, p1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 3877
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 3879
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 3881
    aget v4, p1, v1

    if-ltz v4, :cond_0

    aget v4, p1, v1

    array-length v5, p0

    if-lt v4, v5, :cond_1

    .line 3882
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3884
    :cond_1
    aget-object v4, v0, v1

    aget v5, p1, v1

    aget-object v5, p0, v5

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 3879
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3877
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3888
    :cond_3
    return-object v0
.end method

.method public static Submatrix([[D[III)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3925
    array-length v0, p1

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 3927
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 3929
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 3931
    aget v4, p1, v1

    if-ltz v4, :cond_0

    aget v4, p1, v1

    array-length v5, p0

    if-lt v4, v5, :cond_1

    .line 3932
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3934
    :cond_1
    aget-object v4, v0, v1

    aget v5, p1, v1

    aget-object v5, p0, v5

    add-int v6, p2, v3

    aget-wide v6, v5, v6

    aput-wide v6, v4, v3

    .line 3929
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3927
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3938
    :cond_3
    return-object v0
.end method

.method public static Submatrix([[FIIII)[[F
    .locals 6

    .prologue
    .line 3732
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3734
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3737
    :cond_1
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v2, p1

    .line 3739
    :goto_0
    if-gt v2, p2, :cond_3

    move v1, p3

    .line 3740
    :goto_1
    if-gt v1, p4, :cond_2

    .line 3742
    sub-int v3, v2, p1

    aget-object v3, v0, v3

    sub-int v4, v1, p3

    aget-object v5, p0, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 3740
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3739
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3746
    :cond_3
    return-object v0
.end method

.method public static Submatrix([[FII[I)[[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3822
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3824
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3827
    :cond_1
    if-nez p3, :cond_2

    .line 3828
    aget-object v0, p0, v2

    array-length v0, v0

    invoke-static {v2, v0}, LCatalano/Math/Matrix;->Indices(II)[I

    move-result-object p3

    .line 3830
    :cond_2
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v3, p1

    .line 3832
    :goto_0
    if-gt v3, p2, :cond_6

    move v1, v2

    .line 3833
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_5

    .line 3834
    aget v4, p3, v1

    if-ltz v4, :cond_3

    aget v4, p3, v1

    aget-object v5, p0, v2

    array-length v5, v5

    if-lt v4, v5, :cond_4

    .line 3835
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3838
    :cond_4
    sub-int v4, v3, p1

    aget-object v4, v0, v4

    aget-object v5, p0, v3

    aget v6, p3, v1

    aget v5, v5, v6

    aput v5, v4, v1

    .line 3833
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3832
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 3842
    :cond_6
    return-object v0
.end method

.method public static Submatrix([[IIIII)[[I
    .locals 6

    .prologue
    .line 3705
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3710
    :cond_1
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, p1

    .line 3712
    :goto_0
    if-gt v2, p2, :cond_3

    move v1, p3

    .line 3713
    :goto_1
    if-gt v1, p4, :cond_2

    .line 3715
    sub-int v3, v2, p1

    aget-object v3, v0, v3

    sub-int v4, v1, p3

    aget-object v5, p0, v2

    aget v5, v5, v1

    aput v5, v3, v4

    .line 3713
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3712
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 3719
    :cond_3
    return-object v0
.end method

.method public static Submatrix([[III[I)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3790
    if-gt p1, p2, :cond_0

    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    array-length v0, p0

    if-lt p2, v0, :cond_1

    .line 3792
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3795
    :cond_1
    if-nez p3, :cond_2

    .line 3796
    aget-object v0, p0, v2

    array-length v0, v0

    invoke-static {v2, v0}, LCatalano/Math/Matrix;->Indices(II)[I

    move-result-object p3

    .line 3798
    :cond_2
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v3, p1

    .line 3800
    :goto_0
    if-gt v3, p2, :cond_6

    move v1, v2

    .line 3801
    :goto_1
    array-length v4, p3

    if-ge v1, v4, :cond_5

    .line 3802
    aget v4, p3, v1

    if-ltz v4, :cond_3

    aget v4, p3, v1

    aget-object v5, p0, v2

    array-length v5, v5

    if-lt v4, v5, :cond_4

    .line 3803
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3806
    :cond_4
    sub-int v4, v3, p1

    aget-object v4, v0, v4

    aget-object v5, p0, v3

    aget v6, p3, v1

    aget v5, v5, v6

    aput v5, v4, v1

    .line 3801
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3800
    :cond_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 3810
    :cond_6
    return-object v0
.end method

.method public static Submatrix([[I[I)[[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3852
    array-length v0, p1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 3854
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 3856
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 3858
    aget v4, p1, v1

    if-ltz v4, :cond_0

    aget v4, p1, v1

    array-length v5, p0

    if-lt v4, v5, :cond_1

    .line 3859
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3861
    :cond_1
    aget-object v4, v0, v1

    aget v5, p1, v1

    aget-object v5, p0, v5

    aget v5, v5, v3

    aput v5, v4, v3

    .line 3856
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3854
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3865
    :cond_3
    return-object v0
.end method

.method public static Submatrix([[I[III)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 3900
    array-length v0, p1

    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 3902
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_3

    move v3, v2

    .line 3904
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 3906
    aget v4, p1, v1

    if-ltz v4, :cond_0

    aget v4, p1, v1

    array-length v5, p0

    if-lt v4, v5, :cond_1

    .line 3907
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument out of range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3909
    :cond_1
    aget-object v4, v0, v1

    aget v5, p1, v1

    aget-object v5, p0, v5

    add-int v6, p2, v3

    aget v5, v5, v6

    aput v5, v4, v3

    .line 3904
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3902
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3913
    :cond_3
    return-object v0
.end method

.method public static Subtract([DD)V
    .locals 5

    .prologue
    .line 1199
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1200
    aget-wide v2, p0, v0

    sub-double/2addr v2, p1

    aput-wide v2, p0, v0

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    return-void
.end method

.method public static Subtract([FF)V
    .locals 2

    .prologue
    .line 1221
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1222
    aget v1, p0, v0

    sub-float/2addr v1, p1

    aput v1, p0, v0

    .line 1221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1224
    :cond_0
    return-void
.end method

.method public static Subtract([II)V
    .locals 2

    .prologue
    .line 1210
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1211
    aget v1, p0, v0

    sub-int/2addr v1, p1

    aput v1, p0, v0

    .line 1210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1213
    :cond_0
    return-void
.end method

.method public static Subtract([[DD)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1328
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1329
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1330
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    sub-double/2addr v4, p1

    aput-wide v4, v3, v2

    .line 1329
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1328
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1333
    :cond_1
    return-void
.end method

.method public static Subtract([[FF)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1354
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1355
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1356
    aget-object v3, p0, v0

    aget v4, v3, v2

    sub-float/2addr v4, p1

    aput v4, v3, v2

    .line 1355
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1354
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1359
    :cond_1
    return-void
.end method

.method public static Subtract([[II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1341
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1342
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1343
    aget-object v3, p0, v0

    aget v4, v3, v2

    sub-int/2addr v4, p1

    aput v4, v3, v2

    .line 1342
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1341
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1346
    :cond_1
    return-void
.end method

.method public static Subtract([D[D)[D
    .locals 6

    .prologue
    .line 1116
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1117
    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    sub-double/2addr v2, v4

    aput-wide v2, p0, v0

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1119
    :cond_0
    return-object p1
.end method

.method public static Subtract([F[F)[F
    .locals 3

    .prologue
    .line 1142
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1143
    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    aput v1, p0, v0

    .line 1142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1145
    :cond_0
    return-object p1
.end method

.method public static Subtract([I[I)[I
    .locals 3

    .prologue
    .line 1129
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 1130
    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p0, v0

    .line 1129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1132
    :cond_0
    return-object p1
.end method

.method public static Subtract([[D[[D)[[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1155
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1156
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1157
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    aget-object v6, p1, v0

    aget-wide v6, v6, v2

    sub-double/2addr v4, v6

    aput-wide v4, v3, v2

    .line 1156
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1160
    :cond_1
    return-object p0
.end method

.method public static Subtract([[F[[F)[[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1185
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1186
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1187
    aget-object v3, p0, v0

    aget v4, v3, v2

    aget-object v5, p1, v0

    aget v5, v5, v2

    sub-float/2addr v4, v5

    aput v4, v3, v2

    .line 1186
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1190
    :cond_1
    return-object p0
.end method

.method public static Subtract([[I[[I)[[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1170
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1171
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1172
    aget-object v3, p0, v0

    aget v4, v3, v2

    aget-object v5, p1, v0

    aget v5, v5, v2

    sub-int/2addr v4, v5

    aput v4, v3, v2

    .line 1171
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1175
    :cond_1
    return-object p0
.end method

.method public static Sum([[D)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1232
    const-wide/16 v2, 0x0

    move v0, v1

    .line 1233
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 1234
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1235
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    add-double/2addr v6, v2

    .line 1234
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 1233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1239
    :cond_1
    return-wide v2
.end method

.method public static Sum([[F)F
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1264
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 1265
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 1266
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1267
    aget-object v4, p0, v0

    aget v4, v4, v3

    add-float/2addr v4, v2

    .line 1266
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 1265
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1271
    :cond_1
    return v2
.end method

.method public static Sum([[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1248
    move v0, v1

    move v2, v1

    .line 1249
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 1250
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1251
    aget-object v4, p0, v0

    aget v4, v4, v3

    add-int/2addr v4, v2

    .line 1250
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 1249
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1255
    :cond_1
    return v2
.end method

.method public static SumAbs([[D)D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1280
    const-wide/16 v2, 0x0

    move v0, v1

    .line 1281
    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_1

    move v4, v1

    .line 1282
    :goto_1
    aget-object v5, p0, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 1283
    aget-object v5, p0, v0

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v6, v2

    .line 1282
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v6

    goto :goto_1

    .line 1281
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1287
    :cond_1
    return-wide v2
.end method

.method public static SumAbs([[F)F
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1312
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 1313
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 1314
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1315
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v2

    .line 1314
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 1313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1319
    :cond_1
    return v2
.end method

.method public static SumAbs([[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1296
    move v0, v1

    move v2, v1

    .line 1297
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 1298
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 1299
    aget-object v4, p0, v0

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 1298
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 1297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_1
    return v2
.end method

.method public static SwapColumn([[DII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1368
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1369
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1370
    aget-object v3, p0, v0

    aget-wide v4, v3, p1

    .line 1371
    aget-object v3, p0, v0

    aget-wide v6, v3, p2

    .line 1372
    aget-object v3, p0, v0

    aput-wide v6, v3, p1

    .line 1373
    aget-object v3, p0, v0

    aput-wide v4, v3, p2

    .line 1369
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1368
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1376
    :cond_1
    return-void
.end method

.method public static SwapColumn([[FII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1402
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1403
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1404
    aget-object v3, p0, v0

    aget v3, v3, p1

    .line 1405
    aget-object v4, p0, v0

    aget v4, v4, p2

    .line 1406
    aget-object v5, p0, v0

    aput v4, v5, p1

    .line 1407
    aget-object v4, p0, v0

    aput v3, v4, p2

    .line 1403
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1402
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1410
    :cond_1
    return-void
.end method

.method public static SwapColumn([[III)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1385
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1386
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1387
    aget-object v3, p0, v0

    aget v3, v3, p1

    .line 1388
    aget-object v4, p0, v0

    aget v4, v4, p2

    .line 1389
    aget-object v5, p0, v0

    aput v4, v5, p1

    .line 1390
    aget-object v4, p0, v0

    aput v3, v4, p2

    .line 1386
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1385
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1393
    :cond_1
    return-void
.end method

.method public static SwapRow([[DII)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1419
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1420
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1421
    aget-object v3, p0, p1

    aget-wide v4, v3, v2

    .line 1422
    aget-object v3, p0, p2

    aget-wide v6, v3, v2

    .line 1423
    aget-object v3, p0, p1

    aput-wide v6, v3, v2

    .line 1424
    aget-object v3, p0, p2

    aput-wide v4, v3, v2

    .line 1420
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1419
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1427
    :cond_1
    return-void
.end method

.method public static SwapRow([[FII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1453
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1454
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1455
    aget-object v3, p0, p1

    aget v3, v3, v2

    .line 1456
    aget-object v4, p0, p2

    aget v4, v4, v2

    .line 1457
    aget-object v5, p0, p1

    aput v4, v5, v2

    .line 1458
    aget-object v4, p0, p2

    aput v3, v4, v2

    .line 1454
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1461
    :cond_1
    return-void
.end method

.method public static SwapRow([[III)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1436
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 1437
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 1438
    aget-object v3, p0, p1

    aget v3, v3, v2

    .line 1439
    aget-object v4, p0, p2

    aget v4, v4, v2

    .line 1440
    aget-object v5, p0, p1

    aput v4, v5, v2

    .line 1441
    aget-object v4, p0, p2

    aput v3, v4, v2

    .line 1437
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1436
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    :cond_1
    return-void
.end method

.method public static Trace([[D)D
    .locals 6

    .prologue
    .line 2005
    invoke-static {p0}, LCatalano/Math/Matrix;->isSquare([[D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2006
    const-wide/16 v2, 0x0

    .line 2007
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 2008
    aget-object v1, p0, v0

    aget-wide v4, v1, v0

    add-double/2addr v2, v4

    .line 2007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2013
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2010
    :cond_1
    return-wide v2
.end method

.method public static Trace([[F)F
    .locals 3

    .prologue
    .line 2041
    invoke-static {p0}, LCatalano/Math/Matrix;->isSquare([[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    const/4 v1, 0x0

    .line 2043
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2044
    aget-object v2, p0, v0

    aget v2, v2, v0

    add-float/2addr v1, v2

    .line 2043
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2049
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_1
    return v1
.end method

.method public static Trace([[I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2023
    invoke-static {p0}, LCatalano/Math/Matrix;->isSquare([[I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 2025
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2026
    aget-object v2, p0, v0

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 2025
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2031
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrix must be square."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2028
    :cond_1
    return v1
.end method

.method public static Transpose([[D)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2059
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 2061
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 2062
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2063
    aget-object v4, v0, v3

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v1

    .line 2062
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2061
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2066
    :cond_1
    return-object v0
.end method

.method public static Transpose([[F)[[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2091
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 2093
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 2094
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2095
    aget-object v4, v0, v3

    aget-object v5, p0, v1

    aget v5, v5, v3

    aput v5, v4, v1

    .line 2094
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2093
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2098
    :cond_1
    return-object v0
.end method

.method public static Transpose([[I)[[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2075
    aget-object v0, p0, v2

    array-length v0, v0

    array-length v1, p0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 2077
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 2078
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2079
    aget-object v4, v0, v3

    aget-object v5, p0, v1

    aget v5, v5, v3

    aput v5, v4, v1

    .line 2078
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2077
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2082
    :cond_1
    return-object v0
.end method

.method public static Transpose([[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([[TE;)[[TE;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2108
    aget-object v0, p0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    aget-object v3, p0, v2

    array-length v3, v3

    aput v3, v1, v2

    const/4 v3, 0x1

    array-length v4, p0

    aput v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    move v1, v2

    .line 2110
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 2111
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 2112
    aget-object v4, v0, v3

    aget-object v5, p0, v1

    aget-object v5, v5, v3

    aput-object v5, v4, v1

    .line 2111
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2115
    :cond_1
    return-object v0
.end method

.method public static getColumn([[DI)[D
    .locals 6

    .prologue
    .line 703
    array-length v1, p0

    .line 704
    new-array v2, v1, [D

    .line 706
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 707
    aget-object v3, p0, v0

    aget-wide v4, v3, p1

    aput-wide v4, v2, v0

    .line 706
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_0
    return-object v2
.end method

.method public static getColumn([[FI)[F
    .locals 4

    .prologue
    .line 735
    array-length v1, p0

    .line 736
    new-array v2, v1, [F

    .line 738
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 739
    aget-object v3, p0, v0

    aget v3, v3, p1

    aput v3, v2, v0

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    :cond_0
    return-object v2
.end method

.method public static getColumn([[II)[I
    .locals 4

    .prologue
    .line 719
    array-length v1, p0

    .line 720
    new-array v2, v1, [I

    .line 722
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 723
    aget-object v3, p0, v0

    aget v3, v3, p1

    aput v3, v2, v0

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 725
    :cond_0
    return-object v2
.end method

.method public static getColumn([[Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;I)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 752
    array-length v2, p0

    .line 753
    aget-object v0, p0, v1

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 755
    :goto_0
    if-ge v1, v2, :cond_0

    .line 756
    aget-object v3, p0, v1

    aget-object v3, v3, p1

    aput-object v3, v0, v1

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 759
    :cond_0
    return-object v0
.end method

.method public static getColumns([DII)[D
    .locals 4

    .prologue
    .line 771
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [D

    .line 772
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 773
    add-int v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, v1, v0

    .line 772
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    :cond_0
    return-object v1
.end method

.method public static getColumns([FII)[F
    .locals 3

    .prologue
    .line 805
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    .line 806
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 807
    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, v1, v0

    .line 806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 809
    :cond_0
    return-object v1
.end method

.method public static getColumns([III)[I
    .locals 3

    .prologue
    .line 788
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    .line 789
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 790
    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, v1, v0

    .line 789
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_0
    return-object v1
.end method

.method public static getColumns([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 822
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    array-length v2, p0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 823
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 824
    add-int v2, p1, v1

    aget-object v2, p0, v2

    aput-object v2, v0, v1

    .line 823
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 826
    :cond_0
    return-object v0
.end method

.method public static getColumns([[D[I)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 837
    array-length v0, p0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 838
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 839
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 840
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v6, p1, v3

    aget-wide v6, v5, v6

    aput-wide v6, v4, v3

    .line 839
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 838
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 843
    :cond_1
    return-object v0
.end method

.method public static getColumns([[F[I)[[F
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 869
    array-length v0, p0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 870
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 871
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 872
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v6, p1, v3

    aget v5, v5, v6

    aput v5, v4, v3

    .line 871
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 870
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    :cond_1
    return-object v0
.end method

.method public static getColumns([[I[I)[[I
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 853
    array-length v0, p0

    array-length v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 854
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 855
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 856
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v6, p1, v3

    aget v5, v5, v6

    aput v5, v4, v3

    .line 855
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 854
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 859
    :cond_1
    return-object v0
.end method

.method public static getColumns([[Ljava/lang/Object;[I)[[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;[I)[[TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 886
    aget-object v0, p0, v2

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    array-length v3, p0

    aput v3, v1, v2

    const/4 v3, 0x1

    array-length v4, p1

    aput v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    move v1, v2

    .line 887
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 888
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 889
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget v6, p1, v3

    aget-object v5, v5, v6

    aput-object v5, v4, v3

    .line 888
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 887
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    :cond_1
    return-object v0
.end method

.method public static getRow([[DI)[D
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 902
    aget-object v1, p0, v0

    array-length v1, v1

    .line 903
    new-array v2, v1, [D

    .line 905
    :goto_0
    if-ge v0, v1, :cond_0

    .line 906
    aget-object v3, p0, p1

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    .line 905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 908
    :cond_0
    return-object v2
.end method

.method public static getRow([[FI)[F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 934
    aget-object v1, p0, v0

    array-length v1, v1

    .line 935
    new-array v2, v1, [F

    .line 937
    :goto_0
    if-ge v0, v1, :cond_0

    .line 938
    aget-object v3, p0, p1

    aget v3, v3, v0

    aput v3, v2, v0

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 940
    :cond_0
    return-object v2
.end method

.method public static getRow([[II)[I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 918
    aget-object v1, p0, v0

    array-length v1, v1

    .line 919
    new-array v2, v1, [I

    .line 921
    :goto_0
    if-ge v0, v1, :cond_0

    .line 922
    aget-object v3, p0, p1

    aget v3, v3, v0

    aput v3, v2, v0

    .line 921
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 924
    :cond_0
    return-object v2
.end method

.method public static getRows([D[I)[D
    .locals 4

    .prologue
    .line 998
    array-length v0, p1

    new-array v1, v0, [D

    .line 999
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1000
    aget v2, p1, v0

    aget-wide v2, p0, v2

    aput-wide v2, v1, v0

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1002
    :cond_0
    return-object v1
.end method

.method public static getRows([F[I)[F
    .locals 3

    .prologue
    .line 1026
    array-length v0, p1

    new-array v1, v0, [F

    .line 1027
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1028
    aget v2, p1, v0

    aget v2, p0, v2

    aput v2, v1, v0

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    :cond_0
    return-object v1
.end method

.method public static getRows([I[I)[I
    .locals 3

    .prologue
    .line 1012
    array-length v0, p1

    new-array v1, v0, [I

    .line 1013
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1014
    aget v2, p1, v0

    aget v2, p0, v2

    aput v2, v1, v0

    .line 1013
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    :cond_0
    return-object v1
.end method

.method public static getRows([Ljava/lang/Object;[I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I)[TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1041
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 1042
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 1043
    aget v2, p1, v1

    aget-object v2, p0, v2

    aput-object v2, v0, v1

    .line 1042
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1045
    :cond_0
    return-object v0
.end method

.method public static getRows([[D[I)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 950
    array-length v0, p1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 951
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 952
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 953
    aget-object v4, v0, v1

    aget v5, p1, v1

    aget-object v5, p0, v5

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 952
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 951
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 956
    :cond_1
    return-object v0
.end method

.method public static getRows([[F[I)[[F
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 982
    array-length v0, p1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v1, v2

    .line 983
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 984
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 985
    aget-object v4, v0, v1

    aget v5, p1, v1

    aget-object v5, p0, v5

    aget v5, v5, v3

    aput v5, v4, v3

    .line 984
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 983
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    :cond_1
    return-object v0
.end method

.method public static getRows([[I[I)[[I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 966
    array-length v0, p1

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v1, v2

    .line 967
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 968
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 969
    aget-object v4, v0, v1

    aget v5, p1, v1

    aget-object v5, p0, v5

    aget v5, v5, v3

    aput v5, v4, v3

    .line 968
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 967
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    :cond_1
    return-object v0
.end method

.method public static isEqual([[D[[D)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2684
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    aget-object v0, p0, v1

    array-length v0, v0

    aget-object v2, p1, v1

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 2685
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrix A must be the same size of the B."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 2687
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 2688
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2689
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    aget-object v3, p1, v0

    aget-wide v6, v3, v2

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_2

    .line 2694
    :goto_2
    return v1

    .line 2688
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2687
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2694
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isEqual([[F[[F)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2728
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    aget-object v0, p0, v1

    array-length v0, v0

    aget-object v2, p1, v1

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 2729
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrix A must be the same size of the B."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 2731
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 2732
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2733
    aget-object v3, p0, v0

    aget v3, v3, v2

    aget-object v4, p1, v0

    aget v4, v4, v2

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    .line 2738
    :goto_2
    return v1

    .line 2732
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2731
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2738
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isEqual([[I[[I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2706
    array-length v0, p0

    array-length v2, p1

    if-ne v0, v2, :cond_0

    aget-object v0, p0, v1

    array-length v0, v0

    aget-object v2, p1, v1

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 2707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The matrix A must be the same size of the B."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v1

    .line 2709
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_4

    move v2, v1

    .line 2710
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2711
    aget-object v3, p0, v0

    aget v3, v3, v2

    aget-object v4, p1, v0

    aget v4, v4, v2

    if-eq v3, v4, :cond_2

    .line 2716
    :goto_2
    return v1

    .line 2710
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2709
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2716
    :cond_4
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isNonNegative([[D)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2749
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 2750
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2751
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 2753
    :goto_2
    return v1

    .line 2750
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2749
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2753
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isNonNegative([[F)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2777
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 2778
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2779
    aget-object v3, p0, v0

    aget v3, v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 2781
    :goto_2
    return v1

    .line 2778
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2777
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2781
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isNonNegative([[I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2763
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 2764
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2765
    aget-object v3, p0, v0

    aget v3, v3, v2

    if-gez v3, :cond_0

    .line 2767
    :goto_2
    return v1

    .line 2764
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2763
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2767
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isSquare([[D)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2790
    array-length v1, p0

    array-length v2, p0

    mul-int/2addr v1, v2

    array-length v2, p0

    aget-object v3, p0, v0

    array-length v3, v3

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 2791
    const/4 v0, 0x1

    .line 2793
    :cond_0
    return v0
.end method

.method public static isSquare([[F)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2814
    array-length v1, p0

    array-length v2, p0

    mul-int/2addr v1, v2

    array-length v2, p0

    aget-object v3, p0, v0

    array-length v3, v3

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 2815
    const/4 v0, 0x1

    .line 2817
    :cond_0
    return v0
.end method

.method public static isSquare([[I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2802
    array-length v1, p0

    array-length v2, p0

    mul-int/2addr v1, v2

    array-length v2, p0

    aget-object v3, p0, v0

    array-length v3, v3

    mul-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 2803
    const/4 v0, 0x1

    .line 2805
    :cond_0
    return v0
.end method

.method public static isSymmetric([[D)Z
    .locals 1

    .prologue
    .line 2826
    invoke-static {p0}, LCatalano/Math/Matrix;->Transpose([[D)[[D

    move-result-object v0

    .line 2827
    invoke-static {p0, v0}, LCatalano/Math/Matrix;->isEqual([[D[[D)Z

    move-result v0

    return v0
.end method

.method public static isSymmetric([[F)Z
    .locals 1

    .prologue
    .line 2846
    invoke-static {p0}, LCatalano/Math/Matrix;->Transpose([[F)[[F

    move-result-object v0

    .line 2847
    invoke-static {p0, v0}, LCatalano/Math/Matrix;->isEqual([[F[[F)Z

    move-result v0

    return v0
.end method

.method public static isSymmetric([[I)Z
    .locals 1

    .prologue
    .line 2836
    invoke-static {p0}, LCatalano/Math/Matrix;->Transpose([[I)[[I

    move-result-object v0

    .line 2837
    invoke-static {p0, v0}, LCatalano/Math/Matrix;->isEqual([[I[[I)Z

    move-result v0

    return v0
.end method

.method public static isZero([D)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2878
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2879
    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 2880
    :goto_1
    return v1

    .line 2878
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2880
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isZero([F)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2867
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2868
    aget v2, p0, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 2869
    :goto_1
    return v1

    .line 2867
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2869
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isZero([I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2856
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 2857
    aget v2, p0, v0

    if-eqz v2, :cond_0

    .line 2858
    :goto_1
    return v1

    .line 2856
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2858
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isZero([[D)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2917
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 2918
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2919
    aget-object v3, p0, v0

    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    .line 2922
    :goto_2
    return v1

    .line 2918
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2917
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2922
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isZero([[F)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2903
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 2904
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2905
    aget-object v3, p0, v0

    aget v3, v3, v2

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 2908
    :goto_2
    return v1

    .line 2904
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2903
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2908
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static isZero([[I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2889
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    move v2, v1

    .line 2890
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 2891
    aget-object v3, p0, v0

    aget v3, v3, v2

    if-eqz v3, :cond_0

    .line 2894
    :goto_2
    return v1

    .line 2890
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2889
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2894
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public static toDoubleArray([[D)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3965
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [D

    move v0, v1

    move v2, v1

    .line 3968
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 3969
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 3970
    aget-object v4, p0, v0

    aget-wide v6, v4, v3

    aput-wide v6, v5, v2

    .line 3971
    add-int/lit8 v4, v2, 0x1

    .line 3969
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 3968
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3974
    :cond_1
    return-object v5
.end method

.method public static toDoubleArray([[F)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3983
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [D

    move v0, v1

    move v2, v1

    .line 3986
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 3987
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 3988
    aget-object v4, p0, v0

    aget v4, v4, v3

    float-to-double v6, v4

    aput-wide v6, v5, v2

    .line 3989
    add-int/lit8 v4, v2, 0x1

    .line 3987
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 3986
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3992
    :cond_1
    return-object v5
.end method

.method public static toDoubleArray([[I)[D
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3947
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [D

    move v0, v1

    move v2, v1

    .line 3950
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 3951
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 3952
    aget-object v4, p0, v0

    aget v4, v4, v3

    int-to-double v6, v4

    aput-wide v6, v5, v2

    .line 3953
    add-int/lit8 v4, v2, 0x1

    .line 3951
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 3950
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3956
    :cond_1
    return-object v5
.end method

.method public static toDoubleMatrix(Ljava/util/List;)[[D
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[D>;)[[D"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4001
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 4002
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 4003
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    aput-object v1, v0, v2

    .line 4002
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4006
    :cond_0
    return-object v0
.end method

.method public static toFloatArray([[D)[F
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 4101
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [F

    move v0, v1

    move v2, v1

    .line 4104
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 4105
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 4106
    aget-object v4, p0, v0

    aget-wide v6, v4, v3

    double-to-float v4, v6

    aput v4, v5, v2

    .line 4107
    add-int/lit8 v4, v2, 0x1

    .line 4105
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 4104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4110
    :cond_1
    return-object v5
.end method

.method public static toFloatArray([[F)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4119
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [F

    move v0, v1

    move v2, v1

    .line 4122
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 4123
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 4124
    aget-object v4, p0, v0

    aget v4, v4, v3

    aput v4, v5, v2

    .line 4125
    add-int/lit8 v4, v2, 0x1

    .line 4123
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 4122
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4128
    :cond_1
    return-object v5
.end method

.method public static toFloatArray([[I)[F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4083
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [F

    move v0, v1

    move v2, v1

    .line 4086
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 4087
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 4088
    aget-object v4, p0, v0

    aget v4, v4, v3

    int-to-float v4, v4

    aput v4, v5, v2

    .line 4089
    add-int/lit8 v4, v2, 0x1

    .line 4087
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 4086
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4092
    :cond_1
    return-object v5
.end method

.method public static toFloatMatrix(Ljava/util/List;)[[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[F>;)[[F"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4137
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    array-length v0, v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    move v2, v1

    .line 4138
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 4139
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    aput-object v1, v0, v2

    .line 4138
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4142
    :cond_0
    return-object v0
.end method

.method public static toIntArray([[D)[I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 4033
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    .line 4036
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 4037
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 4038
    aget-object v4, p0, v0

    aget-wide v6, v4, v3

    double-to-int v4, v6

    aput v4, v5, v2

    .line 4039
    add-int/lit8 v4, v2, 0x1

    .line 4037
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 4036
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4042
    :cond_1
    return-object v5
.end method

.method public static toIntArray([[F)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4051
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    .line 4054
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 4055
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 4056
    aget-object v4, p0, v0

    aget v4, v4, v3

    float-to-int v4, v4

    aput v4, v5, v2

    .line 4057
    add-int/lit8 v4, v2, 0x1

    .line 4055
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 4054
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4060
    :cond_1
    return-object v5
.end method

.method public static toIntArray([[I)[I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4015
    array-length v0, p0

    aget-object v2, p0, v1

    array-length v2, v2

    mul-int/2addr v0, v2

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    .line 4018
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    move v3, v1

    .line 4019
    :goto_1
    aget-object v4, p0, v1

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 4020
    aget-object v4, p0, v0

    aget v4, v4, v3

    aput v4, v5, v2

    .line 4021
    add-int/lit8 v4, v2, 0x1

    .line 4019
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_1

    .line 4018
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4024
    :cond_1
    return-object v5
.end method

.method public static toIntMatrix(Ljava/util/List;)[[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;)[[I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 4069
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v0, v0

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, v1

    .line 4070
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 4071
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v0, v2

    .line 4070
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 4074
    :cond_0
    return-object v0
.end method
