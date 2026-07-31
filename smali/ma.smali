.class public final Lma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lma$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field

.field private d:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field

.field private e:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "internalLock"
    .end annotation
.end field

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lma;

    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lma;->a:Ljava/util/logging/Logger;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lma;->c:Ljava/util/Deque;

    .line 58
    iput-boolean v1, p0, Lma;->d:Z

    .line 60
    iput v1, p0, Lma;->e:I

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lma;->f:Ljava/lang/Object;

    .line 66
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lma;->b:Ljava/util/concurrent/Executor;

    .line 67
    return-void
.end method

.method static synthetic a(Lma;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lma;->f:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lma;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic a(Lma;Z)Z
    .locals 0

    .prologue
    .line 49
    iput-boolean p1, p0, Lma;->d:Z

    return p1
.end method

.method static synthetic b(Lma;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lma;->e:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lma;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v0, p0, Lma;->c:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 132
    monitor-exit v1

    .line 155
    :goto_0
    return-void

    .line 134
    :cond_0
    iget v0, p0, Lma;->e:I

    if-lez v0, :cond_1

    .line 135
    monitor-exit v1

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lma;->d:Z

    if-eqz v0, :cond_2

    .line 138
    monitor-exit v1

    goto :goto_0

    .line 140
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lma;->d:Z

    .line 141
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v0, p0, Lma;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lma$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lma$a;-><init>(Lma;Lma$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 147
    :catchall_1
    move-exception v0

    .line 150
    iget-object v1, p0, Lma;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lma;->d:Z

    .line 152
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method static synthetic c(Lma;)Ljava/util/Deque;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lma;->c:Ljava/util/Deque;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lma;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lma;->c:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 80
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-direct {p0}, Lma;->b()V

    .line 82
    return-void

    .line 80
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
