.class final Lcom/google/common/util/concurrent/MoreExecutors$e$a;
.super Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/MoreExecutors$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture",
        "<TV;>;",
        "Lcom/google/common/util/concurrent/ListenableScheduledFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 618
    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$e$a;->a:Ljava/util/concurrent/ScheduledFuture;

    .line 619
    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Delayed;)I
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$e$a;->a:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public cancel(Z)Z
    .locals 2

    .prologue
    .line 623
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->cancel(Z)Z

    move-result v0

    .line 624
    if-eqz v0, :cond_0

    .line 626
    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$e$a;->a:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 630
    :cond_0
    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 608
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/MoreExecutors$e$a;->a(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$e$a;->a:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
