.class Lcom/google/common/util/concurrent/MoreExecutors$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/MoreExecutors$a;->a(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:J

.field final synthetic c:Ljava/util/concurrent/TimeUnit;

.field final synthetic d:Lcom/google/common/util/concurrent/MoreExecutors$a;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/MoreExecutors$a;Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->d:Lcom/google/common/util/concurrent/MoreExecutors$a;

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->a:Ljava/util/concurrent/ExecutorService;

    iput-wide p3, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->b:J

    iput-object p5, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->c:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 214
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->a:Ljava/util/concurrent/ExecutorService;

    iget-wide v2, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->b:J

    iget-object v1, p0, Lcom/google/common/util/concurrent/MoreExecutors$a$1;->c:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    goto :goto_0
.end method
