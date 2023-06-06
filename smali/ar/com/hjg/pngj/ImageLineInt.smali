.class public Lar/com/hjg/pngj/ImageLineInt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/IImageLine;
.implements Lar/com/hjg/pngj/IImageLineArray;


# instance fields
.field protected filterType:Lar/com/hjg/pngj/FilterType;

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;

.field protected final scanline:[I

.field protected final size:I


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/ImageLineInt;-><init>(Lar/com/hjg/pngj/ImageInfo;[I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;[I)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 47
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 48
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 49
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    iput v0, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    .line 50
    if-eqz p2, :cond_0

    array-length v0, p2

    iget v1, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-lt v0, v1, :cond_0

    :goto_0
    iput-object p2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    .line 51
    return-void

    .line 50
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    new-array p2, v0, [I

    goto :goto_0
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
            "Lar/com/hjg/pngj/ImageLineInt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lar/com/hjg/pngj/ImageLineInt$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/ImageLineInt$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public endReadFromPngRaw()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public getElem(I)I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v0, v0, p1

    return v0
.end method

.method public getFilterType()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public getImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    return-object v0
.end method

.method public getScanline()[I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    return v0
.end method

.method public readFromPngRaw([BIII)V
    .locals 10

    .prologue
    .line 69
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    invoke-static {v0}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lar/com/hjg/pngj/ImageLineInt;->setFilterType(Lar/com/hjg/pngj/FilterType;)V

    .line 70
    add-int/lit8 v3, p2, -0x1

    .line 71
    add-int/lit8 v0, p4, -0x1

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v6, v0, v1

    .line 72
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 73
    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v0, v1, :cond_a

    .line 75
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p3

    :goto_1
    if-gt v2, v3, :cond_a

    .line 79
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    aput v5, v4, v0

    .line 80
    add-int/lit8 v1, v1, 0x1

    .line 81
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v1, v4, :cond_1

    .line 82
    const/4 v1, 0x0

    .line 83
    add-int/2addr v0, v6

    .line 78
    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_2
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 88
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    .line 89
    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_2
    iget v2, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v1, v2, :cond_a

    .line 90
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v4, v0, 0x8

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 93
    :cond_3
    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p3

    :goto_3
    if-gt v2, v3, :cond_a

    .line 94
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v7, p1, v5

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, v4, v0

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 96
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v1, v2, :cond_4

    .line 97
    const/4 v1, 0x0

    .line 98
    add-int/2addr v0, v6

    .line 93
    :cond_4
    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 104
    :cond_6
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v7, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 105
    invoke-static {v7}, Lar/com/hjg/pngj/ImageLineHelper;->a(I)I

    move-result v4

    .line 106
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v2, p3, v0

    const/4 v1, 0x1

    const/4 v0, 0x0

    move v5, v1

    move v1, v2

    :goto_4
    if-ge v5, p2, :cond_a

    .line 108
    rsub-int/lit8 v2, v7, 0x8

    move v3, v4

    .line 110
    :cond_7
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget-byte v9, p1, v5

    and-int/2addr v9, v3

    shr-int/2addr v9, v2

    aput v9, v8, v1

    .line 111
    shr-int/2addr v3, v7

    .line 112
    sub-int/2addr v2, v7

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    iget-object v8, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v8, v8, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v0, v8, :cond_8

    .line 116
    const/4 v0, 0x0

    .line 117
    add-int/2addr v1, v6

    .line 119
    :cond_8
    if-eqz v3, :cond_9

    iget v8, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-lt v1, v8, :cond_7

    .line 106
    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    .line 122
    :cond_a
    return-void
.end method

.method protected setFilterType(Lar/com/hjg/pngj/FilterType;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToPngRaw([B)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->filterType:Lar/com/hjg/pngj/FilterType;

    iget v2, v2, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 126
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 127
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v0, v1, :cond_3

    .line 128
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    move v7, v1

    move v1, v0

    move v0, v7

    .line 131
    :goto_1
    iget v2, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v1, v2, :cond_3

    .line 132
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v3, v3, v1

    shr-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    .line 133
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 138
    rsub-int/lit8 v2, v6, 0x8

    move v3, v0

    move v4, v2

    move v2, v0

    .line 140
    :goto_2
    iget v5, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    if-ge v2, v5, :cond_3

    .line 141
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v5, v5, v2

    shl-int/2addr v5, v4

    or-int/2addr v5, v3

    .line 142
    sub-int/2addr v4, v6

    .line 143
    if-ltz v4, :cond_2

    iget v3, p0, Lar/com/hjg/pngj/ImageLineInt;->size:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 144
    :cond_2
    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, v5

    aput-byte v4, p1, v1

    .line 145
    rsub-int/lit8 v4, v6, 0x8

    move v1, v3

    move v3, v0

    .line 140
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    :cond_3
    return-void

    :cond_4
    move v3, v5

    goto :goto_3
.end method
