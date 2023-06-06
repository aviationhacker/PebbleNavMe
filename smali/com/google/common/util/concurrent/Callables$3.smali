.class final Lcom/google/common/util/concurrent/Callables$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/Callables;->a(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/Supplier;

.field final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$3;->a:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$3;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 98
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$3;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Callables;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result v3

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$3;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v3, :cond_0

    .line 103
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 106
    :cond_0
    return-void

    .line 102
    :catchall_0
    move-exception v0

    if-eqz v3, :cond_1

    .line 103
    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/Callables;->a(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_1
    throw v0
.end method
