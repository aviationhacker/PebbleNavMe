.class public final Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Longs$b;,
        Lcom/google/common/primitives/Longs$a;,
        Lcom/google/common/primitives/Longs$c;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field public static final BYTES:I = 0x8

.field public static final MAX_POWER_OF_TWO:J = 0x4000000000000000L

.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    invoke-static {}, Lcom/google/common/primitives/Longs;->a()[B

    move-result-object v0

    sput-object v0, Lcom/google/common/primitives/Longs;->a:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(C)I
    .locals 1

    .prologue
    .line 333
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/Longs;->a:[B

    aget-byte v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic a([JJII)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->c([JJII)I

    move-result v0

    return v0
.end method

.method private static a()[B
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 320
    const/16 v1, 0x80

    new-array v2, v1, [B

    .line 321
    const/4 v1, -0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    .line 322
    :goto_0
    const/16 v3, 0x9

    if-gt v1, v3, :cond_0

    .line 323
    add-int/lit8 v3, v1, 0x30

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 322
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    :goto_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_1

    .line 326
    add-int/lit8 v1, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 327
    add-int/lit8 v1, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_1
    return-object v2
.end method

.method private static a([JI)[J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 493
    new-array v0, p1, [J

    .line 494
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    return-object v0
.end method

.method public static varargs asList([J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 603
    array-length v0, p0

    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 606
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Longs$b;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Longs$b;-><init>([J)V

    goto :goto_0
.end method

.method static synthetic b([JJII)I
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Longs;->d([JJII)I

    move-result v0

    return v0
.end method

.method private static c([JJII)I
    .locals 5

    .prologue
    .line 135
    move v0, p3

    :goto_0
    if-ge v0, p4, :cond_1

    .line 136
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 140
    :goto_1
    return v0

    .line 135
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static compare(JJ)I
    .locals 2

    .prologue
    .line 99
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, p0, p2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs concat([[J)[J
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 244
    .line 245
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 246
    array-length v4, v4

    add-int/2addr v2, v4

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    new-array v3, v2, [J

    .line 250
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 251
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    array-length v5, v5

    add-int/2addr v2, v5

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 254
    :cond_1
    return-object v3
.end method

.method public static contains([JJ)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 112
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, p0, v1

    .line 113
    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 114
    const/4 v0, 0x1

    .line 117
    :cond_0
    return v0

    .line 112
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static d([JJII)I
    .locals 5

    .prologue
    .line 188
    add-int/lit8 v0, p4, -0x1

    :goto_0
    if-lt v0, p3, :cond_1

    .line 189
    aget-wide v2, p0, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 193
    :goto_1
    return v0

    .line 188
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static ensureCapacity([JII)[J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 485
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 486
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    .line 487
    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->a([JI)[J

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 484
    goto :goto_0

    :cond_2
    move v0, v2

    .line 485
    goto :goto_1
.end method

.method public static fromByteArray([B)J
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
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

    .line 294
    aget-byte v0, p0, v2

    aget-byte v1, p0, v1

    aget-byte v2, p0, v6

    const/4 v3, 0x3

    aget-byte v3, p0, v3

    const/4 v4, 0x4

    aget-byte v4, p0, v4

    const/4 v5, 0x5

    aget-byte v5, p0, v5

    const/4 v6, 0x6

    aget-byte v6, p0, v6

    const/4 v7, 0x7

    aget-byte v7, p0, v7

    invoke-static/range {v0 .. v7}, Lcom/google/common/primitives/Longs;->fromBytes(BBBBBBBB)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0
.end method

.method public static fromBytes(BBBBBBBB)J
    .locals 8

    .prologue
    const-wide/16 v6, 0xff

    .line 307
    int-to-long v0, p0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p3

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p4

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p5

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p6

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p7

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static hashCode(J)I
    .locals 2

    .prologue
    .line 83
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static indexOf([JJ)I
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->c([JJII)I

    move-result v0

    return v0
.end method

.method public static indexOf([J[J)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    array-length v0, p1

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 162
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 163
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 164
    add-int v3, v0, v2

    aget-wide v4, p0, v3

    aget-wide v6, p1, v2

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 168
    goto :goto_0

    .line 170
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6

    .prologue
    .line 508
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    array-length v0, p1

    if-nez v0, :cond_0

    .line 510
    const-string v0, ""

    .line 519
    :goto_0
    return-object v0

    .line 514
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 515
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 516
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 517
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 519
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([JJ)I
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Longs;->d([JJII)I

    move-result v0

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[J>;"
        }
    .end annotation

    .prologue
    .line 539
    sget-object v0, Lcom/google/common/primitives/Longs$a;->a:Lcom/google/common/primitives/Longs$a;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 225
    aget-wide v2, p0, v2

    .line 226
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 227
    aget-wide v4, p0, v1

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    .line 228
    aget-wide v2, p0, v1

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 224
    goto :goto_0

    .line 231
    :cond_2
    return-wide v2
.end method

.method public static varargs min([J)J
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 205
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 206
    aget-wide v2, p0, v2

    .line 207
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 208
    aget-wide v4, p0, v1

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 209
    aget-wide v2, p0, v1

    .line 207
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 205
    goto :goto_0

    .line 212
    :cond_2
    return-wide v2
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    sget-object v0, Lcom/google/common/primitives/Longs$c;->a:Lcom/google/common/primitives/Longs$c;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 574
    instance-of v0, p0, Lcom/google/common/primitives/Longs$b;

    if-eqz v0, :cond_0

    .line 575
    check-cast p0, Lcom/google/common/primitives/Longs$b;

    invoke-virtual {p0}, Lcom/google/common/primitives/Longs$b;->a()[J

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    .line 578
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 579
    array-length v4, v3

    .line 580
    new-array v1, v4, [J

    .line 581
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 583
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v2

    .line 581
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 585
    goto :goto_0
.end method

.method public static toByteArray(J)[B
    .locals 6

    .prologue
    const/16 v4, 0x8

    .line 271
    new-array v1, v4, [B

    .line 272
    const/4 v0, 0x7

    :goto_0
    if-ltz v0, :cond_0

    .line 273
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 274
    shr-long/2addr p0, v4

    .line 272
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 276
    :cond_0
    return-object v1
.end method

.method public static tryParse(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 360
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/Longs;->tryParse(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static tryParse(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 12
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v10, -0x8000000000000000L

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 390
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 427
    :goto_0
    return-object v0

    .line 393
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x24

    if-le p1, v0, :cond_2

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x41

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "radix must be between MIN_RADIX and MAX_RADIX but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_3

    move v5, v1

    .line 398
    :goto_1
    if-eqz v5, :cond_4

    move v0, v1

    .line 399
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    move-object v0, v4

    .line 400
    goto :goto_0

    :cond_3
    move v5, v2

    .line 397
    goto :goto_1

    :cond_4
    move v0, v2

    .line 398
    goto :goto_2

    .line 402
    :cond_5
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/Longs;->a(C)I

    move-result v0

    .line 403
    if-ltz v0, :cond_6

    if-lt v0, p1, :cond_7

    :cond_6
    move-object v0, v4

    .line 404
    goto :goto_0

    .line 406
    :cond_7
    neg-int v0, v0

    int-to-long v0, v0

    .line 408
    int-to-long v6, p1

    div-long v6, v10, v6

    .line 410
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 411
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/Longs;->a(C)I

    move-result v2

    .line 412
    if-ltz v2, :cond_8

    if-ge v2, p1, :cond_8

    cmp-long v8, v0, v6

    if-gez v8, :cond_9

    :cond_8
    move-object v0, v4

    .line 413
    goto :goto_0

    .line 415
    :cond_9
    int-to-long v8, p1

    mul-long/2addr v0, v8

    .line 416
    int-to-long v8, v2

    add-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-gez v8, :cond_a

    move-object v0, v4

    .line 417
    goto :goto_0

    .line 419
    :cond_a
    int-to-long v8, v2

    sub-long/2addr v0, v8

    move v2, v3

    goto :goto_3

    .line 422
    :cond_b
    if-eqz v5, :cond_c

    .line 423
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 424
    :cond_c
    cmp-long v2, v0, v10

    if-nez v2, :cond_d

    move-object v0, v4

    .line 425
    goto/16 :goto_0

    .line 427
    :cond_d
    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0
.end method
