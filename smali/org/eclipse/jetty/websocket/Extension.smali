.class public interface abstract Lorg/eclipse/jetty/websocket/Extension;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocketGenerator;
.implements Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;


# virtual methods
.method public abstract bind(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;Lorg/eclipse/jetty/websocket/WebSocketGenerator;)V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterizedName()Ljava/lang/String;
.end method

.method public abstract init(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
