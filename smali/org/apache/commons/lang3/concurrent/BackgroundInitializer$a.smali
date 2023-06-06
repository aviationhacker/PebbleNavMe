.class Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;->a:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p2, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;->b:Ljava/util/concurrent/ExecutorService;

    .line 315
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;->a:Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer;->initialize()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 327
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-object v0

    .line 327
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;->b:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lorg/apache/commons/lang3/concurrent/BackgroundInitializer$a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    throw v0
.end method
