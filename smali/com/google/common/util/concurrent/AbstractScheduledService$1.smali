.class Lcom/google/common/util/concurrent/AbstractScheduledService$1;
.super Lcom/google/common/util/concurrent/Service$Listener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ScheduledExecutorService;

.field final synthetic b:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->b:Lcom/google/common/util/concurrent/AbstractScheduledService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/Service$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public failed(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 328
    return-void
.end method

.method public terminated(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 325
    return-void
.end method
