.class public Lar/com/hjg/pngj/PngReaderFilter;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private a:Lar/com/hjg/pngj/ChunkSeqReaderPng;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 32
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReaderFilter;->createChunkSequenceReader()Lar/com/hjg/pngj/ChunkSeqReaderPng;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 58
    iget-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->close()V

    .line 59
    return-void
.end method

.method protected createChunkSequenceReader()Lar/com/hjg/pngj/ChunkSeqReaderPng;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lar/com/hjg/pngj/PngReaderFilter$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lar/com/hjg/pngj/PngReaderFilter$1;-><init>(Lar/com/hjg/pngj/PngReaderFilter;Z)V

    return-object v0
.end method

.method public getChunksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getChunks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChunkseq()Lar/com/hjg/pngj/ChunkSeqReaderPng;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    return-object v0
.end method

.method public read()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 64
    if-lez v0, :cond_0

    .line 65
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    new-array v2, v5, [B

    int-to-byte v3, v0

    aput-byte v3, v2, v4

    invoke-virtual {v1, v2, v4, v5}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->feedAll([BII)Z

    .line 66
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3

    .prologue
    .line 79
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->read([B)I

    move-result v0

    .line 80
    if-lez v0, :cond_0

    .line 81
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->feedAll([BII)Z

    .line 82
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 72
    if-lez v0, :cond_0

    .line 73
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v1, p1, p2, v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->feedAll([BII)Z

    .line 74
    :cond_0
    return v0
.end method

.method public readUntilEndAndClose()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lar/com/hjg/pngj/BufferedStreamFeeder;

    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;)V

    .line 87
    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->hasMoreToFeed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lar/com/hjg/pngj/PngReaderFilter;->a:Lar/com/hjg/pngj/ChunkSeqReaderPng;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;)I

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReaderFilter;->close()V

    .line 90
    return-void
.end method
