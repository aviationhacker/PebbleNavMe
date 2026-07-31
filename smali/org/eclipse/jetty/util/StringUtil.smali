.class public Lorg/eclipse/jetty/util/StringUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_INTERFACES:Ljava/lang/String; = "0.0.0.0"

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final __ISO_8859_1:Ljava/lang/String; = "ISO-8859-1"

.field public static final __ISO_8859_1_CHARSET:Ljava/nio/charset/Charset;

.field public static final __LINE_SEPARATOR:Ljava/lang/String;

.field public static final __UTF16:Ljava/lang/String; = "UTF-16"

.field public static final __UTF8:Ljava/lang/String; = "UTF-8"

.field public static final __UTF8Alt:Ljava/lang/String; = "UTF8"

.field public static final __UTF8_CHARSET:Ljava/nio/charset/Charset;

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/util/StringUtil;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 42
    const-string v0, "line.separator"

    const-string v1, "\n"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->__LINE_SEPARATOR:Ljava/lang/String;

    .line 55
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->__UTF8_CHARSET:Ljava/nio/charset/Charset;

    .line 56
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->__ISO_8859_1_CHARSET:Ljava/nio/charset/Charset;

    .line 59
    const/16 v0, 0x80

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/util/StringUtil;->b:[C

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
        0x20s
        0x21s
        0x22s
        0x23s
        0x24s
        0x25s
        0x26s
        0x27s
        0x28s
        0x29s
        0x2as
        0x2bs
        0x2cs
        0x2ds
        0x2es
        0x2fs
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x3as
        0x3bs
        0x3cs
        0x3ds
        0x3es
        0x3fs
        0x40s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x5bs
        0x5cs
        0x5ds
        0x5es
        0x5fs
        0x60s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x7bs
        0x7cs
        0x7ds
        0x7es
        0x7fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;BI)V
    .locals 3

    .prologue
    const/16 v2, 0x39

    .line 253
    and-int/lit16 v1, p1, 0xff

    .line 254
    div-int v0, v1, p2

    rem-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x30

    .line 255
    if-le v0, v2, :cond_0

    .line 256
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 257
    :cond_0
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    rem-int v0, v1, p2

    add-int/lit8 v0, v0, 0x30

    .line 259
    if-le v0, v2, :cond_1

    .line 260
    add-int/lit8 v0, v0, -0x30

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x61

    .line 261
    :cond_1
    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    return-void
.end method

.method public static append(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 2

    .prologue
    .line 233
    monitor-enter p0

    .line 235
    add-int v0, p2, p3

    .line 236
    :goto_0
    if-ge p2, v0, :cond_0

    .line 238
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 242
    :cond_0
    monitor-exit p0

    .line 243
    return-void

    .line 240
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static append2digits(Ljava/lang/StringBuffer;I)V
    .locals 1

    .prologue
    .line 267
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 269
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 272
    :cond_0
    return-void
.end method

.method public static append2digits(Ljava/lang/StringBuilder;I)V
    .locals 1

    .prologue
    .line 277
    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 279
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    :cond_0
    return-void
.end method

.method public static asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x7f

    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v2, v0

    .line 89
    :goto_0
    add-int/lit8 v0, v2, -0x1

    if-lez v2, :cond_4

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 92
    if-gt v2, v4, :cond_0

    .line 94
    sget-object v3, Lorg/eclipse/jetty/util/StringUtil;->b:[C

    aget-char v3, v3, v2

    .line 95
    if-eq v2, v3, :cond_0

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 98
    aput-char v3, v1, v0

    move-object v2, v1

    .line 104
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 106
    aget-char v0, v2, v1

    if-gt v0, v4, :cond_3

    .line 107
    sget-object v0, Lorg/eclipse/jetty/util/StringUtil;->b:[C

    aget-char v3, v2, v1

    aget-char v0, v0, v3

    aput-char v0, v2, v1

    move v0, v1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 102
    goto :goto_0

    .line 110
    :cond_1
    if-nez v2, :cond_2

    :goto_2
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method

.method public static endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/16 v7, 0x7f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 147
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 152
    if-ge v3, v2, :cond_4

    move v0, v1

    .line 153
    goto :goto_0

    :cond_3
    move v2, v4

    move v3, v5

    .line 155
    :cond_4
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_0

    .line 157
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 158
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 159
    if-eq v3, v2, :cond_3

    .line 161
    if-gt v3, v7, :cond_5

    .line 162
    sget-object v6, Lorg/eclipse/jetty/util/StringUtil;->b:[C

    aget-char v3, v6, v3

    .line 163
    :cond_5
    if-gt v2, v7, :cond_6

    .line 164
    sget-object v6, Lorg/eclipse/jetty/util/StringUtil;->b:[C

    aget-char v2, v6, v2

    .line 165
    :cond_6
    if-eq v3, v2, :cond_3

    move v0, v1

    .line 166
    goto :goto_0
.end method

.method public static equals(Ljava/lang/String;[CII)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, p3, :cond_1

    .line 304
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 301
    :goto_1
    if-ge v1, p3, :cond_2

    .line 302
    add-int v2, p2, v1

    aget-char v2, p1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 304
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 378
    :try_start_0
    const-string v0, "ISO-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v0

    .line 382
    sget-object v1, Lorg/eclipse/jetty/util/StringUtil;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 383
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 391
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 395
    sget-object v1, Lorg/eclipse/jetty/util/StringUtil;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static indexFrom(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 178
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 181
    :goto_1
    return v0

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isUTF8(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 337
    const-string v0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static nonNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 291
    if-nez p0, :cond_0

    .line 292
    const-string p0, ""

    .line 293
    :cond_0
    return-object p0
.end method

.method public static printable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 344
    if-nez p0, :cond_0

    .line 345
    const/4 v0, 0x0

    .line 353
    :goto_0
    return-object v0

    .line 346
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 347
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 349
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 350
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 353
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static printable([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 362
    aget-byte v2, p0, v0

    int-to-char v2, v2

    .line 363
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x20

    if-le v2, v3, :cond_1

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_1

    .line 364
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    aget-byte v2, p0, v0

    invoke-static {v2, v1}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(BLjava/lang/Appendable;)V

    goto :goto_1

    .line 371
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 190
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 192
    if-ne v0, v5, :cond_0

    .line 207
    :goto_0
    return-object p0

    .line 195
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    .line 202
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 204
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 205
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static sidBytesToString([B)Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x2d

    const/16 v11, 0x10

    const/4 v2, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    const-string v0, "S-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    aget-byte v0, p0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v2

    .line 422
    :goto_0
    const/4 v5, 0x7

    if-gt v0, v5, :cond_0

    .line 424
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 430
    aget-byte v5, p0, v10

    move v0, v1

    .line 433
    :goto_1
    if-ge v0, v5, :cond_1

    .line 435
    mul-int/lit8 v6, v0, 0x4

    .line 436
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 438
    const-string v7, "%02X%02X%02X%02X"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    add-int/lit8 v9, v6, 0xb

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    add-int/lit8 v9, v6, 0xa

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    add-int/lit8 v9, v6, 0x9

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x3

    add-int/lit8 v6, v6, 0x8

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sidStringToBytes(Ljava/lang/String;)[B
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 458
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 460
    array-length v0, v5

    add-int/lit8 v0, v0, -0x3

    .line 463
    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x8

    new-array v6, v3, [B

    .line 466
    aget-object v3, v5, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v6, v1

    .line 469
    int-to-byte v0, v0

    aput-byte v0, v6, v4

    .line 472
    aget-object v0, v5, v2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 474
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_0

    .line 476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 480
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 482
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v6, v2

    .line 480
    add-int/lit8 v1, v1, 0x2

    move v2, v3

    goto :goto_1

    .line 486
    :cond_1
    const/4 v0, 0x3

    :goto_2
    array-length v1, v5

    if-ge v0, v1, :cond_4

    .line 488
    aget-object v1, v5, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 490
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 496
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_4
    if-lez v3, :cond_3

    .line 498
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 496
    add-int/lit8 v2, v3, -0x2

    move v3, v2

    move v2, v4

    goto :goto_4

    .line 486
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 502
    :cond_4
    return-object v6
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/16 v6, 0x7f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 117
    if-nez p1, :cond_1

    move v1, v2

    .line 137
    :cond_0
    :goto_0
    return v1

    .line 120
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 123
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 126
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 127
    if-eq v4, v3, :cond_4

    .line 129
    if-gt v4, v6, :cond_2

    .line 130
    sget-object v5, Lorg/eclipse/jetty/util/StringUtil;->b:[C

    aget-char v4, v5, v4

    .line 131
    :cond_2
    if-gt v3, v6, :cond_3

    .line 132
    sget-object v5, Lorg/eclipse/jetty/util/StringUtil;->b:[C

    aget-char v3, v5, v3

    .line 133
    :cond_3
    if-ne v4, v3, :cond_0

    .line 123
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v1, v2

    .line 137
    goto :goto_0
.end method

.method public static toString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 329
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toUTF8String([BII)Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 314
    :catch_0
    move-exception v0

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-static {p0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
