.class Lcom/google/common/util/concurrent/Futures$o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Futures$o;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic b:Lcom/google/common/util/concurrent/Futures$o;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/Futures$o;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/google/common/util/concurrent/Futures$o$1;->b:Lcom/google/common/util/concurrent/Futures$o;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Futures$o$1;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/google/common/util/concurrent/Futures$o$1;->b:Lcom/google/common/util/concurrent/Futures$o;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Futures$o$1;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Futures$o;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 1580
    return-void
.end method
