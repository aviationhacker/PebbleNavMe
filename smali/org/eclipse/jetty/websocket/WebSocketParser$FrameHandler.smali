.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocketParser$FrameHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameHandler"
.end annotation


# virtual methods
.method public abstract close(ILjava/lang/String;)V
.end method

.method public abstract onFrame(BBLorg/eclipse/jetty/io/Buffer;)V
.end method
