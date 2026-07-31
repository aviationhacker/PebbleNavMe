.class public final Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Integer;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private e:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->a:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->b:Ljava/lang/Boolean;

    .line 49
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->c:Ljava/lang/Integer;

    .line 50
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 51
    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->e:Ljava/util/concurrent/ThreadFactory;

    .line 56
    return-void
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
    .locals 10

    .prologue
    .line 150
    iget-object v2, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->a:Ljava/lang/String;

    .line 151
    iget-object v4, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->b:Ljava/lang/Boolean;

    .line 152
    iget-object v5, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->c:Ljava/lang/Integer;

    .line 153
    iget-object v6, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 155
    iget-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->e:Ljava/util/concurrent/ThreadFactory;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->e:Ljava/util/concurrent/ThreadFactory;

    .line 159
    :goto_0
    if-eqz v2, :cond_1

    new-instance v3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x0

    invoke-direct {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 160
    :goto_1
    new-instance v0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;-><init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object v0

    .line 158
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    goto :goto_0

    .line 159
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->a(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public setDaemon(Z)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 1

    .prologue
    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->b:Ljava/lang/Boolean;

    .line 85
    return-object p0
.end method

.method public setNameFormat(Ljava/lang/String;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->a:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setPriority(I)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 8

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 98
    if-lt p1, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Thread priority (%s) must be >= %s"

    new-array v4, v6, [Ljava/lang/Object;

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 98
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 100
    if-gt p1, v7, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Thread priority (%s) must be <= %s"

    new-array v4, v6, [Ljava/lang/Object;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 100
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->c:Ljava/lang/Integer;

    .line 103
    return-object p0

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v0, v2

    .line 100
    goto :goto_1
.end method

.method public setThreadFactory(Ljava/util/concurrent/ThreadFactory;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 1

    .prologue
    .line 133
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->e:Ljava/util/concurrent/ThreadFactory;

    .line 134
    return-object p0
.end method

.method public setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)Lcom/google/common/util/concurrent/ThreadFactoryBuilder;
    .locals 1

    .prologue
    .line 116
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 117
    return-object p0
.end method
