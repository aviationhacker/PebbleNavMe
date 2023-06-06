.class public final Lcom/google/common/primitives/Bytes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Bytes$a;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([BBII)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->c([BBII)I

    move-result v0

    return v0
.end method

.method private static a([BI)[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    new-array v0, p1, [B

    .line 213
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    return-object v0
.end method

.method public static varargs asList([B)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    array-length v0, p0

    if-nez v0, :cond_0

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Bytes$a;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Bytes$a;-><init>([B)V

    goto :goto_0
.end method

.method static synthetic b([BBII)I
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Bytes;->d([BBII)I

    move-result v0

    return v0
.end method

.method private static c([BBII)I
    .locals 2

    .prologue
    .line 102
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 103
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 107
    :goto_1
    return v0

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static varargs concat([[B)[B
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 173
    .line 174
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 175
    array-length v4, v4

    add-int/2addr v2, v4

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_0
    new-array v3, v2, [B

    .line 179
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 180
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    array-length v5, v5

    add-int/2addr v2, v5

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_1
    return-object v3
.end method

.method public static contains([BB)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, p0, v1

    .line 80
    if-ne v3, p1, :cond_1

    .line 81
    const/4 v0, 0x1

    .line 84
    :cond_0
    return v0

    .line 79
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static d([BBII)I
    .locals 2

    .prologue
    .line 155
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 156
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 160
    :goto_1
    return v0

    .line 155
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 160
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static ensureCapacity([BII)[B
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 203
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 204
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 205
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    .line 206
    invoke-static {p0, v0}, Lcom/google/common/primitives/Bytes;->a([BI)[B

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 203
    goto :goto_0

    :cond_2
    move v0, v2

    .line 204
    goto :goto_1
.end method

.method public static hashCode(B)I
    .locals 0

    .prologue
    .line 66
    return p0
.end method

.method public static indexOf([BB)I
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->c([BBII)I

    move-result v0

    return v0
.end method

.method public static indexOf([B[B)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 122
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    array-length v0, p1

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 129
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 130
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 131
    add-int v3, v0, v2

    aget-byte v3, p0, v3

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 130
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 135
    goto :goto_0

    .line 137
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static lastIndexOf([BB)I
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Bytes;->d([BBII)I

    move-result v0

    return v0
.end method

.method public static toArray(Ljava/util/Collection;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Number;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 233
    instance-of v0, p0, Lcom/google/common/primitives/Bytes$a;

    if-eqz v0, :cond_0

    .line 234
    check-cast p0, Lcom/google/common/primitives/Bytes$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/Bytes$a;->a()[B

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 237
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 238
    array-length v4, v3

    .line 239
    new-array v1, v4, [B

    .line 240
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 242
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    aput-byte v0, v1, v2

    .line 240
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 244
    goto :goto_0
.end method
