.class public Lorg/eclipse/jetty/http/HttpGenerator;
.super Lorg/eclipse/jetty/http/AbstractGenerator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpGenerator$1;,
        Lorg/eclipse/jetty/http/HttpGenerator$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B

.field private static final i:[B

.field private static j:[B


# instance fields
.field protected _bypass:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v1, 0x0

    .line 44
    const-class v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 53
    const/16 v0, 0x1fc

    new-array v0, v0, [Lorg/eclipse/jetty/http/HttpGenerator$a;

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    .line 56
    sget-object v0, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    move v0, v1

    .line 58
    :goto_0
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 60
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpStatus;->getCode(I)Lorg/eclipse/jetty/http/HttpStatus$Code;

    move-result-object v2

    .line 61
    if-nez v2, :cond_0

    .line 58
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpStatus$Code;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 64
    add-int/lit8 v2, v3, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x2

    new-array v5, v2, [B

    .line 65
    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v1, v5, v1, v3}, Lorg/eclipse/jetty/io/Buffer;->peek(I[BII)I

    .line 66
    add-int/lit8 v2, v3, 0x0

    aput-byte v8, v5, v2

    .line 67
    add-int/lit8 v2, v3, 0x1

    div-int/lit8 v6, v0, 0x64

    add-int/lit8 v6, v6, 0x30

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 68
    add-int/lit8 v2, v3, 0x2

    rem-int/lit8 v6, v0, 0x64

    div-int/lit8 v6, v6, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 69
    add-int/lit8 v2, v3, 0x3

    rem-int/lit8 v6, v0, 0xa

    add-int/lit8 v6, v6, 0x30

    int-to-byte v6, v6

    aput-byte v6, v5, v2

    .line 70
    add-int/lit8 v2, v3, 0x4

    aput-byte v8, v5, v2

    move v2, v1

    .line 71
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 72
    add-int/lit8 v6, v3, 0x5

    add-int/2addr v6, v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 73
    :cond_1
    add-int/lit8 v2, v3, 0x5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    const/16 v6, 0xd

    aput-byte v6, v5, v2

    .line 74
    add-int/lit8 v2, v3, 0x6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    const/16 v4, 0xa

    aput-byte v4, v5, v2

    .line 76
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    new-instance v4, Lorg/eclipse/jetty/http/HttpGenerator$a;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lorg/eclipse/jetty/http/HttpGenerator$a;-><init>(Lorg/eclipse/jetty/http/HttpGenerator$1;)V

    aput-object v4, v2, v0

    .line 77
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    aget-object v2, v2, v0

    new-instance v4, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    add-int/lit8 v6, v3, 0x5

    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x7

    invoke-direct {v4, v5, v6, v7, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v4, v2, Lorg/eclipse/jetty/http/HttpGenerator$a;->a:Lorg/eclipse/jetty/io/Buffer;

    .line 78
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    aget-object v2, v2, v0

    new-instance v4, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    add-int/lit8 v6, v3, 0x5

    invoke-direct {v4, v5, v1, v6, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v4, v2, Lorg/eclipse/jetty/http/HttpGenerator$a;->b:Lorg/eclipse/jetty/io/Buffer;

    .line 79
    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    aget-object v2, v2, v0

    new-instance v4, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    array-length v6, v5

    invoke-direct {v4, v5, v1, v6, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIII)V

    iput-object v4, v2, Lorg/eclipse/jetty/http/HttpGenerator$a;->c:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_1

    .line 94
    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->c:[B

    .line 96
    const-string v0, "Content-Length: 0\r\n"

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->d:[B

    .line 97
    const-string v0, "Connection: keep-alive\r\n"

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->e:[B

    .line 98
    const-string v0, "Connection: close\r\n"

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->f:[B

    .line 99
    const-string v0, "Connection: "

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->g:[B

    .line 100
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->h:[B

    .line 101
    const-string v0, "Transfer-Encoding: chunked\r\n"

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->i:[B

    .line 102
    const-string v0, "Server: Jetty(7.0.x)\r\n"

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->j:[B

    return-void

    .line 94
    :array_0
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/http/AbstractGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    .line 113
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 114
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 115
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    .line 116
    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    .line 129
    return-void
.end method

.method private a()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 921
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v0, v2

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    or-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 930
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-nez v0, :cond_a

    .line 933
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-lez v0, :cond_0

    .line 935
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 936
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 937
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 938
    iput-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 942
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 944
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_c

    .line 947
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 948
    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    .line 950
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_2

    .line 951
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 954
    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    if-eqz v1, :cond_4

    .line 956
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 957
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 958
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 961
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 962
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 965
    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 1016
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 1018
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_7

    .line 1019
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1021
    :cond_7
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    if-eqz v0, :cond_8

    .line 1023
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    array-length v1, v1

    if-lt v0, v1, :cond_13

    .line 1025
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1026
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 1035
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    if-eqz v0, :cond_a

    .line 1037
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_14

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_14

    .line 1039
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v0, :cond_9

    .line 1041
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->c:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1042
    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    .line 1044
    :cond_9
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    .line 1060
    :cond_a
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 1061
    iput-object v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 1063
    :cond_b
    return-void

    .line 967
    :cond_c
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_5

    .line 969
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 970
    if-lez v0, :cond_5

    .line 973
    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    .line 977
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_e

    .line 980
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2, v3, v4, v6}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 981
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 982
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/io/BufferUtil;->prependHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 984
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    if-eqz v0, :cond_d

    .line 986
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    sget-object v2, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1, v2, v4, v6}, Lorg/eclipse/jetty/io/Buffer;->poke(I[BII)I

    .line 987
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 988
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 1008
    :cond_d
    :goto_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-lt v0, v6, :cond_12

    .line 1009
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_0

    .line 994
    :cond_e
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_f

    .line 995
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 997
    :cond_f
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    if-eqz v1, :cond_11

    .line 999
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EOC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_10
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1001
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 1003
    :cond_11
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 1004
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_3

    .line 1011
    :cond_12
    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    goto/16 :goto_0

    .line 1028
    :cond_13
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 1030
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1031
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    goto/16 :goto_1

    .line 1046
    :cond_14
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->c:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    .line 1048
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v0, :cond_15

    .line 1050
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->c:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 1051
    iput-boolean v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    .line 1053
    :cond_15
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    goto/16 :goto_2
.end method

.method public static getReasonBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    array-length v1, v1

    if-ge p0, v1, :cond_1

    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    aget-object v1, v1, p0

    .line 87
    :goto_0
    if-eqz v1, :cond_0

    .line 88
    iget-object v0, v1, Lorg/eclipse/jetty/http/HttpGenerator$a;->a:Lorg/eclipse/jetty/io/Buffer;

    .line 89
    :cond_0
    return-object v0

    :cond_1
    move-object v1, v0

    .line 86
    goto :goto_0
.end method

.method public static setServerVersion(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server: Jetty("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/StringUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->j:[B

    .line 110
    return-void
.end method


# virtual methods
.method public addContent(Lorg/eclipse/jetty/io/Buffer;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 175
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "NO CONTENT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 180
    :cond_1
    sget-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "Ignoring extra content {}"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 239
    :cond_2
    :goto_0
    return-void

    .line 184
    :cond_3
    iput-boolean p2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-eqz v0, :cond_7

    .line 189
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 191
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 194
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-eqz v0, :cond_8

    .line 196
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 198
    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 199
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/io/BufferUtil;->putHexInt(Lorg/eclipse/jetty/io/Buffer;I)V

    .line 200
    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 201
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-object p1, v0

    .line 214
    :cond_7
    :goto_1
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 215
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 218
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v0, :cond_9

    .line 220
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 221
    iput-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 206
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->getBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 208
    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-object p1, v0

    .line 209
    goto :goto_1

    .line 223
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_a
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_c

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/16 v1, 0x400

    if-le v0, v1, :cond_c

    .line 225
    :cond_b
    iput-boolean v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    goto/16 :goto_0

    .line 227
    :cond_c
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_d

    .line 231
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 234
    :cond_d
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 235
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 237
    iput-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    goto/16 :goto_0
.end method

.method public complete()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 786
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 799
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->complete()V

    .line 791
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ge v0, v2, :cond_1

    .line 793
    iput v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 794
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 795
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    .line 798
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    goto :goto_0
.end method

.method public completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    .locals 18

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eqz v2, :cond_0

    .line 775
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    if-nez v2, :cond_1

    .line 369
    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v2}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v2

    .line 371
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-eqz v2, :cond_2

    if-nez p2, :cond_2

    .line 372
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "last?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    or-int v2, v2, p2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_3

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 379
    :cond_3
    const/4 v9, 0x0

    .line 383
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 385
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 387
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 389
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 394
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 395
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 771
    :catch_0
    move-exception v2

    .line 773
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v5}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 400
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 401
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 402
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v4, 0xa

    if-ne v2, v4, :cond_7

    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_0_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    :goto_1
    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 482
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_6

    .line 484
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->DATE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x3a

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_date:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->h:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 492
    :cond_6
    const/4 v8, 0x0

    .line 493
    const/4 v6, 0x0

    .line 494
    const/4 v5, 0x0

    .line 495
    const/4 v4, 0x0

    .line 496
    const/4 v3, 0x0

    .line 497
    const/4 v2, 0x0

    .line 499
    if-eqz p1, :cond_33

    .line 501
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/http/HttpFields;->size()I

    move-result v11

    .line 502
    const/4 v7, 0x0

    move v10, v7

    :goto_3
    if-ge v10, v11, :cond_21

    .line 504
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/http/HttpFields;->getField(I)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v7

    .line 505
    if-nez v7, :cond_13

    move-object v7, v8

    move v8, v9

    .line 502
    :goto_4
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    move v9, v8

    move-object v8, v7

    goto :goto_3

    .line 404
    :cond_7
    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_1

    .line 411
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    .line 413
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 414
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 415
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 420
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-nez v2, :cond_a

    .line 421
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_c

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 424
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    array-length v3, v3

    if-ge v2, v3, :cond_d

    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    aget-object v2, v2, v3

    .line 426
    :goto_6
    if-nez v2, :cond_f

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpVersions;->HTTP_1_1_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_e

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    div-int/lit8 v3, v3, 0x64

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    rem-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 442
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 456
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_11

    .line 458
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 459
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_b

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 464
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_5

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 467
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 421
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 424
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 441
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto :goto_7

    .line 446
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    if-nez v3, :cond_10

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, v2, Lorg/eclipse/jetty/http/HttpGenerator$a;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    goto :goto_8

    .line 450
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, v2, Lorg/eclipse/jetty/http/HttpGenerator$a;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3, v2}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_reason:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto :goto_8

    .line 471
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0xcc

    if-eq v2, v3, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0x130

    if-ne v2, v3, :cond_5

    .line 473
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 474
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto/16 :goto_2

    .line 508
    :cond_13
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getNameOrdinal()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    .line 642
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    :cond_14
    move-object v7, v8

    move v8, v9

    goto/16 :goto_4

    .line 512
    :sswitch_0
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 514
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    cmp-long v8, v12, v14

    if-ltz v8, :cond_15

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-eqz v8, :cond_32

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    cmp-long v8, v12, v14

    if-eqz v8, :cond_32

    .line 515
    :cond_15
    const/4 v8, 0x0

    .line 518
    :goto_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    move-object v7, v8

    move v8, v9

    .line 519
    goto/16 :goto_4

    .line 522
    :sswitch_1
    sget-object v3, Lorg/eclipse/jetty/http/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v12

    invoke-static {v3, v12}, Lorg/eclipse/jetty/io/BufferUtil;->isPrefix(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-wide/16 v12, -0x4

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 525
    :cond_16
    const/4 v3, 0x1

    .line 526
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    move-object v7, v8

    move v8, v9

    .line 527
    goto/16 :goto_4

    .line 530
    :sswitch_2
    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v13, 0xb

    if-ne v12, v13, :cond_14

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    .line 531
    goto/16 :goto_4

    .line 536
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v12

    if-eqz v12, :cond_17

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 539
    :cond_17
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v12

    .line 540
    sparse-switch v12, :sswitch_data_1

    .line 621
    if-nez v2, :cond_20

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    :goto_a
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v8

    move v8, v9

    .line 630
    goto/16 :goto_4

    .line 544
    :sswitch_4
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v12, ","

    invoke-virtual {v7, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 545
    const/4 v7, 0x0

    :goto_b
    if-eqz v12, :cond_1d

    array-length v13, v12

    if-ge v7, v13, :cond_1d

    .line 547
    sget-object v13, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v14, v12, v7

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v13

    .line 549
    if-eqz v13, :cond_1b

    .line 551
    invoke-virtual {v13}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v13

    sparse-switch v13, :sswitch_data_2

    .line 572
    if-nez v2, :cond_1a

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 576
    :goto_c
    aget-object v13, v12, v7

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    :cond_18
    :goto_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 554
    :sswitch_5
    const/4 v4, 0x1

    .line 555
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 556
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 557
    :cond_19
    const/4 v5, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_18

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v16, -0x3

    cmp-long v13, v14, v16

    if-nez v13, :cond_18

    .line 559
    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto :goto_d

    .line 563
    :sswitch_6
    move-object/from16 v0, p0

    iget v13, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v14, 0xa

    if-ne v13, v14, :cond_18

    .line 565
    const/4 v5, 0x1

    .line 566
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v13

    if-eqz v13, :cond_18

    .line 567
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto :goto_d

    .line 575
    :cond_1a
    const/16 v13, 0x2c

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_c

    .line 581
    :cond_1b
    if-nez v2, :cond_1c

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    :goto_e
    aget-object v13, v12, v7

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 584
    :cond_1c
    const/16 v13, 0x2c

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_1d
    move-object v7, v8

    move v8, v9

    .line 589
    goto/16 :goto_4

    .line 594
    :sswitch_7
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 596
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    move-object v7, v8

    move v8, v9

    .line 597
    goto/16 :goto_4

    .line 602
    :cond_1e
    :sswitch_8
    const/4 v4, 0x1

    .line 603
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 604
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 605
    :cond_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v7

    if-eqz v7, :cond_14

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v14, -0x3

    cmp-long v7, v12, v14

    if-nez v7, :cond_14

    .line 606
    const-wide/16 v12, -0x1

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    move-object v7, v8

    move v8, v9

    goto/16 :goto_4

    .line 611
    :sswitch_9
    move-object/from16 v0, p0

    iget v7, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v12, 0xa

    if-ne v7, v12, :cond_14

    .line 613
    const/4 v5, 0x1

    .line 614
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 615
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    move-object v7, v8

    move v8, v9

    goto/16 :goto_4

    .line 624
    :cond_20
    const/16 v12, 0x2c

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 633
    :sswitch_a
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 635
    const/4 v9, 0x1

    .line 636
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    move-object v7, v8

    move v8, v9

    goto/16 :goto_4

    :cond_21
    move-object v7, v6

    move v6, v4

    move v4, v3

    move-object v3, v2

    move v2, v5

    .line 656
    :goto_f
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    long-to-int v5, v10

    packed-switch v5, :pswitch_data_0

    .line 709
    :cond_22
    :goto_10
    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v10, -0x2

    cmp-long v4, v4, v10

    if-nez v4, :cond_23

    .line 712
    if-eqz v7, :cond_2f

    const/4 v4, 0x2

    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValueOrdinal()I

    move-result v5

    if-eq v4, v5, :cond_2f

    .line 714
    invoke-virtual {v7}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 715
    const-string v5, "chunked"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 716
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v7, v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 725
    :cond_23
    :goto_11
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_24

    .line 727
    const/4 v2, 0x0

    .line 728
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    .line 731
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_30

    if-nez v6, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_30

    .line 735
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->f:[B

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 736
    if-eqz v3, :cond_26

    .line 738
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v4, 0x2c

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 740
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 741
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->h:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 763
    :cond_26
    :goto_12
    if-nez v9, :cond_27

    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v3, 0xc7

    if-le v2, v3, :cond_27

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->getSendServerVersion()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 764
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->j:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 767
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 768
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    goto/16 :goto_0

    .line 663
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-nez v5, :cond_29

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v5

    if-eqz v5, :cond_29

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v10, 0xc8

    if-lt v5, v10, :cond_28

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v10, 0xcc

    if-eq v5, v10, :cond_28

    move-object/from16 v0, p0

    iget v5, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v10, 0x130

    if-ne v5, v10, :cond_29

    .line 664
    :cond_28
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    goto/16 :goto_10

    .line 665
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-eqz v5, :cond_2b

    .line 668
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 669
    if-nez v8, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v5

    if-nez v5, :cond_2a

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-gtz v5, :cond_2a

    if-eqz v4, :cond_22

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-nez v4, :cond_22

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 673
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v5, 0x3a

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v5, 0x20

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    invoke-static {v4, v10, v11}, Lorg/eclipse/jetty/io/BufferUtil;->putDecLong(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 676
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_10

    .line 682
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_version:I

    const/16 v5, 0xb

    if-ge v4, v5, :cond_2d

    :cond_2c
    const-wide/16 v4, -0x1

    :goto_13
    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 683
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v10, -0x1

    cmp-long v4, v4, v10

    if-nez v4, :cond_22

    .line 685
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 686
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    goto/16 :goto_10

    .line 682
    :cond_2d
    const-wide/16 v4, -0x2

    goto :goto_13

    .line 692
    :pswitch_2
    if-nez v8, :cond_22

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isResponse()Z

    move-result v4

    if-eqz v4, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_22

    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v5, 0x130

    if-eq v4, v5, :cond_22

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpGenerator;->d:[B

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_10

    .line 697
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpGenerator;->isRequest()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    goto/16 :goto_10

    .line 718
    :cond_2e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "BAD TE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 721
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v5, Lorg/eclipse/jetty/http/HttpGenerator;->i:[B

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_11

    .line 744
    :cond_30
    if-eqz v2, :cond_31

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->e:[B

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 747
    if-eqz v3, :cond_26

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 750
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    const/16 v4, 0x2c

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put(B)V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 752
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->h:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    goto/16 :goto_12

    .line 755
    :cond_31
    if-eqz v3, :cond_26

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v4, Lorg/eclipse/jetty/http/HttpGenerator;->g:[B

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v3, Lorg/eclipse/jetty/http/HttpGenerator;->h:[B

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put([B)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_12

    :cond_32
    move-object v8, v7

    goto/16 :goto_9

    :cond_33
    move-object v7, v6

    move v6, v4

    move v4, v3

    move-object v3, v2

    move v2, v5

    goto/16 :goto_f

    .line 508
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
        0xc -> :sswitch_0
        0x10 -> :sswitch_1
        0x30 -> :sswitch_a
    .end sparse-switch

    .line 540
    :sswitch_data_1
    .sparse-switch
        -0x1 -> :sswitch_4
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
        0xb -> :sswitch_7
    .end sparse-switch

    .line 551
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_5
        0x5 -> :sswitch_6
    .end sparse-switch

    .line 656
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public flushBuffer()I
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v0, 0x0

    .line 808
    :try_start_0
    iget v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v1, :cond_0

    .line 809
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "State==HEADER"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :catch_0
    move-exception v0

    .line 913
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 914
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_c

    :goto_0
    throw v0

    .line 811
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->b()V

    .line 813
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-nez v1, :cond_3

    .line 815
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_1

    .line 816
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 817
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-nez v1, :cond_2

    .line 818
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpGenerator;->c:[B

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 819
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 820
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    .line 909
    :goto_1
    return v0

    .line 826
    :cond_3
    const/4 v2, -0x1

    .line 827
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->a()I

    move-result v1

    move v3, v1

    move v1, v0

    .line 833
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 901
    :goto_3
    if-lez v2, :cond_4

    .line 902
    add-int/2addr v1, v2

    .line 904
    :cond_4
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->a()I

    move-result v4

    .line 907
    if-gtz v2, :cond_d

    if-eqz v4, :cond_5

    if-eqz v3, :cond_d

    :cond_5
    move v0, v1

    .line 909
    goto :goto_1

    .line 836
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 838
    :pswitch_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    goto :goto_3

    .line 841
    :pswitch_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    goto :goto_3

    .line 844
    :pswitch_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    goto :goto_3

    .line 847
    :pswitch_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    goto :goto_3

    .line 850
    :pswitch_5
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    goto :goto_3

    .line 853
    :pswitch_6
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    goto :goto_3

    .line 859
    :pswitch_7
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_6

    .line 860
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 862
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 863
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    .line 865
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_7

    .line 867
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 868
    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v6, -0x2

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    .line 871
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v4, 0xc

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 872
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    const/16 v4, 0xc

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 876
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eq v2, v8, :cond_7

    .line 878
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v4}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 879
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 880
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 886
    :cond_7
    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    if-nez v2, :cond_a

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_a

    .line 888
    :cond_8
    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ne v2, v8, :cond_9

    .line 889
    const/4 v2, 0x4

    iput v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 891
    :cond_9
    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-ne v2, v9, :cond_b

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_b

    iget v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_status:I

    const/16 v4, 0x64

    if-eq v2, v4, :cond_b

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_b

    .line 892
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    move v2, v0

    goto/16 :goto_3

    .line 896
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    move v2, v0

    goto/16 :goto_3

    .line 914
    :cond_c
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    move v3, v4

    goto/16 :goto_2

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBytesBuffered()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1067
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    goto :goto_2
.end method

.method public isBufferFull()Z
    .locals 4

    .prologue
    .line 305
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isBufferFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRequest()Z
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponse()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepareUncheckedAddContent()I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 272
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-eqz v1, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 279
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 280
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-gtz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-eqz v1, :cond_6

    .line 282
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpGenerator;->flushBuffer()I

    .line 283
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-eqz v0, :cond_6

    .line 284
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_7

    .line 289
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 291
    :cond_7
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    .line 294
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v0, :cond_8

    .line 295
    const v0, 0x7fffffff

    goto :goto_0

    .line 297
    :cond_8
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v1

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_9

    const/16 v0, 0xc

    :goto_1
    sub-int v0, v1, v0

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_persistent:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/http/AbstractGenerator;->reset()V

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 149
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 151
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_3

    .line 152
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 153
    :cond_3
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 154
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->k:Z

    .line 155
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->l:Z

    .line 156
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    .line 157
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_method:Lorg/eclipse/jetty/io/Buffer;

    .line 158
    iput-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_uri:Ljava/lang/String;

    .line 159
    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    .line 160
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 143
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public send1xx(I)V
    .locals 3

    .prologue
    .line 311
    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    return-void

    .line 314
    :cond_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    const/16 v0, 0xc7

    if-le p1, v0, :cond_3

    .line 315
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "!1xx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/http/HttpGenerator;->b:[Lorg/eclipse/jetty/http/HttpGenerator$a;

    aget-object v0, v0, p1

    .line 317
    if-nez v0, :cond_4

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_5

    .line 322
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 324
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpGenerator$a;->c:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    .line 325
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpTokens;->CRLF:[B

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->put([B)I

    .line 330
    :cond_6
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 333
    if-gez v0, :cond_7

    .line 334
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    sget-object v1, Lorg/eclipse/jetty/http/HttpGenerator;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 342
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_7
    if-nez v0, :cond_6

    .line 336
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 249
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_noContent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_head:Z

    if-eqz v0, :cond_2

    .line 250
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 252
    :cond_2
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_last:Z

    .line 254
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 255
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_bypass:Z

    .line 256
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    .line 259
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentWritten:J

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_contentLength:J

    .line 261
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, -0x1

    .line 1082
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1083
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1084
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_content:Lorg/eclipse/jetty/io/Buffer;

    .line 1085
    const-string v4, "%s{s=%d,h=%d,b=%d,c=%d}"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lorg/eclipse/jetty/http/HttpGenerator;->_state:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v6, 0x3

    if-nez v2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x4

    if-nez v3, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    goto :goto_2
.end method
