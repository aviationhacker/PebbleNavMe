.class public final Lcom/google/common/primitives/Booleans;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Booleans$a;,
        Lcom/google/common/primitives/Booleans$b;
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a([ZZII)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->c([ZZII)I

    move-result v0

    return v0
.end method

.method private static a([ZI)[Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    new-array v0, p1, [Z

    .line 237
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    return-object v0
.end method

.method public static varargs asList([Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    array-length v0, p0

    if-nez v0, :cond_0

    .line 349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 351
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Booleans$a;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Booleans$a;-><init>([Z)V

    goto :goto_0
.end method

.method static synthetic b([ZZII)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/Booleans;->d([ZZII)I

    move-result v0

    return v0
.end method

.method private static c([ZZII)I
    .locals 2

    .prologue
    .line 126
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_1

    .line 127
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 131
    :goto_1
    return v0

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static compare(ZZ)I
    .locals 1

    .prologue
    .line 80
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static varargs concat([[Z)[Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 197
    .line 198
    array-length v3, p0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 199
    array-length v4, v4

    add-int/2addr v2, v4

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    :cond_0
    new-array v3, v2, [Z

    .line 203
    array-length v4, p0

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, p0, v0

    .line 204
    array-length v6, v5

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    array-length v5, v5

    add-int/2addr v2, v5

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 207
    :cond_1
    return-object v3
.end method

.method public static contains([ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 98
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-boolean v3, p0, v1

    .line 99
    if-ne v3, p1, :cond_1

    .line 100
    const/4 v0, 0x1

    .line 103
    :cond_0
    return v0

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static varargs countTrue([Z)I
    .locals 4
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 495
    .line 496
    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, p0, v1

    .line 497
    if-eqz v3, :cond_0

    .line 498
    add-int/lit8 v0, v0, 0x1

    .line 496
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 501
    :cond_1
    return v0
.end method

.method private static d([ZZII)I
    .locals 2

    .prologue
    .line 179
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    .line 180
    aget-boolean v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 184
    :goto_1
    return v0

    .line 179
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static ensureCapacity([ZII)[Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 228
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 229
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    .line 230
    invoke-static {p0, v0}, Lcom/google/common/primitives/Booleans;->a([ZI)[Z

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    move v0, v2

    .line 227
    goto :goto_0

    :cond_2
    move v0, v2

    .line 228
    goto :goto_1
.end method

.method public static hashCode(Z)I
    .locals 1

    .prologue
    .line 63
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static indexOf([ZZ)I
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->c([ZZII)I

    move-result v0

    return v0
.end method

.method public static indexOf([Z[Z)I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 146
    const-string v0, "array"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "target"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    array-length v0, p1

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 153
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 154
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 155
    add-int v3, v0, v2

    aget-boolean v3, p0, v3

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_1

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 154
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    .line 159
    goto :goto_0

    .line 161
    :cond_3
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static varargs join(Ljava/lang/String;[Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 251
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    array-length v0, p1

    if-nez v0, :cond_0

    .line 253
    const-string v0, ""

    .line 262
    :goto_0
    return-object v0

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x7

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 258
    const/4 v0, 0x0

    aget-boolean v0, p1, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    const/4 v0, 0x1

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 260
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static lastIndexOf([ZZ)I
    .locals 2

    .prologue
    .line 174
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, v0, v1}, Lcom/google/common/primitives/Booleans;->d([ZZII)I

    move-result v0

    return v0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[Z>;"
        }
    .end annotation

    .prologue
    .line 282
    sget-object v0, Lcom/google/common/primitives/Booleans$b;->a:Lcom/google/common/primitives/Booleans$b;

    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Boolean;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .line 319
    instance-of v0, p0, Lcom/google/common/primitives/Booleans$a;

    if-eqz v0, :cond_0

    .line 320
    check-cast p0, Lcom/google/common/primitives/Booleans$a;

    invoke-virtual {p0}, Lcom/google/common/primitives/Booleans$a;->a()[Z

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 323
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 324
    array-length v4, v3

    .line 325
    new-array v1, v4, [Z

    .line 326
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 328
    aget-object v0, v3, v2

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, v1, v2

    .line 326
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 330
    goto :goto_0
.end method
