.class final Lcom/google/common/util/concurrent/AbstractIdleService$a;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractIdleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/AbstractIdleService;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractIdleService;Lcom/google/common/util/concurrent/AbstractIdleService$1;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractIdleService$a;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->a(Lcom/google/common/util/concurrent/AbstractIdleService;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->a(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractIdleService$a$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$a$1;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$a;)V

    .line 57
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method protected final doStop()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractIdleService$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-static {v1}, Lcom/google/common/util/concurrent/AbstractIdleService;->a(Lcom/google/common/util/concurrent/AbstractIdleService;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->a(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractIdleService$a$2;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$a$2;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService$a;)V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService$a;->a:Lcom/google/common/util/concurrent/AbstractIdleService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractIdleService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
