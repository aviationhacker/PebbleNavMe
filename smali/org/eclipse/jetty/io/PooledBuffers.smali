.class public Lorg/eclipse/jetty/io/PooledBuffers;
.super Lorg/eclipse/jetty/io/AbstractBuffers;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:I

.field private final f:Z

.field private final g:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 38
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jetty/io/AbstractBuffers;-><init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->a:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->b:Ljava/util/Queue;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->c:Ljava/util/Queue;

    .line 42
    if-ne p1, p5, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->f:Z

    .line 43
    if-ne p3, p5, :cond_1

    :goto_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->g:Z

    .line 44
    iput p6, p0, Lorg/eclipse/jetty/io/PooledBuffers;->e:I

    .line 45
    return-void

    :cond_0
    move v0, v2

    .line 42
    goto :goto_0

    :cond_1
    move v1, v2

    .line 43
    goto :goto_1
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 62
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->newBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getHeaderSize()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->g:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getBufferSize()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 81
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 83
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    goto :goto_1

    .line 87
    :cond_2
    if-nez v0, :cond_3

    .line 88
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->newBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;

    .line 51
    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/PooledBuffers;->newHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2

    .prologue
    .line 97
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 98
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isVolatile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lorg/eclipse/jetty/io/PooledBuffers;->e:I

    if-le v0, v1, :cond_2

    .line 102
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->isHeader(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/PooledBuffers;->isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 110
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/io/PooledBuffers;->c:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string v0, "%s [%d/%d@%d,%d/%d@%d,%d/%d@-]"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->a:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_headerSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->b:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->_bufferSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->c:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lorg/eclipse/jetty/io/PooledBuffers;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
