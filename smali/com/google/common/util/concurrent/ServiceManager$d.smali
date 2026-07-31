.class final Lcom/google/common/util/concurrent/ServiceManager$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ServiceManager$d$b;,
        Lcom/google/common/util/concurrent/ServiceManager$d$a;
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/util/concurrent/Monitor;

.field final b:Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            "Lcom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final c:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset",
            "<",
            "Lcom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field e:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field f:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field final g:I

.field final h:Lcom/google/common/util/concurrent/Monitor$Guard;

.field final i:Lcom/google/common/util/concurrent/Monitor$Guard;

.field final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lly",
            "<",
            "Lcom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    .line 401
    const-class v0, Lcom/google/common/util/concurrent/Service$State;

    .line 403
    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build()Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    .line 405
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    .line 406
    invoke-interface {v0}, Lcom/google/common/collect/SetMultimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->c:Lcom/google/common/collect/Multiset;

    .line 409
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->d:Ljava/util/Map;

    .line 434
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$d$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ServiceManager$d$a;-><init>(Lcom/google/common/util/concurrent/ServiceManager$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->h:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 454
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$d$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ServiceManager$d$b;-><init>(Lcom/google/common/util/concurrent/ServiceManager$d;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->i:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->j:Ljava/util/List;

    .line 479
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->g:I

    .line 480
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1, p1}, Lcom/google/common/collect/SetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 481
    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 506
    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->f:Z

    if-nez v0, :cond_0

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 523
    return-void

    .line 511
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 512
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->d()Lcom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultimap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service;

    .line 513
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v3

    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    if-eq v3, v4, :cond_1

    .line 514
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    .line 517
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Services started transitioning asynchronously before the ServiceManager was constructed: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method a(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 551
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->h:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for the services to become healthy. The following services have not started: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 554
    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    .line 556
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 560
    return-void
.end method

.method a(Lcom/google/common/util/concurrent/Service;)V
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 490
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Stopwatch;

    .line 491
    if-nez v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->d:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 497
    return-void

    .line 495
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method a(Lcom/google/common/util/concurrent/Service;Lcom/google/common/util/concurrent/Service$State;Lcom/google/common/util/concurrent/Service$State;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 633
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    if-eq p2, p3, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 635
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 637
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->f:Z

    .line 638
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 677
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->h()V

    .line 679
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 634
    goto :goto_0

    .line 642
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v0, p2, p1}, Lcom/google/common/collect/SetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Service %s not at the expected location in the state map %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v0, p3, p1}, Lcom/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Service %s in the state map unexpectedly at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Stopwatch;

    .line 648
    if-nez v0, :cond_2

    .line 650
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    :cond_2
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-virtual {p3, v1}, Lcom/google/common/util/concurrent/Service$State;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 655
    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 656
    instance-of v1, p1, Lcom/google/common/util/concurrent/ServiceManager$b;

    if-nez v1, :cond_3

    .line 657
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->a()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Started {0} in {1}."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 663
    :cond_3
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    if-ne p3, v0, :cond_4

    .line 664
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$d;->b(Lcom/google/common/util/concurrent/Service;)V

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->c:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->g:I

    if-ne v0, v1, :cond_6

    .line 670
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 675
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 677
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->h()V

    goto/16 :goto_1

    .line 671
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->c:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->c:Lcom/google/common/collect/Multiset;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->g:I

    if-ne v0, v1, :cond_5

    .line 672
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 675
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 677
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->h()V

    throw v0
.end method

.method a(Lcom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 526
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->i:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->j:Ljava/util/List;

    new-instance v1, Lly;

    invoke-direct {v1, p1, p2}, Lly;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 537
    return-void

    .line 535
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method b()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->h:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 542
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ServiceManager$d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 546
    return-void

    .line 544
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method b(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    .line 568
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->i:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    const-string v1, "Timeout waiting for the services to stop. The following services have not stopped: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    sget-object v3, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    sget-object v4, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 574
    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v3

    .line 573
    invoke-static {v2, v3}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 579
    return-void
.end method

.method b(Lcom/google/common/util/concurrent/Service;)V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 693
    new-instance v0, Lcom/google/common/util/concurrent/ServiceManager$d$2;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "failed({service="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/ServiceManager$d$2;-><init>(Lcom/google/common/util/concurrent/ServiceManager$d;Ljava/lang/String;Lcom/google/common/util/concurrent/Service;)V

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->j:Ljava/util/List;

    .line 697
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/ServiceManager$d$2;->a(Ljava/lang/Iterable;)V

    .line 698
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->i:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 564
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 565
    return-void
.end method

.method d()Lcom/google/common/collect/ImmutableMultimap;
    .locals 4
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
    .line 582
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v1

    .line 583
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 585
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v0}, Lcom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 586
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/common/util/concurrent/ServiceManager$b;

    if-nez v3, :cond_0

    .line 587
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 593
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/google/common/collect/ImmutableMap;
    .locals 6
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
    .line 598
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 602
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/util/concurrent/Service;

    .line 604
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Stopwatch;

    .line 605
    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    instance-of v4, v1, Lcom/google/common/util/concurrent/ServiceManager$b;

    if-nez v4, :cond_0

    .line 606
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 610
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 612
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/ServiceManager$d$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/ServiceManager$d$1;-><init>(Lcom/google/common/util/concurrent/ServiceManager$d;)V

    .line 613
    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 612
    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 618
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->b()Lly$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    .line 684
    return-void
.end method

.method g()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 688
    invoke-static {}, Lcom/google/common/util/concurrent/ServiceManager;->c()Lly$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    .line 689
    return-void
.end method

.method h()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 702
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->a:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "It is incorrect to execute listeners with the monitor held."

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 705
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    invoke-virtual {v0}, Lly;->a()V

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 702
    goto :goto_0

    .line 708
    :cond_1
    return-void
.end method

.method i()V
    .locals 4
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 712
    iget-object v0, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->c:Lcom/google/common/collect/Multiset;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->g:I

    if-eq v0, v1, :cond_0

    .line 713
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ServiceManager$d;->b:Lcom/google/common/collect/SetMultimap;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 715
    invoke-static {v2}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected to be healthy after starting. The following services are not running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 716
    throw v0

    .line 718
    :cond_0
    return-void
.end method
