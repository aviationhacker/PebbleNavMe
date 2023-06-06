.class public Lorg/eclipse/jetty/util/log/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXCEPTION:Ljava/lang/String; = "EXCEPTION "

.field public static final IGNORED:Ljava/lang/String; = "IGNORED "

.field public static __ignored:Z

.field public static __logClass:Ljava/lang/String;

.field protected static __props:Ljava/util/Properties;

.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lorg/eclipse/jetty/util/log/Logger;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 83
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    .line 85
    new-instance v0, Lorg/eclipse/jetty/util/log/Log$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/log/Log$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 177
    if-eqz p0, :cond_0

    sget-boolean v0, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    if-nez v0, :cond_1

    .line 184
    const-class v0, Lorg/eclipse/jetty/util/log/StdErrLog;

    .line 185
    new-instance v1, Lorg/eclipse/jetty/util/log/StdErrLog;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/log/StdErrLog;-><init>()V

    sput-object v1, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    .line 186
    sget-object v1, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Logging to {} via {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_1
    return-void
.end method

.method static a()Z
    .locals 1

    .prologue
    .line 216
    sget-boolean v0, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    return v0
.end method

.method static b()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->a:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 285
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 298
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->isDebugEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getLog()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    .line 202
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/eclipse/jetty/util/log/Logger;"
        }
    .end annotation

    .prologue
    .line 425
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 435
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    const/4 v0, 0x0

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 438
    :cond_1
    if-nez p0, :cond_2

    .line 439
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    goto :goto_0

    .line 441
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    .line 442
    if-nez v0, :cond_0

    .line 443
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLoggers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/log/Logger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 460
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getRootLogger()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    .line 211
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static ignore(Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 314
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 325
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 345
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static initialized()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 142
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return v1

    .line 147
    :cond_0
    const-class v3, Lorg/eclipse/jetty/util/log/Log;

    monitor-enter v3

    .line 149
    :try_start_0
    sget-boolean v0, Lorg/eclipse/jetty/util/log/Log;->c:Z

    if-eqz v0, :cond_2

    .line 151
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v1, v2

    .line 151
    goto :goto_1

    .line 153
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lorg/eclipse/jetty/util/log/Log;->c:Z

    .line 154
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :try_start_2
    const-class v0, Lorg/eclipse/jetty/util/log/Log;

    sget-object v3, Lorg/eclipse/jetty/util/log/Log;->__logClass:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 159
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v0, :cond_3

    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/log/Logger;

    sput-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    .line 162
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Logging to {} via {}"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-interface {v0, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 171
    :cond_4
    :goto_2
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 168
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    move v0, v2

    .line 171
    goto :goto_3
.end method

.method public static isDebugEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static setLog(Lorg/eclipse/jetty/util/log/Logger;)V
    .locals 0

    .prologue
    .line 192
    sput-object p0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    .line 193
    return-void
.end method

.method public static setLogToParent(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 236
    const-class v0, Lorg/eclipse/jetty/util/log/Log;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "org.eclipse.jetty.util.log.Log"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 242
    const-string v1, "getLogger"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 243
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    new-instance v1, Lorg/eclipse/jetty/util/log/LoggerLog;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/util/log/LoggerLog;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/eclipse/jetty/util/log/Log;->setLog(Lorg/eclipse/jetty/util/log/Logger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->setLog(Lorg/eclipse/jetty/util/log/Logger;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    :goto_0
    return-void

    .line 369
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 378
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    :goto_0
    return-void

    .line 391
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, p0, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 400
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0, p0, p1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static warn(Ljava/lang/Throwable;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->initialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/util/log/Log;->b:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "EXCEPTION "

    invoke-interface {v0, v1, p0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
