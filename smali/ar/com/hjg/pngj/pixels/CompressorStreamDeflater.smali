.class public Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;
.super Lar/com/hjg/pngj/pixels/CompressorStream;
.source "SourceFile"


# instance fields
.field protected buf:[B

.field protected deflater:Ljava/util/zip/Deflater;

.field protected deflaterIsOwn:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IJ)V
    .locals 7

    .prologue
    .line 23
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;-><init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJII)V
    .locals 7

    .prologue
    .line 35
    new-instance v6, Ljava/util/zip/Deflater;

    invoke-direct {v6, p5}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;-><init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    .line 37
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p6}, Ljava/util/zip/Deflater;->setStrategy(I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStream;-><init>(Ljava/io/OutputStream;IJ)V

    .line 19
    const/16 v0, 0xffc

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->buf:[B

    .line 20
    iput-boolean v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    .line 29
    if-nez p5, :cond_0

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    :goto_0
    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    .line 30
    if-nez p5, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    .line 31
    return-void

    :cond_0
    move-object v0, p5

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done()V

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflaterIsOwn:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    .line 86
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected deflate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 51
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->buf:[B

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->buf:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 52
    if-lez v0, :cond_0

    .line 53
    iget-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesOut:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesOut:J

    .line 55
    :try_start_0
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->os:Ljava/io/OutputStream;

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->buf:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public done()V
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 70
    :goto_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflate()V

    goto :goto_1

    .line 73
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done:Z

    .line 74
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->flush()V

    goto :goto_0
.end method

.method public mywrite([BII)V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->done:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->a:Z

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "write beyond end of stream"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 45
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesIn:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->bytesIn:J

    .line 46
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflate()V

    goto :goto_0

    .line 48
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->reset()V

    .line 91
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 92
    return-void
.end method
