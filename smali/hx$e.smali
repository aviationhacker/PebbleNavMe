.class final Lhx$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljj$x;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljj$x",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field

.field volatile b:Ljj$x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    invoke-static {}, Ljj;->g()Ljj$x;

    move-result-object v0

    iput-object v0, p0, Lhx$e;->b:Ljj$x;

    .line 295
    iput-object p1, p0, Lhx$e;->a:Lcom/google/common/base/Function;

    .line 296
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TV;"
        }
    .end annotation

    .prologue
    .line 359
    :try_start_0
    iget-object v0, p0, Lhx$e;->a:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 365
    new-instance v1, Lhx$b;

    invoke-direct {v1, v0}, Lhx$b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lhx$e;->b(Ljj$x;)V

    .line 366
    return-object v0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    new-instance v1, Lhx$a;

    invoke-direct {v1, v0}, Lhx$a;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lhx$e;->b(Ljj$x;)V

    .line 362
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Ljj$l;)Ljj$x;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 313
    return-object p0
.end method

.method public a(Ljj$x;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lhx$e;->b(Ljj$x;)V

    .line 354
    return-void
.end method

.method b(Ljj$x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    iget-object v0, p0, Lhx$e;->b:Ljj$x;

    sget-object v1, Ljj;->q:Ljj$x;

    if-ne v0, v1, :cond_0

    .line 372
    iput-object p1, p0, Lhx$e;->b:Ljj$x;

    .line 373
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 375
    :cond_0
    monitor-exit p0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lhx$e;->b:Ljj$x;

    sget-object v1, Ljj;->q:Ljj$x;

    if-ne v0, v1, :cond_1

    .line 327
    const/4 v1, 0x0

    .line 329
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 330
    :goto_0
    :try_start_1
    iget-object v0, p0, Lhx$e;->b:Ljj$x;

    sget-object v2, Ljj;->q:Ljj$x;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_0

    .line 332
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    const/4 v1, 0x1

    .line 335
    goto :goto_0

    .line 337
    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    if-eqz v1, :cond_1

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 344
    :cond_1
    iget-object v0, p0, Lhx$e;->b:Ljj$x;

    invoke-interface {v0}, Ljj$x;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 339
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    return-object v0
.end method
