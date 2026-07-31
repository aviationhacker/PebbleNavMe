.class final Lcom/google/common/hash/Hashing$c;
.super Lkx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final b:I


# direct methods
.method private varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 513
    invoke-direct {p0, p1}, Lkx;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 515
    array-length v5, p1

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v6, p1, v3

    .line 516
    invoke-interface {v6}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v4

    add-int/2addr v4, v0

    .line 518
    invoke-interface {v6}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v0

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    const-string v7, "the number of bits (%s) in hashFunction (%s) must be divisible by 8"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 520
    invoke-interface {v6}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v6, v8, v1

    .line 517
    invoke-static {v0, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 515
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    .line 518
    goto :goto_1

    .line 523
    :cond_1
    iput v0, p0, Lcom/google/common/hash/Hashing$c;->b:I

    .line 524
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lcom/google/common/hash/Hashing$c;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-void
.end method


# virtual methods
.method a([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 528
    iget v1, p0, Lcom/google/common/hash/Hashing$c;->b:I

    div-int/lit8 v1, v1, 0x8

    new-array v2, v1, [B

    .line 530
    array-length v3, p1

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p1, v0

    .line 531
    invoke-interface {v4}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v4

    .line 532
    invoke-virtual {v4}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v2, v1, v5}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v4

    add-int/2addr v1, v4

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {v2}, Lcom/google/common/hash/HashCode;->a([B)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public bits()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/google/common/hash/Hashing$c;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 544
    instance-of v0, p1, Lcom/google/common/hash/Hashing$c;

    if-eqz v0, :cond_0

    .line 545
    check-cast p1, Lcom/google/common/hash/Hashing$c;

    .line 546
    iget-object v0, p0, Lcom/google/common/hash/Hashing$c;->a:[Lcom/google/common/hash/HashFunction;

    iget-object v1, p1, Lcom/google/common/hash/Hashing$c;->a:[Lcom/google/common/hash/HashFunction;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    .line 548
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/common/hash/Hashing$c;->a:[Lcom/google/common/hash/HashFunction;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/common/hash/Hashing$c;->b:I

    add-int/2addr v0, v1

    return v0
.end method
