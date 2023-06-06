.class public final Lcom/google/common/hash/Hashing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/Hashing$f;,
        Lcom/google/common/hash/Hashing$c;,
        Lcom/google/common/hash/Hashing$b;,
        Lcom/google/common/hash/Hashing$a;,
        Lcom/google/common/hash/Hashing$d;,
        Lcom/google/common/hash/Hashing$e;,
        Lcom/google/common/hash/Hashing$m;,
        Lcom/google/common/hash/Hashing$l;,
        Lcom/google/common/hash/Hashing$k;,
        Lcom/google/common/hash/Hashing$j;,
        Lcom/google/common/hash/Hashing$g;,
        Lcom/google/common/hash/Hashing$n;,
        Lcom/google/common/hash/Hashing$h;,
        Lcom/google/common/hash/Hashing$i;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/Hashing;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/google/common/hash/Hashing;->a:I

    return v0
.end method

.method static a(I)I
    .locals 2

    .prologue
    .line 462
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Number of bits must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 463
    add-int/lit8 v0, p0, 0x1f

    and-int/lit8 v0, v0, -0x20

    return v0

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/hash/Hashing$b;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/google/common/hash/Hashing;->b(Lcom/google/common/hash/Hashing$b;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;

    move-result-object v0

    return-object v0
.end method

.method public static adler32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/google/common/hash/Hashing$a;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method private static b(Lcom/google/common/hash/Hashing$b;Ljava/lang/String;)Lcom/google/common/hash/HashFunction;
    .locals 2

    .prologue
    .line 297
    new-instance v0, Lla;

    invoke-static {p0}, Lcom/google/common/hash/Hashing$b;->a(Lcom/google/common/hash/Hashing$b;)I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lla;-><init>(Lcom/google/common/base/Supplier;ILjava/lang/String;)V

    return-object v0
.end method

.method public static combineOrdered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 419
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Must be at least 1 hash code to combine."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 420
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    .line 421
    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    .line 422
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 423
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 424
    array-length v0, v4

    array-length v5, v2

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 426
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 427
    aget-byte v5, v2, v0

    mul-int/lit8 v5, v5, 0x25

    aget-byte v6, v4, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 424
    goto :goto_0

    .line 430
    :cond_2
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->a([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static combineUnordered(Ljava/lang/Iterable;)Lcom/google/common/hash/HashCode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashCode;",
            ">;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 444
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Must be at least 1 hash code to combine."

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 446
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    .line 447
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashCode;

    .line 448
    invoke-virtual {v0}, Lcom/google/common/hash/HashCode;->asBytes()[B

    move-result-object v4

    .line 449
    array-length v0, v4

    array-length v5, v2

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v5, "All hashcodes must have the same bit length."

    invoke-static {v0, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 451
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 452
    aget-byte v5, v2, v0

    aget-byte v6, v4, v0

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v0

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 449
    goto :goto_0

    .line 455
    :cond_2
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->a([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public static varargs concatenating(Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/HashFunction;[Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashFunction;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 479
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 480
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    array-length v3, p2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p2, v0

    .line 483
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 485
    :cond_0
    new-instance v3, Lcom/google/common/hash/Hashing$c;

    new-array v0, v1, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/HashFunction;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1}, Lcom/google/common/hash/Hashing$c;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v3
.end method

.method public static concatenating(Ljava/lang/Iterable;)Lcom/google/common/hash/HashFunction;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/hash/HashFunction;",
            ">;)",
            "Lcom/google/common/hash/HashFunction;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 502
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/hash/HashFunction;

    .line 503
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v4, "number of hash functions (%s) must be > 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 506
    new-instance v1, Lcom/google/common/hash/Hashing$c;

    new-array v0, v2, [Lcom/google/common/hash/HashFunction;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/HashFunction;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/common/hash/Hashing$c;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    return-object v1

    :cond_1
    move v0, v2

    .line 505
    goto :goto_1
.end method

.method public static consistentHash(JI)I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    if-lez p2, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "buckets must be positive: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    new-instance v1, Lcom/google/common/hash/Hashing$f;

    invoke-direct {v1, p0, p1}, Lcom/google/common/hash/Hashing$f;-><init>(J)V

    .line 398
    :goto_1
    add-int/lit8 v0, v2, 0x1

    int-to-double v4, v0

    invoke-virtual {v1}, Lcom/google/common/hash/Hashing$f;->a()D

    move-result-wide v6

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 399
    if-ltz v0, :cond_1

    if-ge v0, p2, :cond_1

    move v2, v0

    .line 400
    goto :goto_1

    :cond_0
    move v0, v2

    .line 391
    goto :goto_0

    .line 402
    :cond_1
    return v2
.end method

.method public static consistentHash(Lcom/google/common/hash/HashCode;I)I
    .locals 2

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/google/common/hash/HashCode;->padToLong()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/hash/Hashing;->consistentHash(JI)I

    move-result v0

    return v0
.end method

.method public static crc32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/google/common/hash/Hashing$d;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static crc32c()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/google/common/hash/Hashing$e;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static goodFastHash(I)Lcom/google/common/hash/HashFunction;
    .locals 5

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/common/hash/Hashing;->a(I)I

    move-result v0

    .line 68
    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 69
    sget-object v0, Lcom/google/common/hash/Hashing$i;->b:Lcom/google/common/hash/HashFunction;

    .line 84
    :goto_0
    return-object v0

    .line 71
    :cond_0
    const/16 v1, 0x80

    if-gt v0, v1, :cond_1

    .line 72
    sget-object v0, Lcom/google/common/hash/Hashing$h;->b:Lcom/google/common/hash/HashFunction;

    goto :goto_0

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x7f

    div-int/lit16 v2, v0, 0x80

    .line 77
    new-array v3, v2, [Lcom/google/common/hash/HashFunction;

    .line 78
    const/4 v0, 0x0

    sget-object v1, Lcom/google/common/hash/Hashing$h;->b:Lcom/google/common/hash/HashFunction;

    aput-object v1, v3, v0

    .line 79
    sget v1, Lcom/google/common/hash/Hashing;->a:I

    .line 80
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v2, :cond_2

    .line 81
    const v4, 0x596f0ddf

    add-int/2addr v1, v4

    .line 82
    invoke-static {v1}, Lcom/google/common/hash/Hashing;->murmur3_128(I)Lcom/google/common/hash/HashFunction;

    move-result-object v4

    aput-object v4, v3, v0

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    :cond_2
    new-instance v0, Lcom/google/common/hash/Hashing$c;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lcom/google/common/hash/Hashing$c;-><init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V

    goto :goto_0
.end method

.method public static md5()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 187
    sget-object v0, Lcom/google/common/hash/Hashing$g;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/common/hash/Hashing$h;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_128(I)Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 133
    new-instance v0, Lld;

    invoke-direct {v0, p0}, Lld;-><init>(I)V

    return-object v0
.end method

.method public static murmur3_32()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/google/common/hash/Hashing$i;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static murmur3_32(I)Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lle;

    invoke-direct {v0, p0}, Lle;-><init>(I)V

    return-object v0
.end method

.method public static sha1()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/google/common/hash/Hashing$j;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha256()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/google/common/hash/Hashing$k;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha384()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lcom/google/common/hash/Hashing$l;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sha512()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/common/hash/Hashing$m;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24()Lcom/google/common/hash/HashFunction;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/google/common/hash/Hashing$n;->a:Lcom/google/common/hash/HashFunction;

    return-object v0
.end method

.method public static sipHash24(JJ)Lcom/google/common/hash/HashFunction;
    .locals 8

    .prologue
    .line 179
    new-instance v1, Llf;

    const/4 v2, 0x2

    const/4 v3, 0x4

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Llf;-><init>(IIJJ)V

    return-object v1
.end method
