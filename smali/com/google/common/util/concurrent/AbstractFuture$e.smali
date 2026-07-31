.class final Lcom/google/common/util/concurrent/AbstractFuture$e;
.super Lcom/google/common/util/concurrent/AbstractFuture$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$a;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    .locals 0

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$e;-><init>()V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)V
    .locals 1

    .prologue
    .line 964
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 965
    return-void
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture$j;Ljava/lang/Thread;)V
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 961
    return-void
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;Lcom/google/common/util/concurrent/AbstractFuture$d;)Z
    .locals 1

    .prologue
    .line 972
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)Z
    .locals 1

    .prologue
    .line 968
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 976
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
