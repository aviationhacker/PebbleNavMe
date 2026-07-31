.class public final Lcom/google/common/primitives/UnsignedBytes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedBytes$a;
    }
.end annotation


# static fields
.field public static final MAX_POWER_OF_TWO:B = -0x80t

.field public static final MAX_VALUE:B = -0x1t


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/util/Comparator;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 292
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$a$a;->a:Lcom/google/common/primitives/UnsignedBytes$a$a;

    return-object v0
.end method

.method public static checkedCast(J)B
    .locals 4

    .prologue
    .line 92
    const/16 v0, 0x8

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

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
    long-to-int v0, p0

    int-to-byte v0, v0

    return v0
.end method

.method public static compare(BB)I
    .locals 2
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public static varargs join(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 255
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    array-length v0, p1

    if-nez v0, :cond_0

    .line 257
    const-string v0, ""

    .line 266
    :goto_0
    return-object v0

    .line 261
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    mul-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 262
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 264
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedBytes;->toString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
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
            "<[B>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 287
    sget-object v0, Lcom/google/common/primitives/UnsignedBytes$a;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method public static varargs max([B)B
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 164
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 165
    aget-byte v0, p0, v2

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 166
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 167
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 168
    if-le v2, v0, :cond_0

    move v0, v2

    .line 166
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 164
    goto :goto_0

    .line 172
    :cond_2
    int-to-byte v0, v0

    return v0
.end method

.method public static varargs min([B)B
    .locals 3
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    array-length v0, p0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 144
    aget-byte v0, p0, v2

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    .line 145
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 146
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    .line 147
    if-ge v2, v0, :cond_0

    move v0, v2

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 143
    goto :goto_0

    .line 151
    :cond_2
    int-to-byte v0, v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;)B
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 218
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->parseUnsignedByte(Ljava/lang/String;I)B

    move-result v0

    return v0
.end method

.method public static parseUnsignedByte(Ljava/lang/String;I)B
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 235
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 237
    shr-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_0

    .line 238
    int-to-byte v0, v0

    return v0

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static saturatedCast(J)B
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 108
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 114
    :cond_1
    long-to-int v0, p0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public static toInt(B)I
    .locals 1
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 78
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static toString(B)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 183
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedBytes;->toString(BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(BI)Ljava/lang/String;
    .locals 5
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/16 v0, 0x24

    if-gt p1, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    new-array v1, v1, [Ljava/lang/Object;

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 199
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 199
    goto :goto_0
.end method
