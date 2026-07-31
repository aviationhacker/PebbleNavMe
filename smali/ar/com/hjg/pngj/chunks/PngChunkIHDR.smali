.class public Lar/com/hjg/pngj/chunks/PngChunkIHDR;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "IHDR"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 31
    const-string v0, "IHDR"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 32
    return-void
.end method


# virtual methods
.method public check()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0x10

    const/4 v2, 0x1

    .line 141
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->a:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->b:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->e:I

    if-nez v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->f:I

    if-eqz v0, :cond_1

    .line 142
    :cond_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: col/row/compmethod/filmethod invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    if-eq v0, v4, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    if-eq v0, v3, :cond_2

    .line 144
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: bitdepth invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->g:I

    if-ltz v0, :cond_3

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->g:I

    if-le v0, v2, :cond_4

    .line 146
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: interlace invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_4
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->d:I

    packed-switch v0, :pswitch_data_0

    .line 161
    :pswitch_0
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: invalid colormodel"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :pswitch_1
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    if-ne v0, v3, :cond_5

    .line 152
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: bitdepth invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :pswitch_2
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    if-eq v0, v4, :cond_5

    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    if-eq v0, v3, :cond_5

    .line 158
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "bad IHDR: bitdepth invalid"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_5
    :pswitch_3
    return-void

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public createImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->check()V

    .line 133
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    move v4, v0

    .line 134
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v6, v0

    .line 135
    :goto_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getColormodel()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    :cond_0
    move v5, v0

    .line 137
    :goto_2
    new-instance v0, Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getCols()I

    move-result v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getRows()I

    move-result v2

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getBitspc()I

    move-result v3

    invoke-direct/range {v0 .. v6}, Lar/com/hjg/pngj/ImageInfo;-><init>(IIIZZZ)V

    return-object v0

    :cond_1
    move v4, v1

    .line 133
    goto :goto_0

    :cond_2
    move v6, v1

    .line 134
    goto :goto_1

    :cond_3
    move v5, v1

    .line 135
    goto :goto_2
.end method

.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 5

    .prologue
    .line 41
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkRaw;

    const/16 v1, 0xd

    sget-object v2, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IHDR:[B

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lar/com/hjg/pngj/chunks/ChunkRaw;-><init>(I[BZ)V

    .line 42
    const/4 v1, 0x0

    .line 43
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->a:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 44
    const/4 v1, 0x4

    .line 45
    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->b:I

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    invoke-static {v2, v3, v1}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 46
    const/16 v1, 0x8

    .line 47
    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0x9

    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 48
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v2, 0xa

    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->d:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 49
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v3, 0xb

    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->e:I

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 50
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/16 v2, 0xc

    iget v4, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->f:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 51
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->g:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 52
    return-object v0
.end method

.method public getBitspc()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    return v0
.end method

.method public getColormodel()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->d:I

    return v0
.end method

.method public getCols()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->a:I

    return v0
.end method

.method public getCompmeth()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->e:I

    return v0
.end method

.method public getFilmeth()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->f:I

    return v0
.end method

.method public getInterlaced()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->g:I

    return v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NA:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getRows()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->b:I

    return v0
.end method

.method public isInterlaced()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->getInterlaced()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3

    .prologue
    .line 57
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    .line 58
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad IDHR len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->a()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->a:I

    .line 61
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readInt4(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->b:I

    .line 63
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    .line 64
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->d:I

    .line 65
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->e:I

    .line 66
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->f:I

    .line 67
    invoke-static {v0}, Lar/com/hjg/pngj/PngHelperInternal;->readByte(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->g:I

    .line 68
    return-void
.end method

.method public setBitspc(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->c:I

    .line 92
    return-void
.end method

.method public setColormodel(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->d:I

    .line 100
    return-void
.end method

.method public setCols(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->a:I

    .line 76
    return-void
.end method

.method public setCompmeth(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->e:I

    .line 108
    return-void
.end method

.method public setFilmeth(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->f:I

    .line 116
    return-void
.end method

.method public setInterlaced(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->g:I

    .line 124
    return-void
.end method

.method public setRows(I)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->b:I

    .line 84
    return-void
.end method
