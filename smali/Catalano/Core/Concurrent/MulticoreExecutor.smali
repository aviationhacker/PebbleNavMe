.class public LCatalano/Core/Concurrent/MulticoreExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, LCatalano/Core/Concurrent/MulticoreExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 52
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, LCatalano/Core/Concurrent/MulticoreExecutor;->a:I

    .line 54
    sget v0, LCatalano/Core/Concurrent/MulticoreExecutor;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 55
    sget v0, LCatalano/Core/Concurrent/MulticoreExecutor;->a:I

    new-instance v1, La;

    invoke-direct {v1}, La;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, LCatalano/Core/Concurrent/MulticoreExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 57
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThreadPoolSize()I
    .locals 1

    .prologue
    .line 64
    sget v0, LCatalano/Core/Concurrent/MulticoreExecutor;->a:I

    return v0
.end method

.method public static run(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    sget-object v0, LCatalano/Core/Concurrent/MulticoreExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 80
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 81
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    sget-object v0, LCatalano/Core/Concurrent/MulticoreExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    sget v2, LCatalano/Core/Concurrent/MulticoreExecutor;->a:I

    if-ge v0, v2, :cond_1

    .line 85
    sget-object v0, LCatalano/Core/Concurrent/MulticoreExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_2
    return-object v1
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 104
    sget-object v0, LCatalano/Core/Concurrent/MulticoreExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, LCatalano/Core/Concurrent/MulticoreExecutor;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 107
    :cond_0
    return-void
.end method
