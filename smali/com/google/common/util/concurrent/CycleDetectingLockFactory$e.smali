.class Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;)V
    .locals 0

    .prologue
    .line 978
    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 979
    invoke-direct {p0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;-><init>(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 980
    iput-object p2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    .line 981
    return-void
.end method


# virtual methods
.method public lock()V
    .locals 3

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 987
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 991
    return-void

    .line 989
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    throw v0
.end method

.method public lockInterruptibly()V
    .locals 3

    .prologue
    .line 995
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 997
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lockInterruptibly()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 1001
    return-void

    .line 999
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    throw v0
.end method

.method public tryLock()Z
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 1007
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    throw v0
.end method

.method public tryLock(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 1018
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1020
    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    throw v0
.end method

.method public unlock()V
    .locals 3

    .prologue
    .line 1027
    :try_start_0
    invoke-super {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    .line 1031
    return-void

    .line 1029
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    throw v0
.end method
