.class final Lcom/google/common/util/concurrent/Futures$p;
.super Lcom/google/common/util/concurrent/AbstractFuture$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Futures$p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$g",
        "<TV;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field b:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 902
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$g;-><init>()V

    .line 903
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Futures$p;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 904
    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 954
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$p;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Futures$p;->a(Ljava/util/concurrent/Future;)V

    .line 956
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$p;->b:Ljava/util/concurrent/Future;

    .line 960
    if-eqz v0, :cond_0

    .line 961
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 964
    :cond_0
    iput-object v2, p0, Lcom/google/common/util/concurrent/Futures$p;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 965
    iput-object v2, p0, Lcom/google/common/util/concurrent/Futures$p;->b:Ljava/util/concurrent/Future;

    .line 966
    return-void
.end method
