.class public abstract Lcom/google/common/util/concurrent/AbstractIdleService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractIdleService$a;,
        Lcom/google/common/util/concurrent/AbstractIdleService$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/util/concurrent/Service;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$b;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractIdleService$b;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;Lcom/google/common/util/concurrent/AbstractIdleService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->a:Lcom/google/common/base/Supplier;

    .line 51
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$a;

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/AbstractIdleService$a;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;Lcom/google/common/util/concurrent/AbstractIdleService$1;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/AbstractIdleService;)Lcom/google/common/base/Supplier;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->a:Lcom/google/common/base/Supplier;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 130
    return-void
.end method

.method public final awaitRunning()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->awaitRunning()V

    .line 160
    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Service;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    .line 167
    return-void
.end method

.method public final awaitTerminated()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->awaitTerminated()V

    .line 174
    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/Service;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    .line 181
    return-void
.end method

.method protected executor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractIdleService$1;-><init>(Lcom/google/common/util/concurrent/AbstractIdleService;)V

    return-object v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected serviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract shutDown()V
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 144
    return-object p0
.end method

.method protected abstract startUp()V
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractIdleService;->b:Lcom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 152
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractIdleService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
