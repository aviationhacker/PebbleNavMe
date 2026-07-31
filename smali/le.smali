.class public final Lle;
.super Lcom/google/common/hash/AbstractStreamingHashFunction;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lle$a;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/common/hash/AbstractStreamingHashFunction;-><init>()V

    .line 54
    iput p1, p0, Lle;->a:I

    .line 55
    return-void
.end method

.method static synthetic a(I)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lle;->b(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(II)I
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lle;->c(II)I

    move-result v0

    return v0
.end method

.method private static b(I)I
    .locals 2

    .prologue
    .line 131
    const v0, -0x3361d2af    # -8.2930312E7f

    mul-int/2addr v0, p0

    .line 132
    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 133
    const v1, 0x1b873593

    mul-int/2addr v0, v1

    .line 134
    return v0
.end method

.method static synthetic b(II)Lcom/google/common/hash/HashCode;
    .locals 1

    .prologue
    .line 47
    invoke-static {p0, p1}, Lle;->d(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method private static c(II)I
    .locals 2

    .prologue
    .line 138
    xor-int v0, p0, p1

    .line 139
    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v0

    .line 140
    mul-int/lit8 v0, v0, 0x5

    const v1, -0x19ab949c

    add-int/2addr v0, v1

    .line 141
    return v0
.end method

.method private static d(II)Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 146
    xor-int v0, p0, p1

    .line 147
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 148
    const v1, -0x7a143595

    mul-int/2addr v0, v1

    .line 149
    ushr-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    .line 150
    const v1, -0x3d4d51cb

    mul-int/2addr v0, v1

    .line 151
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 152
    invoke-static {v0}, Lcom/google/common/hash/HashCode;->fromInt(I)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bits()I
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x20

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 74
    instance-of v1, p1, Lle;

    if-eqz v1, :cond_0

    .line 75
    check-cast p1, Lle;

    .line 76
    iget v1, p0, Lle;->a:I

    iget v2, p1, Lle;->a:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 78
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lle;->a:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 88
    invoke-static {p1}, Lle;->b(I)I

    move-result v0

    .line 89
    iget v1, p0, Lle;->a:I

    invoke-static {v1, v0}, Lle;->c(II)I

    move-result v0

    .line 91
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lle;->d(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 5

    .prologue
    .line 96
    long-to-int v0, p1

    .line 97
    const/16 v1, 0x20

    ushr-long v2, p1, v1

    long-to-int v1, v2

    .line 99
    invoke-static {v0}, Lle;->b(I)I

    move-result v0

    .line 100
    iget v2, p0, Lle;->a:I

    invoke-static {v2, v0}, Lle;->c(II)I

    move-result v0

    .line 102
    invoke-static {v1}, Lle;->b(I)I

    move-result v1

    .line 103
    invoke-static {v0, v1}, Lle;->c(II)I

    move-result v0

    .line 105
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lle;->d(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 111
    iget v0, p0, Lle;->a:I

    move v2, v0

    move v0, v1

    .line 114
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 115
    add-int/lit8 v3, v0, -0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    .line 116
    invoke-static {v3}, Lle;->b(I)I

    move-result v3

    .line 117
    invoke-static {v2, v3}, Lle;->c(II)I

    move-result v2

    .line 114
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    .line 122
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 123
    invoke-static {v0}, Lle;->b(I)I

    move-result v0

    .line 124
    xor-int/2addr v2, v0

    .line 127
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Lle;->d(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lle$a;

    iget v1, p0, Lle;->a:I

    invoke-direct {v0, v1}, Lle$a;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    iget v0, p0, Lle;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_32("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
