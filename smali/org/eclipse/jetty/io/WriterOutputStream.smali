.class public Lorg/eclipse/jetty/io/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field protected final _encoding:Ljava/lang/String;

.field protected final _writer:Ljava/io/Writer;

.field private final a:[B


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->a:[B

    .line 49
    iput-object p1, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->a:[B

    .line 42
    iput-object p1, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    .line 43
    iput-object p2, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 59
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 67
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->a:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 97
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->a:[B

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/WriterOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write([B)V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/jetty/io/WriterOutputStream;->_encoding:Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
