.class public abstract Lar/com/hjg/pngj/pixels/PixelsWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/pixels/PixelsWriter$1;
    }
.end annotation


# instance fields
.field private a:Lar/com/hjg/pngj/pixels/CompressorStream;

.field private b:[I

.field protected final buflen:I

.field protected final bytesPixel:I

.field protected final bytesRow:I

.field private c:Ljava/io/OutputStream;

.field protected currentRow:I

.field protected deflaterCompLevel:I

.field protected deflaterStrategy:I

.field protected filterType:Lar/com/hjg/pngj/FilterType;

.field protected final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field protected initdone:Z


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x6

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    .line 32
    iput v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterStrategy:I

    .line 34
    iput-boolean v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->b:[I

    .line 52
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 53
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    .line 54
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->buflen:I

    .line 55
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->currentRow:I

    .line 57
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    .line 164
    :cond_0
    return-void
.end method

.method protected abstract filterAndWrite([B)V
.end method

.method protected final filterRowWithFilterType(Lar/com/hjg/pngj/FilterType;[B[B[B)[B
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 97
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-ne p1, v0, :cond_0

    move-object p4, p2

    .line 99
    :cond_0
    iget v0, p1, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v0, v0

    aput-byte v0, p4, v4

    .line 101
    sget-object v0, Lar/com/hjg/pngj/pixels/PixelsWriter$1;->a:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 130
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter type not recognized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v0, v1

    .line 106
    :goto_0
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    if-gt v0, v2, :cond_1

    .line 107
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v2, v4, v3, v4}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_1
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt v0, v2, :cond_4

    .line 109
    aget-byte v2, p2, v0

    aget-byte v3, p2, v1

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    aget-byte v5, p3, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v2, v3, v4, v5}, Lar/com/hjg/pngj/PngHelperInternal;->filterRowPaeth(IIII)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 108
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 114
    :goto_2
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    if-gt v0, v2, :cond_2

    .line 115
    aget-byte v2, p2, v0

    aput-byte v2, p4, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt v0, v2, :cond_4

    .line 117
    aget-byte v2, p2, v0

    aget-byte v3, p2, v1

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_2
    move v0, v1

    .line 120
    :goto_4
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    if-gt v0, v2, :cond_3

    .line 121
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 122
    :cond_3
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesPixel:I

    add-int/lit8 v0, v0, 0x1

    :goto_5
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt v0, v2, :cond_4

    .line 123
    aget-byte v2, p2, v0

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p2, v1

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v0

    .line 122
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 126
    :goto_6
    :pswitch_3
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->bytesRow:I

    if-gt v1, v0, :cond_4

    .line 127
    aget-byte v0, p2, v1

    aget-byte v2, p3, v1

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p4, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 132
    :cond_4
    :pswitch_4
    return-object p4

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCompression()D
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->getCompressionRatio()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_0
.end method

.method protected getDefaultFilter()Lar/com/hjg/pngj/FilterType;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 221
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 222
    :cond_0
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    .line 230
    :goto_0
    return-object v0

    .line 223
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ImageInfo;->getTotalPixels()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 224
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ne v0, v4, :cond_3

    .line 226
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ne v0, v4, :cond_4

    .line 228
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 230
    :cond_4
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    goto :goto_0
.end method

.method public getDeflaterCompLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getFilterType()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public final getFiltersUsed()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 235
    const-string v0, "%d,%d,%d,%d,%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->b:[I

    aget v2, v2, v6

    int-to-double v2, v2

    mul-double/2addr v2, v10

    iget-object v4, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->b:[I

    aget v2, v2, v7

    int-to-double v2, v2

    mul-double/2addr v2, v10

    iget-object v4, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->b:[I

    aget v2, v2, v12

    int-to-double v2, v2

    mul-double/2addr v2, v10

    iget-object v4, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    add-double/2addr v2, v8

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x3

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->b:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    int-to-double v4, v3

    mul-double/2addr v4, v10

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->b:[I

    const/4 v4, 0x4

    aget v3, v3, v4

    int-to-double v4, v3

    mul-double/2addr v4, v10

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->rows:I

    int-to-double v6, v3

    div-double/2addr v4, v6

    add-double/2addr v4, v8

    double-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOs()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method public abstract getRowb()[B
.end method

.method public getTotalBytesToWrite()J
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ImageInfo;->getTotalRawBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final init()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->initParams()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    .line 149
    :cond_0
    return-void
.end method

.method protected initParams()V
    .locals 8

    .prologue
    .line 153
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    if-nez v0, :cond_0

    .line 154
    new-instance v1, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->c:Ljava/io/OutputStream;

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->buflen:I

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ImageInfo;->getTotalRawBytes()J

    move-result-wide v4

    iget v6, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    iget v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterStrategy:I

    invoke-direct/range {v1 .. v7}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;-><init>(Ljava/io/OutputStream;IJII)V

    iput-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    .line 157
    :cond_0
    return-void
.end method

.method public final processRow([B)V
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->initdone:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->init()V

    .line 65
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->currentRow:I

    .line 66
    invoke-virtual {p0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterAndWrite([B)V

    .line 67
    return-void
.end method

.method protected sendToCompressedStream([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([BII)V

    .line 71
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->b:[I

    aget-byte v1, p1, v2

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 72
    return-void
.end method

.method public setCompressorStream(Lar/com/hjg/pngj/pixels/CompressorStream;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->a:Lar/com/hjg/pngj/pixels/CompressorStream;

    .line 210
    return-void
.end method

.method public setDeflaterCompLevel(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterCompLevel:I

    .line 178
    return-void
.end method

.method public setDeflaterStrategy(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->deflaterStrategy:I

    .line 171
    return-void
.end method

.method public final setFilterType(Lar/com/hjg/pngj/FilterType;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 201
    return-void
.end method

.method public final setOs(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriter;->c:Ljava/io/OutputStream;

    .line 187
    return-void
.end method
