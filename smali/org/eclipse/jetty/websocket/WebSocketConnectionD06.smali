.class public Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$1;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final b:[B


# instance fields
.field private final c:Lorg/eclipse/jetty/websocket/WebSocketParser;

.field private final d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

.field private final e:Lorg/eclipse/jetty/websocket/WebSocket;

.field private final f:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

.field private final g:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

.field private final h:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

.field private final i:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

.field private final j:Ljava/lang/String;

.field private volatile k:Z

.field private volatile l:Z

.field private m:I

.field private n:I

.field private final o:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

.field private final p:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 96
    :try_start_0
    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 100
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0, p2, p4, p5}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 90
    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->n:I

    .line 104
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$b;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->o:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    .line 105
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;Lorg/eclipse/jetty/websocket/WebSocketConnectionD06$1;)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 114
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0, p6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 116
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->f:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    :goto_1
    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    .line 119
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    :goto_2
    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->g:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    :goto_3
    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->i:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    .line 121
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-direct {v0, p3, v2, v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD06;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    .line 122
    new-instance v0, Lorg/eclipse/jetty/websocket/WebSocketParserD06;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->o:Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    const/4 v2, 0x1

    invoke-direct {v0, p3, p2, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketParserD06;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c:Lorg/eclipse/jetty/websocket/WebSocketParser;

    .line 123
    iput-object p7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->j:Ljava/lang/String;

    .line 125
    invoke-virtual {p3}, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->getBufferSize()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->m:I

    .line 126
    iput v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->n:I

    .line 127
    return-void

    :cond_0
    move-object v0, v1

    .line 117
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 118
    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 119
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 120
    goto :goto_3
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->m:I

    return v0
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static a(I)Z
    .locals 1

    .prologue
    .line 62
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->n:I

    return v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 287
    :cond_0
    return-void
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 67
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 72
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z

    return v0
.end method

.method static synthetic d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    return-object v0
.end method

.method static synthetic e(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b()V

    return-void
.end method

.method static synthetic f(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic g(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic h(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method public static hashKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 724
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 725
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 726
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 727
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 729
    :catch_0
    move-exception v0

    .line 731
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic i(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic j(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic l(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic m(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic n(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic o(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z

    return v0
.end method

.method static synthetic p(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->f:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    return-object v0
.end method

.method static synthetic q(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->i:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    return-object v0
.end method

.method static synthetic r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    return-object v0
.end method

.method static synthetic s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    return-object v0
.end method

.method static synthetic t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->g:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized closeIn(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "ClosedIn {} {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :try_start_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :goto_0
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :goto_1
    monitor-exit p0

    return-void

    .line 225
    :cond_0
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->closeOut(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 229
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 233
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized closeOut(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "ClosedOut {} {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z

    if-eqz v0, :cond_1

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 254
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 263
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :goto_1
    monitor-exit p0

    return-void

    .line 247
    :cond_1
    if-gtz p1, :cond_2

    .line 248
    const/16 p1, 0x3e8

    .line 249
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 250
    const/4 v0, 0x0

    div-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 251
    const/4 v0, 0x1

    rem-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    :try_start_4
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 263
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 263
    :catchall_1
    move-exception v0

    const/4 v1, 0x1

    :try_start_6
    iput-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c:Lorg/eclipse/jetty/websocket/WebSocketParser;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketParser;->fill(Lorg/eclipse/jetty/io/Buffer;)V

    .line 278
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x3ea

    const/4 v1, 0x1

    .line 141
    move v0, v1

    .line 143
    :cond_0
    if-eqz v0, :cond_3

    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I

    move-result v2

    .line 146
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c:Lorg/eclipse/jetty/websocket/WebSocketParser;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketParser;->parseNext()I

    move-result v3

    .line 148
    if-gtz v2, :cond_1

    if-lez v3, :cond_5

    :cond_1
    move v0, v1

    .line 150
    :goto_0
    if-ltz v3, :cond_2

    if-gez v2, :cond_0

    .line 152
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 182
    :cond_4
    :goto_1
    return-object p0

    .line 148
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z

    if-nez v0, :cond_7

    .line 176
    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->closeIn(ILjava/lang/String;)V

    goto :goto_1

    .line 178
    :cond_7
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b()V

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 161
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    :goto_2
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 173
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->l:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 174
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 178
    :cond_8
    :goto_3
    throw v0

    .line 163
    :catch_1
    move-exception v1

    .line 165
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 175
    :cond_9
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->k:Z

    if-nez v1, :cond_a

    .line 176
    invoke-virtual {p0, v4, v5}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->closeIn(ILjava/lang/String;)V

    goto :goto_3

    .line 178
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->b()V

    goto :goto_3
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->c:Lorg/eclipse/jetty/websocket/WebSocketParser;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketParser;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->d:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    const/16 v1, 0x3e8

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 214
    return-void
.end method

.method protected onFrameHandshake()V
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->f:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->f:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 2

    .prologue
    .line 201
    const/16 v0, 0x3e8

    const-string v1, "Idle"

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->closeOut(ILjava/lang/String;)V

    .line 202
    return-void
.end method

.method public onInputShutdown()V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method protected onWebSocketOpen()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->e:Lorg/eclipse/jetty/websocket/WebSocket;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V

    .line 306
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD06;->p:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 270
    if-eqz v0, :cond_0

    .line 271
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->close(ILjava/lang/String;)V

    .line 272
    :cond_0
    return-void
.end method
