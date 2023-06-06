.class public final Lcom/google/common/primitives/Chars;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Chars$a;,
        Lcom/google/common/primitives/Chars$b;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static final BYTES:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([CCII)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->c([CCII)I

    move-result v0

    return v0
.end method

.method private static a([CI)[C
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    new-array v0, p1, [C

    .line 354
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    return-object v0
.end method

.method public static varargs asList([C)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    array-length v0, p0

    if-nez v0, :cond_0

    .line 463
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 465
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Chars$a;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Chars$a;-><init>([C)V

    goto :goto_0
.end method

.method static synthetic b([CCII)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Chars;->d([CCII)I

    move-result v0

    return v0
.end method

.method private static c([CCII)I
    .locals 2

    .prologue
    .line 159
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 160
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 164
    :goto_1
    return v0

    .line 159
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static checkedCast(J)C
    .locals 4

    .prologue
    .line 84
    long-to-int v0, p0

    int-to-char v0, v0

    .line 85
    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    .line 87
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

    .line 89
    :cond_0
    return v0
.end method

.method public static compare(CC)I
    .locals 1

    .prologue
    .line 123
    sub-int v0, p0, p1

    return v0
.end method

.method public static varargs concat([[C)[C
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 268
    .line 269
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 270
    array-length v4, v4

    add-int/2addr v2, v4

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    new-array v3, v2, [C

    .line 274
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 275
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    array-length v5, v5

    add-int/2addr v2, v5

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_1
    return-object v3
.end method

.method public static contains([CC)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 136
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, p0, v1

    .line 137
    if-ne v3, p1, :cond_1

    .line 138
    const/4 v0, 0x1

    .line 141
    :cond_0
    return v0

    .line 136
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static d([CCII)I
    .locals 2

    .prologue
    .line 212
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 213
    aget-char v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 217
    :goto_1
    return v0

    .line 212
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static ensureCapacity([CII)[C
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 345
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 346
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    .line 347
    invoke-static {p0, v0}, Lcom/google/common/primitives/Chars;->a([CI)[C

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 344
    goto :goto_0

    :cond_2
    move v0, v2

    .line 345
    goto :goto_1
.end method

.method public static fromByteArray([B)C
    .locals 7
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 311
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

    .line 312
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Chars;->fromBytes(BB)C

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 311
    goto :goto_0
.end method

.method public static fromBytes(BB)C
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 324
    shl-int/lit8 v0, p0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static hashCode(C)I
    .locals 0

    .prologue
    .line 72
    return p0
.end method

.method public static indexOf([CC)I
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->c([CCII)I

    move-result v0

    return v0
.end method

.method public static indexOf([C[C)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 179
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    array-length v0, p1

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 186
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 187
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 188
    add-int v3, v0, v2

    aget-char v3, p0, v3

    aget-char v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 187
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 192
    goto :goto_0

    .line 194
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 5

    .prologue
    .line 368
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    array-length v1, p1

    .line 370
    if-nez v1, :cond_0

    .line 371
    const-string v0, ""

    .line 379
    :goto_0
    return-object v0

    .line 374
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 375
    const/4 v0, 0x0

    aget-char v0, p1, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 377
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-char v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([CC)I
    .locals 2

    .prologue
    .line 207
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Chars;->d([CCII)I

    move-result v0

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[C>;"
        }
    .end annotation

    .prologue
    .line 399
    sget-object v0, Lcom/google/common/primitives/Chars$b;->a:Lcom/google/common/primitives/Chars$b;

    return-object v0
.end method

.method public static varargs max([C)C
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 248
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 249
    aget-char v0, p0, v2

    .line 250
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 251
    aget-char v2, p0, v1

    if-le v2, v0, :cond_0

    .line 252
    aget-char v0, p0, v1

    .line 250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 248
    goto :goto_0

    .line 255
    :cond_2
    return v0
.end method

.method public static varargs min([C)C
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 229
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 230
    aget-char v0, p0, v2

    .line 231
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 232
    aget-char v2, p0, v1

    if-ge v2, v0, :cond_0

    .line 233
    aget-char v0, p0, v1

    .line 231
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 229
    goto :goto_0

    .line 236
    :cond_2
    return v0
.end method

.method public static saturatedCast(J)C
    .locals 2

    .prologue
    .line 101
    const-wide/32 v0, 0xffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    .line 102
    const v0, 0xffff

    .line 107
    :goto_0
    return v0

    .line 104
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_1
    long-to-int v0, p0

    int-to-char v0, v0

    goto :goto_0
.end method

.method public static toArray(Ljava/util/Collection;)[C
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Character;",
            ">;)[C"
        }
    .end annotation

    .prologue
    .line 433
    instance-of v0, p0, Lcom/google/common/primitives/Chars$a;

    if-eqz v0, :cond_0

    .line 434
    check-cast p0, Lcom/google/common/primitives/Chars$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/Chars$a;->a()[C

    move-result-object v0

    .line 444
    :goto_0
    return-object v0

    .line 437
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 438
    array-length v4, v3

    .line 439
    new-array v1, v4, [C

    .line 440
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 442
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    aput-char v0, v1, v2

    .line 440
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 444
    goto :goto_0
.end method

.method public static toByteArray(C)[B
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "doesn\'t work"
    .end annotation

    .prologue
    .line 294
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
