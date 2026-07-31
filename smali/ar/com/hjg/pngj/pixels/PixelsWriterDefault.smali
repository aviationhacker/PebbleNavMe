.class public Lar/com/hjg/pngj/pixels/PixelsWriterDefault;
.super Lar/com/hjg/pngj/pixels/PixelsWriter;
.source "SourceFile"


# instance fields
.field protected adaptMaxSkip:I

.field protected adaptNextRow:I

.field protected adaptSkipIncreaseFactor:D

.field protected adaptSkipIncreaseSinceRow:I

.field protected curfilterType:Lar/com/hjg/pngj/FilterType;

.field protected filtersPerformance:Lar/com/hjg/pngj/pixels/FiltersPerformance;

.field protected rowb:[B

.field protected rowbfilter:[B

.field protected rowbprev:[B


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lar/com/hjg/pngj/pixels/PixelsWriter;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptNextRow:I

    .line 34
    new-instance v0, Lar/com/hjg/pngj/pixels/FiltersPerformance;

    invoke-direct {v0, p1}, Lar/com/hjg/pngj/pixels/FiltersPerformance;-><init>(Lar/com/hjg/pngj/ImageInfo;)V

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filtersPerformance:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    .line 35
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->close()V

    .line 135
    return-void
.end method

.method protected decideCurFilterType()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    .line 120
    :cond_0
    :goto_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_NONE:Lar/com/hjg/pngj/FilterType;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    if-eq v0, v1, :cond_1

    .line 122
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_SUB:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    .line 123
    :cond_1
    return-void

    .line 96
    :cond_2
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_PRESERVE:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v2, :cond_3

    .line 97
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    aget-byte v0, v0, v1

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_CYCLIC:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v2, :cond_4

    .line 99
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    rem-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 100
    :cond_4
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    sget-object v2, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v2, :cond_5

    .line 101
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getDefaultFilter()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 102
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    goto :goto_0

    .line 103
    :cond_5
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isAdaptive(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptNextRow:I

    if-ne v0, v2, :cond_0

    .line 105
    invoke-static {}, Lar/com/hjg/pngj/FilterType;->getAllStandard()[Lar/com/hjg/pngj/FilterType;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_6

    aget-object v4, v2, v0

    .line 106
    iget-object v5, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filtersPerformance:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    iget-object v6, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    iget-object v7, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    iget v8, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    invoke-virtual {v5, v4, v6, v7, v8}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->updateFromRaw(Lar/com/hjg/pngj/FilterType;[B[BI)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_6
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filtersPerformance:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    invoke-virtual {v0}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->getPreferred()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    .line 108
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseSinceRow:I

    if-lt v0, v2, :cond_8

    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseSinceRow:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    iget-wide v4, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseFactor:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 111
    :goto_2
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptMaxSkip:I

    if-le v0, v2, :cond_7

    .line 112
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptMaxSkip:I

    .line 113
    :cond_7
    iget v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    if-nez v2, :cond_a

    .line 115
    :goto_3
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->currentRow:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptNextRow:I

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 108
    goto :goto_2

    .line 118
    :cond_9
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not implemented filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getFilterType()Lar/com/hjg/pngj/FilterType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move v1, v0

    goto :goto_3
.end method

.method protected filterAndWrite([B)V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    if-eq p1, v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "??"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->decideCurFilterType()V

    .line 84
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->curfilterType:Lar/com/hjg/pngj/FilterType;

    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbfilter:[B

    invoke-virtual {p0, v0, p1, v1, v2}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterRowWithFilterType(Lar/com/hjg/pngj/FilterType;[B[B[B)[B

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->sendToCompressedStream([B)V

    .line 87
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    .line 88
    iget-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    iput-object v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    .line 89
    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    .line 90
    return-void
.end method

.method public getRowb()[B
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->initdone:Z

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->init()V

    .line 129
    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    return-object v0
.end method

.method protected initParams()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 39
    invoke-super {p0}, Lar/com/hjg/pngj/pixels/PixelsWriter;->initParams()V

    .line 41
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->buflen:I

    if-ge v0, v1, :cond_1

    .line 42
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->buflen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowb:[B

    .line 43
    :cond_1
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbfilter:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbfilter:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->buflen:I

    if-ge v0, v1, :cond_3

    .line 44
    :cond_2
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->buflen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbfilter:[B

    .line 45
    :cond_3
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    if-eqz v0, :cond_4

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    array-length v0, v0

    iget v1, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->buflen:I

    if-ge v0, v1, :cond_9

    .line 46
    :cond_4
    iget v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->buflen:I

    new-array v0, v0, [B

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    .line 51
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ge v0, v5, :cond_5

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 52
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 53
    :cond_5
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->rows:I

    if-ge v0, v5, :cond_6

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 54
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_DEFAULT:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 56
    :cond_6
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ImageInfo;->getTotalPixels()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7

    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isValidStandard(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 57
    invoke-virtual {p0}, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->getDefaultFilter()Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    iput-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 59
    :cond_7
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->isAdaptive(Lar/com/hjg/pngj/FilterType;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 61
    iput v4, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptNextRow:I

    .line 62
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FAST:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v1, :cond_a

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptMaxSkip:I

    .line 64
    iput v5, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseSinceRow:I

    .line 65
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseFactor:D

    .line 77
    :cond_8
    :goto_1
    return-void

    .line 48
    :cond_9
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->rowbprev:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 66
    :cond_a
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_MEDIUM:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v1, :cond_b

    .line 67
    const/16 v0, 0x8

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptMaxSkip:I

    .line 68
    const/16 v0, 0x20

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseSinceRow:I

    .line 69
    const-wide v0, 0x3f8999999999999aL    # 0.0125

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseFactor:D

    goto :goto_1

    .line 70
    :cond_b
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    sget-object v1, Lar/com/hjg/pngj/FilterType;->FILTER_ADAPTIVE_FULL:Lar/com/hjg/pngj/FilterType;

    if-ne v0, v1, :cond_c

    .line 71
    iput v4, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptMaxSkip:I

    .line 72
    const/16 v0, 0x80

    iput v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseSinceRow:I

    .line 73
    const-wide v0, 0x3f81111111111111L    # 0.008333333333333333

    iput-wide v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->adaptSkipIncreaseFactor:D

    goto :goto_1

    .line 75
    :cond_c
    new-instance v0, Lar/com/hjg/pngj/PngjOutputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filterType:Lar/com/hjg/pngj/FilterType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilterWeights([D)V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filtersPerformance:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    invoke-virtual {v0, p1}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->setFilterWeights([D)V

    .line 156
    return-void
.end method

.method public setPreferenceForNone(D)V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filtersPerformance:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->setPreferenceForNone(D)V

    .line 142
    return-void
.end method

.method public tuneMemory(D)V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lar/com/hjg/pngj/pixels/PixelsWriterDefault;->filtersPerformance:Lar/com/hjg/pngj/pixels/FiltersPerformance;

    invoke-virtual {v0, p1, p2}, Lar/com/hjg/pngj/pixels/FiltersPerformance;->tuneMemory(D)V

    .line 149
    return-void
.end method
