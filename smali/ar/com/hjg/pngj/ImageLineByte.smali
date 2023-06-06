.class public Lar/com/hjg/pngj/ImageLineByte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lar/com/hjg/pngj/IImageLine;
.implements Lar/com/hjg/pngj/IImageLineArray;


# instance fields
.field final a:[B

.field final b:[B

.field final c:I

.field protected filterType:Lar/com/hjg/pngj/FilterType;

.field public final imgInfo:Lar/com/hjg/pngj/ImageInfo;


# direct methods
.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/ImageLineByte;-><init>(Lar/com/hjg/pngj/ImageInfo;[B)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lar/com/hjg/pngj/ImageInfo;[B)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    .line 29
    sget-object v0, Lar/com/hjg/pngj/FilterType;->FILTER_UNKNOWN:Lar/com/hjg/pngj/FilterType;

    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 30
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    iput v0, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    .line 31
    if-eqz p2, :cond_0

    array-length v0, p2

    iget v1, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    if-lt v0, v1, :cond_0

    :goto_0
    iput-object p2, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    .line 32
    iget v0, p1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    new-array v0, v0, [B

    :goto_1
    iput-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->b:[B

    .line 33
    return-void

    .line 31
    :cond_0
    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    new-array p2, v0, [B

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

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
    .line 36
    new-instance v0, Lar/com/hjg/pngj/ImageLineByte$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/ImageLineByte$1;-><init>()V

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
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->b:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->b:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public getFilterType()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public getFilterUsed()Lar/com/hjg/pngj/FilterType;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    return-object v0
.end method

.method public getImageInfo()Lar/com/hjg/pngj/ImageInfo;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    return-object v0
.end method

.method public getScanline()[B
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    return-object v0
.end method

.method public getScanlineByte()[B
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    return-object v0
.end method

.method public getScanlineByte2()[B
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineByte;->b:[B

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    return v0
.end method

.method public readFromPngRaw([BIII)V
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 72
    aget-byte v1, p1, v2

    invoke-static {v1}, Lar/com/hjg/pngj/FilterType;->getByVal(I)Lar/com/hjg/pngj/FilterType;

    move-result-object v1

    iput-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    .line 74
    add-int/lit8 v4, p2, -0x1

    .line 75
    add-int/lit8 v1, p4, -0x1

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int v7, v1, v3

    .line 76
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 77
    if-ne p4, v0, :cond_1

    .line 78
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    invoke-static {p1, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    :cond_0
    return-void

    .line 80
    :cond_1
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v1, p3

    move v3, v0

    move v0, v1

    move v1, v2

    :goto_0
    if-gt v3, v4, :cond_0

    .line 81
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v6, p1, v3

    aput-byte v6, v5, v0

    .line 82
    add-int/lit8 v1, v1, 0x1

    .line 83
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v1, v5, :cond_2

    .line 85
    add-int/2addr v0, v7

    move v1, v2

    .line 80
    :cond_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_3
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x10

    if-ne v1, v3, :cond_7

    .line 90
    if-ne p4, v0, :cond_4

    .line 91
    :goto_1
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->samplesPerRow:I

    if-ge v2, v1, :cond_0

    .line 92
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p1, v0

    aput-byte v0, v1, v2

    .line 93
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->b:[B

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    :cond_4
    if-eqz p3, :cond_6

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v1, p3

    :goto_2
    move v3, v0

    move v0, v1

    move v1, v2

    :goto_3
    if-gt v3, v4, :cond_0

    .line 97
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, p1, v3

    aput-byte v3, v5, v0

    .line 98
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->b:[B

    add-int/lit8 v3, v6, 0x1

    aget-byte v6, p1, v6

    aput-byte v6, v5, v0

    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v1, v5, :cond_5

    .line 102
    add-int/2addr v0, v7

    move v1, v2

    .line 96
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_2

    .line 108
    :cond_7
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v8, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 109
    invoke-static {v8}, Lar/com/hjg/pngj/ImageLineHelper;->a(I)I

    move-result v5

    .line 110
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v1, p3

    move v6, v0

    move v0, v2

    :goto_4
    if-ge v6, p2, :cond_0

    .line 112
    rsub-int/lit8 v3, v8, 0x8

    move v4, v5

    .line 114
    :cond_8
    iget-object v9, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v10, p1, v6

    and-int/2addr v10, v4

    shr-int/2addr v10, v3

    int-to-byte v10, v10

    aput-byte v10, v9, v1

    .line 115
    shr-int/2addr v4, v8

    .line 116
    sub-int/2addr v3, v8

    .line 117
    add-int/lit8 v1, v1, 0x1

    .line 118
    add-int/lit8 v0, v0, 0x1

    .line 119
    iget-object v9, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v9, v9, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v0, v9, :cond_9

    .line 121
    add-int/2addr v1, v7

    move v0, v2

    .line 123
    :cond_9
    if-eqz v4, :cond_a

    iget v9, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    if-lt v1, v9, :cond_8

    .line 110
    :cond_a
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->cols:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

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

    .line 129
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->filterType:Lar/com/hjg/pngj/FilterType;

    iget v2, v2, Lar/com/hjg/pngj/FilterType;->val:I

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    .line 130
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 131
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    iget v3, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    invoke-static {v2, v0, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    :goto_0
    iget v1, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    if-ge v0, v1, :cond_3

    .line 133
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v2, v2, v0

    aput-byte v2, p1, v1

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    move v7, v1

    move v1, v0

    move v0, v7

    .line 136
    :goto_1
    iget v2, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    if-ge v1, v2, :cond_3

    .line 137
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v3, v3, v1

    aput-byte v3, p1, v0

    .line 138
    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->b:[B

    aget-byte v3, v3, v1

    aput-byte v3, p1, v2

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_1
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v6, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    .line 143
    rsub-int/lit8 v2, v6, 0x8

    move v3, v0

    move v4, v2

    move v2, v0

    .line 145
    :goto_2
    iget v5, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    if-ge v2, v5, :cond_3

    .line 146
    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v5, v5, v2

    shl-int/2addr v5, v4

    or-int/2addr v5, v3

    .line 147
    sub-int/2addr v4, v6

    .line 148
    if-ltz v4, :cond_2

    iget v3, p0, Lar/com/hjg/pngj/ImageLineByte;->c:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 149
    :cond_2
    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, v5

    aput-byte v4, p1, v1

    .line 150
    rsub-int/lit8 v4, v6, 0x8

    move v1, v3

    move v3, v0

    .line 145
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 155
    :cond_3
    return-void

    :cond_4
    move v3, v5

    goto :goto_3
.end method
