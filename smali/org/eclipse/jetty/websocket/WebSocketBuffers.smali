.class public Lorg/eclipse/jetty/websocket/WebSocketBuffers;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lorg/eclipse/jetty/io/Buffers;


# direct methods
.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->a:I

    .line 43
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    sget-object v2, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    sget-object v4, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    const/4 v5, -0x1

    move v1, p1

    move v3, p1

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->b:Lorg/eclipse/jetty/io/Buffers;

    .line 44
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->b:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->a:I

    return v0
.end method

.method public getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->b:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    return-object v0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketBuffers;->b:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 59
    return-void
.end method
