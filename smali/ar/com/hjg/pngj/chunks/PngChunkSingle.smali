.class public abstract Lar/com/hjg/pngj/chunks/PngChunkSingle;
.super Lar/com/hjg/pngj/chunks/PngChunk;
.source "SourceFile"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunk;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final allowsMultiple()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    if-ne p0, p1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_3
    check-cast p1, Lar/com/hjg/pngj/chunks/PngChunkSingle;

    .line 35
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 36
    iget-object v2, p1, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_4
    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 39
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 20
    .line 22
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 23
    return v0

    .line 22
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSingle;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method
