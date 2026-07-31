.class public Lorg/eclipse/jetty/http/HttpParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpParser$EventHandler;
    }
.end annotation


# static fields
.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xd

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SEEKING_EOF:I = 0x7

.field public static final STATE_SPACE1:I = -0xc

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xe

.field public static final STATE_STATUS:I = -0xb

.field public static final STATE_URI:I = -0xa

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected _chunkLength:I

.field protected _chunkPosition:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field protected final _contentView:Lorg/eclipse/jetty/io/View;

.field protected _eol:B

.field protected _length:I

.field protected _state:I

.field private final b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

.field private final c:Lorg/eclipse/jetty/io/Buffers;

.field private final d:Lorg/eclipse/jetty/io/EndPoint;

.field private e:Lorg/eclipse/jetty/io/Buffer;

.field private f:Lorg/eclipse/jetty/io/Buffer;

.field private g:Lorg/eclipse/jetty/io/Buffer;

.field private h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private final i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

.field private final j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpParser;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 80
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 95
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    .line 96
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 101
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 102
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 80
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    .line 115
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    .line 116
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 117
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 118
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 119
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1223
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1224
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    .line 1235
    :cond_0
    :goto_0
    return v1

    .line 1226
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1228
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1234
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1235
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    goto :goto_0
.end method

.method public blockForContent(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x7

    .line 1179
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1180
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 1214
    :cond_0
    :goto_0
    return-object v0

    .line 1182
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getState()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1187
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1190
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1192
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1194
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1197
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1199
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1200
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1210
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1211
    throw v0

    .line 1204
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1214
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    goto :goto_0
.end method

.method protected fill()I
    .locals 5

    .prologue
    .line 1007
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1008
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 1011
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 1014
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1054
    :goto_0
    return v0

    .line 1018
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_5

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->m:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_5

    .line 1020
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_4

    .line 1021
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    .line 1022
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 1026
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v0, :cond_b

    .line 1029
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eq v0, v1, :cond_6

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_7

    .line 1031
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1035
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    if-nez v0, :cond_9

    .line 1037
    sget-object v0, Lorg/eclipse/jetty/http/HttpParser;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "HttpParser Full for {} "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 1039
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    const/16 v2, 0x19d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FULL "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v4, :cond_8

    const-string v0, "body"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    const-string v0, "head"

    goto :goto_1

    .line 1044
    :cond_9
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1049
    sget-object v1, Lorg/eclipse/jetty/http/HttpParser;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1050
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_a

    :goto_2
    throw v0

    :cond_a
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 1054
    :cond_b
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    .line 1155
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1156
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inHeaderState()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunking()Z
    .locals 4

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 169
    const/16 v0, -0xe

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    return v0
.end method

.method public isState(I)Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 2

    .prologue
    .line 214
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 216
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-eq v0, v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-gez v0, :cond_1

    .line 223
    :cond_2
    return-void
.end method

.method public parseAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 238
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View;->hasContent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 235
    goto :goto_0

    :cond_1
    move v3, v2

    .line 240
    goto :goto_1

    .line 242
    :cond_2
    return v0
.end method

.method public parseNext()I
    .locals 12

    .prologue
    .line 255
    const/4 v5, 0x0

    .line 257
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_1

    .line 258
    const/4 v0, 0x0

    .line 990
    :cond_0
    :goto_0
    return v0

    .line 260
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_2

    .line 261
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 264
    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    .line 271
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 274
    if-nez v0, :cond_5

    .line 276
    const/4 v1, -0x1

    .line 277
    const/4 v0, 0x0

    .line 280
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->fill()I

    move-result v1

    .line 281
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "filled {}/{}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v7}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_1
    if-lez v1, :cond_6

    .line 290
    const/4 v5, 0x1

    .line 335
    :cond_4
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 341
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v6

    .line 342
    iget v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 343
    :goto_2
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v0, :cond_3c

    add-int/lit8 v0, v2, -0x1

    if-lez v2, :cond_3c

    .line 345
    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v1, v2, :cond_5d

    .line 347
    add-int/lit8 v3, v3, 0x1

    .line 348
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v4, v1

    move v5, v3

    .line 351
    :goto_3
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 353
    iget-byte v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_c

    .line 355
    const/16 v1, 0xa

    if-ne v7, v1, :cond_b

    .line 357
    const/16 v1, 0xa

    iput-byte v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move v1, v4

    move v2, v0

    move v3, v5

    .line 358
    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 285
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 992
    :catch_1
    move-exception v0

    .line 994
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    .line 995
    const/4 v1, 0x7

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 996
    throw v0

    .line 291
    :cond_6
    if-gez v1, :cond_4

    .line 293
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    .line 296
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v1, :cond_7

    .line 298
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->o:Z

    if-nez v1, :cond_7

    .line 300
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 301
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 302
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 303
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 308
    :cond_7
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    sparse-switch v1, :sswitch_data_0

    .line 321
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 322
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->o:Z

    if-nez v1, :cond_8

    .line 323
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->earlyEOF()V

    .line 324
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 327
    :goto_4
    if-eqz v0, :cond_9

    .line 328
    throw v0

    .line 312
    :sswitch_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_4

    .line 316
    :sswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 317
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_4

    .line 330
    :cond_9
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isIdle()Z

    move-result v0

    if-nez v0, :cond_a

    .line 331
    new-instance v0, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v0

    .line 333
    :cond_a
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 360
    :cond_b
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 362
    :cond_c
    const/4 v1, 0x0

    iput-byte v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 364
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    packed-switch v1, :pswitch_data_0

    :cond_d
    :goto_5
    :pswitch_0
    :sswitch_2
    move v1, v4

    move v2, v0

    move v3, v5

    .line 800
    goto/16 :goto_2

    .line 367
    :pswitch_1
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 368
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 369
    const/16 v1, 0x20

    if-gt v7, v1, :cond_e

    if-gez v7, :cond_d

    .line 371
    :cond_e
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 372
    const/16 v1, -0xd

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_5

    .line 377
    :pswitch_2
    const/16 v1, 0x20

    if-ne v7, v1, :cond_10

    .line 379
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 380
    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v1

    if-nez v1, :cond_f

    const/4 v1, -0x1

    :goto_6
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    .line 381
    const/16 v1, -0xc

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 382
    goto/16 :goto_2

    .line 380
    :cond_f
    const/4 v1, 0x0

    goto :goto_6

    .line 384
    :cond_10
    const/16 v1, 0x20

    if-ge v7, v1, :cond_d

    if-ltz v7, :cond_d

    .line 386
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 391
    :pswitch_3
    const/16 v1, 0x20

    if-gt v7, v1, :cond_11

    if-gez v7, :cond_13

    .line 393
    :cond_11
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 394
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    if-ltz v1, :cond_12

    .line 396
    const/16 v1, -0xb

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 397
    add-int/lit8 v1, v7, -0x30

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    goto :goto_5

    .line 400
    :cond_12
    const/16 v1, -0xa

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_5

    .line 402
    :cond_13
    const/16 v1, 0x20

    if-ge v7, v1, :cond_d

    .line 404
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 409
    :pswitch_4
    const/16 v1, 0x20

    if-ne v7, v1, :cond_14

    .line 411
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 412
    const/16 v1, -0x9

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 413
    goto/16 :goto_2

    .line 415
    :cond_14
    const/16 v1, 0x30

    if-lt v7, v1, :cond_15

    const/16 v1, 0x39

    if-gt v7, v1, :cond_15

    .line 417
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v7, -0x30

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 418
    goto/16 :goto_2

    .line 420
    :cond_15
    const/16 v1, 0x20

    if-ge v7, v1, :cond_16

    if-ltz v7, :cond_16

    .line 422
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v2, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 423
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 424
    const/4 v1, -0x5

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 425
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 426
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 427
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    move v1, v4

    move v2, v0

    move v3, v5

    .line 428
    goto/16 :goto_2

    .line 431
    :cond_16
    const/16 v1, -0xa

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 432
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    goto/16 :goto_5

    .line 436
    :pswitch_5
    const/16 v1, 0x20

    if-ne v7, v1, :cond_17

    .line 438
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 439
    const/16 v1, -0x9

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v1, v4

    move v2, v0

    move v3, v5

    .line 440
    goto/16 :goto_2

    .line 442
    :cond_17
    const/16 v1, 0x20

    if-ge v7, v1, :cond_d

    if-ltz v7, :cond_d

    .line 445
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    .line 447
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 448
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 449
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 450
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 455
    :pswitch_6
    const/16 v1, 0x20

    if-gt v7, v1, :cond_18

    if-gez v7, :cond_19

    .line 457
    :cond_18
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 458
    const/4 v1, -0x6

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 460
    :cond_19
    const/16 v1, 0x20

    if-ge v7, v1, :cond_d

    .line 462
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    if-lez v1, :cond_1a

    .line 464
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v2, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v3, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 465
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 466
    const/4 v1, -0x5

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 467
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 468
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 469
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    goto/16 :goto_5

    .line 474
    :cond_1a
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    .line 476
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 477
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 478
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 479
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 485
    :pswitch_7
    const/16 v1, 0xd

    if-eq v7, v1, :cond_1b

    const/16 v1, 0xa

    if-ne v7, v1, :cond_d

    .line 488
    :cond_1b
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    if-lez v1, :cond_1c

    .line 489
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    invoke-virtual {v2, v1, v3, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 492
    :goto_7
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 493
    sget-object v2, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_1d

    const/4 v1, 0x1

    :goto_8
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    .line 494
    const/4 v1, -0x5

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 495
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 496
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 497
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    move v1, v4

    move v2, v0

    move v3, v5

    .line 498
    goto/16 :goto_2

    .line 491
    :cond_1c
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    iget-object v8, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    iget-object v9, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v2, v3, v8, v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_7

    .line 493
    :cond_1d
    const/4 v1, 0x0

    goto :goto_8

    .line 503
    :pswitch_8
    sparse-switch v7, :sswitch_data_1

    .line 518
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v1, :cond_1e

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v1

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v1

    if-gtz v1, :cond_1e

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    if-eqz v1, :cond_20

    .line 520
    :cond_1e
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object v3, v1

    .line 521
    :goto_9
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 522
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    if-nez v1, :cond_26

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 524
    :goto_a
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 525
    if-ltz v2, :cond_1f

    .line 529
    sparse-switch v2, :sswitch_data_2

    .line 596
    :cond_1f
    :goto_b
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 597
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 598
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 599
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    .line 601
    :cond_20
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 604
    const/16 v1, 0xd

    if-eq v7, v1, :cond_21

    const/16 v1, 0xa

    if-ne v7, v1, :cond_2f

    .line 607
    :cond_21
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    if-lez v0, :cond_29

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_22

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_22

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_29

    .line 611
    :cond_22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 624
    :cond_23
    :goto_c
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 625
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 626
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_24

    .line 627
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 631
    :cond_24
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2c

    const v0, 0x7fffffff

    :goto_d
    packed-switch v0, :pswitch_data_1

    .line 650
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 654
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 510
    :sswitch_3
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 511
    const/4 v1, -0x2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 520
    :cond_25
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    move-object v3, v1

    goto/16 :goto_9

    .line 522
    :cond_26
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 532
    :sswitch_4
    iget-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    const-wide/16 v10, -0x2

    cmp-long v2, v8, v10

    if-eqz v2, :cond_1f

    .line 536
    :try_start_4
    invoke-static {v1}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    .line 543
    :try_start_5
    iget-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_1f

    .line 544
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_b

    .line 538
    :catch_2
    move-exception v0

    .line 540
    sget-object v1, Lorg/eclipse/jetty/http/HttpParser;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 541
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v0

    .line 549
    :sswitch_5
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 550
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    .line 551
    const/4 v8, 0x2

    if-ne v8, v2, :cond_27

    .line 552
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_b

    .line 555
    :cond_27
    const-string v2, "ISO-8859-1"

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    const-string v8, "chunked"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 557
    const-wide/16 v8, -0x2

    iput-wide v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_b

    .line 559
    :cond_28
    const-string v8, "chunked"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1f

    .line 560
    new-instance v0, Lorg/eclipse/jetty/http/HttpException;

    const/16 v1, 0x190

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 565
    :sswitch_6
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    goto/16 :goto_b

    .line 577
    :sswitch_7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v9, :cond_1f

    aget-object v10, v8, v2

    .line 579
    sget-object v11, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Ljava/lang/String;)I

    move-result v10

    sparse-switch v10, :sswitch_data_4

    .line 577
    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 568
    :sswitch_8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    goto/16 :goto_b

    .line 572
    :sswitch_9
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    goto/16 :goto_b

    .line 582
    :sswitch_a
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    goto :goto_10

    .line 586
    :sswitch_b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    goto :goto_10

    .line 613
    :cond_29
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x3

    cmp-long v0, v0, v2

    if-nez v0, :cond_23

    .line 615
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    if-eqz v0, :cond_2a

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0x130

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2b

    .line 619
    :cond_2a
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_c

    .line 621
    :cond_2b
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_c

    .line 631
    :cond_2c
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    long-to-int v0, v0

    goto/16 :goto_d

    .line 634
    :pswitch_9
    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 635
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_e

    .line 639
    :pswitch_a
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 640
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_e

    .line 644
    :pswitch_b
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 645
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-nez v0, :cond_2d

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2e

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_11
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 646
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 647
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 645
    :cond_2e
    const/4 v0, 0x7

    goto :goto_11

    .line 659
    :cond_2f
    const/4 v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 660
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 661
    const/4 v1, -0x4

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 664
    if-eqz v6, :cond_d

    .line 666
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v6, v2, v3}, Lorg/eclipse/jetty/http/HttpHeaders;->getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 668
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v1, :cond_d

    .line 670
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->length()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 671
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v1

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 672
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    goto/16 :goto_5

    .line 682
    :pswitch_c
    sparse-switch v7, :sswitch_data_5

    .line 702
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 703
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_30

    .line 704
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 705
    :cond_30
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 706
    const/4 v1, -0x3

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 686
    :sswitch_c
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v1, :cond_31

    .line 687
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 688
    :cond_31
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 689
    const/4 v1, -0x5

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 692
    :sswitch_d
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v1, :cond_32

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v1, :cond_32

    .line 693
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 694
    :cond_32
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 695
    const/4 v1, -0x2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 713
    :pswitch_d
    sparse-switch v7, :sswitch_data_6

    .line 734
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 735
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_5

    .line 717
    :sswitch_e
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v1, :cond_33

    .line 718
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 719
    :cond_33
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 720
    const/4 v1, -0x5

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 723
    :sswitch_f
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v1, :cond_34

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->h:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v1, :cond_34

    .line 724
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->i:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 725
    :cond_34
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 726
    const/4 v1, -0x2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 730
    :sswitch_10
    const/4 v1, -0x4

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 741
    :pswitch_e
    sparse-switch v7, :sswitch_data_7

    .line 765
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_35

    .line 766
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 767
    :cond_35
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 768
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 745
    :sswitch_11
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v1, :cond_36

    .line 747
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 748
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 757
    :cond_36
    :goto_12
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 758
    const/4 v1, -0x5

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 752
    :cond_37
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    if-nez v1, :cond_38

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    .line 753
    :cond_38
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    goto :goto_12

    .line 774
    :pswitch_f
    sparse-switch v7, :sswitch_data_8

    .line 798
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_5

    .line 778
    :sswitch_12
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    if-lez v1, :cond_39

    .line 780
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v1

    if-nez v1, :cond_3a

    .line 781
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 790
    :cond_39
    :goto_13
    iput-byte v7, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 791
    const/4 v1, -0x5

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 785
    :cond_3a
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    if-nez v1, :cond_3b

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v2, "ISO-8859-1"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    .line 786
    :cond_3b
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v3

    iget v8, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    add-int/2addr v3, v8

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->j:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    const-string v3, "ISO-8859-1"

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->k:Ljava/lang/String;

    goto :goto_13

    .line 795
    :sswitch_13
    const/4 v1, -0x2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_5

    .line 807
    :cond_3c
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    if-lez v0, :cond_3e

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->o:Z

    if-eqz v0, :cond_3e

    .line 809
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-nez v0, :cond_3d

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_3f

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_3f

    :cond_3d
    const/4 v0, 0x0

    :goto_14
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 810
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 817
    :cond_3e
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 819
    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v0, v3

    .line 820
    :goto_15
    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 822
    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eq v2, v3, :cond_5c

    .line 824
    add-int/lit8 v2, v0, 0x1

    .line 825
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move v3, v2

    move v2, v0

    .line 828
    :goto_16
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v4, 0xd

    if-ne v0, v4, :cond_40

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v4, 0xa

    if-ne v0, v4, :cond_40

    .line 830
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 831
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    move v0, v3

    .line 832
    goto :goto_15

    .line 809
    :cond_3f
    const/4 v0, 0x7

    goto :goto_14

    .line 834
    :cond_40
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 835
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    packed-switch v0, :pswitch_data_2

    .line 987
    :cond_41
    :goto_17
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    move v0, v3

    goto :goto_15

    .line 838
    :pswitch_10
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 839
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 840
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 841
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 843
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 847
    :pswitch_11
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v2, v4

    .line 848
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_43

    .line 850
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    :goto_18
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 851
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 852
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 850
    :cond_42
    const/4 v0, 0x7

    goto :goto_18

    .line 855
    :cond_43
    int-to-long v4, v1

    cmp-long v0, v4, v2

    if-lez v0, :cond_44

    .line 859
    long-to-int v1, v2

    .line 862
    :cond_44
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 863
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 864
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 865
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 867
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_45

    .line 869
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    :goto_19
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 870
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 873
    :cond_45
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 869
    :cond_46
    const/4 v0, 0x7

    goto :goto_19

    .line 878
    :pswitch_12
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    .line 879
    const/16 v1, 0xd

    if-eq v0, v1, :cond_47

    const/16 v1, 0xa

    if-ne v0, v1, :cond_48

    .line 880
    :cond_47
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    goto/16 :goto_17

    .line 881
    :cond_48
    const/16 v1, 0x20

    if-gt v0, v1, :cond_49

    .line 882
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    goto/16 :goto_17

    .line 885
    :cond_49
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    .line 886
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 887
    const/4 v0, 0x4

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_17

    .line 894
    :pswitch_13
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    .line 895
    const/16 v1, 0xd

    if-eq v0, v1, :cond_4a

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4e

    .line 897
    :cond_4a
    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 899
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v0, :cond_4d

    .line 901
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4b

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4b

    .line 902
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 903
    :cond_4b
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    :goto_1a
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 904
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 905
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 903
    :cond_4c
    const/4 v0, 0x7

    goto :goto_1a

    .line 908
    :cond_4d
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_17

    .line 910
    :cond_4e
    const/16 v1, 0x20

    if-le v0, v1, :cond_4f

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_50

    .line 911
    :cond_4f
    const/4 v0, 0x5

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_17

    .line 912
    :cond_50
    const/16 v1, 0x30

    if-lt v0, v1, :cond_51

    const/16 v1, 0x39

    if-gt v0, v1, :cond_51

    .line 913
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_17

    .line 914
    :cond_51
    const/16 v1, 0x61

    if-lt v0, v1, :cond_52

    const/16 v1, 0x66

    if-gt v0, v1, :cond_52

    .line 915
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x61

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_17

    .line 916
    :cond_52
    const/16 v1, 0x41

    if-lt v0, v1, :cond_53

    const/16 v1, 0x46

    if-gt v0, v1, :cond_53

    .line 917
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x41

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_17

    .line 919
    :cond_53
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad chunk char: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 925
    :pswitch_14
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    .line 926
    const/16 v1, 0xd

    if-eq v0, v1, :cond_54

    const/16 v1, 0xa

    if-ne v0, v1, :cond_41

    .line 928
    :cond_54
    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 929
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    if-nez v0, :cond_57

    .line 931
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_55

    .line 932
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 933
    :cond_55
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-eqz v0, :cond_56

    const/4 v0, 0x0

    :goto_1b
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 934
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 935
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 933
    :cond_56
    const/4 v0, 0x7

    goto :goto_1b

    .line 938
    :cond_57
    const/4 v0, 0x6

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_17

    .line 945
    :pswitch_15
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    iget v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    sub-int/2addr v0, v4

    .line 946
    if-nez v0, :cond_58

    .line 948
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_17

    .line 951
    :cond_58
    if-le v1, v0, :cond_5b

    .line 953
    :goto_1c
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 954
    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 955
    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 956
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 957
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->b:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 959
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 965
    :pswitch_16
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_5a

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 968
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 982
    :cond_59
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto/16 :goto_17

    .line 973
    :cond_5a
    :goto_1d
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_59

    .line 974
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 976
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 977
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 978
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->clear()V
    :try_end_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1d

    :cond_5b
    move v0, v1

    goto :goto_1c

    :cond_5c
    move v3, v0

    goto/16 :goto_16

    :cond_5d
    move v4, v1

    move v5, v3

    goto/16 :goto_3

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 364
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 503
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
        0x3a -> :sswitch_3
    .end sparse-switch

    .line 529
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    .line 631
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 565
    :sswitch_data_3
    .sparse-switch
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
    .end sparse-switch

    .line 579
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_a
        0x5 -> :sswitch_b
    .end sparse-switch

    .line 682
    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_c
        0xd -> :sswitch_c
        0x20 -> :sswitch_2
        0x3a -> :sswitch_d
    .end sparse-switch

    .line 713
    :sswitch_data_6
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_10
        0x3a -> :sswitch_f
    .end sparse-switch

    .line 741
    :sswitch_data_7
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 774
    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_12
        0xd -> :sswitch_12
        0x20 -> :sswitch_13
    .end sparse-switch

    .line 835
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, -0x1

    .line 1061
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->putIndex()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 1062
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-eqz v0, :cond_5

    const/16 v0, -0xe

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1063
    const-wide/16 v2, -0x3

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1064
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 1065
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 1066
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->l:I

    .line 1069
    iget-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1070
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v0

    iput-byte v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 1072
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1077
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_7

    .line 1078
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    .line 1084
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    .line 1085
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1086
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1087
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    .line 1088
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 1091
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_3

    .line 1093
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1094
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1096
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    .line 1097
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1099
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 1100
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 1101
    return-void

    .line 1062
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->d:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 1081
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1082
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    goto :goto_1
.end method

.method public returnBuffers()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1113
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->f:Lorg/eclipse/jetty/io/Buffer;

    .line 1116
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_3

    .line 1119
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->g:Lorg/eclipse/jetty/io/Buffer;

    .line 1120
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->c:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1121
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->e:Lorg/eclipse/jetty/io/Buffer;

    .line 1123
    :cond_4
    return-void
.end method

.method public setForceContentBuffer(Z)V
    .locals 0

    .prologue
    .line 1173
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->m:Z

    .line 1174
    return-void
.end method

.method public setHeadResponse(Z)V
    .locals 0

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->o:Z

    .line 140
    return-void
.end method

.method public setPersistent(Z)V
    .locals 2

    .prologue
    .line 201
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    .line 202
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->n:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 204
    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 2

    .prologue
    .line 1128
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1129
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1142
    const-string v0, "%s{s=%d,l=%d,c=%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
