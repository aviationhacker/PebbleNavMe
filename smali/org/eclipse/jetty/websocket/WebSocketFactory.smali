.class public Lorg/eclipse/jetty/websocket/WebSocketFactory;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/websocket/WebSocketServletConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

.field private e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;)V
    .locals 2

    .prologue
    .line 88
    const/high16 v0, 0x10000

    const/16 v1, 0xd

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketFactory;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;I)V
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0xd

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;II)V
    .locals 3

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->b:Ljava/util/Queue;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->c:Ljava/util/Map;

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->c:Ljava/util/Map;

    const-string v1, "identity"

    const-class v2, Lorg/eclipse/jetty/websocket/IdentityExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->c:Ljava/util/Map;

    const-string v1, "fragment"

    const-class v2, Lorg/eclipse/jetty/websocket/FragmentExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->c:Ljava/util/Map;

    const-string v1, "x-deflate-frame"

    const-class v2, Lorg/eclipse/jetty/websocket/DeflateFrameExtension;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const v0, 0x493e0

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->f:I

    .line 82
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->g:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->h:I

    .line 98
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-direct {v0, p2}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 99
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->d:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    .line 100
    const/16 v0, 0xd

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    .line 101
    return-void
.end method

.method private a(Ljava/lang/String;)Lorg/eclipse/jetty/websocket/Extension;
    .locals 2

    .prologue
    .line 438
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 439
    if-eqz v0, :cond_0

    .line 440
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_0
    return-object v0

    .line 442
    :catch_0
    move-exception v0

    .line 444
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 447
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptWebSocket(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 351
    const-string v0, "websocket"

    const-string v1, "Upgrade"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 353
    const-string v0, "Origin"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-nez v0, :cond_0

    .line 355
    const-string v0, "Sec-WebSocket-Origin"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->d:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    invoke-interface {v1, p1, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;->checkOrigin(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    const/16 v0, 0x193

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    move v0, v3

    .line 400
    :goto_0
    return v0

    .line 366
    :cond_1
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v6

    move-object v1, v5

    move-object v2, v5

    .line 368
    :goto_1
    if-nez v1, :cond_3

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 371
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->parseProtocols(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v4, v3

    move-object v0, v2

    :goto_2
    if-ge v4, v8, :cond_7

    aget-object v0, v7, v4

    .line 373
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->d:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    invoke-interface {v2, p1, v0}, Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;->doWebSocketConnect(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/eclipse/jetty/websocket/WebSocket;

    move-result-object v2

    .line 374
    if-eqz v2, :cond_2

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 380
    goto :goto_1

    .line 371
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move-object v0, v2

    goto :goto_2

    .line 383
    :cond_3
    if-nez v2, :cond_4

    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->d:Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;

    invoke-interface {v0, p1, v5}, Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;->doWebSocketConnect(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/eclipse/jetty/websocket/WebSocket;

    move-result-object v0

    .line 388
    if-nez v0, :cond_5

    .line 390
    const/16 v0, 0x1f7

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    move v0, v3

    .line 391
    goto :goto_0

    :cond_4
    move-object v0, v2

    .line 396
    :cond_5
    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->upgrade(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/websocket/WebSocket;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v3

    .line 400
    goto :goto_0

    :cond_7
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3
.end method

.method protected addConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected closeConnections()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;

    .line 463
    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->shutdown()V

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method protected doStop()V
    .locals 0

    .prologue
    .line 205
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->closeConnections()V

    .line 206
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getExtensionClassesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->h:I

    return v0
.end method

.method public getMaxIdleTime()J
    .locals 2

    .prologue
    .line 132
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->f:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->g:I

    return v0
.end method

.method public getMinVersion()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    return v0
.end method

.method public initExtensions(Ljava/util/List;III)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;III)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 405
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 408
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v4, ";"

    invoke-direct {v3, v0, v4}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 410
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 411
    :goto_1
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    new-instance v0, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "="

    invoke-direct {v0, v6, v7}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 415
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 416
    :goto_2
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 419
    :cond_2
    invoke-direct {p0, v4}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->a(Ljava/lang/String;)Lorg/eclipse/jetty/websocket/Extension;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    .line 424
    invoke-interface {v0, v5}, Lorg/eclipse/jetty/websocket/Extension;->init(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "add {} {}"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    aput-object v5, v7, v9

    invoke-interface {v3, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_3
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "extensions={}"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    return-object v1
.end method

.method protected parseProtocols(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 337
    if-nez p1, :cond_0

    .line 338
    new-array v0, v2, [Ljava/lang/String;

    aput-object v4, v0, v3

    .line 345
    :goto_0
    return-object v0

    .line 339
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 341
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    aput-object v4, v0, v3

    goto :goto_0

    .line 342
    :cond_2
    const-string v1, "\\s*,\\s*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 343
    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 344
    array-length v2, v1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected removeConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setBufferSize(I)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->getBufferSize()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 163
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    .line 164
    :cond_0
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 0

    .prologue
    .line 199
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->h:I

    .line 200
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->f:I

    .line 143
    return-void
.end method

.method public setMaxTextMessageSize(I)V
    .locals 0

    .prologue
    .line 181
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->g:I

    .line 182
    return-void
.end method

.method public setMinVersion(I)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    .line 115
    return-void
.end method

.method public upgrade(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/websocket/WebSocket;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 223
    const-string v4, "websocket"

    const-string v5, "Upgrade"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 224
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "!Upgrade:websocket"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 225
    :cond_0
    const-string v4, "HTTP/1.1"

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 226
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "!HTTP/1.1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 228
    :cond_1
    const-string v4, "Sec-WebSocket-Version"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result v4

    .line 229
    if-gez v4, :cond_a

    .line 231
    const-string v4, "Sec-WebSocket-Draft"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getIntHeader(Ljava/lang/String;)I

    move-result v4

    move v5, v4

    .line 235
    :goto_0
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v16

    .line 236
    move-object/from16 v0, v16

    instance-of v4, v0, Lorg/eclipse/jetty/server/BlockingHttpConnection;

    if-eqz v4, :cond_2

    .line 237
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Websockets not supported on blocking connectors"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 238
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getEndPoint()Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/io/ConnectedEndPoint;

    .line 240
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const-string v4, "Sec-WebSocket-Extensions"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v7

    .line 243
    :cond_3
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 245
    new-instance v9, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v10, ","

    invoke-direct {v9, v4, v10}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_1
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 248
    invoke-virtual {v9}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 253
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    if-ge v5, v4, :cond_9

    .line 254
    const v15, 0x7fffffff

    .line 255
    :goto_2
    packed-switch v15, :pswitch_data_0

    .line 290
    :pswitch_0
    const-string v4, "13"

    .line 291
    move-object/from16 v0, p0

    iget v6, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    const/16 v7, 0x8

    if-gt v6, v7, :cond_5

    .line 292
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", 8"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 293
    :cond_5
    move-object/from16 v0, p0

    iget v6, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    const/4 v7, 0x6

    if-gt v6, v7, :cond_6

    .line 294
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", 6"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    :cond_6
    move-object/from16 v0, p0

    iget v6, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    if-gtz v6, :cond_7

    .line 296
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", 0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 298
    :cond_7
    const-string v6, "Sec-WebSocket-Version"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v4}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    const-string v7, "Unsupported websocket client version specification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    if-ltz v5, :cond_8

    .line 304
    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    :goto_3
    const-string v5, ", configured minVersion ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v7, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->i:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string v5, ", reported supported versions ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    new-instance v4, Lorg/eclipse/jetty/http/HttpException;

    const/16 v5, 0x190

    const-string v6, "Unsupported websocket version specification"

    invoke-direct {v4, v5, v6}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 260
    :pswitch_1
    new-instance v5, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->f:I

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v13, p4

    invoke-direct/range {v5 .. v13}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD00;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V

    .line 316
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->addConnection(Lorg/eclipse/jetty/websocket/WebSocketServletConnection;)Z

    .line 319
    invoke-interface {v5}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->h:I

    invoke-interface {v4, v6}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxBinaryMessageSize(I)V

    .line 320
    invoke-interface {v5}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->g:I

    invoke-interface {v4, v6}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->setMaxTextMessageSize(I)V

    .line 323
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-interface {v5, v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->handshake(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Ljava/lang/String;)V

    .line 324
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->flushBuffer()V

    .line 327
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V

    .line 328
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getParser()Lorg/eclipse/jetty/http/Parser;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/HttpParser;->getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/websocket/WebSocketServletConnection;->fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V

    .line 331
    sget-object v4, Lorg/eclipse/jetty/websocket/WebSocketFactory;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "Websocket upgrade {} {} {} {}"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p4, v7, v8

    const/4 v8, 0x3

    aput-object v5, v7, v8

    invoke-interface {v4, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    const-string v4, "org.eclipse.jetty.io.Connection"

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 333
    return-void

    .line 270
    :pswitch_2
    new-instance v5, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->f:I

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v13, p4

    invoke-direct/range {v5 .. v13}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD06;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V

    goto :goto_4

    .line 276
    :pswitch_3
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5, v7}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->initExtensions(Ljava/util/List;III)Ljava/util/List;

    move-result-object v14

    .line 277
    new-instance v5, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD08;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->f:I

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v13, p4

    invoke-direct/range {v5 .. v15}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionD08;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_4

    .line 282
    :pswitch_4
    const/4 v4, 0x5

    const/4 v5, 0x5

    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4, v5, v7}, Lorg/eclipse/jetty/websocket/WebSocketFactory;->initExtensions(Ljava/util/List;III)Ljava/util/List;

    move-result-object v14

    .line 283
    new-instance v5, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->e:Lorg/eclipse/jetty/websocket/WebSocketBuffers;

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getTimeStamp()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/eclipse/jetty/websocket/WebSocketFactory;->f:I

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v13, p4

    invoke-direct/range {v5 .. v15}, Lorg/eclipse/jetty/websocket/WebSocketServletConnectionRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocketFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V

    goto/16 :goto_4

    .line 306
    :cond_8
    const-string v5, "<Unspecified, likely a pre-draft version of websocket>"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_9
    move v15, v5

    goto/16 :goto_2

    :cond_a
    move v5, v4

    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
