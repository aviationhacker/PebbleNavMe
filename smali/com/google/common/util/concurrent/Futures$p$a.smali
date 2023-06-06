.class final Lcom/google/common/util/concurrent/Futures$p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures$p;
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
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/util/concurrent/Futures$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/Futures$p",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Futures$p",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$p$a;->a:Lcom/google/common/util/concurrent/Futures$p;

    .line 912
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 917
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$p$a;->a:Lcom/google/common/util/concurrent/Futures$p;

    .line 918
    if-nez v0, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v1, v0, Lcom/google/common/util/concurrent/Futures$p;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 922
    if-eqz v1, :cond_0

    .line 938
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/util/concurrent/Futures$p$a;->a:Lcom/google/common/util/concurrent/Futures$p;

    .line 939
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 940
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Futures$p;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    goto :goto_0

    .line 945
    :cond_2
    :try_start_0
    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Future timed out: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/common/util/concurrent/Futures$p;->setException(Ljava/lang/Throwable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 947
    invoke-interface {v1, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    throw v0
.end method
