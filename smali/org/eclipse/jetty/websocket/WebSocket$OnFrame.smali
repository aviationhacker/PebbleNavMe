.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocket$OnFrame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocket;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFrame"
.end annotation


# virtual methods
.method public abstract onFrame(BB[BII)Z
.end method

.method public abstract onHandshake(Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;)V
.end method
