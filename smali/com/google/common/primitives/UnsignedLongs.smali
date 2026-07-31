.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$a;
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = -0x1L

.field private static final a:[J

.field private static final b:[I

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/16 v1, 0x25

    .line 397
    new-array v0, v1, [J

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    .line 398
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    .line 399
    new-array v0, v1, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    .line 402
    new-instance v1, Ljava/math/BigInteger;

    const-string v0, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 403
    const/4 v0, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    .line 404
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 405
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    int-to-long v4, v0

    invoke-static {v6, v7, v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v4

    long-to-int v3, v4

    aput v3, v2, v0

    .line 406
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)J
    .locals 2

    .prologue
    .line 65
    const-wide/high16 v0, -0x8000000000000000L

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method private static a(JII)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 334
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    .line 335
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    move v0, v1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->a:[J

    aget-wide v2, v2, p3

    cmp-long v2, p0, v2

    if-gtz v2, :cond_0

    .line 342
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->b:[I

    aget v2, v2, p3

    if-gt p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static compare(JJ)I
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static decode(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 279
    invoke-static {p0}, Lln;->a(Ljava/lang/String;)Lln;

    move-result-object v0

    .line 282
    :try_start_0
    iget-object v1, v0, Lln;->a:Ljava/lang/String;

    iget v0, v0, Lln;->b:I

    invoke-static {v1, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    .line 283
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 284
    new-instance v2, Ljava/lang/NumberFormatException;

    const-string v3, "Error parsing value: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 287
    throw v2

    .line 284
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static divide(JJ)J
    .locals 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    .line 191
    cmp-long v1, p2, v2

    if-gez v1, :cond_1

    .line 192
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    move-wide v0, v2

    .line 212
    :goto_0
    return-wide v0

    .line 195
    :cond_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 200
    :cond_1
    cmp-long v1, p0, v2

    if-ltz v1, :cond_2

    .line 201
    div-long v0, p0, p2

    goto :goto_0

    .line 210
    :cond_2
    ushr-long v2, p0, v0

    div-long/2addr v2, p2

    shl-long/2addr v2, v0

    .line 211
    mul-long v4, v2, p2

    sub-long v4, p0, v4

    .line 212
    invoke-static {v4, v5, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v1

    if-ltz v1, :cond_3

    :goto_1
    int-to-long v0, v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static varargs join(Ljava/lang/String;[J)Ljava/lang/String;
    .locals 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    array-length v0, p1

    if-nez v0, :cond_0

    .line 136
    const-string v0, ""

    .line 145
    :goto_0
    return-object v0

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x5

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 141
    const/4 v0, 0x0

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 143
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v4, p1, v0

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$a;->a:Lcom/google/common/primitives/UnsignedLongs$a;

    return-object v0
.end method

.method public static varargs max([J)J
    .locals 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 114
    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v2

    .line 115
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 116
    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v4

    .line 117
    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    move-wide v2, v4

    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 113
    goto :goto_0

    .line 121
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static varargs min([J)J
    .locals 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 93
    aget-wide v2, p0, v2

    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v2

    .line 94
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 95
    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v4

    .line 96
    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    move-wide v2, v4

    .line 94
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    .line 100
    :cond_2
    invoke-static {v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 259
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseUnsignedLong(Ljava/lang/String;I)J
    .locals 8

    .prologue
    .line 303
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_0
    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    const/16 v0, 0x24

    if-le p1, v0, :cond_2

    .line 308
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "illegal radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_2
    sget-object v0, Lcom/google/common/primitives/UnsignedLongs;->c:[I

    aget v0, v0, p1

    add-int/lit8 v1, v0, -0x1

    .line 312
    const-wide/16 v2, 0x0

    .line 313
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 314
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 315
    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 316
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_3
    if-le v0, v1, :cond_5

    invoke-static {v2, v3, v4, p1}, Lcom/google/common/primitives/UnsignedLongs;->a(JII)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 319
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Too large for unsigned long: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 321
    :cond_5
    int-to-long v6, p1

    mul-long/2addr v2, v6

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_6
    return-wide v2
.end method

.method public static remainder(JJ)J
    .locals 6
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const-wide/16 v0, 0x0

    .line 226
    cmp-long v2, p2, v0

    if-gez v2, :cond_1

    .line 227
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    if-gez v0, :cond_0

    .line 247
    :goto_0
    return-wide p0

    .line 230
    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    .line 235
    :cond_1
    cmp-long v2, p0, v0

    if-ltz v2, :cond_2

    .line 236
    rem-long/2addr p0, p2

    goto :goto_0

    .line 245
    :cond_2
    ushr-long v2, p0, v4

    div-long/2addr v2, p2

    shl-long/2addr v2, v4

    .line 246
    mul-long/2addr v2, p2

    sub-long v2, p0, v2

    .line 247
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-ltz v4, :cond_3

    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    :cond_3
    move-wide p2, v0

    goto :goto_1
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 354
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 10
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 368
    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/16 v0, 0x24

    if-gt p2, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    new-array v1, v1, [Ljava/lang/Object;

    .line 371
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 368
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 372
    cmp-long v0, p0, v8

    if-nez v0, :cond_1

    .line 374
    const-string v0, "0"

    .line 392
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 368
    goto :goto_0

    .line 376
    :cond_1
    const/16 v0, 0x40

    new-array v4, v0, [C

    .line 377
    array-length v0, v4

    .line 378
    cmp-long v1, p0, v8

    if-gez v1, :cond_3

    .line 381
    int-to-long v2, p2

    invoke-static {p0, p1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v2

    .line 382
    int-to-long v6, p2

    mul-long/2addr v6, v2

    sub-long v6, p0, v6

    .line 383
    add-int/lit8 v0, v0, -0x1

    long-to-int v1, v6

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v4, v0

    move v1, v0

    move-wide p0, v2

    .line 387
    :goto_2
    cmp-long v0, p0, v8

    if-lez v0, :cond_2

    .line 388
    add-int/lit8 v0, v1, -0x1

    int-to-long v2, p2

    rem-long v2, p0, v2

    long-to-int v1, v2

    invoke-static {v1, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    aput-char v1, v4, v0

    .line 389
    int-to-long v2, p2

    div-long/2addr p0, v2

    move v1, v0

    goto :goto_2

    .line 392
    :cond_2
    new-instance v0, Ljava/lang/String;

    array-length v2, v4

    sub-int/2addr v2, v1

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method
