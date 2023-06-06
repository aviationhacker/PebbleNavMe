.class public Lar/com/hjg/pngj/chunks/ChunkHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/chunks/ChunkHelper$1;
    }
.end annotation


# static fields
.field public static final IDAT:Ljava/lang/String; = "IDAT"

.field public static final IEND:Ljava/lang/String; = "IEND"

.field public static final IHDR:Ljava/lang/String; = "IHDR"

.field public static final PLTE:Ljava/lang/String; = "PLTE"

.field private static a:[B = null

.field public static final bKGD:Ljava/lang/String; = "bKGD"

.field public static final b_IDAT:[B

.field public static final b_IEND:[B

.field public static final b_IHDR:[B

.field public static final b_PLTE:[B

.field public static final cHRM:Ljava/lang/String; = "cHRM"

.field public static final gAMA:Ljava/lang/String; = "gAMA"

.field public static final hIST:Ljava/lang/String; = "hIST"

.field public static final iCCP:Ljava/lang/String; = "iCCP"

.field public static final iTXt:Ljava/lang/String; = "iTXt"

.field public static final pHYs:Ljava/lang/String; = "pHYs"

.field public static final sBIT:Ljava/lang/String; = "sBIT"

.field public static final sPLT:Ljava/lang/String; = "sPLT"

.field public static final sRGB:Ljava/lang/String; = "sRGB"

.field public static final tEXt:Ljava/lang/String; = "tEXt"

.field public static final tIME:Ljava/lang/String; = "tIME"

.field public static final tRNS:Ljava/lang/String; = "tRNS"

.field public static final zTXt:Ljava/lang/String; = "zTXt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "IHDR"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IHDR:[B

    .line 50
    const-string v0, "PLTE"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_PLTE:[B

    .line 51
    const-string v0, "IDAT"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IDAT:[B

    .line 52
    const-string v0, "IEND"

    invoke-static {v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->toBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkHelper;->b_IEND:[B

    .line 57
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lar/com/hjg/pngj/chunks/ChunkHelper;->a:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .prologue
    .line 211
    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkHelper;->a:[B

    monitor-enter v1

    .line 213
    :goto_0
    :try_start_0
    sget-object v0, Lar/com/hjg/pngj/chunks/ChunkHelper;->a:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    sget-object v2, Lar/com/hjg/pngj/chunks/ChunkHelper;->a:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    return-void
.end method

.method public static compressBytes([BIIZ)[B
    .locals 3

    .prologue
    .line 194
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0, p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 195
    if-eqz p3, :cond_0

    move-object v2, v0

    .line 196
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 197
    if-eqz p3, :cond_1

    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 198
    :goto_1
    invoke-static {v2, v0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 199
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 200
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 201
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    new-instance v1, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 197
    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    new-instance v1, Lar/com/hjg/pngj/PngjException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final compressBytes([BZ)[B
    .locals 2

    .prologue
    .line 189
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lar/com/hjg/pngj/chunks/ChunkHelper;->compressBytes([BIIZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static final equivalent(Lar/com/hjg/pngj/chunks/PngChunk;Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 266
    if-ne p0, p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 268
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    iget-object v2, p0, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    iget-object v3, p1, Lar/com/hjg/pngj/chunks/PngChunk;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 269
    goto :goto_0

    .line 270
    :cond_3
    iget-boolean v2, p0, Lar/com/hjg/pngj/chunks/PngChunk;->crit:Z

    if-eqz v2, :cond_4

    move v0, v1

    .line 271
    goto :goto_0

    .line 273
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 274
    goto :goto_0

    .line 275
    :cond_5
    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/PngChunk;->allowsMultiple()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    if-eqz v0, :cond_6

    .line 278
    check-cast p0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 280
    :cond_6
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;

    if-eqz v0, :cond_7

    .line 281
    check-cast p0, Lar/com/hjg/pngj/chunks/PngChunkSPLT;

    invoke-virtual {p0}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->getPalName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lar/com/hjg/pngj/chunks/PngChunkSPLT;

    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/PngChunkSPLT;->getPalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_7
    move v0, v1

    .line 284
    goto :goto_0
.end method

.method public static filterList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;",
            "Lar/com/hjg/pngj/chunks/ChunkPredicate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 227
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/chunks/ChunkPredicate;->match(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 231
    :cond_1
    return-object v1
.end method

.method public static isCritical(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method public static isPublic(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    return v0
.end method

.method public static isSafeToCopy(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isText(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1

    .prologue
    .line 288
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;

    return v0
.end method

.method public static isUnknown(Lar/com/hjg/pngj/chunks/PngChunk;)Z
    .locals 1

    .prologue
    .line 151
    instance-of v0, p0, Lar/com/hjg/pngj/chunks/PngChunkUNKNOWN;

    return v0
.end method

.method public static posNullByte([B)I
    .locals 2

    .prologue
    .line 161
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 162
    aget-byte v1, p0, v0

    if-nez v1, :cond_0

    .line 164
    :goto_1
    return v0

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static shouldLoad(Ljava/lang/String;Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 175
    invoke-static {p0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isCritical(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    :goto_0
    :pswitch_0
    return v0

    .line 177
    :cond_0
    sget-object v2, Lar/com/hjg/pngj/chunks/ChunkHelper$1;->a:[I

    invoke-virtual {p1}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 185
    goto :goto_0

    .line 181
    :pswitch_1
    invoke-static {p0}, Lar/com/hjg/pngj/chunks/ChunkHelper;->isSafeToCopy(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 183
    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 64
    :try_start_0
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toBytesUTF8(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 97
    :try_start_0
    sget-object v0, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1name:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lar/com/hjg/pngj/PngHelperInternal;->charsetLatin1name:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toStringUTF8([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8name:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toStringUTF8([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lar/com/hjg/pngj/PngHelperInternal;->charsetUTF8name:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    new-instance v1, Lar/com/hjg/pngj/chunks/PngBadCharsetException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/chunks/PngBadCharsetException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static trimList(Ljava/util/List;Lar/com/hjg/pngj/chunks/ChunkPredicate;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lar/com/hjg/pngj/chunks/PngChunk;",
            ">;",
            "Lar/com/hjg/pngj/chunks/ChunkPredicate;",
            ")I"
        }
    .end annotation

    .prologue
    .line 240
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    const/4 v0, 0x0

    move v1, v0

    .line 242
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/chunks/PngChunk;

    .line 244
    invoke-interface {p1, v0}, Lar/com/hjg/pngj/chunks/ChunkPredicate;->match(Lar/com/hjg/pngj/chunks/PngChunk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 246
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 248
    goto :goto_0

    .line 249
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method
