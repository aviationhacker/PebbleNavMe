.class public Lorg/eclipse/jetty/util/statistic/SampleStatistic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _count:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _max:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _total:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public getCount()J
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()J
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMean()D
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    long-to-double v0, v0

    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStdDev()D
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->getVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVariance()D
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 100
    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 102
    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    long-to-double v0, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v4

    sub-long/2addr v2, v6

    long-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 55
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 56
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 57
    return-void
.end method

.method public set(J)V
    .locals 9

    .prologue
    const-wide/16 v6, 0xa

    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 62
    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_count:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    .line 64
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 66
    mul-long/2addr v0, v6

    div-long/2addr v0, v2

    .line 67
    mul-long v2, p1, v6

    sub-long v0, v2, v0

    .line 68
    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_totalVariance100:Ljava/util/concurrent/atomic/AtomicLong;

    mul-long/2addr v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/SampleStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lorg/eclipse/jetty/util/Atomics;->updateMax(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 72
    return-void
.end method
