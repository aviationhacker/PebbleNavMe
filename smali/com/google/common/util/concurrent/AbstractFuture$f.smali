.class final Lcom/google/common/util/concurrent/AbstractFuture$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "f"
.end annotation


# instance fields
.field final a:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$f;->b:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$f;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 262
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$f;->b:Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture$f;->b:Lcom/google/common/util/concurrent/AbstractFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractFuture$f;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Z

    goto :goto_0
.end method
