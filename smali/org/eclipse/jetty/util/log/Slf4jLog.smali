.class public Lorg/eclipse/jetty/util/log/Slf4jLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "SourceFile"


# instance fields
.field private final a:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "org.eclipse.jetty.util.log"

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 38
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 42
    instance-of v1, v0, Lorg/slf4j/spi/LocationAwareLogger;

    if-eqz v1, :cond_0

    .line 44
    new-instance v1, Lmo;

    check-cast v0, Lorg/slf4j/spi/LocationAwareLogger;

    invoke-direct {v1, v0}, Lmo;-><init>(Lorg/slf4j/spi/LocationAwareLogger;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    return-void
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 94
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "IGNORED "

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lorg/eclipse/jetty/util/log/Slf4jLog;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public setDebugEnabled(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v0, "setDebugEnabled not implemented"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/Slf4jLog;->a:Lorg/slf4j/Logger;

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 64
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/Slf4jLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method
