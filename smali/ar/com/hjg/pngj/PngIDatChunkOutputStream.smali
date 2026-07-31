.class public Lar/com/hjg/pngj/PngIDatChunkOutputStream;
.super Lgf;
.source "SourceFile"


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    .prologue
    .line 23
    if-lez p2, :cond_0

    :goto_0
    invoke-direct {p0, p2}, Lgf;-><init>(I)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->b:[B

    .line 24
    iput-object p1, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->a:Ljava/io/OutputStream;

    .line 25
    return-void

    .line 23
    :cond_0
    const p2, 0x8000

    goto :goto_0
.end method


# virtual methods
.method protected final flushBuffer([BI)V
    .locals 4

    .prologue
    .line 29
    iget-object v0, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->b:[B

    if-nez v0, :cond_1

    move v0, p2

    .line 30
    :goto_0
    new-instance v1, Lar/com/hjg/pngj/chunks/ChunkRaw;

    sget-object v2, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IDAT:[B

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(I[BZ)V

    .line 31
    if-ne p2, v0, :cond_0

    .line 32
    iput-object p1, v1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    .line 36
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->a:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunk(Ljava/io/OutputStream;)V

    .line 37
    return-void

    .line 29
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->b:[B

    array-length v0, v0

    add-int/2addr v0, p2

    goto :goto_0
.end method

.method public bridge synthetic getCountFlushed()J
    .locals 2

    .prologue
    .line 11
    invoke-super {p0}, Lgf;->getCountFlushed()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic setSize(I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lgf;->setSize(I)V

    return-void
.end method
