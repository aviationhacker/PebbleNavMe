.class Lcom/google/common/util/concurrent/JdkFutureAdapters$a;
.super Lcom/google/common/util/concurrent/ForwardingFuture;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/JdkFutureAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;

.field private static final b:Ljava/util/concurrent/Executor;


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lcom/google/common/util/concurrent/ExecutionList;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;-><init>()V

    const/4 v1, 0x1

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    const-string v1, "ListenableFutureAdapter-thread-%d"

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->build()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->a:Ljava/util/concurrent/ThreadFactory;

    .line 117
    sget-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->a:Ljava/util/concurrent/ThreadFactory;

    .line 118
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->b:Ljava/util/concurrent/Executor;

    .line 117
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;-><init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V

    .line 134
    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Future;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ForwardingFuture;-><init>()V

    .line 123
    new-instance v0, Lcom/google/common/util/concurrent/ExecutionList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ExecutionList;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/ExecutionList;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 137
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    .line 138
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->c:Ljava/util/concurrent/Executor;

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/JdkFutureAdapters$a;)Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/JdkFutureAdapters$a;)Lcom/google/common/util/concurrent/ExecutionList;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/ExecutionList;

    return-object v0
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ExecutionList;->add(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 152
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->d:Lcom/google/common/util/concurrent/ExecutionList;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ExecutionList;->execute()V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/util/concurrent/JdkFutureAdapters$a$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a$1;-><init>(Lcom/google/common/util/concurrent/JdkFutureAdapters$a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->delegate()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/common/util/concurrent/JdkFutureAdapters$a;->f:Ljava/util/concurrent/Future;

    return-object v0
.end method
