.class public Lorg/eclipse/jetty/util/log/LoggerLog;
.super Lorg/eclipse/jetty/util/log/AbstractLogger;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Ljava/lang/reflect/Method;

.field private final g:Ljava/lang/reflect/Method;

.field private final h:Ljava/lang/reflect/Method;

.field private final i:Ljava/lang/reflect/Method;

.field private final j:Ljava/lang/reflect/Method;

.field private volatile k:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;-><init>()V

    .line 44
    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 46
    const-string v1, "debug"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->b:Ljava/lang/reflect/Method;

    .line 47
    const-string v1, "debug"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->c:Ljava/lang/reflect/Method;

    .line 48
    const-string v1, "info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->d:Ljava/lang/reflect/Method;

    .line 49
    const-string v1, "info"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->e:Ljava/lang/reflect/Method;

    .line 50
    const-string v1, "warn"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->f:Ljava/lang/reflect/Method;

    .line 51
    const-string v1, "warn"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->g:Ljava/lang/reflect/Method;

    .line 52
    const-string v1, "isDebugEnabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    const-string v2, "setDebugEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->h:Ljava/lang/reflect/Method;

    .line 54
    const-string v2, "getLogger"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->i:Ljava/lang/reflect/Method;

    .line 55
    const-string v2, "getName"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->j:Ljava/lang/reflect/Method;

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->k:Z

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 181
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->b:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->k:Z

    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->c:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public debug(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 171
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->j:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignore(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string v0, "IGNORED "

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->e:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public info(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 121
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->k:Z

    return v0
.end method

.method protected newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 4

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->i:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    new-instance v0, Lorg/eclipse/jetty/util/log/LoggerLog;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/log/LoggerLog;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    .line 210
    :goto_0
    return-object p0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setDebugEnabled(Z)V
    .locals 5

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->h:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->k:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->f:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->g:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/eclipse/jetty/util/log/LoggerLog;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public warn(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/eclipse/jetty/util/log/LoggerLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method
