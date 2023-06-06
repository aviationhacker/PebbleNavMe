.class public Lar/com/hjg/pngj/pixels/ImageLineARGBbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/IImageLine;


# instance fields
.field private final a:Ljava/awt/image/BufferedImage;

.field private b:I

.field private c:Z

.field private d:I

.field private e:Z

.field private f:[B

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;Ljava/awt/image/BufferedImage;[B)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->b:I

    .line 25
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 26
    iput-object p2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->a:Ljava/awt/image/BufferedImage;

    .line 27
    iput-object p3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    .line 29
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->a:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v0

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->c:Z

    .line 30
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->c:Z

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->a:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    .line 35
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->a:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    check-cast v0, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object v0

    aget v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->e:Z

    .line 36
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->a:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    goto :goto_0

    :cond_1
    move v0, v1

    .line 35
    goto :goto_1
.end method

.method public static getFactory(Lar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/IImageLineFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lar/com/hjg/pngj/ImageInfo;",
            ")",
            "Lar/com/hjg/pngj/IImageLineFactory",
            "<",
            "Lar/com/hjg/pngj/ImageLineByte;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/pixels/ImageLineARGBbi$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public endReadFromPngRaw()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRowNumber()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->b:I

    return v0
.end method

.method public readFromPngRaw([BIII)V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRowNumber(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->b:I

    .line 110
    return-void
.end method

.method public writeToPngRaw([B)V
    .locals 7

    .prologue
    .line 52
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    if-eq v0, v1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "??"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->b:I

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-lt v0, v1, :cond_2

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "???"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    iget v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->b:I

    mul-int/2addr v1, v0

    .line 58
    const/4 v0, 0x1

    .line 59
    iget-boolean v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->c:Z

    if-eqz v2, :cond_4

    .line 60
    iget-boolean v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->e:Z

    if-eqz v2, :cond_3

    .line 61
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    if-gt v0, v2, :cond_6

    .line 62
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v1

    .line 63
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    .line 64
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    .line 65
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, v6, v5

    .line 66
    add-int/lit8 v6, v0, 0x1

    aput-byte v5, p1, v0

    .line 67
    add-int/lit8 v0, v6, 0x1

    aput-byte v4, p1, v6

    .line 68
    add-int/lit8 v4, v0, 0x1

    aput-byte v3, p1, v0

    .line 69
    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p1, v4

    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    if-gt v0, v2, :cond_6

    .line 73
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    .line 74
    add-int/lit8 v0, v2, 0x1

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v3, v4, 0x1

    aget-byte v1, v1, v4

    aput-byte v1, p1, v2

    .line 75
    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v1, v1, v3

    aput-byte v1, p1, v0

    .line 76
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v1, v4, 0x1

    aget-byte v3, v3, v4

    aput-byte v3, p1, v2

    goto :goto_1

    .line 80
    :cond_4
    iget-boolean v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->e:Z

    if-eqz v2, :cond_5

    .line 81
    :goto_2
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    if-gt v0, v2, :cond_6

    .line 82
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v1

    .line 83
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    .line 84
    iget-object v5, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v1, v4, 0x1

    aget-byte v4, v5, v4

    .line 85
    add-int/lit8 v5, v0, 0x1

    aput-byte v4, p1, v0

    .line 86
    add-int/lit8 v4, v5, 0x1

    aput-byte v3, p1, v5

    .line 87
    add-int/lit8 v0, v4, 0x1

    aput-byte v2, p1, v4

    goto :goto_2

    .line 90
    :cond_5
    :goto_3
    iget v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->d:I

    if-gt v0, v2, :cond_6

    .line 91
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    .line 92
    add-int/lit8 v3, v2, 0x1

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v0, v0, v4

    aput-byte v0, p1, v2

    .line 93
    add-int/lit8 v0, v3, 0x1

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/ImageLineARGBbi;->f:[B

    add-int/lit8 v1, v5, 0x1

    aget-byte v2, v2, v5

    aput-byte v2, p1, v3

    goto :goto_3

    .line 98
    :cond_6
    return-void
.end method
