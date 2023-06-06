.class Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;
.super Lorg/eclipse/jetty/http/HttpParser$EventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;-><init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/io/AsyncEndPoint;Lorg/eclipse/jetty/websocket/WebSocketClient$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

.field final synthetic b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Lorg/eclipse/jetty/websocket/WebSocketClientFactory;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    iput-object p2, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->a:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .prologue
    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 405
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "B of content?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    .line 407
    return-void
.end method

.method public parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .prologue
    .line 389
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->b()Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    :cond_0
    return-void
.end method

.method public startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .prologue
    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->b(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Ljava/lang/String;)Ljava/lang/String;

    .line 398
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    .line 399
    return-void
.end method

.method public startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V
    .locals 3

    .prologue
    .line 379
    const/16 v0, 0x65

    if-eq p2, v0, :cond_0

    .line 381
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad response status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;Ljava/lang/String;)Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a$1;->b:Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;->a(Lorg/eclipse/jetty/websocket/WebSocketClientFactory$a;)Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/AsyncEndPoint;->close()V

    .line 384
    :cond_0
    return-void
.end method
