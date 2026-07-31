.class public final Lcom/google/common/primitives/UnsignedLong;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/common/primitives/UnsignedLong;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

.field public static final ONE:Lcom/google/common/primitives/UnsignedLong;

.field public static final ZERO:Lcom/google/common/primitives/UnsignedLong;


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ZERO:Lcom/google/common/primitives/UnsignedLong;

    .line 48
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->ONE:Lcom/google/common/primitives/UnsignedLong;

    .line 49
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    sput-object v0, Lcom/google/common/primitives/UnsignedLong;->MAX_VALUE:Lcom/google/common/primitives/UnsignedLong;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    .line 55
    return-void
.end method

.method public static fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Lcom/google/common/primitives/UnsignedLong;

    invoke-direct {v0, p0, p1}, Lcom/google/common/primitives/UnsignedLong;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(J)Lcom/google/common/primitives/UnsignedLong;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 82
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/UnsignedLong;
    .locals 1

    .prologue
    .line 109
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedLong;->valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Lcom/google/common/primitives/UnsignedLong;
    .locals 2

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->parseUnsignedLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/math/BigInteger;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v3, 0x40

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "value (%s) is outside the range for an unsigned long value"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    .line 94
    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0
.end method


# virtual methods
.method public bigIntegerValue()Ljava/math/BigInteger;
    .locals 6

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 230
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 231
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 233
    :cond_0
    return-object v0
.end method

.method public compareTo(Lcom/google/common/primitives/UnsignedLong;)I
    .locals 4

    .prologue
    .line 238
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    iget-wide v2, p1, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/UnsignedLong;->compareTo(Lcom/google/common/primitives/UnsignedLong;)I

    move-result v0

    return v0
.end method

.method public dividedBy(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 164
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 6

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    .line 219
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 220
    const-wide/high16 v2, 0x43e0000000000000L    # 9.223372036854776E18

    add-double/2addr v0, v2

    .line 222
    :cond_0
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 249
    instance-of v1, p1, Lcom/google/common/primitives/UnsignedLong;

    if-eqz v1, :cond_0

    .line 250
    check-cast p1, Lcom/google/common/primitives/UnsignedLong;

    .line 251
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    iget-wide v4, p1, Lcom/google/common/primitives/UnsignedLong;->a:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 253
    :cond_0
    return v0
.end method

.method public floatValue()F
    .locals 6

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    long-to-float v0, v0

    .line 205
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 206
    const/high16 v1, 0x5f000000

    add-float/2addr v0, v1

    .line 208
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    return-wide v0
.end method

.method public minus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 143
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->a:J

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public mod(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 174
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public plus(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 132
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->a:J

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public times(Lcom/google/common/primitives/UnsignedLong;)Lcom/google/common/primitives/UnsignedLong;
    .locals 4
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 154
    iget-wide v2, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/primitives/UnsignedLong;

    iget-wide v0, v0, Lcom/google/common/primitives/UnsignedLong;->a:J

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLong;->fromLongBits(J)Lcom/google/common/primitives/UnsignedLong;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedLongs;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lcom/google/common/primitives/UnsignedLong;->a:J

    invoke-static {v0, v1, p1}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
