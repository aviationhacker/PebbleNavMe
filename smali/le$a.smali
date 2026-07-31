.class final Lle$a;
.super Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHashFunction$AbstractStreamingHasher;-><init>(I)V

    .line 162
    iput p1, p0, Lle$a;->a:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lle$a;->b:I

    .line 164
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/hash/HashCode;
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lle$a;->a:I

    iget v1, p0, Lle$a;->b:I

    invoke-static {v0, v1}, Lle;->b(II)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-static {v0}, Lle;->a(I)I

    move-result v0

    .line 169
    iget v1, p0, Lle$a;->a:I

    invoke-static {v1, v0}, Lle;->a(II)I

    move-result v0

    iput v0, p0, Lle$a;->a:I

    .line 170
    iget v0, p0, Lle$a;->b:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lle$a;->b:I

    .line 171
    return-void
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 175
    iget v1, p0, Lle$a;->b:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lle$a;->b:I

    move v1, v0

    .line 177
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    shl-int/2addr v2, v0

    xor-int/2addr v1, v2

    .line 177
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 180
    :cond_0
    iget v0, p0, Lle$a;->a:I

    invoke-static {v1}, Lle;->a(I)I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, Lle$a;->a:I

    .line 181
    return-void
.end method
