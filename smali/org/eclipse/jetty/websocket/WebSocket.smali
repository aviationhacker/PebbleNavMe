.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;,
        Lorg/eclipse/jetty/websocket/WebSocket$Connection;,
        Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;,
        Lorg/eclipse/jetty/websocket/WebSocket$OnControl;,
        Lorg/eclipse/jetty/websocket/WebSocket$OnBinaryMessage;,
        Lorg/eclipse/jetty/websocket/WebSocket$OnTextMessage;
    }
.end annotation


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onOpen(Lorg/eclipse/jetty/websocket/WebSocket$Connection;)V
.end method
