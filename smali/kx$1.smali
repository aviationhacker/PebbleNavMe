.class Lkx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/hash/Hasher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkx;->newHasher()Lcom/google/common/hash/Hasher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lcom/google/common/hash/Hasher;

.field final synthetic b:Lkx;


# direct methods
.method constructor <init>(Lkx;[Lcom/google/common/hash/Hasher;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lkx$1;->b:Lkx;

    iput-object p2, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hash()Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lkx$1;->b:Lkx;

    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    invoke-virtual {v0, v1}, Lkx;->a([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public putBoolean(Z)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 122
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putByte(B)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 58
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putByte(B)Lcom/google/common/hash/Hasher;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putByte(B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 65
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 66
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 73
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 74
    invoke-interface {v3, p1, p2, p3}, Lcom/google/common/hash/Hasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lkx$1;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 130
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putDouble(D)Lcom/google/common/hash/Hasher;
    .locals 5

    .prologue
    .line 113
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 114
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lkx$1;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(F)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 105
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 106
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 90
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 5

    .prologue
    .line 97
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 98
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lkx$1;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 154
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_0
    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 81
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 82
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putShort(S)Lcom/google/common/hash/Hasher;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 145
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 146
    invoke-interface {v3, p1, p2}, Lcom/google/common/hash/Hasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lkx$1;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lkx$1;->a:[Lcom/google/common/hash/Hasher;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 138
    invoke-interface {v3, p1}, Lcom/google/common/hash/Hasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lkx$1;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    return-object v0
.end method
