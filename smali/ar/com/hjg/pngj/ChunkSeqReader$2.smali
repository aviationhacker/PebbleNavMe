.class Lar/com/hjg/pngj/ChunkSeqReader$2;
.super Lar/com/hjg/pngj/ChunkReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/ChunkSeqReader;->createChunkReaderForNewChunk(Ljava/lang/String;IJZ)Lar/com/hjg/pngj/ChunkReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lar/com/hjg/pngj/ChunkSeqReader;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/ChunkSeqReader;ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V
    .locals 8

    .prologue
    .line 190
    iput-object p1, p0, Lar/com/hjg/pngj/ChunkSeqReader$2;->a:Lar/com/hjg/pngj/ChunkSeqReader;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lar/com/hjg/pngj/ChunkReader;-><init>(ILjava/lang/String;JLar/com/hjg/pngj/ChunkReader$ChunkReaderMode;)V

    return-void
.end method


# virtual methods
.method protected chunkDone()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lar/com/hjg/pngj/ChunkSeqReader$2;->a:Lar/com/hjg/pngj/ChunkSeqReader;

    invoke-virtual {v0, p0}, Lar/com/hjg/pngj/ChunkSeqReader;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    .line 194
    return-void
.end method

.method protected processData(I[BII)V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Lar/com/hjg/pngj/PngjExceptionInternal;

    const-string v1, "should never happen"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjExceptionInternal;-><init>(Ljava/lang/String;)V

    throw v0
.end method
