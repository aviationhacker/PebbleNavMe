.class public Lar/com/hjg/pngj/pixels/CompressorStreamLz4;
.super Lar/com/hjg/pngj/pixels/CompressorStream;
.source "SourceFile"


# instance fields
.field private final b:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

.field private c:[B

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IJ)V
    .locals 3

    .prologue
    const-wide/16 v0, 0x3e80

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStream;-><init>(Ljava/io/OutputStream;IJ)V

    .line 20
    const/4 v2, 0x0

    iput v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    .line 26
    new-instance v2, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    invoke-direct {v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;-><init>()V

    iput-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->b:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    .line 27
    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    move-wide p3, v0

    :cond_0
    long-to-int v0, p3

    iput v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->d:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJII)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;-><init>(Ljava/io/OutputStream;IJ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJLjava/util/zip/Deflater;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;-><init>(Ljava/io/OutputStream;IJ)V

    .line 32
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 67
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    if-lez v0, :cond_0

    .line 68
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->b:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->c:[B

    iget v4, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    invoke-virtual {v2, v3, v5, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compressEstim([BII)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    .line 69
    iput v5, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    .line 71
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done()V

    .line 85
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->a:Z

    if-nez v0, :cond_0

    .line 86
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->c:[B

    .line 89
    :cond_0
    return-void
.end method

.method public done()V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->a()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done:Z

    .line 78
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->flush()V

    .line 80
    :cond_0
    return-void
.end method

.method public mywrite([BII)V
    .locals 6

    .prologue
    .line 41
    if-nez p3, :cond_1

    .line 64
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->a:Z

    if-eqz v0, :cond_3

    .line 44
    :cond_2
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "write beyond end of stream"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    iget-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesIn:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesIn:J

    move v1, p3

    .line 46
    :cond_4
    :goto_0
    if-lez v1, :cond_0

    .line 47
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    if-nez v0, :cond_6

    const/16 v0, 0x3e80

    if-ge v1, v0, :cond_5

    iget-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesIn:J

    iget-wide v4, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->totalbytes:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    .line 49
    :cond_5
    iget-wide v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->b:Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;

    invoke-virtual {v0, p1, p2, v1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compressEstim([BII)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->bytesOut:J

    .line 50
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :cond_6
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->c:[B

    if-nez v0, :cond_7

    .line 53
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->d:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->c:[B

    .line 54
    :cond_7
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    add-int/2addr v0, v1

    iget v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->d:I

    if-gt v0, v2, :cond_9

    move v0, v1

    .line 55
    :goto_1
    if-lez v0, :cond_8

    .line 56
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->c:[B

    iget v3, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    :cond_8
    iget v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    .line 58
    sub-int/2addr v1, v0

    .line 59
    add-int/2addr p2, v0

    .line 60
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    iget v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->d:I

    if-ne v0, v2, :cond_4

    .line 61
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->a()V

    goto :goto_0

    .line 54
    :cond_9
    iget v0, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->d:I

    iget v2, p0, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->e:I

    sub-int/2addr v0, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 93
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;->done()V

    .line 94
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/CompressorStream;->reset()V

    .line 95
    return-void
.end method
