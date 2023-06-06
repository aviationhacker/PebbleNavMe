.class final Lcom/google/common/util/concurrent/Futures$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/FutureFallback;)Lcom/google/common/util/concurrent/AsyncFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction",
        "<",
        "Ljava/lang/Throwable;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/FutureFallback;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/FutureFallback;)V
    .locals 0

    .prologue
    .line 742
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$1;->a:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$1;->a:Lcom/google/common/util/concurrent/FutureFallback;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/FutureFallback;->create(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "FutureFallback.create returned null instead of a Future. Did you mean to return immediateFuture(null)?"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .prologue
    .line 742
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Futures$1;->a(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
