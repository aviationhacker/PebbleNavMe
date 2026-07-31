.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocket$Connection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameConnection"
.end annotation


# virtual methods
.method public abstract binaryOpcode()B
.end method

.method public abstract continuationOpcode()B
.end method

.method public abstract finMask()B
.end method

.method public abstract isAllowFrameFragmentation()Z
.end method

.method public abstract isBinary(B)Z
.end method

.method public abstract isClose(B)Z
.end method

.method public abstract isContinuation(B)Z
.end method

.method public abstract isControl(B)Z
.end method

.method public abstract isMessageComplete(B)Z
.end method

.method public abstract isPing(B)Z
.end method

.method public abstract isPong(B)Z
.end method

.method public abstract isText(B)Z
.end method

.method public abstract sendControl(B[BII)V
.end method

.method public abstract sendFrame(BB[BII)V
.end method

.method public abstract setAllowFrameFragmentation(Z)V
.end method

.method public abstract textOpcode()B
.end method
