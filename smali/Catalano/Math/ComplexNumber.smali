.class public LCatalano/Math/ComplexNumber;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public imaginary:D

.field public real:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 46
    invoke-direct {p0, v0, v1, v0, v1}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    .line 47
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 40
    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 55
    iput-wide p1, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 56
    iput-wide p3, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 57
    return-void
.end method

.method public constructor <init>(LCatalano/Math/ComplexNumber;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 40
    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 64
    iget-wide v0, p1, LCatalano/Math/ComplexNumber;->real:D

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 65
    iget-wide v0, p1, LCatalano/Math/ComplexNumber;->imaginary:D

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 66
    return-void
.end method

.method public static Abs(LCatalano/Math/ComplexNumber;)D
    .locals 2

    .prologue
    .line 187
    invoke-static {p0}, LCatalano/Math/ComplexNumber;->Magnitude(LCatalano/Math/ComplexNumber;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Abs([LCatalano/Math/ComplexNumber;)[D
    .locals 4

    .prologue
    .line 196
    array-length v0, p0

    new-array v1, v0, [D

    .line 197
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 198
    aget-object v2, p0, v0

    invoke-virtual {v2}, LCatalano/Math/ComplexNumber;->getMagnitude()D

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    return-object v1
.end method

.method public static Abs([[LCatalano/Math/ComplexNumber;)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 209
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

    .line 210
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 211
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 212
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-object v5, v5, v3

    invoke-virtual {v5}, LCatalano/Math/ComplexNumber;->getMagnitude()D

    move-result-wide v6

    aput-wide v6, v4, v3

    .line 211
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    return-object v0
.end method

.method public static Add(LCatalano/Math/ComplexNumber;D)LCatalano/Math/ComplexNumber;
    .locals 7

    .prologue
    .line 235
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    add-double/2addr v2, p1

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v0
.end method

.method public static Add(LCatalano/Math/ComplexNumber;LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 8

    .prologue
    .line 225
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v4, p1, LCatalano/Math/ComplexNumber;->real:D

    add-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v6, p1, LCatalano/Math/ComplexNumber;->imaginary:D

    add-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v0
.end method

.method public static Conjugate(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 8

    .prologue
    .line 537
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v0
.end method

.method public static Cos(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 482
    new-instance v0, LCatalano/Math/ComplexNumber;

    invoke-direct {v0}, LCatalano/Math/ComplexNumber;-><init>()V

    .line 484
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 486
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 487
    iput-wide v4, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 495
    :goto_0
    return-object v0

    .line 491
    :cond_0
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 492
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    goto :goto_0
.end method

.method public static Divide(LCatalano/Math/ComplexNumber;D)LCatalano/Math/ComplexNumber;
    .locals 7

    .prologue
    .line 356
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    div-double/2addr v2, p1

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    div-double/2addr v4, p1

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v0
.end method

.method public static Divide(LCatalano/Math/ComplexNumber;LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 12

    .prologue
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 323
    invoke-static {p1}, LCatalano/Math/ComplexNumber;->Conjugate(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;

    move-result-object v0

    .line 325
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v4, v0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v6, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    .line 326
    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v6, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v8, v0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 328
    iget-wide v6, p1, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v8, v0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v6, v8

    iget-wide v8, p1, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v0, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v0, v8

    mul-double/2addr v0, v10

    add-double/2addr v0, v6

    .line 330
    new-instance v6, LCatalano/Math/ComplexNumber;

    div-double/2addr v2, v0

    div-double v0, v4, v0

    invoke-direct {v6, v2, v3, v0, v1}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v6
.end method

.method public static Exp(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 6

    .prologue
    .line 448
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    .line 449
    new-instance v1, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    .line 451
    invoke-static {v0, v1}, LCatalano/Math/ComplexNumber;->Multiply(LCatalano/Math/ComplexNumber;LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;

    move-result-object v0

    return-object v0
.end method

.method public static Log(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 417
    new-instance v0, LCatalano/Math/ComplexNumber;

    invoke-direct {v0}, LCatalano/Math/ComplexNumber;-><init>()V

    .line 419
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 420
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 421
    iput-wide v4, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 438
    :goto_0
    return-object v0

    .line 423
    :cond_0
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    .line 424
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 425
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 426
    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    goto :goto_0

    .line 429
    :cond_1
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    neg-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 430
    const-wide v2, -0x4006de04abbbd2e8L    # -1.5707963267948966

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0}, LCatalano/Math/ComplexNumber;->getMagnitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 435
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    goto :goto_0
.end method

.method public static Magnitude(LCatalano/Math/ComplexNumber;)D
    .locals 6

    .prologue
    .line 280
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Multiply(LCatalano/Math/ComplexNumber;D)LCatalano/Math/ComplexNumber;
    .locals 7

    .prologue
    .line 303
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v2, p1

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, p1

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v0
.end method

.method public static Multiply(LCatalano/Math/ComplexNumber;LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 14

    .prologue
    .line 290
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 291
    iget-wide v4, p1, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v6, p1, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 293
    new-instance v8, LCatalano/Math/ComplexNumber;

    mul-double v10, v0, v4

    mul-double v12, v2, v6

    sub-double/2addr v10, v12

    mul-double/2addr v0, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-direct {v8, v10, v11, v0, v1}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v8
.end method

.method public static Pow(LCatalano/Math/ComplexNumber;D)LCatalano/Math/ComplexNumber;
    .locals 9

    .prologue
    .line 385
    invoke-virtual {p0}, LCatalano/Math/ComplexNumber;->getMagnitude()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 386
    const-wide v2, 0x4076800000000000L    # 360.0

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v6, p0, LCatalano/Math/ComplexNumber;->real:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 388
    mul-double/2addr v2, p1

    .line 390
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    .line 391
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 393
    new-instance v2, LCatalano/Math/ComplexNumber;

    invoke-direct {v2, v4, v5, v0, v1}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v2
.end method

.method public static Sin(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 460
    new-instance v0, LCatalano/Math/ComplexNumber;

    invoke-direct {v0}, LCatalano/Math/ComplexNumber;-><init>()V

    .line 462
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 464
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 465
    iput-wide v4, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 473
    :goto_0
    return-object v0

    .line 469
    :cond_0
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 470
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    goto :goto_0
.end method

.method public static Subtract(LCatalano/Math/ComplexNumber;D)LCatalano/Math/ComplexNumber;
    .locals 7

    .prologue
    .line 263
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    sub-double/2addr v2, p1

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v0
.end method

.method public static Subtract(LCatalano/Math/ComplexNumber;LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 8

    .prologue
    .line 253
    new-instance v0, LCatalano/Math/ComplexNumber;

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v4, p1, LCatalano/Math/ComplexNumber;->real:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v6, p1, LCatalano/Math/ComplexNumber;->imaginary:D

    sub-double/2addr v4, v6

    invoke-direct {v0, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    return-object v0
.end method

.method public static Swap(LCatalano/Math/ComplexNumber;)V
    .locals 4

    .prologue
    .line 153
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 154
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iput-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 155
    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 156
    return-void
.end method

.method public static Swap([LCatalano/Math/ComplexNumber;)V
    .locals 6

    .prologue
    .line 163
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 164
    new-instance v1, LCatalano/Math/ComplexNumber;

    aget-object v2, p0, v0

    iget-wide v2, v2, LCatalano/Math/ComplexNumber;->imaginary:D

    aget-object v4, p0, v0

    iget-wide v4, v4, LCatalano/Math/ComplexNumber;->real:D

    invoke-direct {v1, v2, v3, v4, v5}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v1, p0, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public static Swap([[LCatalano/Math/ComplexNumber;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 173
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    move v2, v1

    .line 174
    :goto_1
    aget-object v3, p0, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 175
    aget-object v3, p0, v0

    new-instance v4, LCatalano/Math/ComplexNumber;

    aget-object v5, p0, v0

    aget-object v5, v5, v2

    iget-wide v6, v5, LCatalano/Math/ComplexNumber;->imaginary:D

    aget-object v5, p0, v0

    aget-object v5, v5, v2

    iget-wide v8, v5, LCatalano/Math/ComplexNumber;->real:D

    invoke-direct {v4, v6, v7, v8, v9}, LCatalano/Math/ComplexNumber;-><init>(DD)V

    aput-object v4, v3, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 173
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    return-void
.end method

.method public static Tan(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;
    .locals 10

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    .line 504
    new-instance v0, LCatalano/Math/ComplexNumber;

    invoke-direct {v0}, LCatalano/Math/ComplexNumber;-><init>()V

    .line 506
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    cmpl-double v1, v2, v4

    if-nez v1, :cond_0

    .line 508
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 509
    iput-wide v4, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 521
    :goto_0
    return-object v0

    .line 513
    :cond_0
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v2, v6

    .line 514
    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, v6

    .line 515
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cosh(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    .line 517
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v6

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->real:D

    .line 518
    invoke-static {v4, v5}, Ljava/lang/Math;->sinh(D)D

    move-result-wide v2

    div-double/2addr v2, v6

    iput-wide v2, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    goto :goto_0
.end method

.method public static getImaginary([LCatalano/Math/ComplexNumber;)[D
    .locals 4

    .prologue
    .line 111
    array-length v0, p0

    new-array v1, v0, [D

    .line 112
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 113
    aget-object v2, p0, v0

    iget-wide v2, v2, LCatalano/Math/ComplexNumber;->imaginary:D

    aput-wide v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-object v1
.end method

.method public static getImaginary([[LCatalano/Math/ComplexNumber;)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 139
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

    .line 140
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 141
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 142
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-object v5, v5, v3

    iget-wide v6, v5, LCatalano/Math/ComplexNumber;->imaginary:D

    aput-wide v6, v4, v3

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 140
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    return-object v0
.end method

.method public static getReal([LCatalano/Math/ComplexNumber;)[D
    .locals 4

    .prologue
    .line 98
    array-length v0, p0

    new-array v1, v0, [D

    .line 99
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 100
    aget-object v2, p0, v0

    iget-wide v2, v2, LCatalano/Math/ComplexNumber;->real:D

    aput-wide v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-object v1
.end method

.method public static getReal([[LCatalano/Math/ComplexNumber;)[[D
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 124
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

    .line 125
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    move v3, v2

    .line 126
    :goto_1
    aget-object v4, v0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 127
    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-object v5, v5, v3

    iget-wide v6, v5, LCatalano/Math/ComplexNumber;->real:D

    aput-wide v6, v4, v3

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    return-object v0
.end method


# virtual methods
.method public Add(D)V
    .locals 3

    .prologue
    .line 243
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    add-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 244
    return-void
.end method

.method public Conjugate()V
    .locals 4

    .prologue
    .line 528
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    mul-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 529
    return-void
.end method

.method public Divide(D)V
    .locals 3

    .prologue
    .line 365
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 367
    :try_start_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Can not divide by zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    :cond_0
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    div-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 374
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    div-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 375
    return-void
.end method

.method public Divide(LCatalano/Math/ComplexNumber;)V
    .locals 12

    .prologue
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 338
    invoke-static {p1}, LCatalano/Math/ComplexNumber;->Conjugate(LCatalano/Math/ComplexNumber;)LCatalano/Math/ComplexNumber;

    move-result-object v0

    .line 340
    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v4, v0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v6, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, v6

    mul-double/2addr v4, v10

    add-double/2addr v2, v4

    .line 341
    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v6, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v4, v6

    iget-wide v6, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v8, v0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    .line 343
    iget-wide v6, p1, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v8, v0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v6, v8

    iget-wide v8, p1, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v0, v0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v0, v8

    mul-double/2addr v0, v10

    add-double/2addr v0, v6

    .line 345
    div-double/2addr v2, v0

    iput-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 346
    div-double v0, v4, v0

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 347
    return-void
.end method

.method public Multiply(D)V
    .locals 3

    .prologue
    .line 311
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 312
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 313
    return-void
.end method

.method public Pow(D)V
    .locals 9

    .prologue
    .line 402
    invoke-virtual {p0}, LCatalano/Math/ComplexNumber;->getMagnitude()D

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 403
    const-wide v2, 0x4076800000000000L    # 360.0

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v6, p0, LCatalano/Math/ComplexNumber;->real:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 405
    mul-double/2addr v2, p1

    .line 407
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v0

    iput-wide v4, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 408
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    .line 409
    return-void
.end method

.method public Subtract(D)V
    .locals 3

    .prologue
    .line 271
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    .line 272
    return-void
.end method

.method public getMagnitude()D
    .locals 6

    .prologue
    .line 73
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPhase()D
    .locals 4

    .prologue
    .line 89
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSquaredMagnitude()D
    .locals 6

    .prologue
    .line 81
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->real:D

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    iget-wide v4, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 542
    iget-wide v0, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->real:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, LCatalano/Math/ComplexNumber;->imaginary:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
