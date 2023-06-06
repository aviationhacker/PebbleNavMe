.class final Lcom/google/common/util/concurrent/MoreExecutors$e;
.super Lcom/google/common/util/concurrent/MoreExecutors$d;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "TODO"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/MoreExecutors$e$b;,
        Lcom/google/common/util/concurrent/MoreExecutors$e$a;
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 567
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$d;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 568
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 569
    return-void
.end method


# virtual methods
.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 574
    const/4 v0, 0x0

    .line 575
    invoke-static {p1, v0}, Lmc;->a(Ljava/lang/Runnable;Ljava/lang/Object;)Lmc;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 577
    new-instance v2, Lcom/google/common/util/concurrent/MoreExecutors$e$a;

    invoke-direct {v2, v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$e$a;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object v2
.end method

.method public schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 583
    invoke-static {p1}, Lmc;->a(Ljava/util/concurrent/Callable;)Lmc;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 585
    new-instance v2, Lcom/google/common/util/concurrent/MoreExecutors$e$a;

    invoke-direct {v2, v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors$e$a;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object v2
.end method

.method public bridge synthetic schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/MoreExecutors$e;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 560
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/util/concurrent/MoreExecutors$e;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 591
    new-instance v1, Lcom/google/common/util/concurrent/MoreExecutors$e$b;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/MoreExecutors$e$b;-><init>(Ljava/lang/Runnable;)V

    .line 593
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 594
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 595
    new-instance v2, Lcom/google/common/util/concurrent/MoreExecutors$e$a;

    invoke-direct {v2, v1, v0}, Lcom/google/common/util/concurrent/MoreExecutors$e$a;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object v2
.end method

.method public bridge synthetic scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 560
    invoke-virtual/range {p0 .. p6}, Lcom/google/common/util/concurrent/MoreExecutors$e;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method public scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 601
    new-instance v1, Lcom/google/common/util/concurrent/MoreExecutors$e$b;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/MoreExecutors$e$b;-><init>(Ljava/lang/Runnable;)V

    .line 603
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$e;->a:Ljava/util/concurrent/ScheduledExecutorService;

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    .line 604
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    .line 605
    new-instance v2, Lcom/google/common/util/concurrent/MoreExecutors$e$a;

    invoke-direct {v2, v1, v0}, Lcom/google/common/util/concurrent/MoreExecutors$e$a;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V

    return-object v2
.end method

.method public bridge synthetic scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 2

    .prologue
    .line 560
    invoke-virtual/range {p0 .. p6}, Lcom/google/common/util/concurrent/MoreExecutors$e;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/ListenableScheduledFuture;

    move-result-object v0

    return-object v0
.end method
