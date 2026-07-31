.class public Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/IImageLineSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lar/com/hjg/pngj/IImageLineSet",
        "<",
        "Lar/com/hjg/pngj/pixels/ImageLineARGBbi;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/awt/image/BufferedImage;

.field private b:Lar/com/hjg/pngj/ImageInfo;

.field private c:Lar/com/hjg/pngj/pixels/ImageLineARGBbi;


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->a:Ljava/awt/image/BufferedImage;

    .line 18
    iput-object p2, p0, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->b:Lar/com/hjg/pngj/ImageInfo;

    .line 19
    new-instance v1, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->a:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    check-cast v0, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v0}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v0

    invoke-direct {v1, p2, p1, v0}, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;-><init>(Lar/com/hjg/pngj/ImageInfo;Ljava/awt/image/BufferedImage;[B)V

    iput-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->c:Lar/com/hjg/pngj/pixels/ImageLineARGBbi;

    .line 22
    return-void
.end method


# virtual methods
.method public bridge synthetic getImageLine(I)Lar/com/hjg/pngj/IImageLine;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->getImageLine(I)Lar/com/hjg/pngj/pixels/ImageLineARGBbi;

    move-result-object v0

    return-object v0
.end method

.method public getImageLine(I)Lar/com/hjg/pngj/pixels/ImageLineARGBbi;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->c:Lar/com/hjg/pngj/pixels/ImageLineARGBbi;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->setRowNumber(I)V

    .line 26
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->c:Lar/com/hjg/pngj/pixels/ImageLineARGBbi;

    return-object v0
.end method

.method public hasImageLine(I)Z
    .locals 1

    .prologue
    .line 30
    if-ltz p1, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineSetARGBbi;->b:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method
