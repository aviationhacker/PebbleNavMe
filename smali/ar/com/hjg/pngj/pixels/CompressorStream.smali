.class public abstract Lar/com/hjg/pngj/pixels/CompressorStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# instance fields
.field a:Z

.field private b:[B

.field protected block:I

.field public final blockLen:I

.field protected bytesIn:J

.field protected bytesOut:J

.field protected done:Z

.field protected os:Ljava/io/OutputStream;

.field protected storeFirstByte:Z

.field public final totalbytes:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IJ)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 32
    iput-boolean v1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->a:Z

    .line 33
    iput-boolean v1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->done:Z

    .line 34
    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesIn:J

    .line 35
    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesOut:J

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->block:I

    .line 40
    iput-boolean v1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->storeFirstByte:Z

    .line 50
    if-gez p2, :cond_0

    .line 51
    const/16 p2, 0x1000

    .line 52
    :cond_0
    cmp-long v0, p3, v2

    if-gez v0, :cond_1

    .line 53
    const-wide p3, 0x7fffffffffffffffL

    .line 54
    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const-wide/16 v0, 0x1

    cmp-long v0, p3, v0

    if-gez v0, :cond_3

    .line 55
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, " maxBlockLen or totalLen invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->os:Ljava/io/OutputStream;

    .line 57
    iput p2, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->blockLen:I

    .line 58
    iput-wide p3, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->totalbytes:J

    .line 59
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->done()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->a:Z

    .line 66
    return-void
.end method

.method public abstract done()V
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->os:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getBytesCompressed()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesOut:J

    return-wide v0
.end method

.method public final getBytesRaw()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesIn:J

    return-wide v0
.end method

.method public final getCompressionRatio()D
    .locals 4

    .prologue
    .line 133
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesOut:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesOut:J

    long-to-double v0, v0

    iget-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesIn:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getFirstBytes()[B
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->b:[B

    return-object v0
.end method

.method public getOs()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->a:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->done:Z

    return v0
.end method

.method protected abstract mywrite([BII)V
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->os:Ljava/io/OutputStream;

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->reset(Ljava/io/OutputStream;)V

    .line 111
    return-void
.end method

.method public reset(Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 119
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->a:Z

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "cannot reset, discarded object"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->done()V

    .line 122
    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesIn:J

    .line 123
    iput-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesOut:J

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->block:I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->done:Z

    .line 126
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->os:Ljava/io/OutputStream;

    .line 127
    return-void
.end method

.method public setStoreFirstByte(ZI)V
    .locals 1

    .prologue
    .line 180
    iput-boolean p1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->storeFirstByte:Z

    .line 181
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->storeFirstByte:Z

    if-eqz v0, :cond_2

    .line 182
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->b:[B

    array-length v0, v0

    if-ge v0, p2, :cond_1

    .line 183
    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->b:[B

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->b:[B

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "should not be used"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final write([B)V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([BII)V

    .line 102
    return-void
.end method

.method public final write([BII)V
    .locals 4

    .prologue
    .line 75
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->block:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->block:I

    .line 76
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->blockLen:I

    if-gt p3, v0, :cond_2

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lar/com/hjg/pngj/pixels/CompressorStream;->mywrite([BII)V

    .line 78
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->storeFirstByte:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->block:I

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->b:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->b:[B

    iget v1, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->block:I

    aget-byte v2, p1, p2

    aput-byte v2, v0, v1

    .line 88
    :cond_0
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->bytesIn:J

    iget-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->totalbytes:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->done()V

    .line 91
    :cond_1
    return-void

    .line 82
    :cond_2
    :goto_0
    if-lez p3, :cond_0

    .line 83
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->blockLen:I

    invoke-virtual {p0, p1, p2, v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->mywrite([BII)V

    .line 84
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->blockLen:I

    add-int/2addr p2, v0

    .line 85
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStream;->blockLen:I

    sub-int/2addr p3, v0

    goto :goto_0
.end method
