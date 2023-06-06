.class Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

.field private final b:Lorg/eclipse/jetty/io/AsyncEndPoint;

.field private final c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

.field private final d:Ljava/lang/String;

.field private final e:Lorg/eclipse/jetty/http/HttpParser;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lorg/eclipse/jetty/io/ByteArrayBuffer;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/io/AsyncEndPoint;Lorg/eclipse/jetty/websocket/WebSocketClient$a;)V
    .locals 4

    .prologue
    .line 364
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 366
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    .line 367
    iput-object p3, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    .line 369
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 370
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 371
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->d:Ljava/lang/String;

    .line 373
    new-instance v0, Lorg/eclipse/jetty/io/SimpleBuffers;

    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/SimpleBuffers;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 374
    new-instance v1, Lorg/eclipse/jetty/http/HttpParser;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;

    invoke-direct {v3, p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V

    invoke-direct {v1, v0, v2, v3}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->e:Lorg/eclipse/jetty/http/HttpParser;

    .line 409
    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;)Lorg/eclipse/jetty/io/AsyncEndPoint;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    return-object v0
.end method

.method private a()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->h:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-nez v0, :cond_6

    .line 415
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 417
    :cond_0
    const-string v0, "/"

    .line 419
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->f()Ljava/lang/String;

    move-result-object v2

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 425
    const-string v4, "GET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " HTTP/1.1\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Host: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v4}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v4}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->d()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Upgrade: websocket\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Connection: Upgrade\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "Sec-WebSocket-Key: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    if-eqz v2, :cond_3

    .line 434
    const-string v0, "Origin: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_3
    const-string v0, "Sec-WebSocket-Version: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 439
    const-string v0, "Sec-WebSocket-Protocol: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a()Ljava/util/Map;

    move-result-object v2

    .line 442
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 444
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 445
    const-string v5, "Cookie: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"\\\n\r\t\u000c\u0008%+ ;="

    invoke-static {v0, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "\"\\\n\r\t\u000c\u0008%+ ;="

    invoke-static {v0, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 452
    :cond_5
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->h:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 461
    :cond_6
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->h:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->h:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-interface {v0, v2}, Lorg/eclipse/jetty/io/AsyncEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 463
    if-gez v0, :cond_7

    .line 464
    new-instance v0, Ljava/io/IOException;

    const-string v2, "incomplete handshake"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :catch_0
    move-exception v0

    .line 468
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v2, v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/lang/Throwable;)V

    .line 470
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->h:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->f:Ljava/lang/String;

    return-object p1
.end method

.method private b()Lorg/eclipse/jetty/websocket/WebSocketConnection;
    .locals 13

    .prologue
    .line 519
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    const-string v1, "newWebSocketConnection()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$b;

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    iget-object v0, v0, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient;->getFactory()Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    move-result-object v2

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->c()Lorg/eclipse/jetty/websocket/WebSocket;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->e()I

    move-result v8

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->b()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0xd

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->g()Lorg/eclipse/jetty/websocket/MaskGen;

    move-result-object v12

    invoke-direct/range {v1 .. v12}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$b;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V

    return-object v1
.end method


# virtual methods
.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 3

    .prologue
    .line 475
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->e:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v0

    if-nez v0, :cond_4

    .line 477
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->h:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->h:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 478
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 514
    :cond_2
    :goto_0
    return-object p0

    .line 481
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->e:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->parseAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Incomplete handshake response"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 488
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->g:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 490
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 492
    const-string v0, "No Sec-WebSocket-Accept"

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->g:Ljava/lang/String;

    .line 513
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    goto :goto_0

    .line 494
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->hashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 496
    const-string v0, "Bad Sec-WebSocket-Accept"

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->g:Ljava/lang/String;

    goto :goto_1

    .line 500
    :cond_7
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b()Lorg/eclipse/jetty/websocket/WebSocketConnection;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->e:Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 503
    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 504
    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnection;->fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V

    .line 505
    :cond_8
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 507
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Lorg/eclipse/jetty/websocket/WebSocketConnection;)V

    move-object p0, v0

    .line 509
    goto :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 550
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    new-instance v1, Ljava/net/ProtocolException;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->g:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/lang/Throwable;)V

    .line 554
    :goto_0
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->c:Lorg/eclipse/jetty/websocket/WebSocketClient$a;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClient$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onInputShutdown()V
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b:Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    .line 536
    return-void
.end method
