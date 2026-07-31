.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocketParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
    }
.end annotation


# virtual methods
.method public abstract fill(Lorg/eclipse/jetty/io/Buffer;)V
.end method

.method public abstract getBuffer()Lorg/eclipse/jetty/io/Buffer;
.end method

.method public abstract isBufferEmpty()Z
.end method

.method public abstract parseNext()I
.end method
