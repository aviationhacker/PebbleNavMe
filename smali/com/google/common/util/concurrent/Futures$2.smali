.class final Lcom/google/common/util/concurrent/Futures$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->a(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field volatile a:Z

.field final synthetic b:Ljava/util/concurrent/Executor;

.field final synthetic c:Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 1

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$2;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$2;->c:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/Futures$2;->a:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$2;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/common/util/concurrent/Futures$2$1;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/Futures$2$1;-><init>(Lcom/google/common/util/concurrent/Futures$2;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :cond_0
    :goto_0
    return-void

    .line 1180
    :catch_0
    move-exception v0

    .line 1181
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Futures$2;->a:Z

    if-eqz v1, :cond_0

    .line 1183
    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$2;->c:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
