.class public Lorg/eclipse/jetty/io/BufferUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:[B

.field private static final b:[I

.field private static final c:[I

.field private static final d:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    .line 286
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->b:[I

    .line 300
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->c:[I

    .line 312
    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_3

    sput-object v0, Lorg/eclipse/jetty/io/BufferUtil;->d:[J

    return-void

    .line 33
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data

    .line 286
    :array_1
    .array-data 4
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data

    .line 300
    :array_2
    .array-data 4
        0x10000000
        0x1000000
        0x100000
        0x10000
        0x1000
        0x100
        0x10
        0x1
    .end array-data

    .line 312
    :array_3
    .array-data 8
        0xde0b6b3a7640000L
        0x16345785d8a0000L
        0x2386f26fc10000L
        0x38d7ea4c68000L
        0x5af3107a4000L
        0x9184e72a000L
        0xe8d4a51000L
        0x174876e800L
        0x2540be400L
        0x3b9aca00
        0x5f5e100
        0x989680
        0xf4240
        0x186a0
        0x2710
        0x3e8
        0x64
        0xa
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrefix(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 344
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    move v0, v3

    .line 350
    :goto_0
    return v0

    .line 346
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    .line 347
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    :goto_1
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 348
    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v4

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v1

    if-eq v4, v1, :cond_1

    move v0, v3

    .line 349
    goto :goto_0

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    .line 350
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static prependHexInt(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 4

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 170
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    .line 171
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x30

    invoke-interface {p0, v0, v1}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    .line 172
    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 195
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    .line 177
    if-gez p1, :cond_1

    .line 179
    const/4 v0, 0x1

    .line 180
    neg-int p1, p1

    .line 183
    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    .line 184
    :goto_1
    if-lez p1, :cond_2

    .line 186
    and-int/lit8 v2, p1, 0xf

    .line 187
    shr-int/lit8 p1, p1, 0x4

    .line 188
    add-int/lit8 v1, v1, -0x1

    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    aget-byte v2, v3, v2

    invoke-interface {p0, v1, v2}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    goto :goto_1

    .line 191
    :cond_2
    if-eqz v0, :cond_3

    .line 192
    add-int/lit8 v0, v1, -0x1

    const/16 v1, 0x2d

    invoke-interface {p0, v0, v1}, Lorg/eclipse/jetty/io/Buffer;->poke(IB)V

    .line 193
    :goto_2
    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public static putCRLF(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 338
    const/16 v0, 0xd

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 339
    const/16 v0, 0xa

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 340
    return-void
.end method

.method public static putDecInt(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 201
    if-gez p1, :cond_5

    .line 203
    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 205
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 207
    const/16 v1, 0x32

    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 208
    const v1, 0x8ca6c00

    .line 214
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 216
    sget-object v0, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    aget-byte v0, v0, v1

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 237
    :cond_0
    return-void

    .line 211
    :cond_1
    neg-int v1, p1

    goto :goto_0

    :cond_2
    move v2, v1

    move v1, v0

    .line 222
    :goto_1
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->b:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 224
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->b:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_4

    .line 226
    if-eqz v1, :cond_3

    .line 227
    const/16 v3, 0x30

    invoke-interface {p0, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 222
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_4
    const/4 v1, 0x1

    .line 232
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->b:[I

    aget v3, v3, v0

    div-int v3, v2, v3

    .line 233
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    aget-byte v4, v4, v3

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 234
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->b:[I

    aget v4, v4, v0

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_5
    move v1, p1

    goto :goto_0
.end method

.method public static putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 241
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_5

    .line 243
    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 245
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 247
    const/16 v1, 0x39

    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 248
    const-wide v2, 0x31993af1d7c0000L

    .line 254
    :goto_0
    const-wide/16 v4, 0xa

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 256
    sget-object v0, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    long-to-int v1, v2

    aget-byte v0, v0, v1

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 277
    :cond_0
    return-void

    .line 251
    :cond_1
    neg-long v2, p1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 262
    :goto_1
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->d:[J

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 264
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->d:[J

    aget-wide v4, v4, v0

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 266
    if-eqz v1, :cond_3

    .line 267
    const/16 v4, 0x30

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 262
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 271
    :cond_4
    const/4 v1, 0x1

    .line 272
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->d:[J

    aget-wide v4, v4, v0

    div-long v4, v2, v4

    .line 273
    sget-object v6, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    long-to-int v7, v4

    aget-byte v6, v6, v7

    invoke-interface {p0, v6}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 274
    sget-object v6, Lorg/eclipse/jetty/io/BufferUtil;->d:[J

    aget-wide v6, v6, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    goto :goto_2

    :cond_5
    move-wide v2, p1

    goto :goto_0
.end method

.method public static putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v5, 0x30

    .line 115
    if-gez p1, :cond_5

    .line 117
    const/16 v1, 0x2d

    invoke-interface {p0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 119
    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    .line 121
    const/16 v0, 0x38

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 122
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 123
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 124
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 125
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 126
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 127
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 128
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    neg-int v1, p1

    .line 135
    :goto_1
    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    .line 137
    sget-object v0, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    aget-byte v0, v0, v1

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    goto :goto_0

    :cond_2
    move v2, v1

    move v1, v0

    .line 143
    :goto_2
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->c:[I

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 145
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->c:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_4

    .line 147
    if-eqz v1, :cond_3

    .line 148
    invoke-interface {p0, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 143
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    :cond_4
    const/4 v1, 0x1

    .line 153
    sget-object v3, Lorg/eclipse/jetty/io/BufferUtil;->c:[I

    aget v3, v3, v0

    div-int v3, v2, v3

    .line 154
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->a:[B

    aget-byte v4, v4, v3

    invoke-interface {p0, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 155
    sget-object v4, Lorg/eclipse/jetty/io/BufferUtil;->c:[I

    aget v4, v4, v0

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_5
    move v1, p1

    goto :goto_1
.end method

.method public static to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    instance-of v0, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/StringUtil;->__ISO_8859_1_CHARSET:Ljava/nio/charset/Charset;

    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static toBuffer(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    .line 282
    invoke-static {v0, p0, p1}, Lorg/eclipse/jetty/io/BufferUtil;->putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 283
    return-object v0
.end method

.method public static toInt(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 45
    .line 48
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    move v2, v1

    move v3, v1

    :goto_0
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 50
    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v5

    .line 51
    const/16 v6, 0x20

    if-gt v5, v6, :cond_2

    .line 53
    if-eqz v2, :cond_3

    .line 69
    :cond_0
    if-eqz v2, :cond_5

    .line 70
    if-eqz v1, :cond_1

    neg-int v3, v3

    :cond_1
    return v3

    .line 56
    :cond_2
    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-gt v5, v6, :cond_4

    .line 58
    mul-int/lit8 v2, v3, 0xa

    add-int/lit8 v3, v5, -0x30

    add-int/2addr v3, v2

    move v2, v4

    .line 48
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_4
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    if-nez v2, :cond_0

    move v1, v4

    .line 63
    goto :goto_1

    .line 71
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toLong(Lorg/eclipse/jetty/io/Buffer;)J
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 83
    const-wide/16 v2, 0x0

    .line 86
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v0

    move-wide v4, v2

    move v2, v1

    :goto_0
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 88
    invoke-interface {p0, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v3

    .line 89
    const/16 v7, 0x20

    if-gt v3, v7, :cond_2

    .line 91
    if-eqz v2, :cond_3

    .line 107
    :cond_0
    if-eqz v2, :cond_5

    .line 108
    if-eqz v1, :cond_1

    neg-long v4, v4

    :cond_1
    return-wide v4

    .line 94
    :cond_2
    const/16 v7, 0x30

    if-lt v3, v7, :cond_4

    const/16 v7, 0x39

    if-gt v3, v7, :cond_4

    .line 96
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    add-int/lit8 v2, v3, -0x30

    int-to-long v2, v2

    add-long/2addr v4, v2

    move v2, v6

    .line 86
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_4
    const/16 v7, 0x2d

    if-ne v3, v7, :cond_0

    if-nez v2, :cond_0

    move v1, v6

    .line 101
    goto :goto_1

    .line 109
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
