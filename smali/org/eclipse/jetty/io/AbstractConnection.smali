.class public abstract Lorg/eclipse/jetty/io/AbstractConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/Connection;


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/eclipse/jetty/io/AbstractConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/AbstractConnection;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/EndPoint;)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->b:J

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/EndPoint;J)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 43
    iput-wide p2, p0, Lorg/eclipse/jetty/io/AbstractConnection;->b:J

    .line 44
    return-void
.end method


# virtual methods
.method public getEndPoint()Lorg/eclipse/jetty/io/EndPoint;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->b:J

    return-wide v0
.end method

.method public onIdleExpired(J)V
    .locals 5

    .prologue
    .line 60
    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/io/AbstractConnection;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "onIdleExpired {}ms {} {}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 79
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lorg/eclipse/jetty/io/AbstractConnection;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 72
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/AbstractConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    .line 76
    sget-object v1, Lorg/eclipse/jetty/io/AbstractConnection;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    const-string v0, "%s@%x"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
