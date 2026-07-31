.class public final Lcom/google/common/primitives/Ints;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Ints$a;,
        Lcom/google/common/primitives/Ints$c;,
        Lcom/google/common/primitives/Ints$b;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static final BYTES:I = 0x4

.field public static final MAX_POWER_OF_TWO:I = 0x40000000


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([IIII)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->c([IIII)I

    move-result v0

    return v0
.end method

.method private static a([II)[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    new-array v0, p1, [I

    .line 403
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    return-object v0
.end method

.method public static varargs asList([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    array-length v0, p0

    if-nez v0, :cond_0

    .line 512
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 514
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Ints$a;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Ints$a;-><init>([I)V

    goto :goto_0
.end method

.method static synthetic b([IIII)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Ints;->d([IIII)I

    move-result v0

    return v0
.end method

.method private static c([IIII)I
    .locals 2

    .prologue
    .line 166
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 167
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 171
    :goto_1
    return v0

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static checkedCast(J)I
    .locals 4

    .prologue
    .line 91
    long-to-int v0, p0

    .line 92
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 94
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

    .line 96
    :cond_0
    return v0
.end method

.method public static compare(II)I
    .locals 1

    .prologue
    .line 130
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[I)[I
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 275
    .line 276
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 277
    array-length v4, v4

    add-int/2addr v2, v4

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    new-array v3, v2, [I

    .line 281
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 282
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    array-length v5, v5

    add-int/2addr v2, v5

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 285
    :cond_1
    return-object v3
.end method

.method public static contains([II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 143
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p0, v1

    .line 144
    if-ne v3, p1, :cond_1

    .line 145
    const/4 v0, 0x1

    .line 148
    :cond_0
    return v0

    .line 143
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static d([IIII)I
    .locals 2

    .prologue
    .line 219
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 220
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 224
    :goto_1
    return v0

    .line 219
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static ensureCapacity([III)[I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 394
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 395
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    .line 396
    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->a([II)[I

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 393
    goto :goto_0

    :cond_2
    move v0, v2

    .line 394
    goto :goto_1
.end method

.method public static fromByteArray([B)I
    .locals 8
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    array-length v0, p0

    if-lt v0, v7, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "array too small: %s < %s"

    new-array v4, v6, [Ljava/lang/Object;

    array-length v5, p0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 324
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Ints;->fromBytes(BBBB)I

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 323
    goto :goto_0
.end method

.method public static fromBytes(BBBB)I
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 336
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static hashCode(I)I
    .locals 0

    .prologue
    .line 79
    return p0
.end method

.method public static indexOf([II)I
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->c([IIII)I

    move-result v0

    return v0
.end method

.method public static indexOf([I[I)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 186
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    array-length v0, p1

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 193
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 194
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 195
    add-int v3, v0, v2

    aget v3, p0, v3

    aget v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 199
    goto :goto_0

    .line 201
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 417
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    array-length v0, p1

    if-nez v0, :cond_0

    .line 419
    const-string v0, ""

    .line 428
    :goto_0
    return-object v0

    .line 423
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 424
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 426
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([II)I
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Ints;->d([IIII)I

    move-result v0

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 447
    sget-object v0, Lcom/google/common/primitives/Ints$c;->a:Lcom/google/common/primitives/Ints$c;

    return-object v0
.end method

.method public static varargs max([I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 256
    aget v0, p0, v2

    .line 257
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 258
    aget v2, p0, v1

    if-le v2, v0, :cond_0

    .line 259
    aget v0, p0, v1

    .line 257
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 255
    goto :goto_0

    .line 262
    :cond_2
    return v0
.end method

.method public static varargs min([I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 237
    aget v0, p0, v2

    .line 238
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 239
    aget v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 240
    aget v0, p0, v1

    .line 238
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 236
    goto :goto_0

    .line 243
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)I
    .locals 2

    .prologue
    .line 108
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 109
    const v0, 0x7fffffff

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 112
    const/high16 v0, -0x80000000

    goto :goto_0

    .line 114
    :cond_1
    long-to-int v0, p0

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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    sget-object v0, Lcom/google/common/primitives/Ints$b;->a:Lcom/google/common/primitives/Ints$b;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 482
    instance-of v0, p0, Lcom/google/common/primitives/Ints$a;

    if-eqz v0, :cond_0

    .line 483
    check-cast p0, Lcom/google/common/primitives/Ints$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/Ints$a;->a()[I

    move-result-object v0

    .line 493
    :goto_0
    return-object v0

    .line 486
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 487
    array-length v4, v3

    .line 488
    new-array v1, v4, [I

    .line 489
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 491
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    aput v0, v1, v2

    .line 489
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 493
    goto :goto_0
.end method

.method public static toByteArray(I)[B
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 301
    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 674
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Ints;->tryParse(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 6
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 705
    invoke-static {p0, p1}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 707
    :cond_0
    const/4 v0, 0x0

    .line 709
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method
