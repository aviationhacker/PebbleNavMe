.class public interface abstract Lorg/eclipse/jetty/io/EndPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract blockReadable(J)Z
.end method

.method public abstract blockWritable(J)Z
.end method

.method public abstract close()V
.end method

.method public abstract fill(Lorg/eclipse/jetty/io/Buffer;)I
.end method

.method public abstract flush(Lorg/eclipse/jetty/io/Buffer;)I
.end method

.method public abstract flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
.end method

.method public abstract flush()V
.end method

.method public abstract getLocalAddr()Ljava/lang/String;
.end method

.method public abstract getLocalHost()Ljava/lang/String;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getMaxIdleTime()I
.end method

.method public abstract getRemoteAddr()Ljava/lang/String;
.end method

.method public abstract getRemoteHost()Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method

.method public abstract getTransport()Ljava/lang/Object;
.end method

.method public abstract isBlocking()Z
.end method

.method public abstract isInputShutdown()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract isOutputShutdown()Z
.end method

.method public abstract setMaxIdleTime(I)V
.end method

.method public abstract shutdownInput()V
.end method

.method public abstract shutdownOutput()V
.end method
