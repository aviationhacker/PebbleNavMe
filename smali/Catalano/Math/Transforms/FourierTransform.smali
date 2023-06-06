.class public LCatalano/Math/Transforms/FourierTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LCatalano/Math/Transforms/FourierTransform$Direction;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static DFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 24

    .prologue
    .line 80
    move-object/from16 v0, p0

    array-length v11, v0

    .line 81
    new-array v12, v11, [LCatalano/Math/ComplexNumber;

    .line 84
    const/4 v2, 0x0

    move v10, v2

    :goto_0
    if-ge v10, v11, :cond_2

    .line 85
    new-instance v2, LCatalano/Math/ComplexNumber;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v2, v12, v10

    .line 86
    const-wide/16 v6, 0x0

    .line 87
    const-wide/16 v4, 0x0

    .line 88
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, v10

    mul-double/2addr v2, v8

    int-to-double v8, v11

    div-double v14, v2, v8

    .line 91
    const/4 v2, 0x0

    move-wide v8, v6

    move-wide v6, v4

    move v4, v2

    :goto_1
    if-ge v4, v11, :cond_1

    .line 92
    aget-object v2, p0, v4

    iget-wide v0, v2, LCatalano/Math/ComplexNumber;->real:D

    move-wide/from16 v16, v0

    .line 93
    aget-object v2, p0, v4

    iget-wide v0, v2, LCatalano/Math/ComplexNumber;->imaginary:D

    move-wide/from16 v18, v0

    .line 94
    int-to-double v2, v4

    mul-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    .line 95
    int-to-double v2, v4

    mul-double/2addr v2, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 96
    sget-object v5, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    move-object/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 97
    neg-double v2, v2

    .line 99
    :cond_0
    mul-double v16, v16, v20

    aget-object v5, p0, v4

    iget-wide v0, v5, LCatalano/Math/ComplexNumber;->imaginary:D

    move-wide/from16 v22, v0

    mul-double v22, v22, v2

    add-double v16, v16, v22

    add-double v8, v8, v16

    .line 100
    mul-double v16, v18, v20

    aget-object v5, p0, v4

    iget-wide v0, v5, LCatalano/Math/ComplexNumber;->real:D

    move-wide/from16 v18, v0

    mul-double v2, v2, v18

    sub-double v2, v16, v2

    add-double/2addr v6, v2

    .line 91
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 103
    :cond_1
    new-instance v2, LCatalano/Math/ComplexNumber;

    invoke-direct {v2, v8, v9, v6, v7}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v2, v12, v10

    .line 84
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    .line 106
    :cond_2
    sget-object v2, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 107
    const/4 v2, 0x0

    :goto_2
    array-length v3, v12

    if-ge v2, v3, :cond_4

    .line 108
    aget-object v3, p0, v2

    aget-object v4, v12, v2

    iget-wide v4, v4, LCatalano/Math/ComplexNumber;->real:D

    int-to-double v6, v11

    div-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->real:D

    .line 109
    aget-object v3, p0, v2

    aget-object v4, v12, v2

    iget-wide v4, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    int-to-double v6, v11

    div-double/2addr v4, v6

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 113
    :cond_3
    const/4 v2, 0x0

    :goto_3
    array-length v3, v12

    if-ge v2, v3, :cond_4

    .line 114
    aget-object v3, p0, v2

    aget-object v4, v12, v2

    iget-wide v4, v4, LCatalano/Math/ComplexNumber;->real:D

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->real:D

    .line 115
    aget-object v3, p0, v2

    aget-object v4, v12, v2

    iget-wide v4, v4, LCatalano/Math/ComplexNumber;->imaginary:D

    iput-wide v4, v3, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 118
    :cond_4
    return-void
.end method

.method public static DFT2([[LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 127
    array-length v3, p0

    .line 128
    aget-object v0, p0, v1

    array-length v0, v0

    .line 129
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v4, v0, [LCatalano/Math/ComplexNumber;

    move v2, v1

    .line 131
    :goto_0
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 133
    :goto_1
    if-ge v0, v3, :cond_0

    .line 134
    aget-object v5, p0, v2

    aget-object v5, v5, v0

    aput-object v5, v4, v0

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 136
    :cond_0
    invoke-static {v4, p1}, LCatalano/Math/Transforms/FourierTransform;->DFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    move v0, v1

    .line 138
    :goto_2
    if-ge v0, v3, :cond_1

    .line 139
    aget-object v5, p0, v2

    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 131
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 143
    :cond_2
    new-array v4, v3, [LCatalano/Math/ComplexNumber;

    move v2, v1

    .line 145
    :goto_3
    if-ge v2, v3, :cond_5

    move v0, v1

    .line 147
    :goto_4
    if-ge v0, v3, :cond_3

    .line 148
    aget-object v5, p0, v0

    aget-object v5, v5, v2

    aput-object v5, v4, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 150
    :cond_3
    invoke-static {v4, p1}, LCatalano/Math/Transforms/FourierTransform;->DFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    move v0, v1

    .line 152
    :goto_5
    if-ge v0, v3, :cond_4

    .line 153
    aget-object v5, p0, v0

    aget-object v6, v4, v0

    aput-object v6, v5, v2

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 145
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 155
    :cond_5
    return-void
.end method

.method public static FFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 163
    invoke-static {p0}, LCatalano/Math/ComplexNumber;->getReal([LCatalano/Math/ComplexNumber;)[D

    move-result-object v1

    .line 164
    invoke-static {p0}, LCatalano/Math/ComplexNumber;->getImaginary([LCatalano/Math/ComplexNumber;)[D

    move-result-object v2

    .line 165
    sget-object v3, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v3, :cond_0

    .line 166
    invoke-static {v1, v2}, LCatalano/Math/Transforms/FourierTransform;->a([D[D)V

    .line 169
    :goto_0
    sget-object v3, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v3, :cond_1

    .line 170
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 171
    new-instance v3, LCatalano/Math/ComplexNumber;

    aget-wide v4, v1, v0

    aget-wide v6, v2, v0

    invoke-direct {v3, v4, v5, v6, v7}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v3, p0, v0

    .line 170
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_0
    invoke-static {v2, v1}, LCatalano/Math/Transforms/FourierTransform;->a([D[D)V

    goto :goto_0

    .line 175
    :cond_1
    array-length v3, v1

    .line 176
    :goto_2
    if-ge v0, v3, :cond_2

    .line 177
    new-instance v4, LCatalano/Math/ComplexNumber;

    aget-wide v6, v1, v0

    int-to-double v8, v3

    div-double/2addr v6, v8

    aget-wide v8, v2, v0

    int-to-double v10, v3

    div-double/2addr v8, v10

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v4, p0, v0

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 180
    :cond_2
    return-void
.end method

.method public static FFT2([[LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 188
    array-length v3, p0

    .line 189
    aget-object v0, p0, v1

    array-length v4, v0

    move v2, v1

    .line 192
    :goto_0
    if-ge v2, v3, :cond_1

    .line 196
    aget-object v5, p0, v2

    .line 198
    invoke-static {v5, p1}, LCatalano/Math/Transforms/FourierTransform;->FFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    move v0, v1

    .line 200
    :goto_1
    if-ge v0, v4, :cond_0

    .line 201
    aget-object v6, p0, v2

    aget-object v7, v5, v0

    aput-object v7, v6, v0

    .line 200
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 192
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 205
    :cond_1
    new-array v5, v3, [LCatalano/Math/ComplexNumber;

    move v2, v1

    .line 207
    :goto_2
    if-ge v2, v4, :cond_4

    move v0, v1

    .line 209
    :goto_3
    if-ge v0, v3, :cond_2

    .line 210
    aget-object v6, p0, v0

    aget-object v6, v6, v2

    aput-object v6, v5, v0

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 212
    :cond_2
    invoke-static {v5, p1}, LCatalano/Math/Transforms/FourierTransform;->FFT([LCatalano/Math/ComplexNumber;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    move v0, v1

    .line 214
    :goto_4
    if-ge v0, v3, :cond_3

    .line 215
    aget-object v6, p0, v0

    aget-object v7, v5, v0

    aput-object v7, v6, v2

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 207
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 217
    :cond_4
    return-void
.end method

.method public static FFTShift1D([DLCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 380
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 404
    :cond_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 384
    array-length v1, p0

    div-int/lit8 v5, v1, 0x2

    .line 386
    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v1, :cond_3

    .line 388
    array-length v1, p0

    sub-int/2addr v1, v5

    move v2, v3

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 389
    add-int/lit8 v4, v2, 0x1

    aget-wide v6, v0, v1

    aput-wide v6, p0, v2

    .line 388
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 391
    :cond_2
    :goto_1
    array-length v1, p0

    sub-int/2addr v1, v5

    if-ge v3, v1, :cond_0

    .line 392
    add-int/lit8 v1, v2, 0x1

    aget-wide v6, v0, v3

    aput-wide v6, p0, v2

    .line 391
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v5

    move v2, v3

    .line 397
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_4

    .line 398
    add-int/lit8 v4, v2, 0x1

    aget-wide v6, v0, v1

    aput-wide v6, p0, v2

    .line 397
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_2

    .line 400
    :cond_4
    :goto_3
    if-ge v3, v5, :cond_0

    .line 401
    add-int/lit8 v1, v2, 0x1

    aget-wide v6, v0, v3

    aput-wide v6, p0, v2

    .line 400
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_3
.end method

.method public static FFTShift1D([Ljava/lang/Object;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;",
            "LCatalano/Math/Transforms/FourierTransform$Direction;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 414
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 436
    :cond_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 418
    array-length v1, p0

    div-int/lit8 v5, v1, 0x2

    .line 420
    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v1, :cond_3

    .line 422
    array-length v1, p0

    sub-int/2addr v1, v5

    move v2, v3

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_2

    .line 423
    add-int/lit8 v4, v2, 0x1

    aget-object v6, v0, v1

    aput-object v6, p0, v2

    .line 422
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    .line 425
    :cond_2
    :goto_1
    array-length v1, p0

    sub-int/2addr v1, v5

    if-ge v3, v1, :cond_0

    .line 426
    add-int/lit8 v1, v2, 0x1

    aget-object v4, v0, v3

    aput-object v4, p0, v2

    .line 425
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v5

    move v2, v3

    .line 430
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_4

    .line 431
    add-int/lit8 v4, v2, 0x1

    aget-object v6, v0, v1

    aput-object v6, p0, v2

    .line 430
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_2

    .line 433
    :cond_4
    :goto_3
    if-ge v3, v5, :cond_0

    .line 434
    add-int/lit8 v1, v2, 0x1

    aget-object v4, v0, v3

    aput-object v4, p0, v2

    .line 433
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_3
.end method

.method public static FFTShift2D([[DLCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LCatalano/Math/Transforms/FourierTransform;->FFTShift2D([[DLCatalano/Math/Transforms/FourierTransform$Direction;I)V

    .line 445
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, LCatalano/Math/Transforms/FourierTransform;->FFTShift2D([[DLCatalano/Math/Transforms/FourierTransform$Direction;I)V

    .line 446
    return-void
.end method

.method public static FFTShift2D([[DLCatalano/Math/Transforms/FourierTransform$Direction;I)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 457
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

    .line 458
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 459
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 460
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 459
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    :cond_1
    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v1, :cond_6

    .line 466
    if-ne p2, v8, :cond_5

    .line 467
    array-length v1, v0

    div-int/lit8 v3, v1, 0x2

    move v4, v2

    .line 468
    :goto_2
    if-ge v4, v3, :cond_3

    move v1, v2

    .line 469
    :goto_3
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 470
    aget-object v5, p0, v4

    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/2addr v6, v4

    aget-object v6, v0, v6

    aget-wide v6, v6, v1

    aput-wide v6, v5, v1

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 468
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 474
    :goto_4
    array-length v4, p0

    if-ge v1, v4, :cond_5

    move v4, v2

    .line 475
    :goto_5
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 476
    aget-object v5, p0, v1

    sub-int v6, v1, v3

    aget-object v6, v0, v6

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    .line 475
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 474
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 483
    :cond_5
    if-ne p2, v9, :cond_b

    .line 484
    :goto_6
    array-length v0, p0

    if-ge v2, v0, :cond_b

    .line 485
    aget-object v0, p0, v2

    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v1}, LCatalano/Math/Transforms/FourierTransform;->FFTShift1D([DLCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 484
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 490
    :cond_6
    if-ne p2, v8, :cond_a

    .line 491
    array-length v1, v0

    div-int/lit8 v4, v1, 0x2

    move v1, v2

    .line 492
    :goto_7
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_8

    move v3, v2

    .line 493
    :goto_8
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 494
    aget-object v5, p0, v1

    add-int v6, v4, v1

    aget-object v6, v0, v6

    aget-wide v6, v6, v3

    aput-wide v6, v5, v3

    .line 493
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 492
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move v3, v2

    .line 497
    :goto_9
    if-ge v3, v4, :cond_a

    move v1, v2

    .line 498
    :goto_a
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 499
    array-length v5, p0

    sub-int/2addr v5, v4

    add-int/2addr v5, v3

    aget-object v5, p0, v5

    aget-object v6, v0, v3

    aget-wide v6, v6, v1

    aput-wide v6, v5, v1

    .line 498
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 497
    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_9

    .line 504
    :cond_a
    if-ne p2, v9, :cond_b

    .line 505
    :goto_b
    array-length v0, p0

    if-ge v2, v0, :cond_b

    .line 506
    aget-object v0, p0, v2

    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v1}, LCatalano/Math/Transforms/FourierTransform;->FFTShift1D([DLCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 505
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 510
    :cond_b
    return-void
.end method

.method public static FFTShift2D([[Ljava/lang/Object;LCatalano/Math/Transforms/FourierTransform$Direction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([[TE;",
            "LCatalano/Math/Transforms/FourierTransform$Direction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 518
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, LCatalano/Math/Transforms/FourierTransform;->FFTShift2D([[Ljava/lang/Object;LCatalano/Math/Transforms/FourierTransform$Direction;I)V

    .line 519
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, LCatalano/Math/Transforms/FourierTransform;->FFTShift2D([[Ljava/lang/Object;LCatalano/Math/Transforms/FourierTransform$Direction;I)V

    .line 520
    return-void
.end method

.method public static FFTShift2D([[Ljava/lang/Object;LCatalano/Math/Transforms/FourierTransform$Direction;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([[TE;",
            "LCatalano/Math/Transforms/FourierTransform$Direction;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 531
    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    move v1, v2

    .line 532
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 533
    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 534
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-object v5, v5, v3

    aput-object v5, v4, v3

    .line 533
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 532
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
    :cond_1
    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    if-ne p1, v1, :cond_6

    .line 540
    if-ne p2, v6, :cond_5

    .line 541
    array-length v1, v0

    div-int/lit8 v3, v1, 0x2

    move v4, v2

    .line 542
    :goto_2
    if-ge v4, v3, :cond_3

    move v1, v2

    .line 543
    :goto_3
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 544
    aget-object v5, p0, v4

    array-length v6, v0

    sub-int/2addr v6, v3

    add-int/2addr v6, v4

    aget-object v6, v0, v6

    aget-object v6, v6, v1

    aput-object v6, v5, v1

    .line 543
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 542
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 548
    :goto_4
    array-length v4, p0

    if-ge v1, v4, :cond_5

    move v4, v2

    .line 549
    :goto_5
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 550
    aget-object v5, p0, v1

    sub-int v6, v1, v3

    aget-object v6, v0, v6

    aget-object v6, v6, v4

    aput-object v6, v5, v4

    .line 549
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 548
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 557
    :cond_5
    if-ne p2, v7, :cond_b

    .line 558
    :goto_6
    array-length v0, p0

    if-ge v2, v0, :cond_b

    .line 559
    aget-object v0, p0, v2

    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Forward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v1}, LCatalano/Math/Transforms/FourierTransform;->FFTShift1D([Ljava/lang/Object;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 564
    :cond_6
    if-ne p2, v6, :cond_a

    .line 565
    array-length v1, v0

    div-int/lit8 v4, v1, 0x2

    move v1, v2

    .line 566
    :goto_7
    array-length v3, p0

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_8

    move v3, v2

    .line 567
    :goto_8
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 568
    aget-object v5, p0, v1

    add-int v6, v4, v1

    aget-object v6, v0, v6

    aget-object v6, v6, v3

    aput-object v6, v5, v3

    .line 567
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 566
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move v3, v2

    .line 571
    :goto_9
    if-ge v3, v4, :cond_a

    move v1, v2

    .line 572
    :goto_a
    aget-object v5, p0, v2

    array-length v5, v5

    if-ge v1, v5, :cond_9

    .line 573
    array-length v5, p0

    sub-int/2addr v5, v4

    add-int/2addr v5, v3

    aget-object v5, p0, v5

    aget-object v6, v0, v3

    aget-object v6, v6, v1

    aput-object v6, v5, v1

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 571
    :cond_9
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_9

    .line 578
    :cond_a
    if-ne p2, v7, :cond_b

    .line 579
    :goto_b
    array-length v0, p0

    if-ge v2, v0, :cond_b

    .line 580
    aget-object v0, p0, v2

    sget-object v1, LCatalano/Math/Transforms/FourierTransform$Direction;->Backward:LCatalano/Math/Transforms/FourierTransform$Direction;

    invoke-static {v0, v1}, LCatalano/Math/Transforms/FourierTransform;->FFTShift1D([Ljava/lang/Object;LCatalano/Math/Transforms/FourierTransform$Direction;)V

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 584
    :cond_b
    return-void
.end method

.method private static a([D[D)V
    .locals 2

    .prologue
    .line 224
    array-length v0, p0

    .line 225
    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 228
    invoke-static {p0, p1}, LCatalano/Math/Transforms/FourierTransform;->c([D[D)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {p0, p1}, LCatalano/Math/Transforms/FourierTransform;->d([D[D)V

    goto :goto_0
.end method

.method private static a([D[D[D[D[D[D)V
    .locals 10

    .prologue
    .line 355
    array-length v1, p0

    .line 357
    invoke-static {p0, p1}, LCatalano/Math/Transforms/FourierTransform;->a([D[D)V

    .line 358
    invoke-static {p2, p3}, LCatalano/Math/Transforms/FourierTransform;->a([D[D)V

    .line 359
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 360
    aget-wide v2, p0, v0

    aget-wide v4, p2, v0

    mul-double/2addr v2, v4

    aget-wide v4, p1, v0

    aget-wide v6, p3, v0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    .line 361
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    mul-double/2addr v4, v6

    aget-wide v6, p0, v0

    aget-wide v8, p3, v0

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, p1, v0

    .line 362
    aput-wide v2, p0, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_0
    invoke-static {p0, p1}, LCatalano/Math/Transforms/FourierTransform;->b([D[D)V

    .line 367
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 368
    aget-wide v2, p0, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    aput-wide v2, p4, v0

    .line 369
    aget-wide v2, p1, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    aput-wide v2, p5, v0

    .line 367
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    :cond_1
    return-void
.end method

.method private static b([D[D)V
    .locals 0

    .prologue
    .line 239
    invoke-static {p1, p0}, LCatalano/Math/Transforms/FourierTransform;->a([D[D)V

    .line 240
    return-void
.end method

.method private static c([D[D)V
    .locals 20

    .prologue
    .line 247
    move-object/from16 v0, p0

    array-length v6, v0

    .line 248
    invoke-static {v6}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v3, v2, 0x1f

    .line 251
    div-int/lit8 v2, v6, 0x2

    new-array v7, v2, [D

    .line 252
    div-int/lit8 v2, v6, 0x2

    new-array v8, v2, [D

    .line 253
    const/4 v2, 0x0

    :goto_0
    div-int/lit8 v4, v6, 0x2

    if-ge v2, v4, :cond_0

    .line 254
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, v2

    mul-double/2addr v4, v10

    int-to-double v10, v6

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, v7, v2

    .line 255
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, v2

    mul-double/2addr v4, v10

    int-to-double v10, v6

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v8, v2

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v6, :cond_2

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->reverse(I)I

    move-result v4

    rsub-int/lit8 v5, v3, 0x20

    ushr-int/2addr v4, v5

    .line 261
    if-le v4, v2, :cond_1

    .line 262
    aget-wide v10, p0, v2

    .line 263
    aget-wide v12, p0, v4

    aput-wide v12, p0, v2

    .line 264
    aput-wide v10, p0, v4

    .line 265
    aget-wide v10, p1, v2

    .line 266
    aget-wide v12, p1, v4

    aput-wide v12, p1, v2

    .line 267
    aput-wide v10, p1, v4

    .line 259
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 272
    :cond_2
    const/4 v2, 0x2

    move v5, v2

    :goto_2
    if-gt v5, v6, :cond_5

    .line 273
    div-int/lit8 v9, v5, 0x2

    .line 274
    div-int v10, v6, v5

    .line 275
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_4

    .line 276
    const/4 v2, 0x0

    move v3, v4

    :goto_4
    add-int v11, v4, v9

    if-ge v3, v11, :cond_3

    .line 277
    add-int v11, v3, v9

    aget-wide v12, p0, v11

    aget-wide v14, v7, v2

    mul-double/2addr v12, v14

    add-int v11, v3, v9

    aget-wide v14, p1, v11

    aget-wide v16, v8, v2

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 278
    add-int v11, v3, v9

    aget-wide v14, p0, v11

    neg-double v14, v14

    aget-wide v16, v8, v2

    mul-double v14, v14, v16

    add-int v11, v3, v9

    aget-wide v16, p1, v11

    aget-wide v18, v7, v2

    mul-double v16, v16, v18

    add-double v14, v14, v16

    .line 279
    add-int v11, v3, v9

    aget-wide v16, p0, v3

    sub-double v16, v16, v12

    aput-wide v16, p0, v11

    .line 280
    add-int v11, v3, v9

    aget-wide v16, p1, v3

    sub-double v16, v16, v14

    aput-wide v16, p1, v11

    .line 281
    aget-wide v16, p0, v3

    add-double v12, v12, v16

    aput-wide v12, p0, v3

    .line 282
    aget-wide v12, p1, v3

    add-double/2addr v12, v14

    aput-wide v12, p1, v3

    .line 276
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v10

    goto :goto_4

    .line 275
    :cond_3
    add-int/2addr v4, v5

    goto :goto_3

    .line 287
    :cond_4
    if-ne v5, v6, :cond_6

    .line 290
    :cond_5
    return-void

    .line 272
    :cond_6
    mul-int/lit8 v2, v5, 0x2

    move v5, v2

    goto :goto_2
.end method

.method private static d([D[D)V
    .locals 18

    .prologue
    .line 298
    move-object/from16 v0, p0

    array-length v8, v0

    .line 299
    mul-int/lit8 v2, v8, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    shl-int/lit8 v7, v2, 0x1

    .line 302
    new-array v9, v8, [D

    .line 303
    new-array v10, v8, [D

    .line 304
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v8, :cond_0

    .line 305
    int-to-long v4, v2

    int-to-long v12, v2

    mul-long/2addr v4, v12

    mul-int/lit8 v3, v8, 0x2

    int-to-long v12, v3

    rem-long/2addr v4, v12

    long-to-int v3, v4

    .line 306
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    int-to-double v12, v3

    mul-double/2addr v4, v12

    int-to-double v12, v8

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, v9, v2

    .line 307
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    int-to-double v12, v3

    mul-double/2addr v4, v12

    int-to-double v12, v8

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v10, v2

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    :cond_0
    new-array v2, v7, [D

    .line 312
    new-array v3, v7, [D

    .line 313
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_1

    .line 314
    aget-wide v12, p0, v4

    aget-wide v14, v9, v4

    mul-double/2addr v12, v14

    aget-wide v14, p1, v4

    aget-wide v16, v10, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v2, v4

    .line 315
    aget-wide v12, p0, v4

    neg-double v12, v12

    aget-wide v14, v10, v4

    mul-double/2addr v12, v14

    aget-wide v14, p1, v4

    aget-wide v16, v9, v4

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    aput-wide v12, v3, v4

    .line 313
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 317
    :cond_1
    new-array v4, v7, [D

    .line 318
    new-array v5, v7, [D

    .line 319
    const/4 v6, 0x0

    const/4 v11, 0x0

    aget-wide v12, v9, v11

    aput-wide v12, v4, v6

    .line 320
    const/4 v6, 0x0

    const/4 v11, 0x0

    aget-wide v12, v10, v11

    aput-wide v12, v5, v6

    .line 321
    const/4 v6, 0x1

    :goto_2
    if-ge v6, v8, :cond_2

    .line 322
    sub-int v11, v7, v6

    aget-wide v12, v9, v6

    aput-wide v12, v4, v11

    aput-wide v12, v4, v6

    .line 323
    sub-int v11, v7, v6

    aget-wide v12, v10, v6

    aput-wide v12, v5, v11

    aput-wide v12, v5, v6

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 327
    :cond_2
    new-array v6, v7, [D

    .line 328
    new-array v7, v7, [D

    .line 329
    invoke-static/range {v2 .. v7}, LCatalano/Math/Transforms/FourierTransform;->a([D[D[D[D[D[D)V

    .line 332
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v8, :cond_3

    .line 333
    aget-wide v4, v6, v2

    aget-wide v12, v9, v2

    mul-double/2addr v4, v12

    aget-wide v12, v7, v2

    aget-wide v14, v10, v2

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p0, v2

    .line 334
    aget-wide v4, v6, v2

    neg-double v4, v4

    aget-wide v12, v10, v2

    mul-double/2addr v4, v12

    aget-wide v12, v7, v2

    aget-wide v14, v9, v2

    mul-double/2addr v12, v14

    add-double/2addr v4, v12

    aput-wide v4, p1, v2

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 336
    :cond_3
    return-void
.end method
