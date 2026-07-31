.class public abstract Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/LifeCycle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/component/AbstractLifeCycle$AbstractLifeCycleListener;
    }
.end annotation


# static fields
.field public static final FAILED:Ljava/lang/String; = "FAILED"

.field public static final RUNNING:Ljava/lang/String; = "RUNNING"

.field public static final STARTED:Ljava/lang/String; = "STARTED"

.field public static final STARTING:Ljava/lang/String; = "STARTING"

.field public static final STOPPED:Ljava/lang/String; = "STOPPED"

.field public static final STOPPING:Ljava/lang/String; = "STOPPING"

.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lorg/eclipse/jetty/util/component/LifeCycle$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private volatile h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->b:Ljava/lang/Object;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->c:I

    iput v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->d:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->g:I

    .line 43
    iput v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 209
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    .line 172
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "STARTED {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 174
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStarted(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    .line 204
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 206
    invoke-interface {v0, p0, p1}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleFailure(Lorg/eclipse/jetty/util/component/LifeCycle;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "starting {}"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iput v4, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    .line 181
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 182
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStarting(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 183
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 187
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "stopping {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    .line 189
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 190
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStopping(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 195
    iput v4, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    .line 196
    sget-object v0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "{} {}"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "STOPPED"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;

    .line 198
    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/component/LifeCycle$Listener;->lifeCycleStopped(Lorg/eclipse/jetty/util/component/LifeCycle;)V

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method public static getState(Lorg/eclipse/jetty/util/component/LifeCycle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarting()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "STARTING"

    .line 166
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "STARTED"

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStopping()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "STOPPING"

    goto :goto_0

    .line 165
    :cond_2
    invoke-interface {p0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "STOPPED"

    goto :goto_0

    .line 166
    :cond_3
    const-string v0, "FAILED"

    goto :goto_0
.end method


# virtual methods
.method public addLifeCycleListener(Lorg/eclipse/jetty/util/component/LifeCycle$Listener;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method

.method public doStart()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public doStop()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    packed-switch v0, :pswitch_data_0

    .line 157
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 151
    :pswitch_0
    const-string v0, "FAILED"

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v0, "STARTING"

    goto :goto_0

    .line 153
    :pswitch_2
    const-string v0, "STARTED"

    goto :goto_0

    .line 154
    :pswitch_3
    const-string v0, "STOPPING"

    goto :goto_0

    .line 155
    :pswitch_4
    const-string v0, "STOPPED"

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isFailed()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 107
    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    .line 109
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 119
    iget v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopped()Z
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopping()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeLifeCycleListener(Lorg/eclipse/jetty/util/component/LifeCycle$Listener;)V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->_listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public final start()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 61
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 62
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :goto_0
    return-void

    .line 63
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->b()V

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 65
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    :try_start_4
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    .line 70
    throw v0

    .line 72
    :catch_1
    move-exception v0

    .line 74
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    .line 75
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public final stop()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_0
    return-void

    .line 88
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->c()V

    .line 89
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 90
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->d()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    :try_start_4
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    .line 95
    throw v0

    .line 97
    :catch_1
    move-exception v0

    .line 99
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->a(Ljava/lang/Throwable;)V

    .line 100
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
