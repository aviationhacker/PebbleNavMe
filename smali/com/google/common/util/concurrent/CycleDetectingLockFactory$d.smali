.class final Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

.field private final b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;

.field private final c:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;

.field private final d:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Z)V
    .locals 1

    .prologue
    .line 878
    iput-object p1, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 879
    invoke-direct {p0, p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 880
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;

    .line 881
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->c:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;

    .line 882
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->d:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    .line 883
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0

    .prologue
    .line 865
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;Z)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->d:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->getReadHoldCount()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic readLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->b:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;

    return-object v0
.end method

.method public bridge synthetic writeLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    .prologue
    .line 894
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;->c:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;

    return-object v0
.end method
