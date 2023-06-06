.class public abstract Lls$a;
.super Llt;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lls;

.field private b:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TInputT;>;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Z


# direct methods
.method constructor <init>(Lls;Lcom/google/common/collect/ImmutableCollection;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<+",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TInputT;>;>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lls$a;->a:Lls;

    .line 98
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Llt;-><init>(I)V

    .line 99
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ImmutableCollection;

    iput-object v0, p0, Lls$a;->b:Lcom/google/common/collect/ImmutableCollection;

    .line 100
    iput-boolean p3, p0, Lls$a;->c:Z

    .line 101
    iput-boolean p4, p0, Lls$a;->d:Z

    .line 102
    return-void
.end method

.method static synthetic a(Lls$a;)Lcom/google/common/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lls$a;->b:Lcom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method private a(ILjava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Future",
            "<+TInputT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-boolean v1, p0, Lls$a;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lls$a;->a:Lls;

    invoke-virtual {v1}, Lls;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lls$a;->a:Lls;

    invoke-virtual {v1}, Lls;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v1, "Future was done before all dependencies completed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 213
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Tried to set value from future which is not done"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 215
    iget-boolean v0, p0, Lls$a;->c:Z

    if-eqz v0, :cond_4

    .line 216
    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lls$a;->a:Lls;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lls;->a(Lls;Z)Z

    .line 236
    :cond_2
    :goto_0
    return-void

    .line 223
    :cond_3
    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 224
    iget-boolean v1, p0, Lls$a;->d:Z

    if-eqz v1, :cond_2

    .line 225
    iget-boolean v1, p0, Lls$a;->c:Z

    invoke-virtual {p0, v1, p1, v0}, Lls$a;->a(ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lls$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 228
    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lls$a;->d:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    iget-boolean v0, p0, Lls$a;->c:Z

    invoke-static {p2}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lls$a;->a(ZILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    invoke-direct {p0, v0}, Lls$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 167
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-boolean v0, p0, Lls$a;->c:Z

    if-eqz v0, :cond_4

    .line 174
    iget-object v0, p0, Lls$a;->a:Lls;

    invoke-virtual {v0, p1}, Lls;->setException(Ljava/lang/Throwable;)Z

    move-result v2

    .line 175
    if-eqz v2, :cond_1

    .line 176
    invoke-virtual {p0}, Lls$a;->a()V

    move v0, v1

    .line 185
    :goto_0
    instance-of v4, p1, Ljava/lang/Error;

    iget-boolean v5, p0, Lls$a;->c:Z

    if-nez v2, :cond_2

    :goto_1
    and-int/2addr v1, v5

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    if-eqz v0, :cond_0

    .line 187
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_3

    const-string v0, "Input Future failed with Error"

    .line 191
    :goto_2
    invoke-static {}, Lls;->i()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :cond_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p0}, Lls$a;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lls;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 185
    goto :goto_1

    .line 187
    :cond_3
    const-string v0, "Got more than one input Future failure. Logging failures after the first"

    goto :goto_2

    :cond_4
    move v0, v1

    move v2, v3

    goto :goto_0
.end method

.method static synthetic a(Lls$a;ILjava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Lls$a;->a(ILjava/util/concurrent/Future;)V

    return-void
.end method

.method static synthetic b(Lls$a;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lls$a;->f()V

    return-void
.end method

.method static synthetic c(Lls$a;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lls$a;->g()V

    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 117
    iget-object v0, p0, Lls$a;->b:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lls$a;->b()V

    .line 158
    :cond_0
    return-void

    .line 125
    :cond_1
    iget-boolean v0, p0, Lls$a;->c:Z

    if-eqz v0, :cond_2

    .line 137
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lls$a;->b:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 139
    add-int/lit8 v2, v1, 0x1

    .line 140
    new-instance v4, Lls$a$1;

    invoke-direct {v4, p0, v1, v0}, Lls$a$1;-><init>(Lls$a;ILcom/google/common/util/concurrent/ListenableFuture;)V

    .line 149
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 140
    invoke-interface {v0, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move v1, v2

    .line 150
    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lls$a;->b:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 155
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1
.end method

.method private g()V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p0}, Lls$a;->e()I

    move-result v1

    .line 240
    if-ltz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Less than 0 remaining futures"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 241
    if-nez v1, :cond_0

    .line 242
    invoke-direct {p0}, Lls$a;->h()V

    .line 244
    :cond_0
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-boolean v2, p0, Lls$a;->d:Z

    iget-boolean v1, p0, Lls$a;->c:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 251
    iget-object v1, p0, Lls$a;->b:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    .line 252
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v1, v0}, Lls$a;->a(ILjava/util/concurrent/Future;)V

    move v1, v2

    .line 253
    goto :goto_1

    :cond_0
    move v1, v0

    .line 249
    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {p0}, Lls$a;->b()V

    .line 256
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lls$a;->b:Lcom/google/common/collect/ImmutableCollection;

    .line 269
    return-void
.end method

.method final a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lls$a;->a:Lls;

    invoke-virtual {v0}, Lls;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lls$a;->a:Lls;

    invoke-virtual {v0}, Lls;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {p1, v0}, Lls;->a(Ljava/util/Set;Ljava/lang/Throwable;)Z

    .line 200
    :cond_0
    return-void
.end method

.method abstract a(ZILjava/lang/Object;)V
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZITInputT;)V"
        }
    .end annotation
.end method

.method abstract b()V
.end method

.method c()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lls$a;->g()V

    .line 107
    return-void
.end method
