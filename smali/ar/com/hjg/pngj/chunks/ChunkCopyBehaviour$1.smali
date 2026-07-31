.class final Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/chunks/ChunkPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->createPredicate(ILar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/ChunkPredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lar/com/hjg/pngj/ImageInfo;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/ImageInfo;I)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->a:Lar/com/hjg/pngj/ImageInfo;

    iput p2, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    .line 65
    iget-boolean v1, p1, Lar/com/hjg/pngj/chunks/PngChunk;->crit:Z

    if-eqz v1, :cond_3

    .line 66
    iget-object v1, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v2, "PLTE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->a:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    invoke-static {v1, v0}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->a:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->greyscale:Z

    if-nez v1, :cond_2

    iget v1, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    invoke-static {v1, v4}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_3
    instance-of v1, p1, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    .line 74
    iget-boolean v2, p1, Lar/com/hjg/pngj/chunks/PngChunk;->safe:Z

    .line 76
    iget v3, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    invoke-static {v3, v4}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    if-eqz v2, :cond_4

    iget v2, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    :cond_4
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v3, "tRNS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    const/16 v3, 0x40

    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    :cond_5
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v3, "pHYs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    const/16 v3, 0x10

    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    :cond_6
    if-eqz v1, :cond_7

    iget v2, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    :cond_7
    iget v2, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isUnknown(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v2

    if-nez v2, :cond_8

    if-nez v1, :cond_8

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v2, "hIST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    const-string v2, "tIME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :cond_8
    iget v1, p0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;->b:I

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->a(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isUnknown(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0
.end method
