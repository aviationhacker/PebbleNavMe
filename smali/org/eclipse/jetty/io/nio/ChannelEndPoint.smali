.class public Lorg/eclipse/jetty/io/nio/ChannelEndPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/EndPoint;


# static fields
.field private static final a:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _channel:Ljava/nio/channels/ByteChannel;

.field protected final _gather2:[Ljava/nio/ByteBuffer;

.field protected final _local:Ljava/net/InetSocketAddress;

.field protected volatile _maxIdleTime:I

.field protected final _remote:Ljava/net/InetSocketAddress;

.field protected final _socket:Ljava/net/Socket;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ByteChannel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    .line 58
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    .line 59
    instance-of v0, p1, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 60
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 63
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    .line 70
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 59
    goto :goto_0

    .line 68
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/nio/channels/ByteChannel;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    .line 74
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    .line 75
    iput p2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    .line 76
    instance-of v0, p1, Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    .line 80
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    iget v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 87
    :goto_1
    return-void

    :cond_0
    move-object v0, v1

    .line 76
    goto :goto_0

    .line 85
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    goto :goto_1
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 209
    sget-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "close {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->close()V

    .line 211
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 218
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->b:Z

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return v1

    .line 220
    :cond_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 222
    instance-of v3, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v3, :cond_5

    .line 224
    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 225
    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 230
    :try_start_0
    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0, v3}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 239
    :try_start_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-interface {p1, v2}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 240
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 242
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 244
    if-gez v0, :cond_2

    :try_start_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->shutdownInput()V

    .line 248
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v2}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    move v1, v0

    .line 275
    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/eclipse/jetty/io/Buffer;->setPutIndex(I)V

    .line 240
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    .line 242
    :catchall_1
    move-exception v0

    :goto_2
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 252
    :catch_0
    move-exception v0

    .line 254
    :goto_3
    sget-object v3, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Exception while filling"

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    :try_start_6
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 258
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v3}, Ljava/nio/channels/ByteChannel;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 265
    :cond_3
    :goto_4
    if-lez v2, :cond_4

    .line 266
    throw v0

    .line 260
    :catch_1
    move-exception v3

    .line 262
    sget-object v4, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4
    move v0, v1

    .line 267
    goto :goto_1

    .line 272
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :catch_2
    move-exception v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    goto :goto_3

    .line 242
    :catchall_2
    move-exception v2

    move-object v5, v2

    move v2, v0

    move-object v0, v5

    goto :goto_2
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 4

    .prologue
    .line 283
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 285
    instance-of v1, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v1, :cond_1

    .line 287
    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    .line 288
    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 291
    :try_start_0
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 293
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 297
    if-lez v0, :cond_0

    .line 298
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 318
    :cond_0
    :goto_0
    return v0

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    throw v0

    .line 301
    :cond_1
    instance-of v1, v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;

    if-eqz v1, :cond_2

    .line 303
    check-cast v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->writeTo(Ljava/nio/channels/WritableByteChannel;II)I

    move-result v0

    .line 304
    if-lez v0, :cond_0

    .line 305
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    goto :goto_0

    .line 307
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    if-eqz v0, :cond_3

    .line 309
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 311
    if-lez v0, :cond_0

    .line 312
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    goto :goto_0

    .line 316
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not Implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 326
    const/4 v2, 0x0

    .line 328
    if-nez p1, :cond_1

    move-object v0, v1

    .line 329
    :goto_0
    if-nez p2, :cond_2

    .line 331
    :goto_1
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v3, v3, Ljava/nio/channels/GatheringByteChannel;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v1, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    if-eqz v3, :cond_3

    .line 335
    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lorg/eclipse/jetty/io/nio/NIOBuffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/nio/NIOBuffer;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, p1, v2, p2, v0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 355
    :cond_0
    :goto_2
    return v0

    .line 328
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    goto :goto_1

    .line 340
    :cond_3
    if-eqz p1, :cond_8

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 341
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 344
    :goto_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 346
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    :cond_5
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_6
    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-nez v1, :cond_0

    :cond_7
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 352
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 491
    return-void
.end method

.method protected gatheringFlush(Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;Lorg/eclipse/jetty/io/Buffer;Ljava/nio/ByteBuffer;)I
    .locals 4

    .prologue
    .line 362
    monitor-enter p0

    .line 365
    :try_start_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 366
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 367
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 368
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 369
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 370
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 372
    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 373
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/GatheringByteChannel;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_gather2:[Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 378
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 379
    if-le v0, v1, :cond_1

    .line 381
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 382
    sub-int v1, v0, v1

    invoke-interface {p3, v1}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 388
    :cond_0
    :goto_0
    monitor-exit p0

    .line 389
    return v0

    .line 384
    :cond_1
    if-lez v0, :cond_0

    .line 386
    invoke-interface {p1, v0}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChannel()Ljava/nio/channels/ByteChannel;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 409
    const/4 v0, 0x0

    .line 412
    :goto_0
    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 411
    :cond_1
    const-string v0, "0.0.0.0"

    goto :goto_0

    .line 412
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    .line 425
    :goto_0
    return-object v0

    .line 423
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    :cond_1
    const-string v0, "0.0.0.0"

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    .line 438
    :goto_0
    return v0

    .line 436
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    .line 437
    const/4 v0, -0x1

    goto :goto_0

    .line 438
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_local:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    return v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 447
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-object v0

    .line 449
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 451
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 460
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v1, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-object v0

    .line 462
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_0

    .line 464
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-nez v0, :cond_0

    .line 474
    const/4 v0, 0x0

    .line 475
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_remote:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    instance-of v0, v0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxIdleTime(I)V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    if-eq p1, v0, :cond_0

    .line 506
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-lez p1, :cond_1

    move v0, p1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 507
    :cond_0
    iput p1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_maxIdleTime:I

    .line 508
    return-void

    .line 506
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final shutdownChannelInput()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    sget-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "ishut {}"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    iput-boolean v4, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->b:Z

    .line 120
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 126
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->c:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 133
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->c:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->c:Z

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    :cond_2
    throw v0
.end method

.method protected final shutdownChannelOutput()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    sget-object v0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "oshut {}"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iput-boolean v4, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->c:Z

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_channel:Ljava/nio/channels/ByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->_socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->b:Z

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    sget-object v1, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->a:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->b:Z

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->b:Z

    if-eqz v1, :cond_2

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->close()V

    :cond_2
    throw v0
.end method

.method public shutdownInput()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->shutdownChannelInput()V

    .line 153
    return-void
.end method

.method public shutdownOutput()V
    .locals 0

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/ChannelEndPoint;->shutdownChannelOutput()V

    .line 192
    return-void
.end method
