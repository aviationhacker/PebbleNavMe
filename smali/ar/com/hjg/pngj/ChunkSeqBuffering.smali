.class public Lar/com/hjg/pngj/ChunkSeqBuffering;
.super Lar/com/hjg/pngj/ChunkSeqReader;
.source "SourceFile"


# instance fields
.field protected checkCrc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lar/com/hjg/pngj/ChunkSeqReader;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqBuffering;->checkCrc:Z

    .line 13
    return-void
.end method


# virtual methods
.method protected isIdatKind(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckCrc(Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqBuffering;->checkCrc:Z

    .line 27
    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqBuffering;->checkCrc:Z

    return v0
.end method
