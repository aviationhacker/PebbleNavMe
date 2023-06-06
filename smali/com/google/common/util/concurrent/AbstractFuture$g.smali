.class public abstract Lcom/google/common/util/concurrent/AbstractFuture$g;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 92
    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    return v0
.end method
