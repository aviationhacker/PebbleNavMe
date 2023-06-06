.class Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/chunks/ChunkPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lar/com/hjg/pngj/chunks/ChunksListForWrite;->getQueuedEquivalent(Lar/com/hjg/pngj/chunks/PngChunk;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lar/com/hjg/pngj/chunks/PngChunk;

.field final synthetic b:Lar/com/hjg/pngj/chunks/ChunksListForWrite;


# direct methods
.method constructor <init>(Lar/com/hjg/pngj/chunks/ChunksListForWrite;Lar/com/hjg/pngj/chunks/PngChunk;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;->b:Lar/com/hjg/pngj/chunks/ChunksListForWrite;

    iput-object p2, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;->a:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/ChunksListForWrite$1;->a:Lar/com/hjg/pngj/chunks/PngChunk;

    invoke-static {p1, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->equivalent(Lar/com/hjg/pngj/chunks/PngChunk;Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v0

    return v0
.end method
