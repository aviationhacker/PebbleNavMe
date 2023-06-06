.class final Lcom/google/common/util/concurrent/Futures$o;
.super Lcom/google/common/util/concurrent/AbstractFuture$g;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "TODO"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$g",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1574
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$g;-><init>()V

    .line 1575
    new-instance v0, Lcom/google/common/util/concurrent/Futures$o$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/Futures$o$1;-><init>(Lcom/google/common/util/concurrent/Futures$o;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 1581
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1575
    invoke-interface {p1, v0, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1582
    return-void
.end method
