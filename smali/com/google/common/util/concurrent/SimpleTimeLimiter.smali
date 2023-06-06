.class public final Lcom/google/common/util/concurrent/SimpleTimeLimiter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/TimeLimiter;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a:Ljava/util/concurrent/ExecutorService;

    .line 68
    return-void
.end method

.method static synthetic a(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->b(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/InvocationHandler;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Class;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 170
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 171
    invoke-static {v4}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-object v1
.end method

.method private static a(Ljava/lang/reflect/Method;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 181
    const-class v5, Ljava/lang/InterruptedException;

    if-ne v4, v5, :cond_1

    .line 182
    const/4 v0, 0x1

    .line 185
    :cond_0
    return v0

    .line 179
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/Exception;Z)Ljava/lang/Exception;
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 150
    if-nez v1, :cond_0

    .line 151
    throw p0

    .line 153
    :cond_0
    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-class v3, Ljava/lang/StackTraceElement;

    .line 154
    invoke-static {v0, v2, v3}, Lcom/google/common/collect/ObjectArrays;->concat([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 158
    :cond_1
    instance-of v0, v1, Ljava/lang/Exception;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 159
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 161
    :cond_2
    instance-of v0, v1, Ljava/lang/Error;

    if-eqz v0, :cond_3

    .line 162
    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 165
    :cond_3
    throw p0
.end method


# virtual methods
.method public callWithTimeout(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;Z)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 122
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "timeout must be positive: %s"

    new-array v4, v1, [Ljava/lang/Object;

    .line 125
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    .line 124
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 128
    if-eqz p5, :cond_1

    .line 130
    :try_start_0
    invoke-interface {v2, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 136
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 124
    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const/4 v3, 0x1

    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 133
    throw v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2

    .line 139
    :catch_1
    move-exception v0

    .line 140
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->b(Ljava/lang/Exception;Z)Ljava/lang/Exception;

    move-result-object v0

    throw v0

    .line 136
    :cond_1
    :try_start_2
    invoke-static {v2, p2, p3, p4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_1

    .line 141
    :catch_2
    move-exception v0

    .line 142
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 143
    new-instance v1, Lcom/google/common/util/concurrent/UncheckedTimeoutException;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/UncheckedTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newProxy(Ljava/lang/Object;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-wide/16 v4, 0x0

    cmp-long v0, p3, v4

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "bad timeout: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const-string v1, "interfaceType must be an interface type"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 94
    invoke-static {p2}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v7

    .line 96
    new-instance v1, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/google/common/util/concurrent/SimpleTimeLimiter$1;-><init>(Lcom/google/common/util/concurrent/SimpleTimeLimiter;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;Ljava/util/Set;)V

    .line 115
    invoke-static {p2, v1}, Lcom/google/common/util/concurrent/SimpleTimeLimiter;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0
.end method
