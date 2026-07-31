.class public Lar/com/hjg/pngj/IdatSet;
.super Lar/com/hjg/pngj/DeflatedChunksSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/IdatSet$1;
    }
.end annotation


# instance fields
.field final b:Lgg;

.field protected final deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

.field protected filterUseStat:[I

.field protected final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field protected rowUnfiltered:[B

.field protected rowUnfilteredPrev:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/IdatSet;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;Ljava/util/zip/Inflater;[B)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;Ljava/util/zip/Inflater;[B)V
    .locals 6

    .prologue
    .line 41
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lar/com/hjg/pngj/Deinterlacer;->getBytesToRead()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    :goto_0
    iget v0, p2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v3, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lar/com/hjg/pngj/DeflatedChunksSet;-><init>(Ljava/lang/String;IILjava/util/zip/Inflater;[B)V

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->filterUseStat:[I

    .line 43
    iput-object p2, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 44
    iput-object p3, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    .line 45
    new-instance v0, Lgg;

    invoke-direct {v0, p2, p3}, Lgg;-><init>(Lar/com/hjg/pngj/ImageInfo;Lar/com/hjg/pngj/Deinterlacer;)V

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->b:Lgg;

    .line 46
    return-void

    .line 41
    :cond_0
    iget v0, p2, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v2, v0, 0x1

    goto :goto_0
.end method

.method private a(I)V
    .locals 6

    .prologue
    .line 98
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    rsub-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gt v2, p1, :cond_1

    .line 99
    if-lez v1, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 100
    :goto_1
    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v4, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v4, v4, v2

    iget-object v5, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v3, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 102
    :cond_1
    return-void
.end method

.method private b(I)V
    .locals 3

    .prologue
    .line 105
    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_0

    .line 106
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v2, v2, v0

    aput-byte v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    rsub-int/lit8 v0, v0, 0x1

    const/4 v2, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    if-gt v4, p1, :cond_2

    .line 113
    if-lez v3, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    .line 114
    :goto_1
    if-lez v3, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    .line 115
    :goto_2
    iget-object v5, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v6, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v6, v6, v4

    iget-object v7, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    invoke-static {v2, v7, v0}, Lar/com/hjg/pngj/PngHelperInternal;->a(III)I

    move-result v0

    add-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, v5, v4

    .line 112
    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    :cond_0
    move v2, v1

    .line 113
    goto :goto_1

    :cond_1
    move v0, v1

    .line 114
    goto :goto_2

    .line 119
    :cond_2
    return-void
.end method

.method private d(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 123
    move v0, v1

    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    if-gt v0, v2, :cond_0

    .line 124
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPixel:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    if-gt v0, p1, :cond_1

    .line 127
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v3, v3, v0

    iget-object v4, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    aget-byte v4, v4, v1

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 126
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 129
    :cond_1
    return-void
.end method

.method private e(I)V
    .locals 4

    .prologue
    .line 132
    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_0

    .line 133
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v2, v2, v0

    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method varargs a([Ljava/util/zip/Checksum;)V
    .locals 6

    .prologue
    .line 218
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 219
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getUnfilteredRow()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getRowFilled()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v3, v4, v5}, Ljava/util/zip/Checksum;->update([BII)V

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method public advanceToNextRow()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    if-nez v1, :cond_3

    .line 183
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getRown()I

    move-result v1

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->rows:I

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_2

    .line 188
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->isCallbackMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/IdatSet;->prepareForNextRow(I)V

    .line 191
    :cond_1
    return v0

    .line 183
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bytesPerRow:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_3
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v1}, Lar/com/hjg/pngj/Deinterlacer;->a()Z

    move-result v1

    .line 186
    if-eqz v1, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->getBytesToRead()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    invoke-super {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->close()V

    .line 226
    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 227
    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    .line 228
    return-void
.end method

.method public getDeinterlacer()Lar/com/hjg/pngj/Deinterlacer;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->deinterlacer:Lar/com/hjg/pngj/Deinterlacer;

    return-object v0
.end method

.method public getFilterUseStat()[I
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->filterUseStat:[I

    return-object v0
.end method

.method public getUnfilteredRow()[B
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    return-object v0
.end method

.method public isRowReady()Z
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->isWaitingForMoreInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected preProcessRow()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Lar/com/hjg/pngj/DeflatedChunksSet;->preProcessRow()V

    .line 143
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->b:Lgg;

    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->getRown()I

    move-result v1

    invoke-virtual {v0, v1}, Lgg;->a(I)V

    .line 144
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->unfilterRow()V

    .line 145
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->b:Lgg;

    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->b:Lgg;

    iget v2, v2, Lgg;->m:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgg;->a([BI)V

    .line 146
    return-void
.end method

.method protected processDoneCallback()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method protected processRowCallback()I
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lar/com/hjg/pngj/IdatSet;->advanceToNextRow()I

    move-result v0

    .line 164
    return v0
.end method

.method public unfilterRow()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->b:Lgg;

    iget v0, v0, Lgg;->m:I

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/IdatSet;->unfilterRow(I)V

    .line 54
    return-void
.end method

.method protected unfilterRow(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 58
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    array-length v0, v0

    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 59
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 60
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    .line 62
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->b:Lgg;

    iget v0, v0, Lgg;->j:I

    if-nez v0, :cond_2

    .line 63
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 65
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 66
    iget-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    iput-object v1, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    .line 67
    iput-object v0, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfilteredPrev:[B

    .line 69
    iget-object v0, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v0, v0, v4

    .line 70
    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v1

    .line 71
    if-nez v1, :cond_3

    .line 72
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_3
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->filterUseStat:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 74
    iget-object v2, p0, Lar/com/hjg/pngj/IdatSet;->rowUnfiltered:[B

    iget-object v3, p0, Lar/com/hjg/pngj/IdatSet;->row:[B

    aget-byte v3, v3, v4

    aput-byte v3, v2, v4

    .line 75
    sget-object v2, Lar/com/hjg/pngj/IdatSet$1;->a:[I

    invoke-virtual {v1}, Lar/com/hjg/pngj/FilterType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 92
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " not implemented"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :pswitch_0
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->b(I)V

    .line 94
    :goto_0
    return-void

    .line 80
    :pswitch_1
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->d(I)V

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->e(I)V

    goto :goto_0

    .line 86
    :pswitch_3
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->a(I)V

    goto :goto_0

    .line 89
    :pswitch_4
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/IdatSet;->c(I)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
