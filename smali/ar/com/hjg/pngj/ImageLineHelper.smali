.class public Lar/com/hjg/pngj/ImageLineHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:[I

.field static b:[I

.field static c:[I

.field static d:[[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 405
    const/16 v0, 0xf0

    .line 409
    :goto_0
    return v0

    .line 406
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 407
    const/16 v0, 0xc0

    goto :goto_0

    .line 409
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private static a()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x10

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 23
    new-array v0, v4, [I

    sput-object v0, Lar/com/hjg/pngj/ImageLineHelper;->a:[I

    move v0, v1

    .line 24
    :goto_0
    if-ge v0, v4, :cond_0

    .line 25
    sget-object v2, Lar/com/hjg/pngj/ImageLineHelper;->a:[I

    mul-int/lit16 v3, v0, 0xff

    aput v3, v2, v0

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    new-array v0, v5, [I

    sput-object v0, Lar/com/hjg/pngj/ImageLineHelper;->b:[I

    move v0, v1

    .line 27
    :goto_1
    if-ge v0, v5, :cond_1

    .line 28
    sget-object v2, Lar/com/hjg/pngj/ImageLineHelper;->b:[I

    mul-int/lit16 v3, v0, 0xff

    div-int/lit8 v3, v3, 0x3

    aput v3, v2, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 29
    :cond_1
    new-array v0, v6, [I

    sput-object v0, Lar/com/hjg/pngj/ImageLineHelper;->c:[I

    move v0, v1

    .line 30
    :goto_2
    if-ge v0, v6, :cond_2

    .line 31
    sget-object v2, Lar/com/hjg/pngj/ImageLineHelper;->c:[I

    mul-int/lit16 v3, v0, 0xff

    div-int/lit8 v3, v3, 0xf

    aput v3, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 32
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [[I

    aput-object v7, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lar/com/hjg/pngj/ImageLineHelper;->a:[I

    aput-object v2, v0, v1

    sget-object v1, Lar/com/hjg/pngj/ImageLineHelper;->b:[I

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aput-object v7, v0, v1

    sget-object v1, Lar/com/hjg/pngj/ImageLineHelper;->c:[I

    aput-object v1, v0, v5

    sput-object v0, Lar/com/hjg/pngj/ImageLineHelper;->d:[[I

    .line 33
    return-void
.end method

.method private static a(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 249
    if-eqz p2, :cond_4

    move v8, v3

    .line 250
    :goto_0
    if-eqz v8, :cond_5

    const/4 v0, 0x4

    move v2, v0

    .line 251
    :goto_1
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_6

    move-object v0, p0

    :goto_2
    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    .line 252
    instance-of v5, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v5, :cond_0

    move-object v1, p0

    :cond_0
    check-cast v1, Lar/com/hjg/pngj/ImageLineByte;

    check-cast v1, Lar/com/hjg/pngj/ImageLineByte;

    .line 253
    if-eqz v1, :cond_7

    move v7, v3

    .line 254
    :goto_3
    if-eqz v0, :cond_8

    iget-object v3, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->cols:I

    move v6, v3

    .line 255
    :goto_4
    mul-int v3, v6, v2

    .line 256
    if-eqz p3, :cond_1

    array-length v5, p3

    if-ge v5, v3, :cond_2

    .line 257
    :cond_1
    new-array p3, v3, [I

    .line 258
    :cond_2
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v3

    array-length v3, v3

    :goto_5
    move v5, v4

    .line 259
    :goto_6
    if-ge v5, v6, :cond_c

    .line 260
    if-eqz v7, :cond_a

    iget-object v4, v1, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 261
    :goto_7
    mul-int v9, v5, v2

    invoke-virtual {p1, v4, p3, v9}, Lar/com/hjg/pngj/chunks/PngChunkPLTE;->getEntryRgb(I[II)V

    .line 262
    if-eqz v8, :cond_3

    .line 263
    if-ge v4, v3, :cond_b

    invoke-virtual {p2}, Lar/com/hjg/pngj/chunks/PngChunkTRNS;->getPalletteAlpha()[I

    move-result-object v9

    aget v4, v9, v4

    .line 264
    :goto_8
    mul-int v9, v5, v2

    add-int/lit8 v9, v9, 0x3

    aput v4, p3, v9

    .line 259
    :cond_3
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_6

    :cond_4
    move v8, v4

    .line 249
    goto :goto_0

    .line 250
    :cond_5
    const/4 v0, 0x3

    move v2, v0

    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 251
    goto :goto_2

    :cond_7
    move v7, v4

    .line 253
    goto :goto_3

    .line 254
    :cond_8
    iget-object v3, v1, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v3, v3, Lar/com/hjg/pngj/ImageInfo;->cols:I

    move v6, v3

    goto :goto_4

    :cond_9
    move v3, v4

    .line 258
    goto :goto_5

    .line 260
    :cond_a
    iget-object v4, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v4, v4, v5

    goto :goto_7

    .line 263
    :cond_b
    const/16 v4, 0xff

    goto :goto_8

    .line 267
    :cond_c
    return-object p3
.end method

.method public static clampTo_0_255(I)I
    .locals 1

    .prologue
    const/16 v0, 0xff

    .line 392
    if-le p0, v0, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static clampTo_0_65535(I)I
    .locals 1

    .prologue
    const v0, 0xffff

    .line 396
    if-le p0, v0, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static clampTo_128_127(I)I
    .locals 2

    .prologue
    const/16 v0, 0x7f

    const/16 v1, -0x80

    .line 400
    if-le p0, v0, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    if-ge p0, v1, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method public static double2int(Lar/com/hjg/pngj/ImageLineInt;D)I
    .locals 9

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/16 v0, 0x0

    .line 382
    cmpg-double v4, p1, v0

    if-gtz v4, :cond_1

    move-wide p1, v0

    .line 383
    :cond_0
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const-wide v0, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    :goto_1
    return v0

    .line 382
    :cond_1
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    move-wide p1, v2

    goto :goto_0

    .line 383
    :cond_2
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1
.end method

.method public static double2intClamped(Lar/com/hjg/pngj/ImageLineInt;D)I
    .locals 9

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/16 v0, 0x0

    .line 387
    cmpg-double v4, p1, v0

    if-gtz v4, :cond_1

    move-wide p1, v0

    .line 388
    :cond_0
    :goto_0
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    const-wide v0, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    :goto_1
    return v0

    .line 387
    :cond_1
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    move-wide p1, v2

    goto :goto_0

    .line 388
    :cond_2
    const-wide v0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-int v0, v0

    goto :goto_1
.end method

.method public static getPixelARGB8(Lar/com/hjg/pngj/IImageLine;I)I
    .locals 4

    .prologue
    .line 304
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 305
    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 306
    check-cast p0, Lar/com/hjg/pngj/ImageLineInt;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineInt;->getScanline()[I

    move-result-object v1

    .line 307
    add-int/lit8 v2, v0, 0x3

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    aget v3, v1, v0

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    or-int/2addr v0, v2

    .line 312
    :goto_0
    return v0

    .line 309
    :cond_0
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 310
    check-cast v0, Lar/com/hjg/pngj/ImageLineByte;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 311
    check-cast p0, Lar/com/hjg/pngj/ImageLineByte;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineByte;->getScanline()[B

    move-result-object v1

    .line 312
    add-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    goto :goto_0

    .line 315
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getPixelRGB8(Lar/com/hjg/pngj/IImageLine;I)I
    .locals 4

    .prologue
    .line 290
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 291
    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 292
    check-cast p0, Lar/com/hjg/pngj/ImageLineInt;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineInt;->getScanline()[I

    move-result-object v1

    .line 293
    aget v2, v1, v0

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    or-int/2addr v0, v2

    .line 297
    :goto_0
    return v0

    .line 294
    :cond_0
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 295
    check-cast v0, Lar/com/hjg/pngj/ImageLineByte;

    iget-object v0, v0, Lar/com/hjg/pngj/ImageLineByte;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 296
    check-cast p0, Lar/com/hjg/pngj/ImageLineByte;

    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineByte;->getScanline()[B

    move-result-object v1

    .line 297
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    goto :goto_0

    .line 300
    :cond_1
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static infoFirstLastPixels(Lar/com/hjg/pngj/ImageLineInt;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    if-ne v0, v4, :cond_0

    const-string v0, "first=(%d) last=(%d)"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "first=(%d %d %d) last=(%d %d %d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v2, v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v4, v4

    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->channels:I

    sub-int/2addr v4, v5

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v4, v4

    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->channels:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    array-length v4, v4

    iget-object v5, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v5, v5, Lar/com/hjg/pngj/ImageInfo;->channels:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static int2double(Lar/com/hjg/pngj/ImageLineInt;I)D
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    int-to-double v0, p1

    const-wide v2, 0x40efffe000000000L    # 65535.0

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public static int2doubleClamped(Lar/com/hjg/pngj/ImageLineInt;I)D
    .locals 8

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v0, 0x0

    .line 377
    iget-object v4, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v4, v4, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_0

    int-to-double v4, p1

    const-wide v6, 0x40efffe000000000L    # 65535.0

    div-double/2addr v4, v6

    .line 378
    :goto_0
    cmpg-double v6, v4, v0

    if-gtz v6, :cond_1

    :goto_1
    return-wide v0

    .line 377
    :cond_0
    int-to-double v4, p1

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    goto :goto_0

    .line 378
    :cond_1
    cmpl-double v0, v4, v2

    if-ltz v0, :cond_2

    move-wide v0, v2

    goto :goto_1

    :cond_2
    move-wide v0, v4

    goto :goto_1
.end method

.method public static interpol(IIIIDD)I
    .locals 8

    .prologue
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 365
    int-to-double v0, p0

    sub-double v2, v6, p4

    mul-double/2addr v0, v2

    int-to-double v2, p1

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    .line 366
    int-to-double v2, p2

    sub-double v4, v6, p4

    mul-double/2addr v2, v4

    int-to-double v4, p3

    mul-double/2addr v4, p4

    add-double/2addr v2, v4

    .line 367
    sub-double v4, v6, p6

    mul-double/2addr v0, v4

    mul-double/2addr v2, p6

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static palette2rgb(Lar/com/hjg/pngj/ImageLineInt;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[I)[I
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lar/com/hjg/pngj/ImageLineHelper;->a(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static palette2rgb(Lar/com/hjg/pngj/ImageLineInt;Lar/com/hjg/pngj/chunks/PngChunkPLTE;[I)[I
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lar/com/hjg/pngj/ImageLineHelper;->a(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static palette2rgba(Lar/com/hjg/pngj/ImageLineInt;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[I)[I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lar/com/hjg/pngj/ImageLineHelper;->a(Lar/com/hjg/pngj/IImageLine;Lar/com/hjg/pngj/chunks/PngChunkPLTE;Lar/com/hjg/pngj/chunks/PngChunkTRNS;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public static scaleDown(IB)B
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    rsub-int/lit8 v0, p0, 0x8

    shr-int v0, p1, v0

    int-to-byte p1, v0

    :cond_0
    return p1
.end method

.method public static scaleDown(Lar/com/hjg/pngj/IImageLineArray;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget-boolean v0, v0, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v0, :cond_0

    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    .line 76
    :cond_0
    return-void

    .line 63
    :cond_1
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_3

    .line 64
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v0

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    rsub-int/lit8 v2, v0, 0x8

    .line 65
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 66
    check-cast v0, Lar/com/hjg/pngj/ImageLineInt;

    .line 67
    :goto_0
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 68
    iget-object v3, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v4, v0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v4, v4, v1

    shr-int/2addr v4, v2

    aput v4, v3, v1

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_2
    instance-of v0, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 70
    check-cast v0, Lar/com/hjg/pngj/ImageLineByte;

    .line 71
    :goto_1
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getSize()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 72
    iget-object v3, v0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    iget-object v4, v0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 75
    :cond_3
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static scaleUp(IB)B
    .locals 1

    .prologue
    .line 79
    const/16 v0, 0x8

    if-ge p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/ImageLineHelper;->d:[[I

    aget-object v0, v0, p0

    aget v0, v0, p1

    int-to-byte p1, v0

    :cond_0
    return p1
.end method

.method public static scaleUp(Lar/com/hjg/pngj/IImageLineArray;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v1

    iget-boolean v1, v1, Lar/com/hjg/pngj/ImageInfo;->indexed:Z

    if-nez v1, :cond_0

    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v1

    iget v1, v1, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 55
    :cond_0
    return-void

    .line 42
    :cond_1
    sget-object v1, Lar/com/hjg/pngj/ImageLineHelper;->a:[I

    if-eqz v1, :cond_2

    sget-object v1, Lar/com/hjg/pngj/ImageLineHelper;->d:[[I

    if-nez v1, :cond_3

    .line 43
    :cond_2
    invoke-static {}, Lar/com/hjg/pngj/ImageLineHelper;->a()V

    .line 44
    :cond_3
    sget-object v1, Lar/com/hjg/pngj/ImageLineHelper;->d:[[I

    invoke-interface {p0}, Lar/com/hjg/pngj/IImageLineArray;->getImageInfo()Lar/com/hjg/pngj/ImageInfo;

    move-result-object v2

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->bitDepth:I

    aget-object v1, v1, v2

    .line 45
    instance-of v2, p0, Lar/com/hjg/pngj/ImageLineInt;

    if-eqz v2, :cond_4

    .line 46
    check-cast p0, Lar/com/hjg/pngj/ImageLineInt;

    .line 47
    :goto_0
    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineInt;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 48
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aget v3, v3, v0

    aget v3, v1, v3

    aput v3, v2, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_4
    instance-of v2, p0, Lar/com/hjg/pngj/ImageLineByte;

    if-eqz v2, :cond_5

    .line 50
    check-cast p0, Lar/com/hjg/pngj/ImageLineByte;

    .line 51
    :goto_1
    invoke-virtual {p0}, Lar/com/hjg/pngj/ImageLineByte;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 52
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineByte;->a:[B

    aget-byte v3, v3, v0

    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 54
    :cond_5
    new-instance v0, Lar/com/hjg/pngj/PngjException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setPixelRGB8(Lar/com/hjg/pngj/ImageLineInt;II)V
    .locals 3

    .prologue
    .line 334
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p2, 0xff

    invoke-static {p0, p1, v0, v1, v2}, Lar/com/hjg/pngj/ImageLineHelper;->setPixelRGB8(Lar/com/hjg/pngj/ImageLineInt;IIII)V

    .line 335
    return-void
.end method

.method public static setPixelRGB8(Lar/com/hjg/pngj/ImageLineInt;IIII)V
    .locals 3

    .prologue
    .line 327
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 328
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v0

    .line 329
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v1, v2, 0x1

    aput p3, v0, v2

    .line 330
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aput p4, v0, v1

    .line 331
    return-void
.end method

.method public static setPixelRGBA8(Lar/com/hjg/pngj/ImageLineInt;II)V
    .locals 6

    .prologue
    .line 355
    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v2, v0, 0xff

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v3, v0, 0xff

    and-int/lit16 v4, p2, 0xff

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v5, v0, 0xff

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lar/com/hjg/pngj/ImageLineHelper;->setPixelRGBA8(Lar/com/hjg/pngj/ImageLineInt;IIIII)V

    .line 356
    return-void
.end method

.method public static setPixelRGBA8(Lar/com/hjg/pngj/ImageLineInt;IIIII)V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v0, v0, Lar/com/hjg/pngj/ImageInfo;->channels:I

    mul-int/2addr v0, p1

    .line 348
    iget-object v1, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v0

    .line 349
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v1, v2, 0x1

    aput p3, v0, v2

    .line 350
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v1, 0x1

    aput p4, v0, v1

    .line 351
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    aput p5, v0, v2

    .line 352
    return-void
.end method

.method public static setPixelsRGB8(Lar/com/hjg/pngj/ImageLineInt;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 319
    move v1, v0

    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ge v1, v2, :cond_0

    .line 320
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v0, 0x1

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v0

    .line 321
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v3, 0x1

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v3

    .line 322
    iget-object v3, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v0, v2, 0x1

    aget v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v2

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method public static setPixelsRGBA8(Lar/com/hjg/pngj/ImageLineInt;[I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 338
    move v1, v0

    :goto_0
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    iget v2, v2, Lar/com/hjg/pngj/ImageInfo;->cols:I

    if-ge v1, v2, :cond_0

    .line 339
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v0, 0x1

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v0

    .line 340
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v2, v3, 0x1

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v3

    .line 341
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v3, v2, 0x1

    aget v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v2

    .line 342
    iget-object v2, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    add-int/lit8 v0, v3, 0x1

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x18

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v3

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public static setValD(Lar/com/hjg/pngj/ImageLineInt;ID)V
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lar/com/hjg/pngj/ImageLineInt;->scanline:[I

    invoke-static {p0, p2, p3}, Lar/com/hjg/pngj/ImageLineHelper;->double2int(Lar/com/hjg/pngj/ImageLineInt;D)I

    move-result v1

    aput v1, v0, p1

    .line 360
    return-void
.end method
