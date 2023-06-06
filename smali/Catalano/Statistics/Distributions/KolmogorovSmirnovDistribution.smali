.class public LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Statistics/Distributions/IDistribution;


# static fields
.field private static a:I


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    .line 55
    return-void
.end method

.method public static ComplementaryDistributionFunction(ID)D
    .locals 11

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 184
    int-to-double v2, p0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    .line 191
    cmpl-double v4, p1, v0

    if-gez v4, :cond_0

    const-wide v4, 0x4077200000000000L    # 370.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_2

    .line 192
    :cond_0
    const-wide/16 v0, 0x0

    .line 243
    :cond_1
    :goto_0
    return-wide v0

    .line 194
    :cond_2
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    int-to-double v6, p0

    div-double/2addr v4, v6

    cmpg-double v4, p1, v4

    if-lez v4, :cond_1

    const-wide v4, 0x3f9c0ebedfa43fe6L    # 0.0274

    cmpg-double v4, v2, v4

    if-lez v4, :cond_1

    .line 197
    const/4 v4, 0x1

    if-ne p0, v4, :cond_3

    .line 198
    mul-double v0, v8, p1

    sub-double v0, v8, v0

    goto :goto_0

    .line 200
    :cond_3
    int-to-double v4, p0

    div-double v4, v0, v4

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_5

    .line 201
    const/16 v2, 0x14

    if-gt p0, v2, :cond_4

    invoke-static {p0}, LCatalano/Math/Special;->Factorial(I)D

    move-result-wide v2

    mul-double v4, v8, p1

    int-to-double v6, p0

    div-double v6, v0, v6

    sub-double/2addr v4, v6

    int-to-double v6, p0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    goto :goto_0

    .line 202
    :cond_4
    invoke-static {p0}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v2

    int-to-double v4, p0

    mul-double v6, v8, p1

    int-to-double v8, p0

    div-double v8, v0, v8

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 204
    :cond_5
    int-to-double v4, p0

    div-double v4, v0, v4

    sub-double v4, v0, v4

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_6

    .line 205
    sub-double/2addr v0, p1

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    goto :goto_0

    .line 210
    :cond_6
    const/16 v4, 0x8c

    if-gt p0, v4, :cond_8

    .line 215
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7

    .line 219
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->OneSideUpperTail(ID)D

    move-result-wide v0

    mul-double/2addr v0, v8

    goto :goto_0

    .line 225
    :cond_7
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->CumulativeFunction(ID)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 233
    :cond_8
    const-wide v4, 0x400199999999999aL    # 2.2

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_9

    .line 237
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->OneSideUpperTail(ID)D

    move-result-wide v0

    mul-double/2addr v0, v8

    goto/16 :goto_0

    .line 243
    :cond_9
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->CumulativeFunction(ID)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto/16 :goto_0
.end method

.method public static CumulativeFunction(ID)D
    .locals 11

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 101
    int-to-double v2, p0

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    .line 108
    cmpl-double v4, p1, v0

    if-gez v4, :cond_0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-wide v0

    .line 111
    :cond_1
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    int-to-double v6, p0

    div-double/2addr v4, v6

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_2

    .line 112
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 114
    :cond_2
    const/4 v4, 0x1

    if-ne p0, v4, :cond_3

    .line 115
    mul-double v2, v8, p1

    sub-double v0, v2, v0

    goto :goto_0

    .line 117
    :cond_3
    int-to-double v4, p0

    div-double v4, v0, v4

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_5

    .line 118
    const/16 v2, 0x14

    if-gt p0, v2, :cond_4

    invoke-static {p0}, LCatalano/Math/Special;->Factorial(I)D

    move-result-wide v2

    mul-double v4, v8, p1

    int-to-double v6, p0

    div-double/2addr v0, v6

    sub-double v0, v4, v0

    int-to-double v4, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr v0, v2

    goto :goto_0

    .line 119
    :cond_4
    invoke-static {p0}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v2

    int-to-double v4, p0

    mul-double v6, v8, p1

    int-to-double v8, p0

    div-double/2addr v0, v8

    sub-double v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    goto :goto_0

    .line 121
    :cond_5
    int-to-double v4, p0

    div-double v4, v0, v4

    sub-double v4, v0, v4

    cmpl-double v4, p1, v4

    if-ltz v4, :cond_6

    .line 122
    sub-double v2, v0, p1

    int-to-double v4, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    sub-double/2addr v0, v2

    goto :goto_0

    .line 127
    :cond_6
    const/16 v4, 0x8c

    if-gt p0, v4, :cond_9

    .line 134
    const-wide v4, 0x3fe82671ef30a4e3L    # 0.754693

    cmpg-double v4, v2, v4

    if-gez v4, :cond_7

    .line 135
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->Durbin(ID)D

    move-result-wide v0

    goto :goto_0

    .line 138
    :cond_7
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_8

    .line 139
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->Pomeranz(ID)D

    move-result-wide v0

    goto :goto_0

    .line 142
    :cond_8
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->ComplementaryDistributionFunction(ID)D

    move-result-wide v2

    sub-double/2addr v0, v2

    goto :goto_0

    .line 146
    :cond_9
    const v0, 0x186a0

    if-gt p0, v0, :cond_b

    .line 164
    int-to-double v0, p0

    mul-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide v2, 0x3fff5c28f5c28f5cL    # 1.96

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_a

    .line 165
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->Durbin(ID)D

    move-result-wide v0

    goto/16 :goto_0

    .line 166
    :cond_a
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->PelzGood(ID)D

    move-result-wide v0

    goto/16 :goto_0

    .line 172
    :cond_b
    invoke-static {p0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->PelzGood(ID)D

    move-result-wide v0

    goto/16 :goto_0
.end method

.method public static Durbin(ID)D
    .locals 19

    .prologue
    .line 516
    move/from16 v0, p0

    int-to-double v2, v0

    mul-double v2, v2, p1

    double-to-int v2, v2

    add-int/lit8 v10, v2, 0x1

    .line 517
    mul-int/lit8 v2, v10, 0x2

    add-int/lit8 v5, v2, -0x1

    .line 518
    int-to-double v2, v10

    move/from16 v0, p0

    int-to-double v6, v0

    mul-double v6, v6, p1

    sub-double v8, v2, v6

    .line 519
    filled-new-array {v5, v5}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 520
    filled-new-array {v5, v5}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    .line 521
    filled-new-array {v5, v5}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 524
    const/4 v3, 0x0

    move v6, v3

    :goto_0
    if-ge v6, v5, :cond_2

    .line 525
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    .line 526
    sub-int v11, v6, v3

    add-int/lit8 v11, v11, 0x1

    if-ltz v11, :cond_0

    .line 527
    aget-object v11, v2, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    aput-wide v12, v11, v3

    .line 525
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 524
    :cond_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_0

    .line 529
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_3

    .line 531
    aget-object v6, v2, v3

    const/4 v11, 0x0

    aget-wide v12, v6, v11

    add-int/lit8 v14, v3, 0x1

    int-to-double v14, v14

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    aput-wide v12, v6, v11

    .line 532
    add-int/lit8 v6, v5, -0x1

    aget-object v6, v2, v6

    aget-wide v12, v6, v3

    sub-int v11, v5, v3

    int-to-double v14, v11

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    sub-double/2addr v12, v14

    aput-wide v12, v6, v3

    .line 529
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 535
    :cond_3
    add-int/lit8 v3, v5, -0x1

    aget-object v3, v2, v3

    const/4 v6, 0x0

    aget-wide v12, v3, v6

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v8

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    cmpl-double v11, v14, v16

    if-lez v11, :cond_4

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v14

    int-to-double v14, v5

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    :goto_3
    add-double/2addr v8, v12

    aput-wide v8, v3, v6

    .line 537
    const/4 v3, 0x0

    move v8, v3

    :goto_4
    if-ge v8, v5, :cond_7

    .line 538
    const/4 v3, 0x0

    move v6, v3

    :goto_5
    if-ge v6, v5, :cond_6

    .line 539
    sub-int v3, v8, v6

    add-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_5

    .line 540
    const/4 v3, 0x1

    :goto_6
    sub-int v9, v8, v6

    add-int/lit8 v9, v9, 0x1

    if-gt v3, v9, :cond_5

    .line 541
    aget-object v9, v2, v8

    aget-wide v12, v9, v6

    int-to-double v14, v3

    div-double/2addr v12, v14

    aput-wide v12, v9, v6

    .line 540
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 535
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_3

    .line 538
    :cond_5
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_5

    .line 537
    :cond_6
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_4

    .line 543
    :cond_7
    const/4 v8, 0x0

    .line 544
    const/4 v3, 0x0

    move/from16 v6, p0

    invoke-static/range {v2 .. v7}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a([[DI[[DII[[D)V

    .line 546
    add-int/lit8 v2, v10, -0x1

    aget-object v2, v4, v2

    add-int/lit8 v3, v10, -0x1

    aget-wide v4, v2, v3

    .line 548
    const/4 v2, 0x1

    move v3, v2

    move v2, v8

    :goto_7
    move/from16 v0, p0

    if-gt v3, v0, :cond_9

    .line 550
    int-to-double v6, v3

    move/from16 v0, p0

    int-to-double v8, v0

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    .line 551
    const-wide v6, 0x22de7c5f127bd87eL    # 1.0E-140

    cmpg-double v6, v4, v6

    if-gez v6, :cond_8

    .line 553
    const-wide v6, 0x5d00cb70d24b7379L    # 1.0E140

    mul-double/2addr v4, v6

    .line 554
    add-int/lit16 v2, v2, -0x8c

    .line 548
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 558
    :cond_9
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v2, v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public static OneSideUpperTail(ID)D
    .locals 21

    .prologue
    .line 346
    const v2, 0x30d40

    move/from16 v0, p0

    if-le v0, v2, :cond_2

    .line 349
    mul-int/lit8 v2, p0, 0x6

    int-to-double v2, v2

    mul-double v2, v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    .line 350
    mul-double/2addr v2, v2

    mul-int/lit8 v4, p0, 0x12

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 351
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v2

    mul-double/2addr v6, v2

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v8, v2

    sub-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    mul-int/lit8 v8, p0, 0x12

    int-to-double v8, v8

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    .line 353
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_0

    const-wide/16 v2, 0x0

    .line 410
    :goto_0
    return-wide v2

    .line 354
    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v2, v4

    if-ltz v4, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 355
    :cond_1
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    goto :goto_0

    .line 364
    :cond_2
    move/from16 v0, p0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p1

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 365
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v4, p1

    int-to-double v6, v2

    move/from16 v0, p0

    int-to-double v8, v0

    div-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_8

    .line 366
    add-int/lit8 v2, v2, -0x1

    move v10, v2

    .line 369
    :goto_1
    const/16 v2, 0xbb8

    move/from16 v0, p0

    if-le v0, v2, :cond_5

    const/4 v2, 0x2

    .line 370
    :goto_2
    div-int v3, v10, v2

    add-int/lit8 v3, v3, 0x1

    .line 372
    move/from16 v0, p0

    invoke-static {v0, v3}, LCatalano/Math/Special;->LogBinomial(II)D

    move-result-wide v8

    .line 374
    const-wide v12, 0x3d719799812dea11L    # 1.0E-12

    .line 378
    const-wide/16 v4, 0x0

    move-wide v6, v8

    .line 380
    :goto_3
    if-gt v3, v10, :cond_3

    .line 382
    int-to-double v14, v3

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    add-double v14, v14, p1

    .line 383
    add-int/lit8 v11, v3, -0x1

    int-to-double v0, v11

    move-wide/from16 v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v16, v16, v6

    sub-int v11, p0, v3

    int-to-double v0, v11

    move-wide/from16 v18, v0

    neg-double v14, v14

    invoke-static {v14, v15}, LCatalano/Math/Special;->Log1p(D)D

    move-result-wide v14

    mul-double v14, v14, v18

    add-double v14, v14, v16

    .line 384
    invoke-static {v14, v15}, Ljava/lang/Math;->exp(D)D

    move-result-wide v14

    .line 386
    add-double/2addr v4, v14

    .line 387
    sub-int v11, p0, v3

    int-to-double v0, v11

    move-wide/from16 v16, v0

    add-int/lit8 v11, v3, 0x1

    int-to-double v0, v11

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    add-double v6, v6, v16

    .line 389
    mul-double v16, v4, v12

    cmpg-double v11, v14, v16

    if-gtz v11, :cond_6

    .line 393
    :cond_3
    div-int v2, v10, v2

    .line 394
    add-int/lit8 v3, v2, 0x1

    int-to-double v6, v3

    sub-int v3, p0, v2

    int-to-double v10, v3

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    add-double/2addr v6, v8

    move/from16 v20, v2

    move-wide v2, v4

    move/from16 v4, v20

    .line 396
    :goto_4
    if-lez v4, :cond_4

    .line 398
    int-to-double v8, v4

    move/from16 v0, p0

    int-to-double v10, v0

    div-double/2addr v8, v10

    add-double v8, v8, p1

    .line 399
    add-int/lit8 v5, v4, -0x1

    int-to-double v10, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    mul-double/2addr v10, v14

    add-double/2addr v10, v6

    sub-int v5, p0, v4

    int-to-double v14, v5

    neg-double v8, v8

    invoke-static {v8, v9}, LCatalano/Math/Special;->Log1p(D)D

    move-result-wide v8

    mul-double/2addr v8, v14

    add-double/2addr v8, v10

    .line 400
    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    .line 402
    add-double/2addr v2, v8

    .line 403
    int-to-double v10, v4

    sub-int v5, p0, v4

    add-int/lit8 v5, v5, 0x1

    int-to-double v14, v5

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    add-double/2addr v6, v10

    .line 405
    mul-double v10, v2, v12

    cmpg-double v5, v8, v10

    if-gtz v5, :cond_7

    .line 410
    :cond_4
    mul-double v2, v2, p1

    move/from16 v0, p0

    int-to-double v4, v0

    move-wide/from16 v0, p1

    neg-double v6, v0

    invoke-static {v6, v7}, LCatalano/Math/Special;->Log1p(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    goto/16 :goto_0

    .line 369
    :cond_5
    const/4 v2, 0x3

    goto/16 :goto_2

    .line 380
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 396
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_8
    move v10, v2

    goto/16 :goto_1
.end method

.method public static PelzGood(ID)D
    .locals 45

    .prologue
    .line 252
    .line 258
    move/from16 v0, p0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 260
    mul-double v18, v16, p1

    .line 261
    mul-double v20, v18, v18

    .line 262
    mul-double v22, v20, v18

    .line 263
    mul-double v24, v20, v20

    .line 264
    mul-double v2, v24, v18

    .line 265
    mul-double v26, v24, v20

    .line 266
    mul-double v28, v24, v22

    .line 267
    mul-double v14, v24, v24

    .line 268
    mul-double v30, v14, v20

    .line 270
    const-wide v2, -0x3fdc42c33641ba22L    # -9.869604401089358

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v20

    div-double v32, v2, v4

    .line 274
    const-wide/16 v4, 0x0

    .line 275
    const/4 v2, 0x0

    move/from16 v44, v2

    move-wide v2, v4

    move/from16 v4, v44

    :goto_0
    const/16 v5, 0x14

    if-gt v4, v5, :cond_0

    .line 277
    int-to-double v6, v4

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    .line 278
    mul-double/2addr v6, v6

    mul-double v6, v6, v32

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 279
    const-wide v8, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double/2addr v8, v2

    cmpg-double v5, v6, v8

    if-gtz v5, :cond_6

    .line 283
    :cond_0
    const-wide/16 v6, 0x0

    .line 284
    const/4 v4, 0x0

    move/from16 v44, v4

    move-wide v4, v6

    move/from16 v6, v44

    :goto_1
    const/16 v7, 0x14

    if-gt v6, v7, :cond_1

    .line 286
    int-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    int-to-double v10, v6

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    .line 287
    const-wide v10, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double/2addr v10, v8

    sub-double v10, v10, v20

    mul-double v8, v8, v32

    invoke-static {v8, v9}, Ljava/lang/Math;->exp(D)D

    move-result-wide v8

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 288
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_7

    .line 292
    :cond_1
    const-wide/16 v8, 0x0

    .line 293
    const/4 v6, 0x0

    move/from16 v44, v6

    move-wide v6, v8

    move/from16 v8, v44

    :goto_2
    const/16 v9, 0x14

    if-gt v8, v9, :cond_2

    .line 295
    int-to-double v10, v8

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v12

    int-to-double v12, v8

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    add-double v12, v12, v34

    mul-double/2addr v10, v12

    .line 296
    const-wide/high16 v12, 0x4018000000000000L    # 6.0

    mul-double v12, v12, v26

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v34, v34, v24

    add-double v12, v12, v34

    const-wide v34, 0x4023bd3cc9be45deL    # 9.869604401089358

    const-wide/high16 v36, 0x4000000000000000L    # 2.0

    mul-double v36, v36, v24

    const-wide/high16 v38, 0x4014000000000000L    # 5.0

    mul-double v38, v38, v20

    sub-double v36, v36, v38

    mul-double v34, v34, v36

    mul-double v34, v34, v10

    add-double v12, v12, v34

    const-wide v34, 0x40585a2e8c290825L    # 97.40909103400243

    const-wide/high16 v36, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v20

    sub-double v36, v36, v38

    mul-double v34, v34, v36

    mul-double v34, v34, v10

    mul-double v34, v34, v10

    add-double v12, v12, v34

    mul-double v10, v10, v32

    .line 298
    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 299
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v12, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    mul-double v12, v12, v34

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_8

    .line 302
    :cond_2
    const-wide/16 v10, 0x0

    .line 303
    const/4 v8, 0x1

    move/from16 v44, v8

    move-wide v8, v10

    move/from16 v10, v44

    :goto_3
    const/16 v11, 0x14

    if-gt v10, v11, :cond_3

    .line 305
    mul-int v11, v10, v10

    int-to-double v12, v11

    .line 306
    const-wide v34, 0x4023bd3cc9be45deL    # 9.869604401089358

    mul-double v34, v34, v12

    mul-double v12, v12, v32

    invoke-static {v12, v13}, Ljava/lang/Math;->exp(D)D

    move-result-wide v12

    mul-double v12, v12, v34

    add-double/2addr v8, v12

    .line 307
    const-wide v34, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double v34, v34, v8

    cmpg-double v11, v12, v34

    if-gtz v11, :cond_9

    .line 311
    :cond_3
    const-wide/16 v12, 0x0

    .line 312
    const/4 v10, 0x0

    move/from16 v44, v10

    move-wide v10, v12

    move/from16 v12, v44

    :goto_4
    const/16 v13, 0x14

    if-gt v12, v13, :cond_4

    .line 314
    int-to-double v0, v12

    move-wide/from16 v34, v0

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    add-double v34, v34, v36

    int-to-double v0, v12

    move-wide/from16 v36, v0

    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    add-double v36, v36, v38

    mul-double v34, v34, v36

    .line 315
    const-wide/high16 v36, -0x3fc2000000000000L    # -30.0

    mul-double v36, v36, v26

    const-wide v38, 0x4056800000000000L    # 90.0

    mul-double v38, v38, v14

    sub-double v36, v36, v38

    const-wide v38, 0x4023bd3cc9be45deL    # 9.869604401089358

    const-wide v40, 0x4060e00000000000L    # 135.0

    mul-double v40, v40, v24

    const-wide/high16 v42, 0x4058000000000000L    # 96.0

    mul-double v42, v42, v26

    sub-double v40, v40, v42

    mul-double v38, v38, v40

    mul-double v38, v38, v34

    add-double v36, v36, v38

    const-wide v38, 0x40585a2e8c290825L    # 97.40909103400243

    const-wide v40, 0x406a800000000000L    # 212.0

    mul-double v40, v40, v24

    const-wide/high16 v42, 0x404e000000000000L    # 60.0

    mul-double v42, v42, v20

    sub-double v40, v40, v42

    mul-double v38, v38, v40

    mul-double v38, v38, v34

    mul-double v38, v38, v34

    add-double v36, v36, v38

    const-wide v38, 0x408e0b1d11856df6L    # 961.3891935753043

    mul-double v38, v38, v34

    mul-double v38, v38, v34

    mul-double v38, v38, v34

    const-wide/high16 v40, 0x4014000000000000L    # 5.0

    const-wide/high16 v42, 0x403e000000000000L    # 30.0

    mul-double v42, v42, v20

    sub-double v40, v40, v42

    mul-double v38, v38, v40

    add-double v36, v36, v38

    mul-double v34, v34, v32

    .line 318
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->exp(D)D

    move-result-wide v34

    mul-double v34, v34, v36

    add-double v10, v10, v34

    .line 319
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    const-wide v36, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    cmpg-double v13, v34, v36

    if-gtz v13, :cond_a

    .line 322
    :cond_4
    const-wide/16 v14, 0x0

    .line 323
    const/4 v12, 0x1

    move/from16 v44, v12

    move-wide v12, v14

    move/from16 v14, v44

    :goto_5
    const/16 v15, 0x14

    if-gt v14, v15, :cond_5

    .line 325
    mul-int v15, v14, v14

    int-to-double v0, v15

    move-wide/from16 v34, v0

    .line 326
    const-wide v36, 0x403d9bdb2e9d68cdL    # 29.608813203268074

    mul-double v36, v36, v34

    mul-double v36, v36, v20

    const-wide v38, 0x40585a2e8c290825L    # 97.40909103400243

    mul-double v38, v38, v34

    mul-double v38, v38, v34

    sub-double v36, v36, v38

    mul-double v34, v34, v32

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->exp(D)D

    move-result-wide v34

    mul-double v34, v34, v36

    add-double v12, v12, v34

    .line 327
    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    const-wide v36, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v38

    mul-double v36, v36, v38

    cmpg-double v15, v34, v36

    if-gtz v15, :cond_b

    .line 332
    :cond_5
    const-wide v14, 0x40040d931ff62706L    # 2.5066282746310007

    div-double v14, v14, v18

    mul-double/2addr v2, v14

    const-wide v14, 0x3ff40d931ff62706L    # 1.2533141373155003

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v16

    mul-double v18, v18, v24

    div-double v14, v14, v18

    mul-double/2addr v4, v14

    add-double/2addr v2, v4

    const-wide v4, 0x3ff40d931ff62706L    # 1.2533141373155003

    move/from16 v0, p0

    int-to-double v14, v0

    const-wide/high16 v18, 0x4042000000000000L    # 36.0

    mul-double v14, v14, v18

    mul-double v14, v14, v28

    div-double/2addr v4, v14

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x3ff40d931ff62706L    # 1.2533141373155003

    move/from16 v0, p0

    int-to-double v6, v0

    const-wide/high16 v14, 0x4032000000000000L    # 18.0

    mul-double/2addr v6, v14

    mul-double v6, v6, v22

    div-double/2addr v4, v6

    mul-double/2addr v4, v8

    sub-double/2addr v2, v4

    const-wide v4, 0x3ff40d931ff62706L    # 1.2533141373155003

    move/from16 v0, p0

    int-to-double v6, v0

    mul-double v6, v6, v16

    const-wide v8, 0x40a9500000000000L    # 3240.0

    mul-double/2addr v6, v8

    mul-double v6, v6, v30

    div-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    const-wide v4, 0x3ff40d931ff62706L    # 1.2533141373155003

    move/from16 v0, p0

    int-to-double v6, v0

    mul-double v6, v6, v16

    const-wide/high16 v8, 0x405b000000000000L    # 108.0

    mul-double/2addr v6, v8

    mul-double v6, v6, v26

    div-double/2addr v4, v6

    mul-double/2addr v4, v12

    add-double/2addr v2, v4

    .line 339
    return-wide v2

    .line 275
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 284
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 293
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 303
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 312
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 323
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5
.end method

.method public static Pomeranz(ID)D
    .locals 35

    .prologue
    .line 419
    const-wide v22, 0x3cd203af9ee75616L    # 1.0E-15

    .line 420
    const/16 v21, 0x15e

    .line 421
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    move/from16 v0, v21

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 423
    move/from16 v0, p0

    int-to-double v4, v0

    mul-double v6, v4, p1

    .line 429
    mul-int/lit8 v4, p0, 0x2

    add-int/lit8 v4, v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v24, v0

    .line 430
    mul-int/lit8 v4, p0, 0x2

    add-int/lit8 v4, v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v25, v0

    .line 431
    mul-int/lit8 v4, p0, 0x2

    add-int/lit8 v4, v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v26, v0

    .line 433
    const/4 v4, 0x2

    new-array v0, v4, [[D

    move-object/from16 v27, v0

    .line 434
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, v27

    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 435
    add-int/lit8 v5, p0, 0x2

    new-array v5, v5, [D

    aput-object v5, v27, v4

    .line 434
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 437
    :cond_0
    const/4 v4, 0x4

    new-array v0, v4, [[D

    move-object/from16 v28, v0

    .line 438
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, v28

    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 439
    add-int/lit8 v5, p0, 0x2

    new-array v5, v5, [D

    aput-object v5, v28, v4

    .line 438
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 441
    :cond_1
    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v6, v7, v0, v1}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a(D[D[D)D

    move-result-wide v4

    .line 443
    move/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4, v5}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a(I[DD)V

    .line 444
    move/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a(I[D[[D)D

    .line 446
    const/4 v4, 0x1

    aget-object v4, v27, v4

    const/4 v5, 0x1

    aput-wide v16, v4, v5

    .line 447
    const/4 v11, 0x1

    .line 449
    const/4 v6, 0x0

    .line 450
    const/4 v5, 0x1

    .line 451
    const/4 v4, 0x2

    move/from16 v18, v4

    move v9, v5

    move v12, v6

    :goto_2
    mul-int/lit8 v4, p0, 0x2

    add-int/lit8 v4, v4, 0x2

    move/from16 v0, v18

    if-gt v0, v4, :cond_9

    .line 453
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    aget-wide v6, v25, v18

    add-double/2addr v4, v6

    double-to-int v4, v4

    .line 454
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 455
    const/4 v4, 0x1

    .line 456
    :cond_2
    aget-wide v6, v26, v18

    double-to-int v5, v6

    .line 457
    add-int/lit8 v6, p0, 0x1

    if-le v5, v6, :cond_3

    .line 458
    add-int/lit8 v5, p0, 0x1

    .line 460
    :cond_3
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    add-int/lit8 v8, v18, -0x1

    aget-wide v14, v25, v8

    add-double/2addr v6, v14

    double-to-int v6, v6

    .line 461
    const/4 v7, 0x1

    if-ge v6, v7, :cond_4

    .line 462
    const/4 v6, 0x1

    .line 463
    :cond_4
    add-int/lit8 v7, v18, -0x1

    aget-wide v14, v26, v7

    double-to-int v10, v14

    .line 466
    aget-wide v14, v24, v18

    add-int/lit8 v7, v18, -0x1

    aget-wide v30, v24, v7

    sub-double v14, v14, v30

    move/from16 v0, p0

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v14, v14, v30

    .line 467
    const/4 v8, -0x1

    .line 468
    const/4 v7, 0x0

    :goto_3
    const/4 v13, 0x4

    if-ge v7, v13, :cond_e

    .line 470
    aget-object v13, v28, v7

    const/16 v19, 0x1

    aget-wide v30, v13, v19

    sub-double v30, v14, v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->abs(D)D

    move-result-wide v30

    cmpg-double v13, v30, v22

    if-gtz v13, :cond_5

    .line 478
    :goto_4
    add-int/lit8 v8, v12, 0x1

    and-int/lit8 v20, v8, 0x1

    .line 479
    add-int/lit8 v8, v9, 0x1

    and-int/lit8 v19, v8, 0x1

    move v9, v4

    move-wide/from16 v14, v16

    .line 481
    :goto_5
    if-gt v9, v5, :cond_7

    .line 484
    if-le v10, v9, :cond_d

    move v8, v9

    .line 486
    :goto_6
    const-wide/16 v12, 0x0

    .line 487
    :goto_7
    if-lt v8, v6, :cond_6

    .line 488
    aget-object v29, v27, v20

    aget-wide v30, v29, v8

    aget-object v29, v28, v7

    sub-int v32, v9, v8

    aget-wide v32, v29, v32

    mul-double v30, v30, v32

    add-double v12, v12, v30

    .line 487
    add-int/lit8 v8, v8, -0x1

    goto :goto_7

    .line 468
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 489
    :cond_6
    aget-object v8, v27, v19

    aput-wide v12, v8, v9

    .line 490
    cmpg-double v8, v12, v14

    if-gez v8, :cond_c

    .line 481
    :goto_8
    add-int/lit8 v9, v9, 0x1

    move-wide v14, v12

    goto :goto_5

    .line 494
    :cond_7
    const-wide v6, 0x5cd0b15a491eb84L    # 1.0E-280

    cmpg-double v6, v14, v6

    if-gez v6, :cond_b

    .line 497
    :goto_9
    if-gt v4, v5, :cond_8

    .line 498
    aget-object v6, v27, v19

    aget-wide v8, v6, v4

    mul-double v8, v8, v16

    aput-wide v8, v6, v4

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 499
    :cond_8
    add-int/lit8 v4, v11, 0x1

    .line 451
    :goto_a
    add-int/lit8 v5, v18, 0x1

    move/from16 v18, v5

    move/from16 v9, v19

    move/from16 v12, v20

    move v11, v4

    goto/16 :goto_2

    .line 503
    :cond_9
    aget-object v4, v27, v9

    add-int/lit8 v5, p0, 0x1

    aget-wide v4, v4, v5

    .line 504
    invoke-static/range {p0 .. p0}, LCatalano/Math/Special;->LogFactorial(I)D

    move-result-wide v6

    mul-int v8, v11, v21

    int-to-double v8, v8

    const-wide v10, 0x3fe62e42fefa39efL    # 0.6931471805599453

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    add-double/2addr v4, v6

    .line 505
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-ltz v6, :cond_a

    .line 506
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 507
    :goto_b
    return-wide v4

    :cond_a
    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    goto :goto_b

    :cond_b
    move v4, v11

    goto :goto_a

    :cond_c
    move-wide v12, v14

    goto :goto_8

    :cond_d
    move v8, v10

    goto :goto_6

    :cond_e
    move v7, v8

    goto/16 :goto_4
.end method

.method private static a(D[D[D)D
    .locals 12

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 613
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    .line 614
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 616
    sub-double v6, p0, v8

    .line 617
    sub-double/2addr v4, p0

    .line 619
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v6, v10

    if-lez v0, :cond_3

    move v0, v1

    .line 621
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 622
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-double v10, v3

    sub-double/2addr v10, v8

    aput-wide v10, p2, v0

    .line 621
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v2

    .line 623
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 624
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x2

    int-to-double v10, v3

    sub-double/2addr v10, v8

    aput-wide v10, p2, v0

    .line 623
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 625
    :cond_1
    :goto_2
    array-length v0, p3

    if-ge v1, v0, :cond_2

    .line 626
    div-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-double v10, v0

    add-double/2addr v10, v8

    aput-wide v10, p3, v1

    .line 625
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 627
    :cond_2
    :goto_3
    array-length v0, p3

    if-ge v2, v0, :cond_9

    .line 628
    div-int/lit8 v0, v2, 0x2

    int-to-double v0, v0

    add-double/2addr v0, v8

    aput-wide v0, p3, v2

    .line 627
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    .line 630
    :cond_3
    const-wide/16 v10, 0x0

    cmpl-double v0, v6, v10

    if-lez v0, :cond_5

    .line 632
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v8

    aput-wide v10, p3, v1

    .line 633
    :goto_4
    array-length v0, p2

    if-ge v1, v0, :cond_4

    .line 634
    div-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-double v10, v0

    sub-double/2addr v10, v8

    aput-wide v10, p2, v1

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 635
    :cond_4
    :goto_5
    array-length v0, p3

    if-ge v2, v0, :cond_9

    .line 636
    div-int/lit8 v0, v2, 0x2

    int-to-double v0, v0

    add-double/2addr v0, v8

    aput-wide v0, p3, v2

    .line 635
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    move v0, v1

    .line 640
    :goto_6
    array-length v3, p2

    if-ge v0, v3, :cond_6

    .line 641
    div-int/lit8 v3, v0, 0x2

    int-to-double v10, v3

    sub-double/2addr v10, v8

    aput-wide v10, p2, v0

    .line 640
    add-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_6
    move v0, v2

    .line 642
    :goto_7
    array-length v3, p2

    if-ge v0, v3, :cond_7

    .line 643
    div-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-double v10, v3

    sub-double/2addr v10, v8

    aput-wide v10, p2, v0

    .line 642
    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    .line 644
    :cond_7
    :goto_8
    array-length v0, p3

    if-ge v1, v0, :cond_8

    .line 645
    div-int/lit8 v0, v1, 0x2

    int-to-double v10, v0

    add-double/2addr v10, v8

    aput-wide v10, p3, v1

    .line 644
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 646
    :cond_8
    :goto_9
    array-length v0, p3

    if-ge v2, v0, :cond_9

    .line 647
    div-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    add-double/2addr v0, v8

    aput-wide v0, p3, v2

    .line 646
    add-int/lit8 v2, v2, 0x2

    goto :goto_9

    .line 650
    :cond_9
    cmpg-double v0, v4, v6

    if-gez v0, :cond_a

    move-wide v0, v4

    .line 652
    :goto_a
    return-wide v0

    :cond_a
    move-wide v0, v6

    goto :goto_a
.end method

.method private static a(I[D[[D)D
    .locals 8

    .prologue
    .line 676
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 677
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const/4 v2, 0x2

    aget-wide v2, p1, v2

    mul-double/2addr v0, v2

    int-to-double v2, p0

    div-double v2, v0, v2

    .line 678
    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v1, p0, 0x1

    if-gt v0, v1, :cond_0

    .line 679
    const/4 v1, 0x0

    aget-object v1, p2, v1

    const/4 v4, 0x0

    aget-object v4, p2, v4

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    mul-double/2addr v4, v2

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v1, v0

    .line 678
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_0
    const/4 v0, 0x1

    aget-object v0, p2, v0

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 682
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    int-to-double v2, p0

    div-double v2, v0, v2

    .line 683
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, p0, 0x1

    if-gt v0, v1, :cond_1

    .line 684
    const/4 v1, 0x1

    aget-object v1, p2, v1

    const/4 v4, 0x1

    aget-object v4, p2, v4

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    mul-double/2addr v4, v2

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v1, v0

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 686
    :cond_1
    const/4 v0, 0x2

    aget-object v0, p2, v0

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    .line 687
    const/4 v0, 0x2

    aget-wide v0, p1, v0

    int-to-double v2, p0

    div-double v2, v0, v2

    .line 688
    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, p0, 0x1

    if-gt v0, v1, :cond_2

    .line 689
    const/4 v1, 0x2

    aget-object v1, p2, v1

    const/4 v4, 0x2

    aget-object v4, p2, v4

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    mul-double/2addr v4, v2

    int-to-double v6, v0

    div-double/2addr v4, v6

    aput-wide v4, v1, v0

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 691
    :cond_2
    const/4 v0, 0x3

    aget-object v0, p2, v0

    const/4 v1, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v0, v1

    .line 692
    const/4 v0, 0x1

    :goto_3
    add-int/lit8 v1, p0, 0x1

    if-gt v0, v1, :cond_3

    .line 693
    const/4 v1, 0x3

    aget-object v1, p2, v1

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v0

    .line 692
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 694
    :cond_3
    return-wide v2
.end method

.method private static a(I[DD)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 658
    const/4 v0, 0x0

    aput-wide v2, p1, v0

    .line 659
    const/4 v0, 0x1

    aput-wide v2, p1, v0

    .line 660
    const/4 v0, 0x2

    aput-wide p2, p1, v0

    .line 661
    const/4 v0, 0x3

    sub-double v2, v4, p2

    aput-wide v2, p1, v0

    .line 663
    const/4 v0, 0x4

    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 664
    add-int/lit8 v1, v0, -0x2

    aget-wide v2, p1, v1

    add-double/2addr v2, v4

    aput-wide v2, p1, v0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-double v2, p0

    aput-wide v2, p1, v0

    .line 667
    return-void
.end method

.method private static a([[DI[[DII[[D)V
    .locals 10

    .prologue
    .line 565
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    .line 567
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    .line 568
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_0

    .line 569
    aget-object v2, p2, v1

    aget-object v3, p0, v1

    aget-wide v4, v3, v0

    aput-wide v4, v2, v0

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 567
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 570
    :cond_1
    sput p1, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a:I

    .line 607
    :cond_2
    :goto_2
    return-void

    .line 574
    :cond_3
    div-int/lit8 v4, p4, 0x2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a([[DI[[DII[[D)V

    .line 576
    invoke-static {p2, p5}, LCatalano/Math/Matrix;->Multiply([[D[[D)[[D

    move-result-object v3

    .line 578
    sget v0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a:I

    mul-int/lit8 v0, v0, 0x2

    .line 579
    div-int/lit8 v1, p3, 0x2

    aget-object v1, v3, v1

    div-int/lit8 v2, p3, 0x2

    aget-wide v4, v1, v2

    const-wide v6, 0x5d00cb70d24b7379L    # 1.0E140

    cmpl-double v1, v4, v6

    if-lez v1, :cond_6

    .line 581
    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, p3, :cond_5

    .line 582
    const/4 v1, 0x0

    :goto_4
    if-ge v1, p3, :cond_4

    .line 583
    aget-object v4, v3, v2

    aget-wide v6, v4, v1

    const-wide v8, 0x22de7c5f127bd87eL    # 1.0E-140

    mul-double/2addr v6, v8

    aput-wide v6, v4, v1

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 581
    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 584
    :cond_5
    add-int/lit16 v0, v0, 0x8c

    .line 587
    :cond_6
    rem-int/lit8 v1, p4, 0x2

    if-nez v1, :cond_9

    .line 589
    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, p3, :cond_8

    .line 590
    const/4 v1, 0x0

    :goto_6
    if-ge v1, p3, :cond_7

    .line 591
    aget-object v4, p2, v2

    aget-object v5, v3, v2

    aget-wide v6, v5, v1

    aput-wide v6, v4, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 589
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 592
    :cond_8
    sput v0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a:I

    .line 600
    :goto_7
    div-int/lit8 v0, p3, 0x2

    aget-object v0, p2, v0

    div-int/lit8 v1, p3, 0x2

    aget-wide v0, v0, v1

    const-wide v2, 0x5d00cb70d24b7379L    # 1.0E140

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 602
    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, p3, :cond_b

    .line 603
    const/4 v0, 0x0

    :goto_9
    if-ge v0, p3, :cond_a

    .line 604
    aget-object v2, p2, v1

    aget-wide v4, v2, v0

    const-wide v6, 0x22de7c5f127bd87eL    # 1.0E-140

    mul-double/2addr v4, v6

    aput-wide v4, v2, v0

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 596
    :cond_9
    invoke-static {p0, v3}, LCatalano/Math/Matrix;->Multiply([[D[[D)[[D

    move-result-object p2

    .line 597
    add-int/2addr v0, p1

    sput v0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a:I

    goto :goto_7

    .line 602
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_8

    .line 605
    :cond_b
    sget v0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a:I

    add-int/lit16 v0, v0, 0x8c

    sput v0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->a:I

    goto/16 :goto_2
.end method


# virtual methods
.method public ComplementaryDistributionFunction(D)D
    .locals 3

    .prologue
    .line 88
    iget v0, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    invoke-static {v0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->ComplementaryDistributionFunction(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public DistributionFunction(D)D
    .locals 3

    .prologue
    .line 74
    iget v0, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    invoke-static {v0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->CumulativeFunction(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public Entropy()D
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public LogProbabilityDensityFunction(D)D
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Mean()D
    .locals 4

    .prologue
    .line 59
    const-wide v0, 0x3febcca54a7e5982L    # 0.8687311606361592

    iget v2, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public OneSideDistributionFunction(D)D
    .locals 3

    .prologue
    .line 97
    iget v0, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    invoke-static {v0, p1, p2}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->OneSideUpperTail(ID)D

    move-result-wide v0

    return-wide v0
.end method

.method public ProbabilityDensityFunction(D)D
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Variance()D
    .locals 6

    .prologue
    .line 64
    const-wide v0, 0x3fea51a6625307d3L    # 0.8224670334241132

    invoke-virtual {p0}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->Mean()D

    move-result-wide v2

    invoke-virtual {p0}, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->Mean()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget v2, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumberOfSamples()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    return v0
.end method

.method public setNumberOfSamples(I)V
    .locals 0

    .prologue
    .line 50
    iput p1, p0, LCatalano/Statistics/Distributions/KolmogorovSmirnovDistribution;->b:I

    .line 51
    return-void
.end method
