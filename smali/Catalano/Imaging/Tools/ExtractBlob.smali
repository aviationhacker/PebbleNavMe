.class public LCatalano/Imaging/Tools/ExtractBlob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Tools/Blob;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LCatalano/Imaging/Tools/Blob;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, LCatalano/Imaging/Tools/ExtractBlob;->a:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public Extract(ILCatalano/Imaging/FastBitmap;)LCatalano/Imaging/FastBitmap;
    .locals 7

    .prologue
    .line 57
    iget-object v0, p0, LCatalano/Imaging/Tools/ExtractBlob;->a:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, LCatalano/Imaging/Tools/BlobDetection;

    invoke-direct {v0}, LCatalano/Imaging/Tools/BlobDetection;-><init>()V

    invoke-virtual {v0, p2}, LCatalano/Imaging/Tools/BlobDetection;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LCatalano/Imaging/Tools/ExtractBlob;->a:Ljava/util/List;

    .line 62
    :cond_0
    invoke-virtual {p2}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-virtual {p2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    sget-object v3, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v1, v0, v2, v3}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 64
    iget-object v0, p0, LCatalano/Imaging/Tools/ExtractBlob;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 65
    iget v3, v0, LCatalano/Core/IntPoint;->x:I

    iget v4, v0, LCatalano/Core/IntPoint;->y:I

    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p2, v5, v0}, LCatalano/Imaging/FastBitmap;->getGray(II)I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, LCatalano/Imaging/FastBitmap;->setGray(III)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 76
    :goto_1
    return-object v0

    .line 69
    :cond_2
    new-instance v1, LCatalano/Imaging/FastBitmap;

    invoke-virtual {p2}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v2

    sget-object v3, LCatalano/Imaging/FastBitmap$ColorSpace;->RGB:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v1, v0, v2, v3}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 70
    iget-object v0, p0, LCatalano/Imaging/Tools/ExtractBlob;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getPoints()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    .line 71
    iget v3, v0, LCatalano/Core/IntPoint;->x:I

    iget v4, v0, LCatalano/Core/IntPoint;->y:I

    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v6, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p2, v5, v6}, LCatalano/Imaging/FastBitmap;->getRed(II)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setRed(III)V

    .line 72
    iget v3, v0, LCatalano/Core/IntPoint;->x:I

    iget v4, v0, LCatalano/Core/IntPoint;->y:I

    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v6, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p2, v5, v6}, LCatalano/Imaging/FastBitmap;->getGreen(II)I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, LCatalano/Imaging/FastBitmap;->setGreen(III)V

    .line 73
    iget v3, v0, LCatalano/Core/IntPoint;->x:I

    iget v4, v0, LCatalano/Core/IntPoint;->y:I

    iget v5, v0, LCatalano/Core/IntPoint;->x:I

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {p2, v5, v0}, LCatalano/Imaging/FastBitmap;->getBlue(II)I

    move-result v0

    invoke-virtual {v1, v3, v4, v0}, LCatalano/Imaging/FastBitmap;->setBlue(III)V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
