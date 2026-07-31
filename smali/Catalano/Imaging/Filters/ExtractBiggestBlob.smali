.class public LCatalano/Imaging/Filters/ExtractBiggestBlob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LCatalano/Imaging/IApplyInPlace;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/ExtractBiggestBlob;->a:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, LCatalano/Imaging/Filters/ExtractBiggestBlob;->a:Z

    .line 51
    iput-boolean p1, p0, LCatalano/Imaging/Filters/ExtractBiggestBlob;->a:Z

    .line 52
    return-void
.end method


# virtual methods
.method public applyInPlace(LCatalano/Imaging/FastBitmap;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->isGrayscale()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    new-instance v0, LCatalano/Imaging/Tools/BlobDetection;

    invoke-direct {v0}, LCatalano/Imaging/Tools/BlobDetection;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, LCatalano/Imaging/Tools/BlobDetection;->ProcessImage(LCatalano/Imaging/FastBitmap;)Ljava/util/List;

    move-result-object v2

    .line 62
    invoke-virtual {v0}, LCatalano/Imaging/Tools/BlobDetection;->getIdBiggestBlob()I

    move-result v0

    .line 64
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Imaging/Tools/Blob;

    invoke-virtual {v0}, LCatalano/Imaging/Tools/Blob;->getPoints()Ljava/util/ArrayList;

    move-result-object v2

    .line 66
    iget-boolean v0, p0, LCatalano/Imaging/Filters/ExtractBiggestBlob;->a:Z

    if-eqz v0, :cond_1

    .line 68
    new-instance v3, LCatalano/Imaging/FastBitmap;

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, LCatalano/Imaging/FastBitmap;->getHeight()I

    move-result v4

    sget-object v5, LCatalano/Imaging/FastBitmap$ColorSpace;->Grayscale:LCatalano/Imaging/FastBitmap$ColorSpace;

    invoke-direct {v3, v0, v4, v5}, LCatalano/Imaging/FastBitmap;-><init>(IILCatalano/Imaging/FastBitmap$ColorSpace;)V

    .line 69
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 70
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    const/16 v4, 0xff

    invoke-virtual {v3, v0, v4}, LCatalano/Imaging/FastBitmap;->setGray(LCatalano/Core/IntPoint;I)V

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p1, v3}, LCatalano/Imaging/FastBitmap;->setImage(LCatalano/Imaging/FastBitmap;)V

    .line 89
    :goto_1
    return-void

    .line 76
    :cond_1
    invoke-static {v2}, LCatalano/Math/Geometry/PointsCloud;->GetBoundingRectangle(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 78
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v3, v0, LCatalano/Core/IntPoint;->x:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 79
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v4, v0, LCatalano/Core/IntPoint;->y:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 81
    new-instance v5, LCatalano/Imaging/Filters/Crop;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->x:I

    add-int/lit8 v6, v0, -0x2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LCatalano/Core/IntPoint;

    iget v0, v0, LCatalano/Core/IntPoint;->y:I

    add-int/lit8 v0, v0, -0x2

    add-int/lit8 v1, v4, 0x5

    add-int/lit8 v2, v3, 0x4

    invoke-direct {v5, v6, v0, v1, v2}, LCatalano/Imaging/Filters/Crop;-><init>(IIII)V

    .line 82
    invoke-virtual {v5, p1}, LCatalano/Imaging/Filters/Crop;->ApplyInPlace(LCatalano/Imaging/FastBitmap;)V

    goto :goto_1

    .line 87
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Extract Biggest Blob only works in grayscale images."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
