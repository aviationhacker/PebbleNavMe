.class public abstract Lcom/google/common/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractFuture$e;,
        Lcom/google/common/util/concurrent/AbstractFuture$h;,
        Lcom/google/common/util/concurrent/AbstractFuture$i;,
        Lcom/google/common/util/concurrent/AbstractFuture$a;,
        Lcom/google/common/util/concurrent/AbstractFuture$f;,
        Lcom/google/common/util/concurrent/AbstractFuture$b;,
        Lcom/google/common/util/concurrent/AbstractFuture$c;,
        Lcom/google/common/util/concurrent/AbstractFuture$d;,
        Lcom/google/common/util/concurrent/AbstractFuture$j;,
        Lcom/google/common/util/concurrent/AbstractFuture$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ListenableFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Lcom/google/common/util/concurrent/AbstractFuture$a;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/google/common/util/concurrent/AbstractFuture$j;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/google/common/util/concurrent/AbstractFuture$j;",
            "Lcom/google/common/util/concurrent/AbstractFuture$j;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Lcom/google/common/util/concurrent/AbstractFuture$j;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Lcom/google/common/util/concurrent/AbstractFuture$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Lcom/google/common/util/concurrent/AbstractFuture;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/lang/Object;


# instance fields
.field private volatile i:Ljava/lang/Object;

.field private volatile j:Lcom/google/common/util/concurrent/AbstractFuture$d;

.field private volatile k:Lcom/google/common/util/concurrent/AbstractFuture$j;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 96
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/util/logging/Logger;

    .line 112
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture$i;->values()[Lcom/google/common/util/concurrent/AbstractFuture$i;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$i;->a()Lcom/google/common/util/concurrent/AbstractFuture$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :goto_0
    if-nez v0, :cond_0

    .line 119
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture$j;

    const-class v2, Ljava/lang/Thread;

    const-string v3, "b"

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 120
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture$j;

    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$j;

    const-string v3, "c"

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 121
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$j;

    const-string v3, "k"

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 122
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v2, Lcom/google/common/util/concurrent/AbstractFuture$d;

    const-string v3, "j"

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 123
    const-class v0, Lcom/google/common/util/concurrent/AbstractFuture;

    const-class v2, Ljava/lang/Object;

    const-string v3, "i"

    invoke-static {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 124
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$e;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$e;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    .line 132
    :goto_1
    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    .line 136
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->h:Ljava/lang/Object;

    return-void

    .line 113
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 126
    :cond_0
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 127
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 128
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 129
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 130
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 469
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$b;

    if-eqz v0, :cond_0

    .line 470
    const-string v0, "Task was cancelled."

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$b;

    iget-object v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$b;->b:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    throw v0

    .line 471
    :cond_0
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$c;

    if-eqz v0, :cond_1

    .line 472
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture$c;

    iget-object v1, p1, Lcom/google/common/util/concurrent/AbstractFuture$c;->b:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 473
    :cond_1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->h:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    .line 474
    const/4 p1, 0x0

    .line 478
    :cond_2
    return-object p1
.end method

.method static final a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 827
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CancellationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 829
    return-object v0
.end method

.method private a(Lcom/google/common/util/concurrent/AbstractFuture$j;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 186
    iput-object v3, p1, Lcom/google/common/util/concurrent/AbstractFuture$j;->b:Ljava/lang/Thread;

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->k:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 190
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Lcom/google/common/util/concurrent/AbstractFuture$j;

    if-ne v0, v1, :cond_5

    .line 210
    :cond_1
    return-void

    .line 194
    :goto_1
    if-eqz v0, :cond_1

    .line 195
    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$j;->c:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 196
    iget-object v4, v0, Lcom/google/common/util/concurrent/AbstractFuture$j;->b:Ljava/lang/Thread;

    if-eqz v4, :cond_2

    :goto_2
    move-object v1, v0

    move-object v0, v2

    .line 206
    goto :goto_1

    .line 198
    :cond_2
    if-eqz v1, :cond_4

    .line 199
    iput-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$j;->c:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 200
    iget-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$j;->b:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 203
    :cond_4
    sget-object v4, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v4, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    move-object v1, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 8

    .prologue
    .line 815
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 820
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x39

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "RuntimeException while executing runnable "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with executor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 706
    instance-of v0, p1, Lcom/google/common/util/concurrent/AbstractFuture$g;

    if-eqz v0, :cond_1

    .line 711
    check-cast p1, Lcom/google/common/util/concurrent/AbstractFuture;

    iget-object v0, p1, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 727
    :cond_0
    :goto_0
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v2, p0, p2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 728
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->i()V

    .line 729
    const/4 v0, 0x1

    .line 731
    :goto_1
    return v0

    .line 715
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    if-nez v0, :cond_0

    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->h:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    move-object v2, v0

    .line 718
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 719
    :catch_1
    move-exception v0

    move-object v2, v0

    .line 720
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$b;-><init>(ZLjava/lang/Throwable;)V

    goto :goto_0

    .line 721
    :catch_2
    move-exception v0

    move-object v2, v0

    .line 722
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    invoke-direct {v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 731
    goto :goto_1
.end method

.method static synthetic c()Lcom/google/common/util/concurrent/AbstractFuture$a;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    return-object v0
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method static synthetic g()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->j()Lcom/google/common/util/concurrent/AbstractFuture$j;

    move-result-object v0

    .line 737
    :goto_0
    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractFuture$j;->a()V

    .line 738
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$j;->c:Lcom/google/common/util/concurrent/AbstractFuture$j;

    goto :goto_0

    .line 742
    :cond_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->k()Lcom/google/common/util/concurrent/AbstractFuture$d;

    move-result-object v1

    .line 743
    const/4 v0, 0x0

    .line 744
    :goto_1
    if-eqz v1, :cond_1

    .line 746
    iget-object v2, v1, Lcom/google/common/util/concurrent/AbstractFuture$d;->d:Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 747
    iput-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$d;->d:Lcom/google/common/util/concurrent/AbstractFuture$d;

    move-object v0, v1

    move-object v1, v2

    .line 749
    goto :goto_1

    .line 750
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 751
    iget-object v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$d;->b:Ljava/lang/Runnable;

    iget-object v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$d;->c:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 750
    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$d;->d:Lcom/google/common/util/concurrent/AbstractFuture$d;

    goto :goto_2

    .line 758
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->a()V

    .line 759
    return-void
.end method

.method private j()Lcom/google/common/util/concurrent/AbstractFuture$j;
    .locals 3

    .prologue
    .line 795
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->k:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 796
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Lcom/google/common/util/concurrent/AbstractFuture$j;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    return-object v0
.end method

.method private k()Lcom/google/common/util/concurrent/AbstractFuture$d;
    .locals 3

    .prologue
    .line 804
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->j:Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 805
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$d;->a:Lcom/google/common/util/concurrent/AbstractFuture$d;

    invoke-virtual {v1, p0, v0, v2}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;Lcom/google/common/util/concurrent/AbstractFuture$d;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method final a(Ljava/util/concurrent/Future;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Future;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 786
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->wasInterrupted()Z

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 789
    :cond_0
    return-void

    .line 786
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 3

    .prologue
    .line 578
    const-string v0, "Runnable was null."

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v0, "Executor was null."

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->j:Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 581
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$d;->a:Lcom/google/common/util/concurrent/AbstractFuture$d;

    if-eq v0, v1, :cond_2

    .line 582
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$d;

    invoke-direct {v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture$d;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 584
    :cond_0
    iput-object v0, v1, Lcom/google/common/util/concurrent/AbstractFuture$d;->d:Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 585
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$d;Lcom/google/common/util/concurrent/AbstractFuture$d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    :goto_0
    return-void

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->j:Lcom/google/common/util/concurrent/AbstractFuture$d;

    .line 589
    sget-object v2, Lcom/google/common/util/concurrent/AbstractFuture$d;->a:Lcom/google/common/util/concurrent/AbstractFuture$d;

    if-ne v0, v2, :cond_0

    .line 593
    :cond_2
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->b:Ljava/lang/Throwable;

    return-object v0
.end method

.method public cancel(Z)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 504
    if-nez v3, :cond_3

    move v0, v1

    :goto_0
    instance-of v4, v3, Lcom/google/common/util/concurrent/AbstractFuture$f;

    or-int/2addr v0, v4

    if-eqz v0, :cond_5

    .line 509
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$b;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->newCancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v4, p1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$b;-><init>(ZLjava/lang/Throwable;)V

    move-object v0, v3

    .line 511
    :cond_0
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v3, p0, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 514
    if-eqz p1, :cond_1

    .line 515
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->interruptTask()V

    .line 517
    :cond_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->i()V

    .line 518
    instance-of v2, v0, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-eqz v2, :cond_2

    .line 521
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$f;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$f;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 531
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    .line 504
    goto :goto_0

    .line 526
    :cond_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 529
    instance-of v3, v0, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    .line 531
    goto :goto_1
.end method

.method public get()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 426
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 429
    :cond_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 430
    if-eqz v4, :cond_1

    move v0, v1

    :goto_0
    instance-of v3, v4, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-nez v3, :cond_2

    move v3, v1

    :goto_1
    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    .line 431
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 460
    :goto_2
    return-object v0

    :cond_1
    move v0, v2

    .line 430
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->k:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 434
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Lcom/google/common/util/concurrent/AbstractFuture$j;

    if-eq v0, v3, :cond_a

    .line 435
    new-instance v4, Lcom/google/common/util/concurrent/AbstractFuture$j;

    invoke-direct {v4}, Lcom/google/common/util/concurrent/AbstractFuture$j;-><init>()V

    .line 437
    :cond_4
    invoke-virtual {v4, v0}, Lcom/google/common/util/concurrent/AbstractFuture$j;->a(Lcom/google/common/util/concurrent/AbstractFuture$j;)V

    .line 438
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v3, p0, v0, v4}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 441
    :cond_5
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 443
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 444
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Lcom/google/common/util/concurrent/AbstractFuture$j;)V

    .line 445
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 449
    :cond_6
    iget-object v5, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 450
    if-eqz v5, :cond_7

    move v0, v1

    :goto_3
    instance-of v3, v5, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-nez v3, :cond_8

    move v3, v1

    :goto_4
    and-int/2addr v0, v3

    if-eqz v0, :cond_5

    .line 451
    invoke-direct {p0, v5}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    :cond_7
    move v0, v2

    .line 450
    goto :goto_3

    :cond_8
    move v3, v2

    goto :goto_4

    .line 455
    :cond_9
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->k:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 456
    sget-object v3, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Lcom/google/common/util/concurrent/AbstractFuture$j;

    if-ne v0, v3, :cond_4

    .line 460
    :cond_a
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 347
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 348
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 351
    :cond_0
    iget-object v4, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 352
    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    instance-of v1, v4, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 353
    invoke-direct {p0, v4}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    :goto_2
    return-object v0

    .line 352
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 356
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v4, v0

    .line 357
    :goto_3
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-ltz v0, :cond_12

    .line 358
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->k:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 359
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Lcom/google/common/util/concurrent/AbstractFuture$j;

    if-eq v0, v1, :cond_c

    .line 360
    new-instance v6, Lcom/google/common/util/concurrent/AbstractFuture$j;

    invoke-direct {v6}, Lcom/google/common/util/concurrent/AbstractFuture$j;-><init>()V

    .line 362
    :cond_4
    invoke-virtual {v6, v0}, Lcom/google/common/util/concurrent/AbstractFuture$j;->a(Lcom/google/common/util/concurrent/AbstractFuture$j;)V

    .line 363
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v1, p0, v0, v6}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$j;Lcom/google/common/util/concurrent/AbstractFuture$j;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-wide v0, v2

    .line 365
    :cond_5
    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    .line 367
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    invoke-direct {p0, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Lcom/google/common/util/concurrent/AbstractFuture$j;)V

    .line 369
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 356
    :cond_6
    const-wide/16 v0, 0x0

    move-wide v4, v0

    goto :goto_3

    .line 374
    :cond_7
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 375
    if-eqz v2, :cond_8

    const/4 v0, 0x1

    :goto_4
    instance-of v1, v2, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    .line 376
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 375
    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 380
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    .line 381
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    .line 383
    invoke-direct {p0, v6}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Lcom/google/common/util/concurrent/AbstractFuture$j;)V

    .line 397
    :goto_6
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    .line 398
    iget-object v2, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 399
    if-eqz v2, :cond_d

    const/4 v0, 0x1

    :goto_7
    instance-of v1, v2, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_8
    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    .line 400
    invoke-direct {p0, v2}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 388
    :cond_b
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->k:Lcom/google/common/util/concurrent/AbstractFuture$j;

    .line 389
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture$j;->a:Lcom/google/common/util/concurrent/AbstractFuture$j;

    if-ne v0, v1, :cond_4

    .line 393
    :cond_c
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_2

    .line 399
    :cond_d
    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    goto :goto_8

    .line 402
    :cond_f
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 403
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 405
    :cond_10
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    goto :goto_6

    .line 407
    :cond_11
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0

    :cond_12
    move-wide v0, v2

    goto :goto_6
.end method

.method public interruptTask()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 491
    instance-of v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$b;

    return v0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    iget-object v3, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 485
    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    instance-of v3, v3, Lcom/google/common/util/concurrent/AbstractFuture$f;

    if-nez v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected newCancellationCause()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .prologue
    .line 545
    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Future.cancel() was called."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 609
    if-nez p1, :cond_0

    sget-object p1, Lcom/google/common/util/concurrent/AbstractFuture;->h:Ljava/lang/Object;

    .line 610
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->i()V

    .line 612
    const/4 v0, 0x1

    .line 614
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 3

    .prologue
    .line 630
    new-instance v1, Lcom/google/common/util/concurrent/AbstractFuture$c;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(Ljava/lang/Throwable;)V

    .line 631
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;->i()V

    .line 633
    const/4 v0, 0x1

    .line 635
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<+TV;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 660
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 662
    if-nez v0, :cond_2

    .line 663
    invoke-interface {p1}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)Z

    move-result v0

    .line 695
    :goto_0
    return v0

    .line 666
    :cond_0
    new-instance v2, Lcom/google/common/util/concurrent/AbstractFuture$f;

    invoke-direct {v2, p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture$f;-><init>(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 667
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    :try_start_0
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 678
    :try_start_1
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$c;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractFuture$c;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 683
    :goto_2
    sget-object v1, Lcom/google/common/util/concurrent/AbstractFuture;->b:Lcom/google/common/util/concurrent/AbstractFuture$a;

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/AbstractFuture$a;->a(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 679
    :catch_1
    move-exception v0

    .line 680
    sget-object v0, Lcom/google/common/util/concurrent/AbstractFuture$c;->a:Lcom/google/common/util/concurrent/AbstractFuture$c;

    goto :goto_2

    .line 687
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 691
    :cond_2
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$b;

    if-eqz v1, :cond_3

    .line 693
    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$b;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$b;->a:Z

    invoke-interface {p1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 695
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final wasInterrupted()Z
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractFuture;->i:Ljava/lang/Object;

    .line 568
    instance-of v1, v0, Lcom/google/common/util/concurrent/AbstractFuture$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/common/util/concurrent/AbstractFuture$b;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractFuture$b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
