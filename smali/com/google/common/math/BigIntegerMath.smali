.class public final Lcom/google/common/math/BigIntegerMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final a:Ljava/math/BigInteger;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final b:D

.field private static final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 117
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/BigIntegerMath;->a:Ljava/math/BigInteger;

    .line 195
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->b:D

    .line 196
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->c:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/List;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/common/math/BigIntegerMath;->a(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;II)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/math/BigInteger;",
            ">;II)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    .prologue
    .line 376
    sub-int v0, p2, p1

    packed-switch v0, :pswitch_data_0

    .line 387
    add-int v0, p2, p1

    ushr-int/lit8 v0, v0, 0x1

    .line 388
    invoke-static {p0, p1, v0}, Lcom/google/common/math/BigIntegerMath;->a(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p0, v0, p2}, Lcom/google/common/math/BigIntegerMath;->a(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    .line 378
    :pswitch_0
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    goto :goto_0

    .line 380
    :pswitch_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    goto :goto_0

    .line 382
    :pswitch_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 384
    :pswitch_3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, p1, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static a(Ljava/math/BigInteger;)Z
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 450
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 263
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    .line 264
    const/16 v1, 0x3ff

    if-ge v0, v1, :cond_0

    .line 265
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->c(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 274
    :goto_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 275
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    :goto_1
    return-object v0

    .line 267
    :cond_0
    add-int/lit8 v0, v0, -0x34

    and-int/lit8 v0, v0, -0x2

    .line 272
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/math/BigIntegerMath;->c(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 280
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 281
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 14

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 401
    const-string v0, "n"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;I)I

    .line 402
    const-string v0, "k"

    invoke-static {v0, p1}, Llm;->b(Ljava/lang/String;I)I

    .line 403
    if-gt p1, p0, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "k (%s) > n (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 404
    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_0

    .line 405
    sub-int p1, p0, p1

    .line 407
    :cond_0
    sget-object v0, Lcom/google/common/math/LongMath;->e:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/google/common/math/LongMath;->e:[I

    aget v0, v0, p1

    if-gt p0, v0, :cond_2

    .line 408
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 444
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 403
    goto :goto_0

    .line 411
    :cond_2
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 413
    int-to-long v6, p0

    .line 414
    const-wide/16 v4, 0x1

    .line 416
    int-to-long v2, p0

    sget-object v8, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v8}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v2

    move v8, v1

    move-object v1, v0

    move v0, v2

    .line 420
    :goto_2
    if-ge v8, p1, :cond_4

    .line 421
    sub-int v9, p0, v8

    .line 422
    add-int/lit8 v10, v8, 0x1

    .line 426
    add-int v3, v0, v2

    const/16 v11, 0x3f

    if-lt v3, v11, :cond_3

    .line 430
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 431
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 432
    int-to-long v4, v9

    .line 433
    int-to-long v0, v10

    move-wide v6, v4

    move-wide v4, v0

    move v0, v2

    move-object v1, v3

    .line 420
    :goto_3
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_2

    .line 437
    :cond_3
    int-to-long v12, v9

    mul-long/2addr v6, v12

    .line 438
    int-to-long v10, v10

    mul-long/2addr v4, v10

    .line 439
    add-int/2addr v0, v2

    goto :goto_3

    .line 443
    :cond_4
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 444
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_1
.end method

.method private static c(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 287
    invoke-static {p0}, Lll;->a(Ljava/math/BigInteger;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 299
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 300
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 301
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .locals 18

    .prologue
    .line 317
    const-string v2, "n"

    move/from16 v0, p0

    invoke-static {v2, v0}, Llm;->b(Ljava/lang/String;I)I

    .line 320
    sget-object v2, Lcom/google/common/math/LongMath;->d:[J

    array-length v2, v2

    move/from16 v0, p0

    if-ge v0, v2, :cond_0

    .line 321
    sget-object v2, Lcom/google/common/math/LongMath;->d:[J

    aget-wide v2, v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 368
    :goto_0
    return-object v2

    .line 325
    :cond_0
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    move/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v2

    mul-int v2, v2, p0

    const/16 v3, 0x40

    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v4}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v2

    .line 326
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 329
    sget-object v2, Lcom/google/common/math/LongMath;->d:[J

    array-length v2, v2

    .line 330
    sget-object v3, Lcom/google/common/math/LongMath;->d:[J

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v3, v4

    .line 332
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    .line 333
    shr-long v8, v4, v7

    .line 336
    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v8, v9, v3}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 337
    int-to-long v4, v2

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v4, v5, v3}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    .line 339
    const/4 v3, 0x1

    add-int/lit8 v4, v5, -0x1

    shl-int v4, v3, v4

    .line 342
    int-to-long v2, v2

    move-wide/from16 v16, v2

    move v2, v4

    move v3, v5

    move-wide v4, v8

    move v8, v6

    move v9, v7

    move-wide/from16 v6, v16

    :goto_1
    move/from16 v0, p0

    int-to-long v10, v0

    cmp-long v10, v6, v10

    if-gtz v10, :cond_3

    .line 344
    int-to-long v10, v2

    and-long/2addr v10, v6

    const-wide/16 v14, 0x0

    cmp-long v10, v10, v14

    if-eqz v10, :cond_1

    .line 345
    shl-int/lit8 v2, v2, 0x1

    .line 346
    add-int/lit8 v3, v3, 0x1

    .line 349
    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v10

    .line 350
    shr-long v14, v6, v10

    .line 351
    add-int/2addr v9, v10

    .line 353
    sub-int v10, v3, v10

    .line 355
    add-int/2addr v8, v10

    const/16 v10, 0x40

    if-lt v8, v10, :cond_2

    .line 356
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    const-wide/16 v4, 0x1

    .line 360
    :cond_2
    mul-long v10, v4, v14

    .line 361
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v10, v11, v4}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    .line 342
    const-wide/16 v4, 0x1

    add-long/2addr v4, v6

    move-wide v6, v4

    move-wide v4, v10

    goto :goto_1

    .line 364
    :cond_3
    const-wide/16 v2, 0x1

    cmp-long v2, v4, v2

    if-lez v2, :cond_4

    .line 365
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_4
    invoke-static {v12}, Lcom/google/common/math/BigIntegerMath;->a(Ljava/util/List;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public static isPowerOfTwo(Ljava/math/BigInteger;)Z
    .locals 2

    .prologue
    .line 56
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log10(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 130
    const-string v0, "x"

    invoke-static {v0, p0}, Llm;->a(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 131
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->a(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->log10(JLjava/math/RoundingMode;)I

    move-result v2

    .line 189
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 135
    :cond_1
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lcom/google/common/math/BigIntegerMath;->c:D

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/google/common/math/BigIntegerMath;->b:D

    div-double/2addr v0, v2

    double-to-int v1, v0

    .line 136
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 144
    if-lez v4, :cond_4

    .line 151
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 152
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    .line 154
    if-gtz v2, :cond_2

    move v6, v2

    move v2, v1

    move-object v1, v0

    move v0, v6

    .line 171
    :cond_3
    sget-object v3, Lcom/google/common/math/BigIntegerMath$1;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :cond_4
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 157
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    move v6, v2

    move v2, v1

    move-object v1, v0

    move v0, v4

    move-object v4, v3

    move v3, v6

    .line 158
    :goto_1
    if-gtz v3, :cond_3

    .line 159
    add-int/lit8 v2, v2, 0x1

    .line 162
    sget-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 163
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    move v6, v0

    move v0, v3

    move v3, v6

    move-object v7, v1

    move-object v1, v4

    move-object v4, v7

    goto :goto_1

    .line 173
    :pswitch_1
    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Llm;->a(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 181
    :pswitch_2
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    :pswitch_3
    invoke-virtual {p0, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 188
    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 3

    .prologue
    .line 70
    const-string v1, "x"

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-static {v1, v0}, Llm;->a(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 71
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 72
    sget-object v1, Lcom/google/common/math/BigIntegerMath$1;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 106
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 74
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v1

    invoke-static {v1}, Llm;->a(Z)V

    .line 103
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 81
    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :pswitch_3
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 87
    sget-object v1, Lcom/google/common/math/BigIntegerMath;->a:Ljava/math/BigInteger;

    rsub-int v2, v0, 0x100

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 89
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 103
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static sqrt(Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 208
    const-string v0, "x"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 209
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->a(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->sqrt(JLjava/math/RoundingMode;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 235
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 212
    :cond_1
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->b(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 213
    sget-object v1, Lcom/google/common/math/BigIntegerMath$1;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 237
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 215
    :pswitch_1
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Llm;->a(Z)V

    goto :goto_0

    .line 221
    :pswitch_2
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 222
    mul-int/2addr v1, v1

    .line 223
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 224
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 225
    :goto_1
    if-nez v1, :cond_0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 229
    :pswitch_3
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 235
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
