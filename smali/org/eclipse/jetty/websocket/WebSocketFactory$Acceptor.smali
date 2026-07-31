.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocketFactory$Acceptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Acceptor"
.end annotation


# virtual methods
.method public abstract checkOrigin(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Z
.end method

.method public abstract doWebSocketConnect(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/eclipse/jetty/websocket/WebSocket;
.end method
