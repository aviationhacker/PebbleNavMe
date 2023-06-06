.class Lar/com/hjg/pngj/PngReaderFilter$1;
.super Lar/com/hjg/pngj/ChunkSeqReaderPng;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/PngReaderFilter;->createChunkSequenceReader()Lar/com/hjg/pngj/ChunkSeqReaderPng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lar/com/hjg/pngj/PngReaderFilter;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/PngReaderFilter;Z)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lar/com/hjg/pngj/PngReaderFilter$1;->a:Lar/com/hjg/pngj/PngReaderFilter;

    invoke-direct {p0, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->postProcessChunk(Lar/com/hjg/pngj/ChunkReader;)V

    .line 51
    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipContent(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->shouldSkipContent(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IDAT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
