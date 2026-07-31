.class public abstract Lkx;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "SourceFile"


# instance fields
.field protected final a:[Lcom/google/common/hash/HashFunction;


# direct methods
.method protected varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 34
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 35
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    iput-object p1, p0, Lkx;->a:[Lcom/google/common/hash/HashFunction;

    .line 38
    return-void
.end method


# virtual methods
.method public abstract a([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lkx;->a:[Lcom/google/common/hash/HashFunction;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/common/hash/Hasher;

    .line 51
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 52
    iget-object v2, p0, Lkx;->a:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v2

    aput-object v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Lkx$1;

    invoke-direct {v0, p0, v1}, Lkx$1;-><init>(Lkx;[Lcom/google/common/hash/Hasher;)V

    return-object v0
.end method
