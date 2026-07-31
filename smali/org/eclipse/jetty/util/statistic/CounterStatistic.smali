.class public Lorg/eclipse/jetty/util/statistic/CounterStatistic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final _curr:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _max:Ljava/util/concurrent/atomic/AtomicLong;

.field protected final _total:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 5

    .prologue
    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 61
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 63
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v2, v0, v1}, Lorg/eclipse/jetty/util/Atomics;->updateMax(Ljava/util/concurrent/atomic/AtomicLong;J)V

    .line 64
    return-void
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->add(J)V

    .line 89
    return-void
.end method

.method public getCurrent()J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()J
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotal()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public increment()V
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->add(J)V

    .line 81
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 43
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->reset(J)V

    .line 44
    return-void
.end method

.method public reset(J)V
    .locals 5

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_max:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_curr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->_total:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 52
    return-void
.end method

.method public subtract(J)V
    .locals 3

    .prologue
    .line 72
    neg-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/util/statistic/CounterStatistic;->add(J)V

    .line 73
    return-void
.end method
