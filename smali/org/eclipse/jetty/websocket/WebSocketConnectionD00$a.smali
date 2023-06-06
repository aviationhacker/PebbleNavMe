.class Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lorg/eclipse/jetty/websocket/WebSocket;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/websocket/WebSocket;)V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    .line 411
    return-void
.end method


# virtual methods
.method public close(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method public onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
    .locals 4

    .prologue
    .line 417
    :try_start_0
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v1

    .line 419
    if-nez p2, :cond_1

    .line 421
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;

    const-string v1, "UTF-8"

    invoke-interface {p3, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;->onMessage(Ljava/lang/String;)V

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    instance-of v0, v0, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00$a;->a:Lorg/eclipse/jetty/websocket/WebSocket;

    check-cast v0, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;->onMessage([BII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 432
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD00;->a()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
