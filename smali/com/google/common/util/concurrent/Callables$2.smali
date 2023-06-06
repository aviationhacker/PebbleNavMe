.class final Lcom/google/common/util/concurrent/Callables$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->a(Ljava/util/concurrent/Callable;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/Supplier;

.field final synthetic b:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$2;->a:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$2;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$2;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Callables;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v3

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$2;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 73
    if-eqz v3, :cond_0

    .line 74
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-object v0

    .line 73
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 74
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_1
    throw v0
.end method
