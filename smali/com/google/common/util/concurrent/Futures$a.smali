.class abstract Lcom/google/common/util/concurrent/Futures$a;
.super Lcom/google/common/util/concurrent/AbstractFuture$g;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$g",
        "<TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TX;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Class",
            "<TX;>;TF;)V"
        }
    .end annotation

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$g;-><init>()V

    .line 759
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 760
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$a;->b:Ljava/lang/Class;

    .line 761
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$a;->c:Ljava/lang/Object;

    .line 762
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 802
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$a;->a(Ljava/util/concurrent/Future;)V

    .line 803
    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 804
    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$a;->b:Ljava/lang/Class;

    .line 805
    iput-object v1, p0, Lcom/google/common/util/concurrent/Futures$a;->c:Ljava/lang/Object;

    .line 806
    return-void
.end method

.method abstract a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TX;)V"
        }
    .end annotation
.end method

.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 765
    iget-object v4, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 766
    iget-object v5, p0, Lcom/google/common/util/concurrent/Futures$a;->b:Ljava/lang/Class;

    .line 767
    iget-object v6, p0, Lcom/google/common/util/concurrent/Futures$a;->c:Ljava/lang/Object;

    .line 768
    if-nez v4, :cond_0

    move v3, v0

    :goto_0
    if-nez v5, :cond_1

    move v2, v0

    :goto_1
    or-int/2addr v2, v3

    if-nez v6, :cond_2

    :goto_2
    or-int/2addr v0, v2

    .line 769
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Futures$a;->isCancelled()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 796
    :goto_3
    return-void

    :cond_0
    move v3, v1

    .line 768
    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 772
    :cond_3
    iput-object v7, p0, Lcom/google/common/util/concurrent/Futures$a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 773
    iput-object v7, p0, Lcom/google/common/util/concurrent/Futures$a;->b:Ljava/lang/Class;

    .line 774
    iput-object v7, p0, Lcom/google/common/util/concurrent/Futures$a;->c:Ljava/lang/Object;

    .line 778
    :try_start_0
    invoke-static {v4}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$a;->set(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_3

    .line 780
    :catch_0
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 786
    :goto_4
    :try_start_1
    invoke-static {v0, v5}, Llz;->a(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 789
    invoke-virtual {p0, v6, v0}, Lcom/google/common/util/concurrent/Futures$a;->a(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 793
    :catch_1
    move-exception v0

    .line 794
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$a;->setException(Ljava/lang/Throwable;)Z

    goto :goto_3

    .line 791
    :cond_4
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$a;->setException(Ljava/lang/Throwable;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 782
    :catch_2
    move-exception v0

    goto :goto_4
.end method
