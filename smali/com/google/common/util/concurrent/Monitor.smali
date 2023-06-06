.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/util/concurrent/locks/ReentrantLock;

.field private c:Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    .line 354
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 363
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->a:Z

    .line 364
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 365
    return-void
.end method

.method private static a(J)J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 938
    cmp-long v0, p0, v2

    if-gtz v0, :cond_1

    move-wide v0, v2

    .line 942
    :cond_0
    :goto_0
    return-wide v0

    .line 941
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 942
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0
.end method

.method private static a(JJ)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 958
    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    goto :goto_0
.end method

.method private static a(JLjava/util/concurrent/TimeUnit;)J
    .locals 8

    .prologue
    const-wide v2, 0x5ffffffffffffffdL    # 2.6815615859885185E154

    const-wide/16 v0, 0x0

    .line 927
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    .line 928
    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    move-wide v0, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method private a()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 987
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    :goto_0
    if-eqz v0, :cond_0

    .line 988
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->a(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 993
    :cond_0
    return-void

    .line 987
    :cond_1
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0
.end method

.method private a(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1081
    if-eqz p2, :cond_0

    .line 1082
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->a()V

    .line 1084
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->b(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1087
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 1088
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->c(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1092
    return-void

    .line 1090
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->c(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private a(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1020
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->b()V

    .line 1023
    invoke-static {v0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private a(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1115
    move v2, v1

    .line 1118
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-gtz v3, :cond_2

    .line 1132
    if-nez v2, :cond_1

    .line 1133
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->c(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_1
    :goto_0
    return v0

    .line 1121
    :cond_2
    if-eqz v2, :cond_4

    .line 1122
    if-eqz p4, :cond_3

    .line 1123
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->a()V

    .line 1125
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->b(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    move v2, v0

    .line 1128
    :cond_4
    iget-object v3, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    .line 1129
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    if-nez v2, :cond_5

    .line 1133
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->c(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_5
    move v0, v1

    goto :goto_0

    .line 1132
    :catchall_0
    move-exception v0

    move v1, v2

    if-nez v1, :cond_6

    .line 1133
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->c(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_6
    throw v0
.end method

.method private b()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    :goto_0
    if-eqz v0, :cond_0

    .line 1033
    iget-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1032
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    .line 1035
    :cond_0
    return-void
.end method

.method private b(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1042
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->d:I

    .line 1043
    if-nez v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1046
    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1048
    :cond_0
    return-void
.end method

.method private b(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 1
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    .line 1096
    if-eqz p2, :cond_0

    .line 1097
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->a()V

    .line 1099
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->b(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1102
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 1103
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->c(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1107
    return-void

    .line 1105
    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->c(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    throw v0
.end method

.method private c(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 5
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1055
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->d:I

    .line 1056
    if-nez v0, :cond_0

    .line 1058
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    move-object v0, v1

    .line 1059
    :goto_0
    if-ne v2, p1, :cond_2

    .line 1060
    if-nez v0, :cond_1

    .line 1061
    iget-object v0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->c:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1065
    :goto_1
    iput-object v1, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1070
    :cond_0
    return-void

    .line 1063
    :cond_1
    iget-object v3, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object v3, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_1

    .line 1058
    :cond_2
    iget-object v0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->e:Lcom/google/common/util/concurrent/Monitor$Guard;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 372
    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    .line 389
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    .line 390
    iget-object v6, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 391
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Monitor;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    .line 396
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    move-wide v2, v4

    .line 399
    :goto_1
    :try_start_1
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v2, v3, v7}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 406
    if-eqz v1, :cond_0

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 402
    :try_start_2
    invoke-static {v8, v9, v4, v5}, Lcom/google/common/util/concurrent/Monitor;->a(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v2

    move v1, v0

    .line 403
    goto :goto_1

    .line 406
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_2

    .line 407
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    throw v0

    .line 406
    :catchall_1
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_2
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 2

    .prologue
    .line 614
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 615
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 618
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 622
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 624
    if-nez v1, :cond_1

    .line 625
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return v1

    .line 624
    :catchall_0
    move-exception v1

    .line 625
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .prologue
    .line 661
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 662
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 664
    :cond_0
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    const/4 v0, 0x0

    .line 673
    :cond_1
    :goto_0
    return v0

    .line 670
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 672
    if-nez v0, :cond_1

    .line 673
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    .line 673
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 2

    .prologue
    .line 638
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 642
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 646
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 648
    if-nez v1, :cond_1

    .line 649
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return v1

    .line 648
    :catchall_0
    move-exception v1

    .line 649
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .prologue
    .line 686
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 689
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 690
    invoke-virtual {v1, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    const/4 v0, 0x0

    .line 699
    :cond_1
    :goto_0
    return v0

    .line 696
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 698
    if-nez v0, :cond_1

    .line 699
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 698
    :catchall_0
    move-exception v0

    .line 699
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enterInterruptibly()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 381
    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 443
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 444
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 448
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    .line 449
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->a(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_1
    return-void

    .line 453
    :catchall_0
    move-exception v0

    .line 454
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 492
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 493
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 496
    :cond_0
    iget-object v5, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 497
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v8

    .line 501
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->a:Z

    if-nez v0, :cond_5

    .line 503
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 506
    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v0, v2

    .line 519
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v9

    if-nez v9, :cond_3

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    move-wide v0, v6

    .line 520
    :goto_0
    invoke-direct {p0, p1, v0, v1, v8}, Lcom/google/common/util/concurrent/Monitor;->a(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    :cond_3
    const/4 v0, 0x1

    .line 528
    :goto_1
    if-nez v0, :cond_4

    .line 535
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    move v4, v0

    :goto_2
    return v4

    .line 510
    :cond_5
    invoke-static {v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(J)J

    move-result-wide v0

    .line 511
    invoke-virtual {v5, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    .line 523
    :cond_6
    :try_start_1
    invoke-static {v0, v1, v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    goto :goto_0

    :cond_7
    move v0, v4

    .line 520
    goto :goto_1

    .line 528
    :catchall_0
    move-exception v0

    .line 531
    if-nez v8, :cond_8

    .line 532
    :try_start_2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 535
    :cond_8
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 464
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 467
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 468
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->b(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_1
    return-void

    .line 477
    :catchall_0
    move-exception v0

    .line 478
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 12

    .prologue
    .line 548
    invoke-static/range {p2 .. p4}, Lcom/google/common/util/concurrent/Monitor;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 549
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 550
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 552
    :cond_0
    iget-object v10, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 553
    const-wide/16 v2, 0x0

    .line 554
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    .line 555
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    .line 557
    :try_start_0
    iget-boolean v1, p0, Lcom/google/common/util/concurrent/Monitor;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-nez v1, :cond_2

    .line 558
    :cond_1
    invoke-static {v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-wide v2

    move-wide v8, v6

    .line 561
    :goto_0
    :try_start_1
    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v8, v9, v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    move v11, v0

    move-wide v0, v2

    move v3, v4

    move v2, v11

    .line 577
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 578
    const/4 v0, 0x1

    .line 596
    :goto_2
    if-nez v0, :cond_3

    .line 597
    :try_start_3
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 601
    :cond_3
    if-eqz v2, :cond_4

    .line 602
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_3
    return v0

    .line 564
    :cond_5
    const/4 v1, 0x0

    .line 601
    if-eqz v0, :cond_6

    .line 602
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    move v0, v1

    goto :goto_3

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const/4 v1, 0x1

    .line 568
    :try_start_4
    invoke-static {v2, v3, v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(JJ)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-wide v8

    move v0, v1

    .line 569
    goto :goto_0

    .line 581
    :cond_7
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_8

    .line 582
    :try_start_5
    invoke-static {v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(J)J

    move-result-wide v0

    move-wide v4, v6

    .line 587
    :goto_4
    invoke-direct {p0, p1, v4, v5, v3}, Lcom/google/common/util/concurrent/Monitor;->a(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v0

    goto :goto_2

    .line 585
    :cond_8
    invoke-static {v0, v1, v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(JJ)J
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    goto :goto_4

    .line 590
    :catch_1
    move-exception v2

    .line 591
    const/4 v2, 0x1

    .line 592
    const/4 v3, 0x0

    .line 593
    goto :goto_1

    .line 596
    :catchall_0
    move-exception v0

    .line 597
    :try_start_6
    invoke-virtual {v10}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 601
    :catchall_1
    move-exception v0

    move v1, v2

    :goto_5
    if-eqz v1, :cond_9

    .line 602
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    throw v0

    .line 601
    :catchall_2
    move-exception v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5
.end method

.method public getOccupiedDepth()I
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0
.end method

.method public getQueueLength()I
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    return v0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .locals 2

    .prologue
    .line 910
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 911
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 915
    :try_start_0
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result v0

    return v0
.end method

.method public hasQueuedThreads()Z
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result v0

    return v0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1

    .prologue
    .line 900
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFair()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/Monitor;->a:Z

    return v0
.end method

.method public isOccupied()Z
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    return v0
.end method

.method public isOccupiedByCurrentThread()Z
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public leave()V
    .locals 3

    .prologue
    .line 821
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 824
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 830
    return-void

    .line 828
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public tryEnter()Z
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    return v0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 2

    .prologue
    .line 713
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-eq v0, p0, :cond_0

    .line 714
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    .line 717
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_2

    .line 718
    const/4 v0, 0x0

    .line 726
    :cond_1
    :goto_0
    return v0

    .line 723
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 725
    if-nez v0, :cond_1

    .line 726
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 725
    :catchall_0
    move-exception v0

    .line 726
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 738
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 739
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 738
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 742
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->a(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 744
    :cond_2
    return-void
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 767
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 768
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    .line 769
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 768
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    :goto_1
    return v1

    .line 774
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 775
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 777
    :cond_3
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/common/util/concurrent/Monitor;->a(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v1

    goto :goto_1
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 751
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 752
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    .line 751
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 754
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_2

    .line 755
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->b(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    .line 757
    :cond_2
    return-void
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 787
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->a(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    .line 788
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->b:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/google/common/util/concurrent/Monitor;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    and-int/2addr v0, v3

    if-nez v0, :cond_1

    .line 789
    new-instance v0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {v0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw v0

    :cond_0
    move v0, v2

    .line 788
    goto :goto_0

    .line 791
    :cond_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    :cond_2
    :goto_1
    return v1

    .line 795
    :cond_3
    invoke-static {v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(J)J

    move-result-wide v8

    .line 796
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    move-wide v4, v6

    move v0, v1

    .line 800
    :goto_2
    :try_start_0
    invoke-direct {p0, p1, v4, v5, v0}, Lcom/google/common/util/concurrent/Monitor;->a(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 811
    if-eqz v3, :cond_2

    .line 812
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 801
    :catch_0
    move-exception v0

    .line 803
    :try_start_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 812
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 807
    :cond_4
    :try_start_2
    invoke-static {v8, v9, v6, v7}, Lcom/google/common/util/concurrent/Monitor;->a(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    move v3, v1

    move v0, v2

    .line 808
    goto :goto_2

    .line 811
    :catchall_0
    move-exception v0

    move v1, v3

    :goto_3
    if-eqz v1, :cond_5

    .line 812
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    throw v0

    .line 811
    :catchall_1
    move-exception v0

    goto :goto_3
.end method
