.class Lcom/google/common/util/concurrent/AbstractScheduledService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$a;->a:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$a;->a:Lcom/google/common/util/concurrent/AbstractScheduledService;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/util/concurrent/MoreExecutors;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
