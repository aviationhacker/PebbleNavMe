.class public abstract Lorg/eclipse/jetty/util/log/AbstractLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    if-nez p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    .line 67
    :goto_1
    if-ge v2, v3, :cond_0

    .line 69
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 70
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v1

    .line 72
    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 2

    .prologue
    .line 30
    invoke-static {p1}, Lorg/eclipse/jetty/util/log/AbstractLogger;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :goto_0
    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/AbstractLogger;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getRootLogger()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    if-ne v1, p0, :cond_3

    .line 36
    :cond_1
    :goto_1
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    .line 37
    if-nez v0, :cond_2

    .line 39
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/log/AbstractLogger;->newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    .line 41
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->b()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    .line 42
    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    move-object p0, v0

    .line 46
    goto :goto_0

    .line 34
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method protected abstract newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
.end method
