.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field static final a:[B
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final b:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final c:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static d:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 169
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->a:[B

    .line 172
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/IntMath;->b:[I

    .line 176
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->c:[I

    .line 502
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->e:[I

    .line 550
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->d:[I

    return-void

    .line 169
    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 172
    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    .line 176
    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    .line 502
    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    .line 550
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 2

    .prologue
    .line 160
    sget-object v0, Lcom/google/common/math/IntMath;->a:[B

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    .line 165
    sget-object v1, Lcom/google/common/math/IntMath;->b:[I

    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->a(II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static a(II)I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 75
    sub-int v0, p0, p1

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private static b(I)I
    .locals 2

    .prologue
    .line 267
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static binomial(II)I
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 525
    const-string v0, "n"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;I)I

    .line 526
    const-string v0, "k"

    invoke-static {v0, p1}, Llm;->b(Ljava/lang/String;I)I

    .line 527
    if-gt p1, p0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "k (%s) > n (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 528
    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_0

    .line 529
    sub-int p1, p0, p1

    .line 531
    :cond_0
    sget-object v0, Lcom/google/common/math/IntMath;->d:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/google/common/math/IntMath;->d:[I

    aget v0, v0, p1

    if-le p0, v0, :cond_3

    .line 532
    :cond_1
    const v1, 0x7fffffff

    .line 545
    :goto_1
    :pswitch_0
    return v1

    :cond_2
    move v0, v2

    .line 527
    goto :goto_0

    .line 534
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 540
    const-wide/16 v0, 0x1

    .line 541
    :goto_2
    if-ge v2, p1, :cond_4

    .line 542
    sub-int v3, p0, v2

    int-to-long v4, v3

    mul-long/2addr v0, v4

    .line 543
    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    div-long/2addr v0, v4

    .line 541
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_1
    move v1, p0

    .line 538
    goto :goto_1

    .line 545
    :cond_4
    long-to-int v1, v0

    goto :goto_1

    .line 534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkedAdd(II)I
    .locals 4

    .prologue
    .line 415
    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v2, v0

    .line 416
    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Llm;->c(Z)V

    .line 417
    long-to-int v0, v2

    return v0

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkedMultiply(II)I
    .locals 4

    .prologue
    .line 437
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v2, v0

    .line 438
    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Llm;->c(Z)V

    .line 439
    long-to-int v0, v2

    return v0

    .line 438
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkedPow(II)I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 451
    const-string v3, "exponent"

    invoke-static {v3, p1}, Llm;->b(Ljava/lang/String;I)I

    .line 452
    packed-switch p0, :pswitch_data_0

    move v2, v0

    .line 470
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 476
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_8

    .line 477
    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v2

    move v4, v2

    .line 479
    :goto_1
    shr-int/lit8 p1, p1, 0x1

    .line 480
    if-lez p1, :cond_7

    .line 481
    const v2, -0xb504

    if-gt v2, p0, :cond_5

    move v3, v0

    :goto_2
    const v2, 0xb504

    if-gt p0, v2, :cond_6

    move v2, v0

    :goto_3
    and-int/2addr v2, v3

    invoke-static {v2}, Llm;->c(Z)V

    .line 482
    mul-int/2addr p0, p0

    move v2, v4

    goto :goto_0

    .line 454
    :pswitch_0
    if-nez p1, :cond_1

    .line 474
    :cond_0
    :goto_4
    :pswitch_1
    return v0

    :cond_1
    move v0, v1

    .line 454
    goto :goto_4

    .line 458
    :pswitch_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_4

    .line 460
    :pswitch_3
    const/16 v2, 0x1f

    if-ge p1, v2, :cond_2

    move v1, v0

    :cond_2
    invoke-static {v1}, Llm;->c(Z)V

    .line 461
    shl-int/2addr v0, p1

    goto :goto_4

    .line 463
    :pswitch_4
    const/16 v3, 0x20

    if-ge p1, v3, :cond_3

    move v1, v0

    :cond_3
    invoke-static {v1}, Llm;->c(Z)V

    .line 464
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_4

    shl-int/2addr v0, p1

    goto :goto_4

    :cond_4
    shl-int v0, v2, p1

    goto :goto_4

    :pswitch_5
    move v0, v2

    .line 472
    goto :goto_4

    .line 474
    :pswitch_6
    invoke-static {v2, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    goto :goto_4

    :cond_5
    move v3, v1

    .line 481
    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    move v2, v4

    goto :goto_0

    :cond_8
    move v4, v2

    goto :goto_1

    .line 452
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 470
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkedSubtract(II)I
    .locals 4

    .prologue
    .line 426
    int-to-long v0, p0

    int-to-long v2, p1

    sub-long v2, v0, v2

    .line 427
    long-to-int v0, v2

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Llm;->c(Z)V

    .line 428
    long-to-int v0, v2

    return v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "/ by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    div-int v2, p0, p1

    .line 284
    mul-int v3, p1, v2

    sub-int v3, p0, v3

    .line 286
    if-nez v3, :cond_1

    .line 331
    :goto_0
    return v2

    .line 297
    :cond_1
    xor-int v4, p0, p1

    shr-int/lit8 v4, v4, 0x1f

    or-int/lit8 v5, v4, 0x1

    .line 299
    sget-object v4, Lcom/google/common/math/IntMath$1;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 329
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 301
    :pswitch_0
    if-nez v3, :cond_3

    :goto_1
    invoke-static {v0}, Llm;->a(Z)V

    :pswitch_1
    move v0, v1

    .line 331
    :cond_2
    :goto_2
    :pswitch_2
    if-eqz v0, :cond_9

    add-int v0, v2, v5

    :goto_3
    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 301
    goto :goto_1

    .line 310
    :pswitch_3
    if-gtz v5, :cond_2

    move v0, v1

    goto :goto_2

    .line 313
    :pswitch_4
    if-ltz v5, :cond_2

    move v0, v1

    goto :goto_2

    .line 318
    :pswitch_5
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 319
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v4, v3

    sub-int/2addr v3, v4

    .line 322
    if-nez v3, :cond_8

    .line 323
    sget-object v3, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, v3, :cond_4

    sget-object v3, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, v3, :cond_6

    move v4, v0

    :goto_4
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_7

    move v3, v0

    :goto_5
    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_5

    .line 325
    :cond_8
    if-gtz v3, :cond_2

    move v0, v1

    goto :goto_2

    :cond_9
    move v0, v2

    .line 331
    goto :goto_3

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static factorial(I)I
    .locals 1

    .prologue
    .line 498
    const-string v0, "n"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;I)I

    .line 499
    sget-object v0, Lcom/google/common/math/IntMath;->e:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/IntMath;->e:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static gcd(II)I
    .locals 5

    .prologue
    .line 370
    const-string v0, "a"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;I)I

    .line 371
    const-string v0, "b"

    invoke-static {v0, p1}, Llm;->b(Ljava/lang/String;I)I

    .line 372
    if-nez p0, :cond_0

    .line 406
    :goto_0
    return p1

    .line 376
    :cond_0
    if-nez p1, :cond_1

    move p1, p0

    .line 377
    goto :goto_0

    .line 383
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    .line 384
    shr-int v1, p0, v2

    .line 385
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .line 386
    shr-int v0, p1, v3

    .line 387
    :goto_1
    if-eq v1, v0, :cond_2

    .line 395
    sub-int/2addr v1, v0

    .line 397
    shr-int/lit8 v4, v1, 0x1f

    and-int/2addr v4, v1

    .line 400
    sub-int/2addr v1, v4

    sub-int/2addr v1, v4

    .line 403
    add-int/2addr v0, v4

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    shr-int/2addr v1, v4

    .line 405
    goto :goto_1

    .line 406
    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-int p1, v1, v0

    goto :goto_0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    if-lez p0, :cond_0

    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr v3, p0

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    .line 129
    const-string v0, "x"

    invoke-static {v0, p0}, Llm;->a(Ljava/lang/String;I)I

    .line 130
    invoke-static {p0}, Lcom/google/common/math/IntMath;->a(I)I

    move-result v1

    .line 131
    sget-object v0, Lcom/google/common/math/IntMath;->b:[I

    aget v0, v0, v1

    .line 132
    sget-object v2, Lcom/google/common/math/IntMath$1;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Llm;->a(Z)V

    :pswitch_1
    move v0, v1

    .line 146
    :goto_1
    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 141
    :pswitch_2
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 146
    :pswitch_3
    sget-object v0, Lcom/google/common/math/IntMath;->c:[I

    aget v0, v0, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 132
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

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 2

    .prologue
    .line 88
    const-string v0, "x"

    invoke-static {v0, p0}, Llm;->a(Ljava/lang/String;I)I

    .line 89
    sget-object v0, Lcom/google/common/math/IntMath$1;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :pswitch_0
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result v0

    invoke-static {v0}, Llm;->a(Z)V

    .line 95
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    .line 109
    :goto_0
    return v0

    .line 99
    :pswitch_2
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    goto :goto_0

    .line 105
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    .line 106
    const v1, -0x4afb0ccd

    ushr-int/2addr v1, v0

    .line 108
    rsub-int/lit8 v0, v0, 0x1f

    .line 109
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->a(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 89
    nop

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

.method public static mean(II)I
    .locals 2

    .prologue
    .line 580
    and-int v0, p0, p1

    xor-int v1, p0, p1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public static mod(II)I
    .locals 3

    .prologue
    .line 351
    if-gtz p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Modulus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    rem-int v0, p0, p1

    .line 355
    if-ltz v0, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/2addr v0, p1

    goto :goto_0
.end method

.method public static pow(II)I
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "failing tests"
    .end annotation

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 190
    const-string v2, "exponent"

    invoke-static {v2, p1}, Llm;->b(Ljava/lang/String;I)I

    .line 191
    packed-switch p0, :pswitch_data_0

    move v3, v0

    move v2, p0

    .line 210
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 216
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_5

    move v1, v0

    :goto_1
    mul-int/2addr v3, v1

    .line 217
    mul-int/2addr v2, v2

    .line 209
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 193
    :pswitch_0
    if-nez p1, :cond_1

    .line 214
    :cond_0
    :goto_2
    :pswitch_1
    return v0

    :cond_1
    move v0, v1

    .line 193
    goto :goto_2

    .line 197
    :pswitch_2
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_2

    .line 199
    :pswitch_3
    if-ge p1, v3, :cond_2

    shl-int v1, v0, p1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 201
    :pswitch_4
    if-ge p1, v3, :cond_4

    .line 202
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_3

    shl-int/2addr v0, p1

    goto :goto_2

    :cond_3
    shl-int/2addr v0, p1

    neg-int v0, v0

    goto :goto_2

    :cond_4
    move v0, v1

    .line 204
    goto :goto_2

    :pswitch_5
    move v0, v3

    .line 212
    goto :goto_2

    .line 214
    :pswitch_6
    mul-int v0, v2, v3

    goto :goto_2

    :cond_5
    move v1, v2

    .line 216
    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 210
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "need BigIntegerMath to adequately test"
    .end annotation

    .prologue
    .line 232
    const-string v0, "x"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;I)I

    .line 233
    invoke-static {p0}, Lcom/google/common/math/IntMath;->b(I)I

    move-result v1

    .line 234
    sget-object v0, Lcom/google/common/math/IntMath$1;->a:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :pswitch_0
    mul-int v0, v1, v1

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Llm;->a(Z)V

    :pswitch_1
    move v0, v1

    .line 258
    :goto_1
    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :pswitch_2
    mul-int v0, v1, v1

    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 246
    :pswitch_3
    mul-int v0, v1, v1

    add-int/2addr v0, v1

    .line 258
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 234
    nop

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
