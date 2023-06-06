.class public Lar/com/hjg/pngj/chunks/ChunkRaw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/util/zip/CRC32;

.field public crcval:[B

.field public data:[B

.field public final id:Ljava/lang/String;

.field public final idbytes:[B

.field public final len:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->a:J

    .line 47
    new-array v0, v3, [B

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    .line 52
    iput p1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    .line 53
    iput-object p2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    .line 54
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    .line 55
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_2

    .line 56
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x5a

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x61

    if-ge v1, v2, :cond_1

    .line 57
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id chunk: must be ascii letters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_2
    if-eqz p3, :cond_3

    .line 60
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->allocData()V

    .line 61
    :cond_3
    return-void
.end method

.method public constructor <init>(I[BZ)V
    .locals 1

    .prologue
    .line 64
    invoke-static {p2}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(ILjava/lang/String;Z)V

    .line 65
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    .line 77
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 78
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-lez v0, :cond_0

    .line 79
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 80
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    invoke-static {v0, v1, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 81
    return-void
.end method


# virtual methods
.method a()Ljava/io/ByteArrayInputStream;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public allocData()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-ge v0, v1, :cond_1

    .line 69
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 70
    :cond_1
    return-void
.end method

.method public checkCrc()V
    .locals 5

    .prologue
    .line 111
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    .line 112
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4fromBytes([BI)I

    move-result v1

    .line 113
    if-eq v0, v1, :cond_0

    .line 114
    new-instance v2, Lar/com/hjg/pngj/PngjBadCrcException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chunk: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " read="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lar/com/hjg/pngj/PngjBadCrcException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 116
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    if-ne p0, p1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 157
    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 159
    goto :goto_0

    .line 160
    :cond_3
    check-cast p1, Lar/com/hjg/pngj/chunks/ChunkRaw;

    .line 161
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 162
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 163
    goto :goto_0

    .line 164
    :cond_4
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 165
    goto :goto_0

    .line 166
    :cond_5
    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->a:J

    iget-wide v4, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 167
    goto :goto_0
.end method

.method public getOffset()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->a:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 145
    .line 147
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 148
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->a:J

    iget-wide v4, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->a:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 149
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public setOffset(J)V
    .locals 1

    .prologue
    .line 136
    iput-wide p1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->a:J

    .line 137
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chunkid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    invoke-static {v1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCrc([BII)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    .line 121
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->b:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 122
    return-void
.end method

.method public writeChunk(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunkHeader(Ljava/io/OutputStream;)V

    .line 90
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    if-lez v0, :cond_1

    .line 91
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot write chunk, raw chunk data is null ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-static {p1, v0, v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[BII)V

    .line 95
    :cond_1
    invoke-direct {p0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->b()V

    .line 96
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunkCrc(Ljava/io/OutputStream;)V

    .line 97
    return-void
.end method

.method public writeChunkCrc(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->crcval:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v0, v1, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[BII)V

    .line 108
    return-void
.end method

.method public writeChunkHeader(Ljava/io/OutputStream;)V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 101
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunkid ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4(Ljava/io/OutputStream;I)V

    .line 103
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunkRaw;->idbytes:[B

    invoke-static {p1, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 104
    return-void
.end method
