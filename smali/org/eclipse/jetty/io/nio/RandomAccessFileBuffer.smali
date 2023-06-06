.class public Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/Buffer;


# static fields
.field static final synthetic e:Z


# instance fields
.field final b:Ljava/io/RandomAccessFile;

.field final c:Ljava/nio/channels/FileChannel;

.field final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4

    .prologue
    .line 40
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 41
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    .line 43
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->c:Ljava/nio/channels/FileChannel;

    .line 44
    const v0, 0x7fffffff

    iput v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->d:I

    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 53
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->e:Z

    if-nez v0, :cond_0

    int-to-long v0, p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 55
    :cond_1
    iput p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->d:I

    .line 56
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->c:Ljava/nio/channels/FileChannel;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 4

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 66
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->e:Z

    if-nez v0, :cond_0

    int-to-long v0, p2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 67
    :cond_0
    sget-boolean v0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 68
    :cond_1
    iput p2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->d:I

    .line 69
    new-instance v1, Ljava/io/RandomAccessFile;

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    const-string v0, "rw"

    :goto_0
    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    .line 70
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->c:Ljava/nio/channels/FileChannel;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setGetIndex(I)V

    .line 72
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->setPutIndex(I)V

    .line 73
    return-void

    .line 69
    :cond_2
    const-string v0, "r"

    goto :goto_0
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->d:I

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractBuffer;->clear()V

    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 94
    monitor-exit v1

    .line 100
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public peek()B
    .locals 6

    .prologue
    .line 106
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 110
    :try_start_0
    iget v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_get:I

    int-to-long v2, v0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    iget v2, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->_get:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public peek(I)B
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 128
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    return v0

    .line 130
    :catch_0
    move-exception v0

    .line 132
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public peek(I[BII)I
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :try_start_1
    monitor-exit v1

    return v0

    .line 146
    :catch_0
    move-exception v0

    .line 148
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public poke(I[BII)I
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 177
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3, p4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    monitor-exit v1

    return p4

    .line 180
    :catch_0
    move-exception v0

    .line 182
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public poke(IB)V
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 160
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :try_start_1
    monitor-exit v1

    .line 167
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;II)I
    .locals 8

    .prologue
    .line 190
    iget-object v7, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->b:Ljava/io/RandomAccessFile;

    monitor-enter v7

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/RandomAccessFileBuffer;->c:Ljava/nio/channels/FileChannel;

    int-to-long v2, p2

    int-to-long v4, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit v7

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
