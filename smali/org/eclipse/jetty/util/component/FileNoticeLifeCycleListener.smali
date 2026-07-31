.class public Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle$Listener;


# instance fields
.field a:Lorg/eclipse/jetty/util/log/Logger;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-class v0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->a:Lorg/eclipse/jetty/util/log/Logger;

    .line 39
    iput-object p1, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 3

    .prologue
    .line 46
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 47
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 48
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 52
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public lifeCycleFailure(Lorg/eclipse/jetty/util/component/LifeCycle;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 68
    const-string v0, "FAILED"

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->a(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 69
    return-void
.end method

.method public lifeCycleStarted(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    .prologue
    .line 63
    const-string v0, "STARTED"

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->a(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 64
    return-void
.end method

.method public lifeCycleStarting(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    .prologue
    .line 58
    const-string v0, "STARTING"

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->a(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 59
    return-void
.end method

.method public lifeCycleStopped(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    .prologue
    .line 78
    const-string v0, "STOPPED"

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->a(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 79
    return-void
.end method

.method public lifeCycleStopping(Lorg/eclipse/jetty/util/component/LifeCycle;)V
    .locals 1

    .prologue
    .line 73
    const-string v0, "STOPPING"

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/util/component/FileNoticeLifeCycleListener;->a(Ljava/lang/String;Lorg/eclipse/jetty/util/component/LifeCycle;)V

    .line 74
    return-void
.end method
