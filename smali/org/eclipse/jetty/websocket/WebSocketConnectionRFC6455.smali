.class public Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;,
        Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;
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

.field private final d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

.field private final e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

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
    .line 70
    const-class v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 136
    :try_start_0
    const-string v0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 140
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
    .line 151
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

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V

    .line 152
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
    .line 158
    invoke-direct {p0, p2, p4, p5}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;J)V

    .line 129
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->s:I

    .line 130
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->t:I

    .line 144
    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;)V

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->n:Ljava/lang/ClassLoader;

    .line 162
    move/from16 v0, p9

    iput v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->m:I

    .line 163
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1, p6}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V

    .line 165
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 166
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    .line 167
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    :goto_1
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->j:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    .line 168
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    :goto_2
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->i:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    .line 169
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v1, v1, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    :goto_3
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->k:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    .line 170
    new-instance v1, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v0, p10

    invoke-direct {v1, p3, v2, v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/MaskGen;)V

    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    .line 172
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    .line 173
    new-instance v4, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$b;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455$1;)V

    .line 174
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 176
    const/4 v1, 0x0

    .line 177
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

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

    .line 179
    iget-object v7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_4

    move-object v5, v4

    :goto_5
    if-nez v3, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    :goto_6
    invoke-interface {v1, v7, v5, v2}, Lorg/eclipse/jetty/websocket/Extension;->bind(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Lorg/eclipse/jetty/websocket/WebSocketGenerator;)V

    .line 183
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    .line 184
    goto :goto_4

    .line 166
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 167
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 168
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 169
    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 179
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

    .line 187
    :cond_6
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    :goto_7
    iput-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    .line 188
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    move-object v1, v4

    .line 190
    :goto_8
    new-instance v3, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    if-nez p10, :cond_b

    const/4 v2, 0x1

    :goto_9
    invoke-direct {v3, p3, p2, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocketBuffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Z)V

    iput-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    .line 192
    iput-object p7, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->l:Ljava/lang/String;

    .line 194
    return-void

    .line 187
    :cond_9
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    goto :goto_7

    .line 188
    :cond_a
    const/4 v1, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;

    goto :goto_8

    .line 190
    :cond_b
    const/4 v2, 0x0

    goto :goto_9
.end method

.method static synthetic A(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic B(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic C(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic D(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->s:I

    return p1
.end method

.method static synthetic a()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static a(B)Z
    .locals 1

    .prologue
    .line 104
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->r:Z

    return v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o:I

    return v0
.end method

.method static synthetic b(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;I)I
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->t:I

    return p1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->scheduleWrite()V

    .line 413
    :cond_0
    return-void
.end method

.method static b(B)Z
    .locals 1

    .prologue
    .line 109
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    return-object v0
.end method

.method static synthetic e(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b()V

    return-void
.end method

.method static synthetic f(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic g(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic h(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method public static hashKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 957
    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 958
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 959
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b:[B

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 960
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 962
    :catch_0
    move-exception v0

    .line 964
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic i(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic j(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->s:I

    return v0
.end method

.method static synthetic k(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->t:I

    return v0
.end method

.method static synthetic l(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    return-object v0
.end method

.method static synthetic n(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic o(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic p(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic q(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic r(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q:Z

    return v0
.end method

.method static synthetic s(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    return-object v0
.end method

.method static synthetic t(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnControl;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->k:Lorg/eclipse/jetty/websocket/WebSocket$OnControl;

    return-object v0
.end method

.method static synthetic u(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->j:Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    return-object v0
.end method

.method static synthetic v(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    return-object v0
.end method

.method static synthetic w(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->i:Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    return-object v0
.end method

.method static synthetic x(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic y(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method static synthetic z(Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;)Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method


# virtual methods
.method public closeIn(ILjava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 308
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a:Lorg/eclipse/jetty/util/log/Logger;

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

    .line 312
    monitor-enter p0

    .line 314
    :try_start_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->r:Z

    .line 315
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q:Z

    .line 316
    iget v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o:I

    if-nez v3, :cond_3

    .line 317
    :goto_0
    if-eqz v0, :cond_0

    .line 319
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o:I

    .line 320
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->p:Ljava/lang/String;

    .line 322
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-nez v2, :cond_1

    .line 327
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeOut(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 331
    :cond_1
    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 334
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 316
    goto :goto_0

    .line 322
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 331
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    :cond_4
    throw v1
.end method

.method public closeOut(ILjava/lang/String;)V
    .locals 8

    .prologue
    const/16 v1, 0x3e8

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 339
    sget-object v3, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "ClosedOut {} {} {}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-interface {v3, v4, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    monitor-enter p0

    .line 345
    :try_start_0
    iget-boolean v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->r:Z

    .line 346
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->r:Z

    .line 347
    iget v4, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o:I

    if-nez v4, :cond_7

    .line 348
    :goto_0
    if-eqz v0, :cond_0

    .line 350
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o:I

    .line 351
    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->p:Ljava/lang/String;

    .line 353
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    if-eqz v0, :cond_1

    .line 358
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    :cond_1
    if-nez v3, :cond_6

    .line 369
    if-ltz p1, :cond_2

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_8

    :cond_2
    move p1, v2

    .line 379
    :cond_3
    :goto_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 380
    const/4 v0, 0x0

    div-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 381
    const/4 v0, 0x1

    rem-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-lez p1, :cond_5

    array-length v5, v3

    :cond_5
    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    :cond_6
    :goto_2
    return-void

    :cond_7
    move v0, v5

    .line 347
    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 374
    :cond_8
    if-nez p1, :cond_3

    move p1, v1

    .line 376
    goto :goto_1

    .line 386
    :catch_0
    move-exception v0

    .line 388
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 362
    :catchall_1
    move-exception v0

    move-object v6, v0

    .line 364
    if-nez v3, :cond_d

    .line 369
    if-ltz p1, :cond_9

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3ee

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3f7

    if-ne p1, v0, :cond_e

    :cond_9
    move p1, v2

    .line 379
    :cond_a
    :goto_3
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p2, :cond_b

    const-string p2, ""

    :cond_b
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 380
    const/4 v0, 0x0

    div-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 381
    const/4 v0, 0x1

    rem-int/lit16 v1, p1, 0x100

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/4 v4, 0x0

    if-lez p1, :cond_c

    array-length v5, v3

    :cond_c
    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 383
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->flush()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 389
    :cond_d
    :goto_4
    throw v6

    .line 374
    :cond_e
    if-nez p1, :cond_a

    move p1, v1

    .line 376
    goto :goto_3

    .line 386
    :catch_1
    move-exception v0

    .line 388
    sget-object v1, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->fill(Lorg/eclipse/jetty/io/Buffer;)V

    .line 404
    return-void
.end method

.method public getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

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
    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->c:Ljava/util/List;

    goto :goto_0
.end method

.method public handle()Lorg/eclipse/jetty/io/Connection;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x3ee

    const/4 v1, 0x1

    .line 214
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 215
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->n:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    move v0, v1

    .line 222
    :goto_0
    if-eqz v0, :cond_2

    .line 224
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->flushBuffer()I

    move-result v0

    .line 225
    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v2}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->parseNext()I

    move-result v2

    .line 227
    if-gtz v0, :cond_0

    if-lez v2, :cond_1

    :cond_0
    move v2, v1

    .line 228
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->flush()V

    .line 230
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/AsyncEndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->hasProgressed()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 231
    goto :goto_0

    .line 227
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 249
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 250
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->returnBuffer()V

    .line 251
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->returnBuffer()V

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->r:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v0}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 262
    :cond_3
    :goto_2
    return-object p0

    .line 256
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q:Z

    if-nez v0, :cond_5

    .line 257
    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeIn(ILjava/lang/String;)V

    goto :goto_2

    .line 259
    :cond_5
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b()V

    goto :goto_2

    .line 234
    :catch_0
    move-exception v0

    .line 238
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 239
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    :cond_6
    :goto_3
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    :catchall_0
    move-exception v0

    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 250
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->returnBuffer()V

    .line 251
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    invoke-virtual {v1}, Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;->returnBuffer()V

    .line 252
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->r:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    invoke-interface {v1}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->isBufferEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 255
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 259
    :cond_7
    :goto_4
    throw v0

    .line 241
    :catch_1
    move-exception v1

    .line 243
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 256
    :cond_8
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q:Z

    if-nez v1, :cond_9

    .line 257
    invoke-virtual {p0, v5, v6}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeIn(ILjava/lang/String;)V

    goto :goto_4

    .line 259
    :cond_9
    invoke-direct {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->b()V

    goto :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;->isBufferEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->f:Lorg/eclipse/jetty/websocket/WebSocketGenerator;

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
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()V
    .locals 3

    .prologue
    const/16 v2, 0x3ee

    .line 295
    monitor-enter p0

    .line 297
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 298
    :goto_0
    if-eqz v0, :cond_0

    .line 299
    const/16 v1, 0x3ee

    iput v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->o:I

    .line 300
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    const-string v1, "closed"

    invoke-interface {v0, v2, v1}, Lorg/eclipse/jetty/websocket/WebSocket;->onClose(ILjava/lang/String;)V

    .line 303
    :cond_1
    return-void

    .line 297
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 300
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
    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->h:Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;->onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V

    .line 421
    :cond_0
    return-void
.end method

.method public onIdleExpired(J)V
    .locals 3

    .prologue
    .line 282
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

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->closeOut(ILjava/lang/String;)V

    .line 283
    return-void
.end method

.method public onInputShutdown()V
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->q:Z

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 270
    :cond_0
    return-void
.end method

.method protected onWebSocketOpen()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->g:Lorg/eclipse/jetty/websocket/WebSocket;

    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket;->onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V

    .line 426
    return-void
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->u:Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;

    .line 396
    if-eqz v0, :cond_0

    .line 397
    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/websocket/WebSocket$Connection;->close(ILjava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 972
    const-string v0, "%s p=%s g=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->d:Lorg/eclipse/jetty/websocket/WebSocketParserRFC6455;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->e:Lorg/eclipse/jetty/websocket/WebSocketGeneratorRFC6455;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
