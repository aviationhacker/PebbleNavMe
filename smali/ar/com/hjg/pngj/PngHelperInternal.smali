.class public final Lar/com/hjg/pngj/PngHelperInternal;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_LOGGER:Ljava/lang/String; = "ar.com.pngj"

.field public static final LOGGER:Ljava/util/logging/Logger;

.field private static a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static charsetLatin1:Ljava/nio/charset/Charset;

.field public static charsetLatin1name:Ljava/lang/String;

.field public static charsetUTF8:Ljava/nio/charset/Charset;

.field public static charsetUTF8name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "ar.com.pngj"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->LOGGER:Ljava/util/logging/Logger;

    .line 25
    const-string v0, "ISO-8859-1"

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1name:Ljava/lang/String;

    .line 26
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1name:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1:Ljava/nio/charset/Charset;

    .line 30
    const-string v0, "UTF-8"

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8name:Ljava/lang/String;

    .line 31
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8name:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8:Ljava/nio/charset/Charset;

    .line 33
    new-instance v0, Lar/com/hjg/pngj/PngHelperInternal$1;

    invoke-direct {v0}, Lar/com/hjg/pngj/PngHelperInternal$1;-><init>()V

    sput-object v0, Lar/com/hjg/pngj/PngHelperInternal;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final a(III)I
    .locals 4

    .prologue
    .line 236
    add-int v0, p0, p1

    sub-int v3, v0, p2

    .line 237
    if-lt v3, p0, :cond_0

    sub-int v0, v3, p0

    move v2, v0

    .line 238
    :goto_0
    if-lt v3, p1, :cond_1

    sub-int v0, v3, p1

    move v1, v0

    .line 239
    :goto_1
    if-lt v3, p2, :cond_2

    sub-int v0, v3, p2

    .line 242
    :goto_2
    if-gt v2, v1, :cond_3

    if-gt v2, v0, :cond_3

    .line 247
    :goto_3
    return p0

    .line 237
    :cond_0
    sub-int v0, p0, v3

    move v2, v0

    goto :goto_0

    .line 238
    :cond_1
    sub-int v0, p1, v3

    move v1, v0

    goto :goto_1

    .line 239
    :cond_2
    sub-int v0, p2, v3

    goto :goto_2

    .line 244
    :cond_3
    if-gt v1, v0, :cond_4

    move p0, p1

    .line 245
    goto :goto_3

    :cond_4
    move p0, p2

    .line 247
    goto :goto_3
.end method

.method static a(Ljava/io/File;Z)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 284
    invoke-static {p0, p1}, Lge;->a(Ljava/io/File;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;IZ)V
    .locals 3

    .prologue
    .line 295
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    .line 296
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 297
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 298
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    return-void

    .line 299
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 256
    invoke-static {p0, v0, v0}, Lar/com/hjg/pngj/PngHelperInternal;->a(Ljava/lang/Object;IZ)V

    .line 257
    return-void
.end method

.method public static doubleToInt100000(D)I
    .locals 4

    .prologue
    .line 47
    const-wide v0, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static filterRowAverage(III)I
    .locals 1

    .prologue
    .line 223
    add-int v0, p1, p2

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static filterRowNone(I)I
    .locals 1

    .prologue
    .line 211
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static filterRowPaeth(IIII)I
    .locals 1

    .prologue
    .line 228
    invoke-static {p1, p2, p3}, Lar/com/hjg/pngj/PngHelperInternal;->a(III)I

    move-result v0

    sub-int v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static filterRowSub(II)I
    .locals 1

    .prologue
    .line 215
    sub-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static filterRowUp(II)I
    .locals 1

    .prologue
    .line 219
    sub-int v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getDigest(Lar/com/hjg/pngj/PngReader;)J
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPngIdSignature()[B
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method public static getRawIdatBytes(Lar/com/hjg/pngj/PngReader;)J
    .locals 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lar/com/hjg/pngj/PngReader;->interlaced:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->getChunkseq()Lar/com/hjg/pngj/ChunkSeqReaderPng;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/ChunkSeqReaderPng;->getDeinterlacer()Lar/com/hjg/pngj/Deinterlacer;

    move-result-object v0

    invoke-virtual {v0}, Lar/com/hjg/pngj/Deinterlacer;->getTotalRawBytes()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lar/com/hjg/pngj/PngReader;->imgInfo:Lar/com/hjg/pngj/ImageInfo;

    invoke-virtual {v0}, Lar/com/hjg/pngj/ImageInfo;->getTotalRawBytes()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static initCrcForTests(Lar/com/hjg/pngj/PngReader;)V
    .locals 0

    .prologue
    .line 321
    invoke-virtual {p0}, Lar/com/hjg/pngj/PngReader;->prepareSimpleDigestComputation()V

    .line 322
    return-void
.end method

.method public static intToDouble100000(I)D
    .locals 4

    .prologue
    .line 51
    int-to-double v0, p0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static istreamFromFile(Ljava/io/File;)Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 272
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return-object v0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static logdebug(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 205
    invoke-static {}, Lar/com/hjg/pngj/PngHelperInternal;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logdebug: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)I
    .locals 3

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "error reading byte"

    invoke-direct {v1, v2, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readBytes(Ljava/io/InputStream;[BII)V
    .locals 4

    .prologue
    .line 153
    if-nez p3, :cond_1

    .line 166
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v0, 0x0

    .line 157
    :goto_0
    if-ge v0, p3, :cond_0

    .line 158
    add-int v1, p2, v0

    sub-int v2, p3, v0

    :try_start_0
    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 159
    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    .line 160
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error reading bytes, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " !="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "error reading"

    invoke-direct {v1, v2, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 161
    :cond_2
    add-int/2addr v0, v1

    .line 162
    goto :goto_0
.end method

.method public static readInt1fromByte([BI)I
    .locals 1

    .prologue
    .line 97
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static readInt2(Ljava/io/InputStream;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 70
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 71
    if-eq v1, v0, :cond_0

    if-ne v2, v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, v1, 0x8

    or-int/2addr v0, v2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "error reading Int2"

    invoke-direct {v1, v2, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readInt2fromBytes([BI)I
    .locals 2

    .prologue
    .line 101
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static readInt4(Ljava/io/InputStream;)I
    .locals 5

    .prologue
    const/4 v0, -0x1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 85
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 86
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 87
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 88
    if-eq v1, v0, :cond_0

    if-eq v2, v0, :cond_0

    if-eq v3, v0, :cond_0

    if-ne v4, v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v0

    :cond_1
    shl-int/lit8 v0, v1, 0x18

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v3, 0x8

    add-int/2addr v1, v4

    or-int/2addr v0, v1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    const-string v2, "error reading Int4"

    invoke-direct {v1, v2, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final readInt4fromBytes([BI)I
    .locals 2

    .prologue
    .line 105
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static setDebug(Z)V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->a:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 310
    return-void
.end method

.method public static skipBytes(Ljava/io/InputStream;J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 170
    :goto_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    .line 171
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 172
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 173
    sub-long v0, p1, v0

    :goto_1
    move-wide p1, v0

    .line 182
    goto :goto_0

    .line 174
    :cond_0
    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 175
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 186
    :cond_1
    return-void

    .line 178
    :cond_2
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    goto :goto_1

    .line 181
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "skip() returned a negative value ???"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeByte(Ljava/io/OutputStream;B)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeByte(Ljava/io/OutputStream;[B)V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeBytes(Ljava/io/OutputStream;[B)V
    .locals 2

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeBytes(Ljava/io/OutputStream;[BII)V
    .locals 2

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    new-instance v1, Lar/com/hjg/pngj/PngjOutputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjOutputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeInt2(Ljava/io/OutputStream;I)V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 127
    invoke-static {p0, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 128
    return-void
.end method

.method public static writeInt2tobytes(I[BI)V
    .locals 2

    .prologue
    .line 137
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 138
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 139
    return-void
.end method

.method public static writeInt4(Ljava/io/OutputStream;I)V
    .locals 2

    .prologue
    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 132
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lar/com/hjg/pngj/PngHelperInternal;->writeInt4tobytes(I[BI)V

    .line 133
    invoke-static {p0, v0}, Lar/com/hjg/pngj/PngHelperInternal;->writeBytes(Ljava/io/OutputStream;[B)V

    .line 134
    return-void
.end method

.method public static writeInt4tobytes(I[BI)V
    .locals 2

    .prologue
    .line 142
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 143
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 144
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 145
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 146
    return-void
.end method
