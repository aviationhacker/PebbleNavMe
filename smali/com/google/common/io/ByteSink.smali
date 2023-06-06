.class public abstract Lcom/google/common/io/ByteSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/ByteSink$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asCharSink(Ljava/nio/charset/Charset;)Lcom/google/common/io/CharSink;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/google/common/io/ByteSink$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/io/ByteSink$a;-><init>(Lcom/google/common/io/ByteSink;Ljava/nio/charset/Charset;Lcom/google/common/io/ByteSink$1;)V

    return-object v0
.end method

.method public openBufferedStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 86
    instance-of v1, v0, Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/BufferedOutputStream;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public abstract openStream()Ljava/io/OutputStream;
.end method

.method public write([B)V
    .locals 2

    .prologue
    .line 97
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 102
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    .line 109
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    throw v0
.end method

.method public writeFrom(Ljava/io/InputStream;)J
    .locals 4

    .prologue
    .line 119
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {}, Lcom/google/common/io/Closer;->create()Lcom/google/common/io/Closer;

    move-result-object v1

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/ByteSink;->openStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->register(Ljava/io/Closeable;)Ljava/io/Closeable;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 124
    invoke-static {p1, v0}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v2

    .line 125
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    return-wide v2

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/google/common/io/Closer;->rethrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/google/common/io/Closer;->close()V

    throw v0
.end method
