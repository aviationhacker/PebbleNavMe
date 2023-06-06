.class public final Lcom/google/common/util/concurrent/ServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ServiceManager$a;,
        Lcom/google/common/util/concurrent/ServiceManager$b;,
        Lcom/google/common/util/concurrent/ServiceManager$c;,
        Lcom/google/common/util/concurrent/ServiceManager$d;,
        Lcom/google/common/util/concurrent/ServiceManager$Listener;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lcom/google/common/util/concurrent/ServiceManager$d;

.field private final e:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 125
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->a:Ljava/util/logging/Logger;

    .line 126
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$1;

    const-string v1, "healthy()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->b:Lly$a;

    .line 131
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$2;

    const-string v1, "stopped()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/ServiceManager;->c:Lly$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->a:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "ServiceManager configured with no services.  Is your application configured properly?"

    new-instance v5, Lcom/google/common/util/concurrent/ServiceManager$a;

    invoke-direct {v5, v6}, Lcom/google/common/util/concurrent/ServiceManager$a;-><init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V

    invoke-virtual {v0, v1, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$b;

    invoke-direct {v0, v6}, Lcom/google/common/util/concurrent/ServiceManager$b;-><init>(Lcom/google/common/util/concurrent/ServiceManager$1;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 200
    :cond_0
    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ServiceManager$d;-><init>(Lcom/google/common/collect/ImmutableCollection;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    .line 201
    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->e:Lcom/google/common/collect/ImmutableList;

    .line 202
    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 205
    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$c;

    invoke-direct {v1, v0, v4}, Lcom/google/common/util/concurrent/ServiceManager$c;-><init>(Lcom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 208
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    sget-object v6, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v1, v6, :cond_1

    move v1, v2

    :goto_1
    const-string v6, "Can only manage NEW services, %s"

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v0, v7, v3

    invoke-static {v1, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$d;->a()V

    .line 213
    return-void
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic b()Lly$a;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->c:Lly$a;

    return-object v0
.end method

.method static synthetic c()Lly$a;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/google/common/util/concurrent/ServiceManager;->b:Lly$a;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/common/util/concurrent/ServiceManager$d;->a(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 260
    return-void
.end method

.method public addListener(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/util/concurrent/ServiceManager$d;->a(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 240
    return-void
.end method

.method public awaitHealthy()V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$d;->b()V

    .line 300
    return-void
.end method

.method public awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$d;->a(JLjava/util/concurrent/TimeUnit;)V

    .line 315
    return-void
.end method

.method public awaitStopped()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$d;->c()V

    .line 337
    return-void
.end method

.method public awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/util/concurrent/ServiceManager$d;->b(JLjava/util/concurrent/TimeUnit;)V

    .line 350
    return-void
.end method

.method public isHealthy()Z
    .locals 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 360
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 364
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public servicesByState()Lcom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$d;->d()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public startAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 271
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 272
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v5

    .line 273
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-ne v5, v1, :cond_0

    move v1, v2

    :goto_1
    const-string v6, "Service %s is %s, cannot start it."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object v5, v7, v2

    invoke-static {v1, v6, v7}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 277
    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/ServiceManager$d;->a(Lcom/google/common/util/concurrent/Service;)V

    .line 278
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 279
    :catch_0
    move-exception v1

    .line 284
    sget-object v3, Lcom/google/common/util/concurrent/ServiceManager;->a:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Unable to start Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 287
    :cond_2
    return-object p0
.end method

.method public startupTimes()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->d:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/ServiceManager$d;->e()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public stopAsync()Lcom/google/common/util/concurrent/ServiceManager;
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 325
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->stopAsync()Lcom/google/common/util/concurrent/Service;

    goto :goto_0

    .line 327
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    const-class v0, Lcom/google/common/util/concurrent/ServiceManager;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "services"

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager;->e:Lcom/google/common/collect/ImmutableList;

    const-class v3, Lcom/google/common/util/concurrent/ServiceManager$b;

    .line 390
    invoke-static {v3}, Lcom/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
