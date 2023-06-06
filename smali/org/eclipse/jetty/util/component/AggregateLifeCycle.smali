.class public Lorg/eclipse/jetty/util/component/AggregateLifeCycle;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/util/component/Destroyable;
.implements Lorg/eclipse/jetty/util/component/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;
    }
.end annotation


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->c:Z

    .line 52
    return-void
.end method

.method public static dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    :try_start_0
    const-string v0, ""

    invoke-interface {p0, v1, v0}, Lorg/eclipse/jetty/util/component/Dumpable;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    sget-object v2, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static varargs dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 415
    array-length v1, p2

    if-nez v1, :cond_1

    .line 440
    :cond_0
    return-void

    .line 418
    :cond_1
    array-length v3, p2

    move v1, v0

    move v4, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, p2, v1

    .line 419
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v4

    .line 418
    add-int/lit8 v1, v1, 0x1

    move v4, v2

    goto :goto_0

    .line 420
    :cond_2
    if-eqz v4, :cond_0

    .line 424
    array-length v5, p2

    move v3, v0

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v1, p2, v3

    .line 426
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 428
    add-int/lit8 v1, v1, 0x1

    .line 429
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    const-string v7, " +- "

    invoke-interface {v2, v7}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 431
    instance-of v2, v0, Lorg/eclipse/jetty/util/component/Dumpable;

    if-eqz v2, :cond_4

    .line 432
    check-cast v0, Lorg/eclipse/jetty/util/component/Dumpable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-ne v1, v4, :cond_3

    const-string v2, "    "

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Lorg/eclipse/jetty/util/component/Dumpable;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, " |  "

    goto :goto_3

    .line 434
    :cond_4
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_2

    .line 437
    :cond_5
    if-eq v1, v4, :cond_6

    .line 438
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v2, " |\n"

    invoke-interface {v0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 424
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v1

    goto :goto_1
.end method

.method public static dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 373
    :try_start_0
    instance-of v0, p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_0

    .line 374
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " - "

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-static {p1}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->getState(Lorg/eclipse/jetty/util/component/LifeCycle;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 382
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v0

    .line 380
    const-string v1, " => "

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0
.end method


# virtual methods
.method public addBean(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 173
    instance-of v0, p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->addBean(Ljava/lang/Object;Z)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addBean(Ljava/lang/Object;Z)Z
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    .line 187
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;-><init>(Lorg/eclipse/jetty/util/component/AggregateLifeCycle;Ljava/lang/Object;)V

    .line 188
    iput-boolean p2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    .line 189
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    instance-of v0, p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v0, :cond_1

    .line 193
    check-cast p1, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 196
    if-eqz p2, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->c:Z

    if-eqz v0, :cond_1

    .line 200
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 204
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 142
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 124
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    instance-of v2, v2, Lorg/eclipse/jetty/util/component/Destroyable;

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    if-eqz v2, :cond_0

    .line 126
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/util/component/Destroyable;

    .line 127
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/Destroyable;->destroy()V

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    return-void
.end method

.method protected doStart()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 77
    iget-boolean v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    instance-of v2, v2, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v2, :cond_0

    .line 79
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 80
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->c:Z

    .line 86
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 87
    return-void
.end method

.method public doStop()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->c:Z

    .line 98
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStop()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 103
    iget-boolean v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    instance-of v2, v2, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v2, :cond_0

    .line 105
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 106
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-interface {v0}, Lorg/eclipse/jetty/util/component/LifeCycle;->stop()V

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    invoke-static {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Lorg/eclipse/jetty/util/component/Dumpable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/Appendable;)V
    .locals 1

    .prologue
    .line 359
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpThis(Ljava/lang/Appendable;)V

    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 389
    if-nez v3, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 394
    add-int/lit8 v1, v1, 0x1

    .line 396
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v2

    const-string v5, " +- "

    invoke-interface {v2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 397
    iget-boolean v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    if-eqz v2, :cond_4

    .line 399
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    instance-of v2, v2, Lorg/eclipse/jetty/util/component/Dumpable;

    if-eqz v2, :cond_3

    .line 400
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/util/component/Dumpable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v1, v3, :cond_2

    const-string v2, "    "

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lorg/eclipse/jetty/util/component/Dumpable;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v2, " |  "

    goto :goto_2

    .line 402
    :cond_3
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_1

    .line 405
    :cond_4
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dumpObject(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_1

    .line 408
    :cond_5
    if-eq v1, v3, :cond_0

    .line 409
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " |\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public dumpStdErr()V
    .locals 2

    .prologue
    .line 327
    :try_start_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 331
    sget-object v1, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected dumpThis(Ljava/lang/Appendable;)V
    .locals 2

    .prologue
    .line 365
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, " - "

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object v0

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 366
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 287
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    .line 291
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBeans()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->getBeans(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBeans(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 269
    iget-object v3, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    iget-object v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :cond_1
    return-object v1
.end method

.method public isManaged(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 155
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 156
    iget-boolean v0, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    .line 157
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public manage(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 221
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    .line 224
    return-void

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public removeBean(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 313
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 315
    iget-object v1, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 316
    const/4 v0, 0x1

    .line 319
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeBeans()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    return-void
.end method

.method public unmanage(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;

    .line 240
    iget-object v2, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->a:Ljava/lang/Object;

    if-ne v2, p1, :cond_0

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/eclipse/jetty/util/component/AggregateLifeCycle$a;->b:Z

    .line 243
    return-void

    .line 246
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
