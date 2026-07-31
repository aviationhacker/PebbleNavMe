.class final Lorg/eclipse/jetty/util/log/Log$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 94
    const-class v0, Lorg/eclipse/jetty/util/log/Log;

    const-string v1, "jetty-logging.properties"

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v3

    .line 95
    if-eqz v3, :cond_0

    .line 100
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 101
    :try_start_1
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 110
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 118
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v1

    .line 119
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_1

    .line 125
    sget-object v4, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v4, v0, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 105
    :goto_2
    :try_start_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 110
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw v0

    .line 130
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v1, "org.eclipse.jetty.util.log.class"

    const-string v3, "org.eclipse.jetty.util.log.Slf4jLog"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->__logClass:Ljava/lang/String;

    .line 131
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v1, "org.eclipse.jetty.util.log.IGNORED"

    const-string v3, "false"

    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    .line 132
    return-object v2

    .line 110
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 103
    :catch_1
    move-exception v0

    goto :goto_2
.end method
