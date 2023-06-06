.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocket$Connection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Connection"
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract close(ILjava/lang/String;)V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getMaxBinaryMessageSize()I
.end method

.method public abstract getMaxIdleTime()I
.end method

.method public abstract getMaxTextMessageSize()I
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract isOpen()Z
.end method

.method public abstract sendMessage(Ljava/lang/String;)V
.end method

.method public abstract sendMessage([BII)V
.end method

.method public abstract setMaxBinaryMessageSize(I)V
.end method

.method public abstract setMaxIdleTime(I)V
.end method

.method public abstract setMaxTextMessageSize(I)V
.end method
