.class final Lcom/google/common/util/concurrent/Futures$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic b:Lcom/google/common/util/concurrent/FutureCallback;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 0

    .prologue
    .line 1755
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$6;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$6;->b:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1762
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$6;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1773
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->b:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onSuccess(Ljava/lang/Object;)V

    .line 1774
    :goto_0
    return-void

    .line 1763
    :catch_0
    move-exception v0

    .line 1764
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->b:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1766
    :catch_1
    move-exception v0

    .line 1767
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->b:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1769
    :catch_2
    move-exception v0

    .line 1770
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$6;->b:Lcom/google/common/util/concurrent/FutureCallback;

    invoke-interface {v1, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
