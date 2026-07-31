.class public final Lcom/google/common/primitives/Shorts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Shorts$b;,
        Lcom/google/common/primitives/Shorts$a;,
        Lcom/google/common/primitives/Shorts$c;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static final BYTES:I = 0x2

.field public static final MAX_POWER_OF_TWO:S = 0x4000s


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([SSII)I
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->c([SSII)I

    move-result v0

    return v0
.end method

.method private static a([SI)[S
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    new-array v0, p1, [S

    .line 401
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    return-object v0
.end method

.method public static varargs asList([S)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([S)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    array-length v0, p0

    if-nez v0, :cond_0

    .line 511
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Shorts$b;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Shorts$b;-><init>([S)V

    goto :goto_0
.end method

.method static synthetic b([SSII)I
    .locals 1

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Shorts;->d([SSII)I

    move-result v0

    return v0
.end method

.method private static c([SSII)I
    .locals 2

    .prologue
    .line 165
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 166
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 170
    :goto_1
    return v0

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static checkedCast(J)S
    .locals 4

    .prologue
    .line 90
    long-to-int v0, p0

    int-to-short v0, v0

    .line 91
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return v0
.end method

.method public static compare(SS)I
    .locals 1

    .prologue
    .line 129
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[S)[S
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 274
    .line 275
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 276
    array-length v4, v4

    add-int/2addr v2, v4

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_0
    new-array v3, v2, [S

    .line 280
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 281
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 282
    array-length v5, v5

    add-int/2addr v2, v5

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 284
    :cond_1
    return-object v3
.end method

.method public static contains([SS)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 142
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-short v3, p0, v1

    .line 143
    if-ne v3, p1, :cond_1

    .line 144
    const/4 v0, 0x1

    .line 147
    :cond_0
    return v0

    .line 142
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static d([SSII)I
    .locals 2

    .prologue
    .line 218
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 219
    aget-short v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 223
    :goto_1
    return v0

    .line 218
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static ensureCapacity([SII)[S
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 391
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 392
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 393
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    .line 394
    invoke-static {p0, v0}, Lcom/google/common/primitives/Shorts;->a([SI)[S

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 391
    goto :goto_0

    :cond_2
    move v0, v2

    .line 392
    goto :goto_1
.end method

.method public static fromByteArray([B)S
    .locals 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 321
    array-length v0, p0

    if-lt v0, v6, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Shorts;->fromBytes(BB)S

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 321
    goto :goto_0
.end method

.method public static fromBytes(BB)S
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 334
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static hashCode(S)I
    .locals 0

    .prologue
    .line 77
    return p0
.end method

.method public static indexOf([SS)I
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->c([SSII)I

    move-result v0

    return v0
.end method

.method public static indexOf([S[S)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 185
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    array-length v0, p1

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 192
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 193
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 194
    add-int v3, v0, v2

    aget-short v3, p0, v3

    aget-short v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 198
    goto :goto_0

    .line 200
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[S)Ljava/lang/String;
    .locals 4

    .prologue
    .line 415
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    array-length v0, p1

    if-nez v0, :cond_0

    .line 417
    const-string v0, ""

    .line 426
    :goto_0
    return-object v0

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 422
    const/4 v0, 0x0

    aget-short v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 424
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 426
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([SS)I
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Shorts;->d([SSII)I

    move-result v0

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[S>;"
        }
    .end annotation

    .prologue
    .line 446
    sget-object v0, Lcom/google/common/primitives/Shorts$a;->a:Lcom/google/common/primitives/Shorts$a;

    return-object v0
.end method

.method public static varargs max([S)S
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 255
    aget-short v0, p0, v2

    .line 256
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 257
    aget-short v2, p0, v1

    if-le v2, v0, :cond_0

    .line 258
    aget-short v0, p0, v1

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 254
    goto :goto_0

    .line 261
    :cond_2
    return v0
.end method

.method public static varargs min([S)S
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 236
    aget-short v0, p0, v2

    .line 237
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 238
    aget-short v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 239
    aget-short v0, p0, v1

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 235
    goto :goto_0

    .line 242
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)S
    .locals 2

    .prologue
    .line 107
    const-wide/16 v0, 0x7fff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 108
    const/16 v0, 0x7fff

    .line 113
    :goto_0
    return v0

    .line 110
    :cond_0
    const-wide/16 v0, -0x8000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 111
    const/16 v0, -0x8000

    goto :goto_0

    .line 113
    :cond_1
    long-to-int v0, p0

    int-to-short v0, v0

    goto :goto_0
.end method

.method public static stringConverter()Lcom/google/common/base/Converter;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Converter",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    sget-object v0, Lcom/google/common/primitives/Shorts$c;->a:Lcom/google/common/primitives/Shorts$c;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[S
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[S"
        }
    .end annotation

    .prologue
    .line 481
    instance-of v0, p0, Lcom/google/common/primitives/Shorts$b;

    if-eqz v0, :cond_0

    .line 482
    check-cast p0, Lcom/google/common/primitives/Shorts$b;

    invoke-virtual {p0}, Lcom/google/common/primitives/Shorts$b;->a()[S

    move-result-object v0

    .line 492
    :goto_0
    return-object v0

    .line 485
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 486
    array-length v4, v3

    .line 487
    new-array v1, v4, [S

    .line 488
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 490
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    aput-short v0, v1, v2

    .line 488
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 492
    goto :goto_0
.end method

.method public static toByteArray(S)[B
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method
