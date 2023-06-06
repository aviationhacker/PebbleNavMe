.class public Lcom/google/common/eventbus/AsyncEventBus;
.super Lcom/google/common/eventbus/EventBus;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Lkt;->b()Lkt;

    move-result-object v0

    sget-object v1, Lcom/google/common/eventbus/EventBus$a;->a:Lcom/google/common/eventbus/EventBus$a;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lkt;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 70
    const-string v0, "default"

    invoke-static {}, Lkt;->b()Lkt;

    move-result-object v1

    sget-object v2, Lcom/google/common/eventbus/EventBus$a;->a:Lcom/google/common/eventbus/EventBus$a;

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lkt;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 2

    .prologue
    .line 58
    const-string v0, "default"

    invoke-static {}, Lkt;->b()Lkt;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lkt;Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 59
    return-void
.end method
