.class public Lorg/eclipse/jetty/util/thread/Timeout$Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/thread/Timeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation


# instance fields
.field a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

.field c:Lorg/eclipse/jetty/util/thread/Timeout;

.field d:J

.field e:J

.field f:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->e:J

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->f:Z

    .line 265
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 266
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v1, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 292
    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->f:Z

    .line 294
    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a()V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/jetty/util/thread/Timeout$Task;Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 0

    .prologue
    .line 253
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    return-void
.end method

.method private b(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 300
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p1, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 302
    iget-object v1, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object v0, v1, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 303
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    iput-object p0, v0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->b:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    .line 304
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->c:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 345
    if-eqz v0, :cond_0

    .line 347
    invoke-static {v0}, Lorg/eclipse/jetty/util/thread/Timeout;->b(Lorg/eclipse/jetty/util/thread/Timeout;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 349
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a()V

    .line 350
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->e:J

    .line 351
    monitor-exit v1

    .line 353
    :cond_0
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected expire()V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public expired()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method public getAge()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 277
    iget-object v2, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->c:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 278
    if-eqz v2, :cond_0

    .line 280
    invoke-static {v2}, Lorg/eclipse/jetty/util/thread/Timeout;->a(Lorg/eclipse/jetty/util/thread/Timeout;)J

    move-result-wide v2

    .line 281
    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->e:J

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 282
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->e:J

    sub-long v0, v2, v0

    .line 284
    :cond_0
    return-wide v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->e:J

    return-wide v0
.end method

.method public isExpired()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->f:Z

    return v0
.end method

.method public isScheduled()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->a:Lorg/eclipse/jetty/util/thread/Timeout$Task;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reschedule()V
    .locals 4

    .prologue
    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->c:Lorg/eclipse/jetty/util/thread/Timeout;

    .line 334
    if-eqz v0, :cond_0

    .line 335
    iget-wide v2, p0, Lorg/eclipse/jetty/util/thread/Timeout$Task;->d:J

    invoke-virtual {v0, p0, v2, v3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 336
    :cond_0
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;)V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p1, p0}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;)V

    .line 314
    return-void
.end method

.method public schedule(Lorg/eclipse/jetty/util/thread/Timeout;J)V
    .locals 0

    .prologue
    .line 323
    invoke-virtual {p1, p0, p2, p3}, Lorg/eclipse/jetty/util/thread/Timeout;->schedule(Lorg/eclipse/jetty/util/thread/Timeout$Task;J)V

    .line 324
    return-void
.end method
