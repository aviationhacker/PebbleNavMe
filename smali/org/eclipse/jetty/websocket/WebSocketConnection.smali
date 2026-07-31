.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocketConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/AsyncConnection;


# virtual methods
.method public abstract fillBuffersFrom(Lorg/eclipse/jetty/io/Buffer;)V
.end method

.method public abstract getConnection()Lorg/eclipse/jetty/websocket/WebSocket$Connection;
.end method

.method public abstract getExtensions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;"
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
