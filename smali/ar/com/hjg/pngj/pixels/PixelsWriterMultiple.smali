.class public Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;
.super Lar/com/hjg/pngj/pixels/PixelsWriter;
.source "SourceFile"


# static fields
.field protected static final HINT_MEMORY_DEFAULT_KB:I = 0x64


# instance fields
.field private a:Z

.field private b:I

.field protected bandNum:I

.field private c:Z

.field protected filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

.field protected filteredRowTmp:[B

.field protected filteredRows:[[B

.field protected filtersPerf:Lar/com/hjg/pngj/pixels/FiltersPerformance;

.field protected firstRowInThisBand:I

.field protected hintMemoryKb:I

.field protected lastRowInThisBand:I

.field protected rowInBand:I

.field protected rows:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[B>;"
        }
    .end annotation
.end field

.field protected rowsPerBand:I

.field protected rowsPerBandCurrent:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriter;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 20
    const/4 v1, 0x6

    new-array v1, v1, [Lar/com/hjg/pngj/pixels/CompressorStream;

    iput-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    .line 24
    const/4 v1, 0x5

    new-array v1, v1, [[B

    iput-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    .line 28
    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBand:I

    .line 29
    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBandCurrent:I

    .line 31
    iput v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowInBand:I

    .line 32
    iput v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->bandNum:I

    .line 34
    iput-boolean v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->a:Z

    .line 38
    const/16 v1, 0x64

    iput v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->hintMemoryKb:I

    .line 40
    const/16 v1, 0x3e8

    iput v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->b:I

    .line 42
    iput-boolean v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->c:Z

    .line 46
    new-instance v1, Lar/com/hjg/pngj/pixels/FiltersPerformance;

    invoke-direct {v1, p1}, Lar/com/hjg/pngj/pixels/FiltersPerformance;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filtersPerf:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    .line 47
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    .line 48
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRowTmp:[B

    .line 51
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    if-eqz v0, :cond_0

    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    if-le v0, v3, :cond_6

    :cond_0
    move v0, v2

    .line 116
    :goto_0
    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    if-nez v3, :cond_1

    .line 117
    const/4 v3, -0x1

    iput v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->bandNum:I

    .line 118
    :cond_1
    if-eqz v0, :cond_7

    .line 119
    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->bandNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->bandNum:I

    .line 120
    iput v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowInBand:I

    .line 124
    :goto_1
    if-eqz v0, :cond_5

    .line 125
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->firstRowInThisBand:I

    .line 126
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->firstRowInThisBand:I

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBand:I

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    .line 127
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->firstRowInThisBand:I

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBand:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    .line 128
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-lt v0, v3, :cond_2

    .line 130
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    .line 131
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->firstRowInThisBand:I

    sub-int/2addr v0, v3

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBandCurrent:I

    .line 132
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBandCurrent:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBandCurrent:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_4

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    const/16 v3, 0x40

    if-ge v0, v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    iput-boolean v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->a:Z

    .line 136
    invoke-direct {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->b()V

    .line 138
    :cond_5
    return-void

    :cond_6
    move v0, v1

    .line 115
    goto :goto_0

    .line 122
    :cond_7
    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowInBand:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowInBand:I

    goto :goto_1
.end method

.method private b()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 141
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBandCurrent:I

    int-to-long v0, v0

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    int-to-long v4, v3

    mul-long/2addr v4, v0

    move v0, v7

    .line 143
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_4

    .line 144
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    aget-object v1, v1, v0

    .line 145
    if-eqz v1, :cond_0

    iget-wide v8, v1, Lar/com/hjg/pngj/pixels/CompressorStream;->totalbytes:J

    cmp-long v3, v8, v4

    if-eqz v3, :cond_3

    .line 146
    :cond_0
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v1}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    .line 148
    :cond_1
    iget-boolean v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->c:Z

    if-eqz v1, :cond_2

    .line 149
    new-instance v1, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    invoke-direct {v1, v2, v3, v4, v5}, Lar/com/hjg/pngj/pixels/CompressorStreamLz4;-><init>(Ljava/io/OutputStream;IJ)V

    .line 154
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    aput-object v1, v3, v0

    .line 157
    :goto_2
    const/4 v3, 0x1

    iget v6, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBandCurrent:I

    invoke-virtual {v1, v3, v6}, Lar/com/hjg/pngj/pixels/CompressorStream;->setStoreFirstByte(ZI)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_2
    new-instance v1, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    const/4 v6, 0x4

    invoke-direct/range {v1 .. v7}, Lar/com/hjg/pngj/pixels/CompressorStreamDeflater;-><init>(Ljava/io/OutputStream;IJII)V

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {v1}, Lar/com/hjg/pngj/pixels/CompressorStream;->reset()V

    goto :goto_2

    .line 159
    :cond_4
    return-void
.end method

.method private c()I
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 163
    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->hintMemoryKb:I

    int-to-double v2, v1

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    mul-double/2addr v2, v4

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    sub-double/2addr v2, v4

    double-to-int v1, v2

    .line 164
    if-ge v1, v0, :cond_3

    .line 166
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->b:I

    if-lez v1, :cond_0

    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->b:I

    if-le v0, v1, :cond_0

    .line 167
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->b:I

    .line 168
    :cond_0
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-le v0, v1, :cond_1

    .line 169
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    .line 170
    :cond_1
    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    div-int/lit8 v1, v1, 0x8

    if-le v0, v1, :cond_2

    .line 171
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/lit8 v2, v0, -0x1

    add-int/2addr v1, v2

    div-int v0, v1, v0

    .line 172
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->rows:I

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    .line 174
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rows :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->rows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lar/com/hjg/pngj/PngHelperInternal;->debug(Ljava/lang/Object;)V

    .line 175
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private d()I
    .locals 8

    .prologue
    .line 179
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 180
    const/4 v1, -0x1

    .line 181
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    move v7, v0

    move v0, v1

    move v1, v7

    :goto_1
    if-ltz v1, :cond_1

    .line 182
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    aget-object v2, v2, v1

    .line 183
    invoke-virtual {v2}, Lar/com/hjg/pngj/pixels/CompressorStream;->getCompressionRatio()D

    move-result-wide v2

    .line 184
    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    move v0, v1

    .line 181
    :goto_2
    add-int/lit8 v1, v1, -0x1

    move-wide v4, v2

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 190
    :cond_1
    return v0

    :cond_2
    move-wide v2, v4

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 210
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->close()V

    .line 211
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 212
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 213
    invoke-virtual {v3}, Lar/com/hjg/pngj/pixels/CompressorStream;->close()V

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method protected filterAndWrite([B)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->initdone:Z

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->init()V

    .line 57
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    invoke-direct {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->a()V

    .line 60
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 61
    invoke-static {}, Lar/com/hjg/pngj/FilterType;->getAllStandardNoneLast()[Lar/com/hjg/pngj/FilterType;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v5, v3, v2

    .line 64
    iget v6, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    if-nez v6, :cond_3

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-eq v5, v6, :cond_3

    sget-object v6, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    if-eq v5, v6, :cond_3

    .line 61
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_3
    iget-object v6, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    iget v7, v5, Lar/com/hjg/pngj/FilterType;->val:I

    aget-object v6, v6, v7

    invoke-virtual {p0, v5, p1, v0, v6}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterRowWithFilterType(Lar/com/hjg/pngj/FilterType;[B[B[B)[B

    move-result-object v6

    .line 67
    iget-object v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    iget v8, v5, Lar/com/hjg/pngj/FilterType;->val:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([B)V

    .line 68
    iget v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    if-nez v7, :cond_4

    sget-object v7, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    if-ne v5, v7, :cond_4

    .line 69
    iget-object v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    sget-object v8, Lar/com/hjg/pngj/FilterType;->FILTER_PAETH:Lar/com/hjg/pngj/FilterType;

    iget v8, v8, Lar/com/hjg/pngj/FilterType;->val:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([B)V

    .line 70
    iget-object v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    sget-object v8, Lar/com/hjg/pngj/FilterType;->FILTER_AVERAGE:Lar/com/hjg/pngj/FilterType;

    iget v8, v8, Lar/com/hjg/pngj/FilterType;->val:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([B)V

    .line 71
    iget-object v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    sget-object v8, Lar/com/hjg/pngj/FilterType;->FILTER_UP:Lar/com/hjg/pngj/FilterType;

    iget v8, v8, Lar/com/hjg/pngj/FilterType;->val:I

    aget-object v7, v7, v8

    invoke-virtual {v7, v6}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([B)V

    .line 74
    :cond_4
    iget-boolean v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->a:Z

    if-eqz v7, :cond_2

    .line 75
    iget-object v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filtersPerf:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    iget v8, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    invoke-virtual {v7, v5, v6, v8}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->updateFromFiltered(Lar/com/hjg/pngj/FilterType;[BI)V

    goto :goto_1

    .line 78
    :cond_5
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    aput-object p1, v0, v1

    .line 79
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->a:Z

    if-eqz v0, :cond_6

    .line 80
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filtersPerf:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->getPreferred()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    .line 81
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget-object v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    iget v0, v0, Lar/com/hjg/pngj/FilterType;->val:I

    aget-object v0, v3, v0

    invoke-virtual {v2, v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->write([B)V

    .line 83
    :cond_6
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->currentRow:I

    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    if-ne v0, v2, :cond_8

    .line 84
    invoke-direct {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->d()I

    move-result v0

    .line 87
    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterBank:[Lar/com/hjg/pngj/pixels/CompressorStream;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/CompressorStream;->getFirstBytes()[B

    move-result-object v5

    .line 88
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->firstRowInThisBand:I

    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    iget v3, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->firstRowInThisBand:I

    sub-int/2addr v0, v3

    move v3, v1

    move v4, v2

    move v2, v0

    :goto_2
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    if-gt v4, v0, :cond_8

    .line 89
    aget-byte v0, v5, v3

    .line 91
    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->lastRowInThisBand:I

    if-eq v4, v1, :cond_7

    .line 92
    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v6

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v1, v7}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRowTmp:[B

    invoke-virtual {p0, v6, v0, v1, v7}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterRowWithFilterType(Lar/com/hjg/pngj/FilterType;[B[B[B)[B

    move-result-object v0

    .line 98
    :goto_3
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->sendToCompressedStream([B)V

    .line 88
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v1, v3, 0x1

    move v2, v0

    move v3, v1

    goto :goto_2

    .line 96
    :cond_7
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    aget-object v0, v1, v0

    goto :goto_3

    .line 102
    :cond_8
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBandCurrent:I

    if-le v0, v1, :cond_9

    .line 103
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 106
    :goto_4
    return-void

    .line 105
    :cond_9
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public getFiltersPerf()Lar/com/hjg/pngj/pixels/FiltersPerformance;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filtersPerf:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    return-object v0
.end method

.method public getRowb()[B
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rows:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method protected initParams()V
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 196
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterType:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 198
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterType:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 200
    :cond_1
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    .line 201
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    aget-object v1, v1, v0

    array-length v1, v1

    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    if-ge v1, v2, :cond_3

    .line 202
    :cond_2
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->filteredRows:[[B

    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->buflen:I

    new-array v2, v2, [B

    aput-object v2, v1, v0

    .line 200
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_4
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBand:I

    if-nez v0, :cond_5

    .line 205
    invoke-direct {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->c()I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->rowsPerBand:I

    .line 206
    :cond_5
    return-void
.end method

.method public setHintMemoryKb(I)V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 218
    if-gtz p1, :cond_1

    const/16 p1, 0x64

    :cond_0
    :goto_0
    iput p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->hintMemoryKb:I

    .line 220
    return-void

    .line 218
    :cond_1
    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0
.end method

.method public setHintRowsPerBand(I)V
    .locals 0

    .prologue
    .line 223
    iput p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->b:I

    .line 224
    return-void
.end method

.method public setUseLz4(Z)V
    .locals 0

    .prologue
    .line 227
    iput-boolean p1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterMultiple;->c:Z

    .line 228
    return-void
.end method
