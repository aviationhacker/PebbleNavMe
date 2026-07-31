.class public Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$1;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;

.field private static final b:[B


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

.field private final e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

.field private final f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

.field private final g:Lorg/eclipse/jetty/websocket/WebSocket;

.field private final h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

.field private final i:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

.field private final j:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

.field private final k:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

.field private final l:Ljava/lang/String;

.field private final m:I

.field private final n:Ljava/lang/ClassLoader;

.field private volatile o:I

.field private volatile p:Ljava/lang/String;

.field private volatile q:Z

.field private volatile r:Z

.field private s:I

.field private t:I

.field private final u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 104
    :try_start_0
    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->b:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/websocket/WebSocketBuffers;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/websocket/WebSocketBuffers;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;I",
            "Lorg/eclipse/jetty/websocket/MaskGen;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p2, p4, p5}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 97
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->s:I

    .line 98
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->t:I

    .line 112
    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$1;)V

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 128
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->n:Ljava/lang/ClassLoader;

    .line 130
    move/from16 v0, p9

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->m:I

    .line 131
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 133
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 134
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    .line 135
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->j:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    .line 136
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    :goto_2
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->i:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    .line 137
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    :goto_3
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->k:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    .line 138
    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v0, p10

    invoke-direct {v1, p3, v2, v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    .line 140
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    .line 141
    new-instance v4, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$b;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$1;)V

    .line 142
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 144
    const/4 v1, 0x0

    .line 145
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v1

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/websocket/Extension;

    .line 147
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_4

    move-object v5, v4

    :goto_5
    if-nez v3, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    :goto_6
    invoke-interface {v1, v7, v5, v2}, Lorg/eclipse/jetty/websocket/Extension;->bind(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Lorg/eclipse/jetty/websocket/WebSocketGenerator;)V

    .line 151
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 152
    goto :goto_4

    .line 134
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 136
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 137
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 147
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    move-object v5, v2

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    goto :goto_6

    .line 155
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    :goto_7
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    .line 156
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    move-object v1, v4

    .line 158
    :goto_8
    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    if-nez p10, :cond_b

    const/4 v2, 0x1

    :goto_9
    invoke-direct {v3, p3, p2, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    .line 160
    iput-object p7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->l:Ljava/lang/String;

    .line 162
    return-void

    .line 155
    :cond_9
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    goto :goto_7

    .line 156
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    goto :goto_8

    .line 158
    :cond_b
    const/4 v2, 0x0

    goto :goto_9
.end method

.method static synthetic A(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic B(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic C(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->s:I

    return p1
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static a(B)Z
    .locals 1

    .prologue
    .line 72
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->r:Z

    return v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->o:I

    return v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;I)I
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->t:I

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 371
    :cond_0
    return-void
.end method

.method static b(B)Z
    .locals 1

    .prologue
    .line 77
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    return-object v0
.end method

.method static synthetic e(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->b()V

    return-void
.end method

.method static synthetic f(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic g(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic h(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method public static hashKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 837
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 838
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 839
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 840
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 842
    :catch_0
    move-exception v0

    .line 844
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic i(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic j(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->s:I

    return v0
.end method

.method static synthetic k(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->t:I

    return v0
.end method

.method static synthetic l(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketParserD08;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    return-object v0
.end method

.method static synthetic n(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic o(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic p(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic q(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic r(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->q:Z

    return v0
.end method

.method static synthetic s(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    return-object v0
.end method

.method static synthetic t(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->k:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    return-object v0
.end method

.method static synthetic u(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->j:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    return-object v0
.end method

.method static synthetic v(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    return-object v0
.end method

.method static synthetic w(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->i:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    return-object v0
.end method

.method static synthetic x(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic y(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic z(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method


# virtual methods
.method public closeIn(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 276
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "ClosedIn {} {} {}"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    monitor-enter p0

    .line 282
    :try_start_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->r:Z

    .line 283
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->q:Z

    .line 284
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->o:I

    if-nez v3, :cond_3

    .line 285
    :goto_0
    if-eqz v0, :cond_0

    .line 287
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->o:I

    .line 288
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->p:Ljava/lang/String;

    .line 290
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    if-nez v2, :cond_1

    .line 295
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->closeOut(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 299
    :cond_1
    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 302
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 284
    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 299
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    :cond_4
    throw v1
.end method

.method public closeOut(ILjava/lang/String;)V
    .locals 7

    .prologue
    const/16 v1, 0x3e8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 307
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "ClosedOut {} {} {}"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const/4 v6, 0x2

    aput-object p2, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    monitor-enter p0

    .line 313
    :try_start_0
    iget-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->r:Z

    .line 314
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->r:Z

    .line 315
    iget v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->o:I

    if-nez v4, :cond_4

    .line 316
    :goto_0
    if-eqz v0, :cond_0

    .line 318
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->o:I

    .line 319
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->p:Ljava/lang/String;

    .line 321
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    if-eqz v0, :cond_1

    .line 326
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 332
    :cond_1
    if-nez v3, :cond_3

    .line 334
    if-gtz p1, :cond_8

    .line 336
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xx"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 337
    const/4 v0, 0x0

    div-int/lit16 v2, v1, 0x100

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    .line 338
    const/4 v0, 0x1

    rem-int/lit16 v1, v1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 341
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 315
    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 344
    :catch_0
    move-exception v0

    .line 346
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 330
    :catchall_1
    move-exception v0

    move-object v6, v0

    .line 332
    if-nez v3, :cond_7

    .line 334
    if-gtz p1, :cond_5

    move p1, v1

    .line 336
    :cond_5
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_6

    const-string p2, ""

    :cond_6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 337
    const/4 v0, 0x0

    div-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 338
    const/4 v0, 0x1

    rem-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 341
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 347
    :goto_3
    throw v6

    .line 344
    :catch_1
    move-exception v0

    .line 346
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    move v1, p1

    goto/16 :goto_1
.end method

.method public fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->fill(Lorg/eclipse/jetty/io/Buffer;)V

    .line 362
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

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
    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->c:Ljava/util/List;

    goto :goto_0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3ee

    const/4 v1, 0x1

    .line 182
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 183
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 184
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->n:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    move v0, v1

    .line 190
    :goto_0
    if-eqz v0, :cond_2

    .line 192
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->flushBuffer()I

    move-result v0

    .line 193
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->parseNext()I

    move-result v2

    .line 195
    if-gtz v0, :cond_0

    if-lez v2, :cond_1

    :cond_0
    move v2, v1

    .line 196
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 198
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 199
    goto :goto_0

    .line 195
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 218
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->returnBuffer()V

    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->returnBuffer()V

    .line 220
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->q:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 223
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 230
    :cond_3
    :goto_2
    return-object p0

    .line 224
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->q:Z

    if-nez v0, :cond_5

    .line 225
    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->closeIn(ILjava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->b()V

    goto :goto_2

    .line 202
    :catch_0
    move-exception v0

    .line 206
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_6
    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 218
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->returnBuffer()V

    .line 219
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;->returnBuffer()V

    .line 220
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 222
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->q:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->r:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 223
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 227
    :cond_7
    :goto_4
    throw v0

    .line 209
    :catch_1
    move-exception v1

    .line 211
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 224
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->q:Z

    if-nez v1, :cond_9

    .line 225
    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->closeIn(ILjava/lang/String;)V

    goto :goto_4

    .line 227
    :cond_9
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->b()V

    goto :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

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
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    const/16 v2, 0x3ee

    .line 263
    monitor-enter p0

    .line 265
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->o:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 266
    :goto_0
    if-eqz v0, :cond_0

    .line 267
    const/16 v1, 0x3ee

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->o:I

    .line 268
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    const-string v1, "closed"

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 271
    :cond_1
    return-void

    .line 265
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFrameHandshake()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 3

    .prologue
    .line 250
    const/16 v0, 0x3e8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->closeOut(ILjava/lang/String;)V

    .line 251
    return-void
.end method

.method public onInputShutdown()V
    .locals 1

    .prologue
    .line 236
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->q:Z

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 238
    :cond_0
    return-void
.end method

.method protected onWebSocketOpen()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V

    .line 384
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 353
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 354
    if-eqz v0, :cond_0

    .line 355
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->close(ILjava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 852
    const-string v0, "WS/D%d p=%s g=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->d:Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorD08;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
