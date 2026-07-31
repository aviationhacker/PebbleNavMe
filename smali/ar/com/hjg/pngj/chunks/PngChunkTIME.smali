.class public Lar/com/hjg/pngj/chunks/PngChunkTIME;
.super Lar/com/hjg/pngj/chunks/PngChunkSingle;
.source "SourceFile"


# static fields
.field public static final ID:Ljava/lang/String; = "tIME"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 21
    const-string v0, "tIME"

    invoke-direct {p0, v0, p1}, Lar/com/hjg/pngj/chunks/PngChunkSingle;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 22
    return-void
.end method


# virtual methods
.method public createRawChunk()Lar/com/hjg/pngj/chunks/ChunkRaw;
    .locals 4

    .prologue
    .line 31
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lar/com/hjg/pngj/chunks/PngChunkTIME;->createEmptyChunk(IZ)Lar/com/hjg/pngj/chunks/ChunkRaw;

    move-result-object v0

    .line 32
    iget v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->a:I

    iget-object v2, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt2tobytes(I[BI)V

    .line 33
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x2

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->b:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 34
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x3

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->c:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 35
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x4

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->d:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 36
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x5

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->e:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 37
    iget-object v1, v0, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v2, 0x6

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->f:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 38
    return-object v0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string v0, "%04d/%02d/%02d %02d:%02d:%02d"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getYMDHMS()[I
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->c:I

    aput v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->d:I

    aput v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->e:I

    aput v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->f:I

    aput v2, v0, v1

    return-object v0
.end method

.method public parseFromRaw(Lar/com/hjg/pngj/chunks/ChunkRaw;)V
    .locals 3

    .prologue
    .line 43
    iget v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->len:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 44
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad chunk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt2fromBytes([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->a:I

    .line 46
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->b:I

    .line 47
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->c:I

    .line 48
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->d:I

    .line 49
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->e:I

    .line 50
    iget-object v0, p1, Lar/com/hjg/pngj/chunks/ChunkRaw;->data:[B

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->readInt1fromByte([BI)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->f:I

    .line 51
    return-void
.end method

.method public setNow(I)V
    .locals 8

    .prologue
    .line 54
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    int-to-long v6, p1

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 56
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->a:I

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->b:I

    .line 58
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->c:I

    .line 59
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->d:I

    .line 60
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->e:I

    .line 61
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->f:I

    .line 62
    return-void
.end method

.method public setYMDHMS(IIIIII)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->a:I

    .line 66
    iput p2, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->b:I

    .line 67
    iput p3, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->c:I

    .line 68
    iput p4, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->d:I

    .line 69
    iput p5, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->e:I

    .line 70
    iput p6, p0, Lar/com/hjg/pngj/chunks/PngChunkTIME;->f:I

    .line 71
    return-void
.end method
