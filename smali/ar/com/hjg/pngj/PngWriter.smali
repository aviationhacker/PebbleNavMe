.class public Lar/com/hjg/pngj/PngWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

.field private final b:Lar/com/hjg/pngj/chunks/PngMetadata;

.field private c:I

.field protected currentChunkGroup:I

.field private d:I

.field protected debuginfo:Ljava/lang/StringBuilder;

.field private e:Z

.field private f:I

.field private g:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

.field private final h:Ljava/io/OutputStream;

.field private i:Lar/com/hjg/pngj/chunks/ChunkPredicate;

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field private j:Lar/com/hjg/pngj/chunks/ChunksList;

.field protected pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

.field protected rowNum:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lar/com/hjg/pngj/ImageInfo;Z)V
    .locals 1

    .prologue
    .line 71
    invoke-static {p1, p3}, Lar/com/hjg/pngj/PngHelperInternal;->a(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lar/com/hjg/pngj/PngWriter;-><init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V

    .line 72
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngWriter;->setShouldCloseStream(Z)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    .line 42
    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 44
    iput v2, p0, Lar/com/hjg/pngj/PngWriter;->c:I

    .line 45
    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->d:I

    .line 47
    iput-boolean v2, p0, Lar/com/hjg/pngj/PngWriter;->e:Z

    .line 49
    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->f:I

    .line 56
    iput-object v3, p0, Lar/com/hjg/pngj/PngWriter;->i:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    .line 57
    iput-object v3, p0, Lar/com/hjg/pngj/PngWriter;->j:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->debuginfo:Ljava/lang/StringBuilder;

    .line 92
    iput-object p1, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    .line 93
    iput-object p2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 95
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-direct {v0, p2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    .line 96
    new-instance v0, Lar/com/hjg/pngj/chunks/PngMetadata;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngMetadata;-><init>(Lar/com/hjg/pngj/chunks/ChunksList;)V

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->b:Lar/com/hjg/pngj/chunks/PngMetadata;

    .line 97
    invoke-virtual {p0, p2}, Lar/com/hjg/pngj/PngWriter;->createPixelsWriter(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/pixels/PixelsWriter;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    .line 98
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngWriter;->setCompLevel(I)V

    .line 99
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->f:I

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, Lar/com/hjg/pngj/PngWriter;->g:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    .line 103
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->g:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setOs(Ljava/io/OutputStream;)V

    .line 104
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->e()V

    .line 105
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->c()V

    .line 106
    return-void
.end method

.method private b()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lar/com/hjg/pngj/chunks/PngChunkIEND;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkIEND;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 110
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunkIEND;->createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    invoke-virtual {v1, v2}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunk(Ljava/io/OutputStream;)V

    .line 111
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getChunks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 115
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    if-lt v0, v3, :cond_0

    .line 130
    :goto_0
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 119
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->f()V

    .line 120
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 122
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    move-result v0

    .line 123
    if-lez v0, :cond_1

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-eqz v1, :cond_1

    .line 124
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "cannot write palette for this format"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v0, :cond_2

    .line 126
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "missing palette"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 128
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    .line 129
    iput v3, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 133
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->f()V

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 135
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    invoke-virtual {v0, v1, v2}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->writeChunks(Ljava/io/OutputStream;I)I

    .line 137
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedChunks()Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " chunks were not written! Eg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 142
    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 148
    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    .line 150
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    invoke-static {}, Lar/com/hjg/pngj/PngHelperInternal;->getPngIdSignature()[B

    move-result-object v2

    invoke-static {v0, v2}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 151
    new-instance v2, Lar/com/hjg/pngj/chunks/PngChunkIHDR;

    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v2, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 153
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v2, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setCols(I)V

    .line 154
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v2, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setRows(I)V

    .line 155
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v2, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setBitspc(I)V

    .line 157
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->alpha:Z

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x4

    .line 159
    :goto_0
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v3, v3, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v3, :cond_0

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 161
    :cond_0
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v3, v3, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v3, :cond_1

    .line 162
    add-int/lit8 v0, v0, 0x2

    .line 163
    :cond_1
    invoke-virtual {v2, v0}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setColormodel(I)V

    .line 164
    invoke-virtual {v2, v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setCompmeth(I)V

    .line 165
    invoke-virtual {v2, v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setFilmeth(I)V

    .line 166
    invoke-virtual {v2, v1}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->setInterlaced(I)V

    .line 167
    invoke-virtual {v2}, Lar/com/hjg/pngj/chunks/PngChunkIHDR;->createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/chunks/ChunkRaw;->writeChunk(Ljava/io/OutputStream;)V

    .line 168
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getChunks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 172
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->j:Lar/com/hjg/pngj/chunks/ChunksList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->i:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    return-void

    .line 174
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    if-lt v0, v5, :cond_6

    const/4 v0, 0x1

    move v1, v0

    .line 175
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->j:Lar/com/hjg/pngj/chunks/ChunksList;

    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/ChunksList;->getChunks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 176
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->getRaw()Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v3

    iget-object v3, v3, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {v0}, Lar/com/hjg/pngj/chunks/PngChunk;->getChunkGroup()I

    move-result v3

    .line 179
    if-gt v3, v5, :cond_3

    if-nez v1, :cond_2

    .line 181
    :cond_3
    if-lt v3, v5, :cond_4

    if-eqz v1, :cond_2

    .line 183
    :cond_4
    iget-boolean v3, v0, Lar/com/hjg/pngj/chunks/PngChunk;->crit:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v4, "PLTE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    :cond_5
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->i:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    invoke-interface {v3, v0}, Lar/com/hjg/pngj/chunks/ChunkPredicate;->match(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v3

    .line 187
    if-eqz v3, :cond_2

    .line 189
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v3, v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v3, v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v3, v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queue(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    goto :goto_1

    .line 174
    :cond_6
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 304
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->g:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->g:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :cond_0
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->close()V

    .line 311
    :cond_1
    iget-boolean v0, p0, Lar/com/hjg/pngj/PngWriter;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 313
    :try_start_1
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->h:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    :cond_2
    :goto_1
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lar/com/hjg/pngj/PngHelperInternal;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error closing writer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 307
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public computeCompressionRatio()D
    .locals 4

    .prologue
    .line 270
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->currentChunkGroup:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 271
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "must be called after end()"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->g:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->getCountFlushed()J

    move-result-wide v0

    long-to-double v0, v0

    .line 273
    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->rows:I

    mul-int/2addr v2, v3

    int-to-double v2, v2

    .line 274
    div-double/2addr v0, v2

    return-wide v0
.end method

.method public copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;)V
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/PngWriter;->copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;I)V

    .line 242
    return-void
.end method

.method public copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;I)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-static {p2, v0}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->createPredicate(ILar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/ChunkPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/PngWriter;->copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;Lar/com/hjg/pngj/chunks/ChunkPredicate;)V

    .line 235
    return-void
.end method

.method public copyChunksFrom(Lar/com/hjg/pngj/chunks/ChunksList;Lar/com/hjg/pngj/chunks/ChunkPredicate;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->j:Lar/com/hjg/pngj/chunks/ChunksList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "copyChunksFrom should only be called once"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 255
    :cond_0
    if-nez p2, :cond_1

    .line 256
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "copyChunksFrom requires a predicate"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_1
    iput-object p1, p0, Lar/com/hjg/pngj/PngWriter;->j:Lar/com/hjg/pngj/chunks/ChunksList;

    .line 258
    iput-object p2, p0, Lar/com/hjg/pngj/PngWriter;->i:Lar/com/hjg/pngj/chunks/ChunkPredicate;

    .line 259
    return-void
.end method

.method protected createPixelsWriter(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/pixels/PixelsWriter;
    .locals 1

    .prologue
    .line 441
    new-instance v0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 442
    return-object v0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 282
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    const-string v1, "all rows have not been written"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->g:Lar/com/hjg/pngj/PngIDatChunkOutputStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/PngIDatChunkOutputStream;->flush()V

    .line 285
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->d()V

    .line 286
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngWriter;->close()V

    .line 292
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    :try_start_1
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lar/com/hjg/pngj/PngWriter;->close()V

    throw v0
.end method

.method public getChunksList()Lar/com/hjg/pngj/chunks/ChunksListForWrite;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    return-object v0
.end method

.method public getDebuginfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->debuginfo:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lar/com/hjg/pngj/chunks/PngMetadata;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->b:Lar/com/hjg/pngj/chunks/PngMetadata;

    return-object v0
.end method

.method public final getPixelsWriter()Lar/com/hjg/pngj/pixels/PixelsWriter;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    return-object v0
.end method

.method public queueChunk(Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 208
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngWriter;->getChunksList()Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    move-result-object v2

    invoke-virtual {v2, v0}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->removeChunk(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->a:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/chunks/ChunksListForWrite;->queue(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    .line 211
    return-void
.end method

.method public setCompLevel(I)V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setDeflaterCompLevel(Ljava/lang/Integer;)V

    .line 352
    return-void
.end method

.method public setFilterPreserve(Z)V
    .locals 2

    .prologue
    .line 358
    if-eqz p1, :cond_1

    .line 359
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v0, v1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    goto :goto_0
.end method

.method public setFilterType(Lar/com/hjg/pngj/FilterType;)V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 341
    return-void
.end method

.method public setIdatMaxSize(I)V
    .locals 0

    .prologue
    .line 372
    iput p1, p0, Lar/com/hjg/pngj/PngWriter;->f:I

    .line 373
    return-void
.end method

.method public setShouldCloseStream(Z)V
    .locals 0

    .prologue
    .line 381
    iput-boolean p1, p0, Lar/com/hjg/pngj/PngWriter;->e:Z

    .line 382
    return-void
.end method

.method public writeRow(Lar/com/hjg/pngj/IImageLine;)V
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/PngWriter;->writeRow(Lar/com/hjg/pngj/IImageLine;I)V

    .line 391
    return-void
.end method

.method public writeRow(Lar/com/hjg/pngj/IImageLine;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 402
    iget v1, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    .line 403
    iget v1, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    iget-object v2, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ne v1, v2, :cond_0

    .line 404
    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    .line 405
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ne p2, v1, :cond_1

    move p2, v0

    .line 407
    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    if-eq v0, p2, :cond_2

    .line 408
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rows must be written in order: expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " passed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->rowNum:I

    if-nez v0, :cond_3

    .line 411
    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/PngWriter;->d:I

    .line 412
    :cond_3
    if-nez p2, :cond_4

    iget v0, p0, Lar/com/hjg/pngj/PngWriter;->d:I

    iget v1, p0, Lar/com/hjg/pngj/PngWriter;->c:I

    if-ne v0, v1, :cond_4

    .line 413
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->a()V

    .line 414
    invoke-direct {p0}, Lar/com/hjg/pngj/PngWriter;->c()V

    .line 416
    :cond_4
    iget-object v0, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->getRowb()[B

    move-result-object v0

    .line 417
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/IImageLine;->writeToPngRaw([B)V

    .line 418
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->pixelsWriter:Lar/com/hjg/pngj/pixels/PixelsWriter;

    invoke-virtual {v1, v0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->processRow([B)V

    .line 420
    return-void
.end method

.method public writeRowInt([I)V
    .locals 2

    .prologue
    .line 426
    new-instance v0, Lar/com/hjg/pngj/ImageLineInt;

    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-direct {v0, v1, p1}, Lar/com/hjg/pngj/ImageLineInt;-><init>(Lar/com/hjg/pngj/ImageInfo;[I)V

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/PngWriter;->writeRow(Lar/com/hjg/pngj/IImageLine;)V

    .line 427
    return-void
.end method

.method public writeRows(Lar/com/hjg/pngj/IImageLineSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/IImageLineSet",
            "<+",
            "Lar/com/hjg/pngj/IImageLine;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lar/com/hjg/pngj/PngWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge v0, v1, :cond_0

    .line 398
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/IImageLineSet;->getImageLine(I)Lar/com/hjg/pngj/IImageLine;

    move-result-object v1

    invoke-virtual {p0, v1}, Lar/com/hjg/pngj/PngWriter;->writeRow(Lar/com/hjg/pngj/IImageLine;)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method
