.class Lcom/google/common/io/ByteSource$b;
.super Lcom/google/common/io/ByteSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/ByteSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:[B

.field final b:I

.field final c:I


# direct methods
.method constructor <init>([B)V
    .locals 2

    .prologue
    .line 543
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/io/ByteSource$b;-><init>([BII)V

    .line 544
    return-void
.end method

.method constructor <init>([BII)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/google/common/io/ByteSource;-><init>()V

    .line 548
    iput-object p1, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    .line 549
    iput p2, p0, Lcom/google/common/io/ByteSource$b;->b:I

    .line 550
    iput p3, p0, Lcom/google/common/io/ByteSource$b;->c:I

    .line 551
    return-void
.end method


# virtual methods
.method public copyTo(Ljava/io/OutputStream;)J
    .locals 3

    .prologue
    .line 585
    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 586
    iget v0, p0, Lcom/google/common/io/ByteSource$b;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hash(Lcom/google/common/hash/HashFunction;)Lcom/google/common/hash/HashCode;
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/hash/HashFunction;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 565
    iget v0, p0, Lcom/google/common/io/ByteSource$b;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openBufferedStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/google/common/io/ByteSource$b;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 555
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v3, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public read(Lcom/google/common/io/ByteProcessor;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/io/ByteProcessor",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-interface {p1, v0, v1, v2}, Lcom/google/common/io/ByteProcessor;->processBytes([BII)Z

    .line 592
    invoke-interface {p1}, Lcom/google/common/io/ByteProcessor;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read()[B
    .locals 4

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v1, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v3, p0, Lcom/google/common/io/ByteSource$b;->c:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .locals 2

    .prologue
    .line 570
    iget v0, p0, Lcom/google/common/io/ByteSource$b;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public sizeIfKnown()Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    iget v0, p0, Lcom/google/common/io/ByteSource$b;->c:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public slice(JJ)Lcom/google/common/io/ByteSource;
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 602
    cmp-long v0, p1, v6

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "offset (%s) may not be negative"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 603
    cmp-long v0, p3, v6

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "length (%s) may not be negative"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 605
    iget v0, p0, Lcom/google/common/io/ByteSource$b;->c:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 606
    iget v2, p0, Lcom/google/common/io/ByteSource$b;->c:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 607
    iget v4, p0, Lcom/google/common/io/ByteSource$b;->b:I

    long-to-int v0, v0

    add-int/2addr v0, v4

    .line 608
    new-instance v1, Lcom/google/common/io/ByteSource$b;

    iget-object v4, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    long-to-int v2, v2

    invoke-direct {v1, v4, v0, v2}, Lcom/google/common/io/ByteSource$b;-><init>([BII)V

    return-object v1

    :cond_0
    move v0, v2

    .line 602
    goto :goto_0

    :cond_1
    move v0, v2

    .line 603
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 614
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base16()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/ByteSource$b;->a:[B

    iget v2, p0, Lcom/google/common/io/ByteSource$b;->b:I

    iget v3, p0, Lcom/google/common/io/ByteSource$b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    const-string v2, "..."

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Ascii;->truncate(Ljava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ByteSource.wrap("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
