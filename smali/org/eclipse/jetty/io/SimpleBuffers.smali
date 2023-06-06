.class public Lorg/eclipse/jetty/io/SimpleBuffers;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffers;


# instance fields
.field final a:Lorg/eclipse/jetty/io/Buffer;

.field final b:Lorg/eclipse/jetty/io/Buffer;

.field c:Z

.field d:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    .line 41
    iput-object p2, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    .line 42
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 47
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->d:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->d:Z

    .line 52
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    .line 63
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->c:Z

    if-nez v0, :cond_1

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->c:Z

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 61
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 62
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    goto :goto_0

    .line 63
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/SimpleBuffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    monitor-exit p0

    .line 99
    :goto_0
    return-object v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/SimpleBuffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    monitor-exit p0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->c:Z

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->c:Z

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    .line 86
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->d:Z

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->d:Z

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    monitor-exit p0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 84
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    .line 85
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0

    goto :goto_0

    .line 86
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    .line 108
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->a:Lorg/eclipse/jetty/io/Buffer;

    if-ne p1, v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->c:Z

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->b:Lorg/eclipse/jetty/io/Buffer;

    if-ne p1, v0, :cond_1

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/SimpleBuffers;->d:Z

    .line 113
    :cond_1
    monitor-exit p0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
