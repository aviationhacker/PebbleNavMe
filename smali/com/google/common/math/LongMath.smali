.class public final Lcom/google/common/math/LongMath;
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

.field static final b:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final c:[J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final d:[J

.field static final e:[I

.field static final f:[I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final g:[[J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 170
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/LongMath;->a:[B

    .line 177
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/common/math/LongMath;->b:[J

    .line 202
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/LongMath;->c:[J

    .line 619
    const/16 v0, 0x15

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/LongMath;->d:[J

    .line 728
    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/LongMath;->e:[I

    .line 737
    const/16 v0, 0x1f

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/common/math/LongMath;->f:[I

    .line 768
    const/4 v0, 0x7

    new-array v0, v0, [[J

    const/4 v1, 0x0

    new-array v2, v3, [J

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [J

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    new-array v1, v5, [J

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    new-array v1, v6, [J

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v7, [J

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [J

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/common/math/LongMath;->g:[[J

    return-void

    .line 170
    nop

    :array_0
    .array-data 1
        0x13t
        0x12t
        0x12t
        0x12t
        0x12t
        0x11t
        0x11t
        0x11t
        0x10t
        0x10t
        0x10t
        0xft
        0xft
        0xft
        0xft
        0xet
        0xet
        0xet
        0xdt
        0xdt
        0xdt
        0xct
        0xct
        0xct
        0xct
        0xbt
        0xbt
        0xbt
        0xat
        0xat
        0xat
        0x9t
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
    .end array-data

    .line 177
    :array_1
    .array-data 8
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
        0x2540be400L
        0x174876e800L
        0xe8d4a51000L
        0x9184e72a000L
        0x5af3107a4000L
        0x38d7ea4c68000L
        0x2386f26fc10000L
        0x16345785d8a0000L
        0xde0b6b3a7640000L
    .end array-data

    .line 202
    :array_2
    .array-data 8
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0xbc7c871cL
        0x75cdd4719L
        0x49a0a4c700L
        0x2e0466fc608L
        0x1cc2c05dbc53L
        0x11f9b83a95b45L
        0xb3c13249d90bbL
        0x7058bf6e27a751L
        0x463777a4d8c892dL
        0x2be2aac7077d5bc3L    # 2.731041190138108E-97
    .end array-data

    .line 619
    :array_3
    .array-data 8
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
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data

    .line 728
    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x3a25db
        0x1dc79
        0x3f2f
        0x10f1
        0x6c5
        0x377
        0x216
        0x169
        0x109
        0xce
        0xa9
        0x8f
        0x7d
        0x6f
        0x65
        0x5e
        0x58
        0x53
        0x4f
        0x4c
        0x4a
        0x48
        0x46
        0x45
        0x44
        0x43
        0x43
        0x42
        0x42
        0x42
        0x42
    .end array-data

    .line 737
    :array_5
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x285146
        0x150eb
        0x2dcc
        0xc92
        0x521
        0x2ac
        0x1a3
        0x11f
        0xd6
        0xa9
        0x8b
        0x77
        0x69
        0x5f
        0x57
        0x51
        0x4c
        0x49
        0x46
        0x44
        0x42
        0x40
        0x3f
        0x3e
        0x3e
        0x3d
        0x3d
        0x3d
    .end array-data

    .line 768
    :array_6
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_7
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_8
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_9
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_a
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_b
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_c
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(J)I
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/google/common/math/LongMath;->a:[B

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    aget-byte v0, v0, v1

    .line 166
    sget-object v1, Lcom/google/common/math/LongMath;->b:[J

    aget-wide v2, v1, v0

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/math/LongMath;->a(JJ)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static a(JJ)I
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    .line 74
    sub-long v0, p0, p2

    xor-long/2addr v0, v2

    xor-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static a(JJJ)J
    .locals 4

    .prologue
    .line 713
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 714
    div-long v0, p2, p4

    .line 721
    :goto_0
    return-wide v0

    .line 716
    :cond_0
    invoke-static {p0, p1, p4, p5}, Lcom/google/common/math/LongMath;->gcd(JJ)J

    move-result-wide v0

    .line 717
    div-long v2, p0, v0

    .line 718
    div-long v0, p4, v0

    .line 721
    div-long v0, p2, v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method static b(J)Z
    .locals 2

    .prologue
    .line 745
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static binomial(II)J
    .locals 14

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v3, 0x2

    .line 650
    const-string v0, "n"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;I)I

    .line 651
    const-string v0, "k"

    invoke-static {v0, p1}, Llm;->b(Ljava/lang/String;I)I

    .line 652
    if-gt p1, p0, :cond_2

    move v0, v1

    :goto_0
    const-string v6, "k (%s) > n (%s)"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v0, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 653
    shr-int/lit8 v0, p0, 0x1

    if-le p1, v0, :cond_0

    .line 654
    sub-int p1, p0, p1

    .line 656
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 662
    sget-object v0, Lcom/google/common/math/LongMath;->d:[J

    array-length v0, v0

    if-ge p0, v0, :cond_3

    .line 663
    sget-object v0, Lcom/google/common/math/LongMath;->d:[J

    aget-wide v0, v0, p0

    sget-object v2, Lcom/google/common/math/LongMath;->d:[J

    aget-wide v2, v2, p1

    sget-object v4, Lcom/google/common/math/LongMath;->d:[J

    sub-int v5, p0, p1

    aget-wide v4, v4, v5

    mul-long/2addr v2, v4

    div-long/2addr v0, v2

    .line 704
    :cond_1
    :goto_1
    return-wide v0

    :cond_2
    move v0, v2

    .line 652
    goto :goto_0

    :pswitch_0
    move-wide v0, v4

    .line 658
    goto :goto_1

    .line 660
    :pswitch_1
    int-to-long v0, p0

    goto :goto_1

    .line 664
    :cond_3
    sget-object v0, Lcom/google/common/math/LongMath;->e:[I

    array-length v0, v0

    if-ge p1, v0, :cond_4

    sget-object v0, Lcom/google/common/math/LongMath;->e:[I

    aget v0, v0, p1

    if-le p0, v0, :cond_5

    .line 665
    :cond_4
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    .line 666
    :cond_5
    sget-object v0, Lcom/google/common/math/LongMath;->f:[I

    array-length v0, v0

    if-ge p1, v0, :cond_6

    sget-object v0, Lcom/google/common/math/LongMath;->f:[I

    aget v0, v0, p1

    if-gt p0, v0, :cond_6

    .line 668
    add-int/lit8 v2, p0, -0x1

    int-to-long v0, p0

    .line 669
    :goto_2
    if-gt v3, p1, :cond_1

    .line 670
    int-to-long v4, v2

    mul-long/2addr v0, v4

    .line 671
    int-to-long v4, v3

    div-long/2addr v0, v4

    .line 669
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 675
    :cond_6
    int-to-long v0, p0

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1, v2}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v6

    .line 678
    add-int/lit8 v2, p0, -0x1

    int-to-long v0, p0

    move v7, v3

    move v10, v6

    move v11, v2

    move-wide v2, v0

    move-wide v0, v4

    .line 689
    :goto_3
    if-gt v7, p1, :cond_8

    .line 690
    add-int v8, v10, v6

    const/16 v9, 0x3f

    if-ge v8, v9, :cond_7

    .line 692
    int-to-long v8, v11

    mul-long/2addr v8, v2

    .line 693
    int-to-long v2, v7

    mul-long/2addr v4, v2

    .line 694
    add-int v2, v10, v6

    move v12, v2

    move-wide v2, v4

    move-wide v4, v8

    move-wide v8, v0

    move v0, v12

    .line 689
    :goto_4
    add-int/lit8 v1, v7, 0x1

    add-int/lit8 v7, v11, -0x1

    move v10, v0

    move v11, v7

    move v7, v1

    move-wide v0, v8

    move-wide v12, v4

    move-wide v4, v2

    move-wide v2, v12

    goto :goto_3

    .line 698
    :cond_7
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/LongMath;->a(JJJ)J

    move-result-wide v4

    .line 699
    int-to-long v2, v11

    .line 700
    int-to-long v0, v7

    move-wide v8, v4

    move-wide v4, v2

    move-wide v2, v0

    move v0, v6

    .line 701
    goto :goto_4

    .line 704
    :cond_8
    invoke-static/range {v0 .. v5}, Lcom/google/common/math/LongMath;->a(JJJ)J

    move-result-wide v0

    goto :goto_1

    .line 656
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkedAdd(JJ)J
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 510
    add-long v4, p0, p2

    .line 511
    xor-long v2, p0, p2

    cmp-long v2, v2, v8

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    xor-long v6, p0, v4

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1

    :goto_1
    or-int/2addr v0, v2

    invoke-static {v0}, Llm;->c(Z)V

    .line 512
    return-wide v4

    :cond_0
    move v2, v1

    .line 511
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static checkedMultiply(JJ)J
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    xor-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 536
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    xor-long v4, p2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 547
    const/16 v3, 0x41

    if-le v0, v3, :cond_0

    .line 548
    mul-long v0, p0, p2

    .line 554
    :goto_0
    return-wide v0

    .line 550
    :cond_0
    const/16 v3, 0x40

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_1
    invoke-static {v0}, Llm;->c(Z)V

    .line 551
    cmp-long v0, p0, v8

    if-ltz v0, :cond_4

    move v3, v1

    :goto_2
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, p2, v4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    or-int/2addr v0, v3

    invoke-static {v0}, Llm;->c(Z)V

    .line 552
    mul-long v4, p0, p2

    .line 553
    cmp-long v0, p0, v8

    if-eqz v0, :cond_1

    div-long v6, v4, p0

    cmp-long v0, v6, p2

    if-nez v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-static {v2}, Llm;->c(Z)V

    move-wide v0, v4

    .line 554
    goto :goto_0

    :cond_3
    move v0, v2

    .line 550
    goto :goto_1

    :cond_4
    move v3, v2

    .line 551
    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method public static checkedPow(JI)J
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v0, 0x1

    .line 565
    const-string v6, "exponent"

    invoke-static {v6, p2}, Llm;->b(Ljava/lang/String;I)I

    .line 566
    const-wide/16 v6, -0x2

    cmp-long v6, p0, v6

    if-ltz v6, :cond_0

    move v7, v4

    :goto_0
    const-wide/16 v8, 0x2

    cmp-long v6, p0, v8

    if-gtz v6, :cond_1

    move v6, v4

    :goto_1
    and-int/2addr v6, v7

    if-eqz v6, :cond_7

    .line 567
    long-to-int v6, p0

    packed-switch v6, :pswitch_data_0

    .line 581
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v7, v5

    .line 566
    goto :goto_0

    :cond_1
    move v6, v5

    goto :goto_1

    .line 569
    :pswitch_0
    if-nez p2, :cond_3

    .line 590
    :cond_2
    :goto_2
    :pswitch_1
    return-wide v0

    .line 569
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 573
    :pswitch_2
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    move-wide v0, v2

    goto :goto_2

    .line 575
    :pswitch_3
    const/16 v2, 0x3f

    if-ge p2, v2, :cond_4

    move v2, v4

    :goto_3
    invoke-static {v2}, Llm;->c(Z)V

    .line 576
    shl-long/2addr v0, p2

    goto :goto_2

    :cond_4
    move v2, v5

    .line 575
    goto :goto_3

    .line 578
    :pswitch_4
    const/16 v6, 0x40

    if-ge p2, v6, :cond_5

    :goto_4
    invoke-static {v4}, Llm;->c(Z)V

    .line 579
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_6

    shl-long/2addr v0, p2

    goto :goto_2

    :cond_5
    move v4, v5

    .line 578
    goto :goto_4

    .line 579
    :cond_6
    shl-long v0, v2, p2

    goto :goto_2

    .line 586
    :cond_7
    :goto_5
    packed-switch p2, :pswitch_data_1

    .line 592
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_a

    .line 593
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    move-wide v2, v0

    .line 595
    :goto_6
    shr-int/lit8 p2, p2, 0x1

    .line 596
    if-lez p2, :cond_9

    .line 597
    const-wide v0, -0xb504f333L

    cmp-long v0, v0, p0

    if-gtz v0, :cond_8

    const-wide v0, 0xb504f333L

    cmp-long v0, p0, v0

    if-gtz v0, :cond_8

    move v0, v4

    :goto_7
    invoke-static {v0}, Llm;->c(Z)V

    .line 598
    mul-long/2addr p0, p0

    move-wide v0, v2

    goto :goto_5

    .line 590
    :pswitch_5
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/LongMath;->checkedMultiply(JJ)J

    move-result-wide v0

    goto :goto_2

    :cond_8
    move v0, v5

    .line 597
    goto :goto_7

    :cond_9
    move-wide v0, v2

    goto :goto_5

    :cond_a
    move-wide v2, v0

    goto :goto_6

    .line 567
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 586
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method public static checkedSubtract(JJ)J
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 522
    sub-long v4, p0, p2

    .line 523
    xor-long v2, p0, p2

    cmp-long v2, v2, v8

    if-ltz v2, :cond_0

    move v2, v0

    :goto_0
    xor-long v6, p0, v4

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1

    :goto_1
    or-int/2addr v0, v2

    invoke-static {v0}, Llm;->c(Z)V

    .line 524
    return-wide v4

    :cond_0
    move v2, v1

    .line 523
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static divide(JJLjava/math/RoundingMode;)J
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 349
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    div-long v2, p0, p2

    .line 351
    mul-long v0, p2, v2

    sub-long v0, p0, v0

    .line 353
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 398
    :goto_0
    return-wide v2

    .line 364
    :cond_0
    xor-long v4, p0, p2

    const/16 v6, 0x3f

    shr-long/2addr v4, v6

    long-to-int v4, v4

    or-int/lit8 v5, v4, 0x1

    .line 366
    sget-object v4, Lcom/google/common/math/LongMath$1;->a:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 396
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 368
    :pswitch_0
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Llm;->a(Z)V

    .line 371
    :pswitch_1
    const/4 v0, 0x0

    .line 398
    :goto_2
    if-eqz v0, :cond_9

    int-to-long v0, v5

    add-long/2addr v0, v2

    :goto_3
    move-wide v2, v0

    goto :goto_0

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 374
    :pswitch_2
    const/4 v0, 0x1

    .line 375
    goto :goto_2

    .line 377
    :pswitch_3
    if-lez v5, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 380
    :pswitch_4
    if-gez v5, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 385
    :pswitch_5
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 386
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v6, v0

    sub-long/2addr v0, v6

    .line 389
    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_7

    .line 390
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-ne p4, v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, v1, :cond_5

    const/4 v1, 0x1

    move v4, v1

    :goto_5
    const-wide/16 v6, 0x1

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_6
    and-int/2addr v1, v4

    or-int/2addr v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    move v4, v1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    .line 392
    :cond_7
    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    move-wide v0, v2

    .line 398
    goto :goto_3

    .line 366
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

.method public static factorial(I)J
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 615
    const-string v0, "n"

    invoke-static {v0, p0}, Llm;->b(Ljava/lang/String;I)I

    .line 616
    sget-object v0, Lcom/google/common/math/LongMath;->d:[J

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/math/LongMath;->d:[J

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public static gcd(JJ)J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 464
    const-string v0, "a"

    invoke-static {v0, p0, p1}, Llm;->b(Ljava/lang/String;J)J

    .line 465
    const-string v0, "b"

    invoke-static {v0, p2, p3}, Llm;->b(Ljava/lang/String;J)J

    .line 466
    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-wide p2

    .line 470
    :cond_0
    cmp-long v0, p2, v2

    if-nez v0, :cond_1

    move-wide p2, p0

    .line 471
    goto :goto_0

    .line 477
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    .line 478
    shr-long v2, p0, v4

    .line 479
    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    .line 480
    shr-long v0, p2, v5

    .line 481
    :goto_1
    cmp-long v6, v2, v0

    if-eqz v6, :cond_2

    .line 489
    sub-long/2addr v2, v0

    .line 491
    const/16 v6, 0x3f

    shr-long v6, v2, v6

    and-long/2addr v6, v2

    .line 494
    sub-long/2addr v2, v6

    sub-long/2addr v2, v6

    .line 497
    add-long/2addr v0, v6

    .line 498
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    shr-long/2addr v2, v6

    .line 499
    goto :goto_1

    .line 500
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    shl-long p2, v2, v0

    goto :goto_0
.end method

.method public static isPowerOfTwo(J)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 63
    cmp-long v2, p0, v6

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/16 v4, 0x1

    sub-long v4, p0, v4

    and-long/2addr v4, p0

    cmp-long v3, v4, v6

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

.method public static log10(JLjava/math/RoundingMode;)I
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 129
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Llm;->a(Ljava/lang/String;J)J

    .line 130
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->a(J)I

    move-result v1

    .line 131
    sget-object v0, Lcom/google/common/math/LongMath;->b:[J

    aget-wide v2, v0, v1

    .line 132
    sget-object v0, Lcom/google/common/math/LongMath$1;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 134
    :pswitch_0
    cmp-long v0, p0, v2

    if-nez v0, :cond_0

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
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->a(JJ)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    .line 146
    :pswitch_3
    sget-object v0, Lcom/google/common/math/LongMath;->c:[J

    aget-wide v2, v0, v1

    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->a(JJ)I

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

.method public static log2(JLjava/math/RoundingMode;)I
    .locals 4

    .prologue
    .line 87
    const-string v0, "x"

    invoke-static {v0, p0, p1}, Llm;->a(Ljava/lang/String;J)J

    .line 88
    sget-object v0, Lcom/google/common/math/LongMath$1;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "impossible"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 90
    :pswitch_0
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->isPowerOfTwo(J)Z

    move-result v0

    invoke-static {v0}, Llm;->a(Z)V

    .line 94
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    .line 108
    :goto_0
    return v0

    .line 98
    :pswitch_2
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    goto :goto_0

    .line 104
    :pswitch_3
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    .line 105
    const-wide v2, -0x4afb0ccc06219b7cL    # -2.734104117489491E-53

    ushr-long/2addr v2, v0

    .line 107
    rsub-int/lit8 v0, v0, 0x3f

    .line 108
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->a(JJ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 88
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

.method public static mean(JJ)J
    .locals 6

    .prologue
    .line 758
    and-long v0, p0, p2

    xor-long v2, p0, p2

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static mod(JI)I
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    .line 422
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/math/LongMath;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static mod(JJ)J
    .locals 4
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 445
    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Modulus must be positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_0
    rem-long v0, p0, p2

    .line 449
    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    add-long/2addr v0, p2

    goto :goto_0
.end method

.method public static pow(JI)J
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const/16 v6, 0x40

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x1

    .line 233
    const-string v4, "exponent"

    invoke-static {v4, p2}, Llm;->b(Ljava/lang/String;I)I

    .line 234
    const-wide/16 v4, -0x2

    cmp-long v4, v4, p0

    if-gtz v4, :cond_5

    const-wide/16 v4, 0x2

    cmp-long v4, p0, v4

    if-gtz v4, :cond_5

    .line 235
    long-to-int v4, p0

    packed-switch v4, :pswitch_data_0

    .line 251
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :pswitch_0
    if-nez p2, :cond_1

    .line 259
    :cond_0
    :goto_0
    :pswitch_1
    return-wide v0

    :cond_1
    move-wide v0, v2

    .line 237
    goto :goto_0

    .line 241
    :pswitch_2
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 243
    :pswitch_3
    if-ge p2, v6, :cond_2

    shl-long v2, v0, p2

    :cond_2
    move-wide v0, v2

    goto :goto_0

    .line 245
    :pswitch_4
    if-ge p2, v6, :cond_4

    .line 246
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_3

    shl-long/2addr v0, p2

    goto :goto_0

    :cond_3
    shl-long/2addr v0, p2

    neg-long v0, v0

    goto :goto_0

    :cond_4
    move-wide v0, v2

    .line 248
    goto :goto_0

    :cond_5
    move-wide v6, v0

    move-wide v4, p0

    .line 255
    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 261
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_6

    move-wide v2, v0

    :goto_2
    mul-long/2addr v6, v2

    .line 262
    mul-long/2addr v4, v4

    .line 254
    shr-int/lit8 p2, p2, 0x1

    goto :goto_1

    :pswitch_5
    move-wide v0, v6

    .line 257
    goto :goto_0

    .line 259
    :pswitch_6
    mul-long v0, v6, v4

    goto :goto_0

    :cond_6
    move-wide v2, v4

    .line 261
    goto :goto_2

    .line 235
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static sqrt(JLjava/math/RoundingMode;)J
    .locals 10
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "TODO"
    .end annotation

    .prologue
    const-wide/16 v8, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    const-string v2, "x"

    invoke-static {v2, p0, p1}, Llm;->b(Ljava/lang/String;J)J

    .line 278
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->b(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    long-to-int v0, p0

    invoke-static {v0, p2}, Lcom/google/common/math/IntMath;->sqrt(ILjava/math/RoundingMode;)I

    move-result v0

    int-to-long v0, v0

    .line 333
    :goto_0
    return-wide v0

    .line 296
    :cond_0
    long-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 298
    mul-long v4, v2, v2

    .line 301
    sget-object v6, Lcom/google/common/math/LongMath$1;->a:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 335
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :pswitch_0
    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    :goto_1
    invoke-static {v0}, Llm;->a(Z)V

    move-wide v0, v2

    .line 304
    goto :goto_0

    :cond_1
    move v0, v1

    .line 303
    goto :goto_1

    .line 307
    :pswitch_1
    cmp-long v0, p0, v4

    if-gez v0, :cond_2

    .line 308
    sub-long v0, v2, v8

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 310
    goto :goto_0

    .line 313
    :pswitch_2
    cmp-long v0, p0, v4

    if-lez v0, :cond_3

    .line 314
    add-long v0, v2, v8

    goto :goto_0

    :cond_3
    move-wide v0, v2

    .line 316
    goto :goto_0

    .line 320
    :pswitch_3
    cmp-long v4, p0, v4

    if-gez v4, :cond_4

    :goto_2
    int-to-long v0, v0

    sub-long v0, v2, v0

    .line 321
    mul-long v2, v0, v0

    add-long/2addr v2, v0

    .line 333
    invoke-static {v2, v3, p0, p1}, Lcom/google/common/math/LongMath;->a(JJ)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 320
    goto :goto_2

    .line 301
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
