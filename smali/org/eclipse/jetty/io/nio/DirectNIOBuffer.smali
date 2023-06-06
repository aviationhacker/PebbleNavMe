.class public Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;
.super Lorg/eclipse/jetty/io/AbstractBuffer;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/NIOBuffer;


# static fields
.field private static final b:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field protected final _buf:Ljava/nio/ByteBuffer;

.field private c:Ljava/nio/channels/ReadableByteChannel;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/nio/channels/WritableByteChannel;

.field private f:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->b:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 56
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 58
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 81
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 83
    :try_start_2
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 84
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_access:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 90
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 91
    :cond_0
    :goto_0
    invoke-static {v6}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 93
    return-void

    .line 90
    :catch_0
    move-exception v0

    sget-object v1, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 91
    :cond_1
    :goto_2
    invoke-static {v2}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw v0

    .line 90
    :catch_1
    move-exception v1

    sget-object v3, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->b:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v6

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v6

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_1
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Lorg/eclipse/jetty/io/AbstractBuffer;-><init>(IZ)V

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 66
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setGetIndex(I)V

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public array()[B
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public peek(I)B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method public peek(I[BII)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 121
    .line 122
    add-int v1, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 124
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    .line 125
    if-nez v1, :cond_2

    .line 141
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p4

    .line 129
    :cond_2
    if-ltz v1, :cond_0

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2, p3, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v0, v1

    .line 141
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public poke(ILorg/eclipse/jetty/io/Buffer;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v0

    .line 159
    if-eqz v0, :cond_1

    .line 161
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->poke(I[BII)I

    move-result v0

    .line 194
    :goto_0
    return v0

    .line 165
    :cond_1
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->buffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 166
    instance-of v1, v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    if-eqz v1, :cond_2

    .line 168
    check-cast v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    iget-object v0, v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 169
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_4

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 173
    :goto_1
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 176
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 177
    if-le v1, v0, :cond_3

    .line 180
    :goto_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 181
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 183
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 190
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    .line 194
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/io/AbstractBuffer;->poke(ILorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_1
.end method

.method public poke(I[BII)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    add-int v0, p1, p4

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 207
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    sub-int v1, v0, p1

    .line 208
    if-gez v1, :cond_3

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v1, p4

    .line 214
    :cond_3
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 218
    if-le v1, v0, :cond_5

    .line 220
    :goto_0
    if-lez v0, :cond_4

    .line 221
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2, p3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public poke(IB)V
    .locals 3

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "READONLY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index<0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v0

    if-le p1, v0, :cond_2

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index>capacity(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 151
    return-void
.end method

.method public readFrom(Ljava/io/InputStream;I)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->d:Ljava/io/InputStream;

    if-eq p1, v0, :cond_1

    .line 242
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    .line 243
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->d:Ljava/io/InputStream;

    .line 246
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->space()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 247
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->space()I

    move-result p2

    .line 248
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v5

    move v6, v3

    move v4, p2

    move v0, v3

    move v1, v3

    .line 254
    :goto_0
    if-ge v0, p2, :cond_4

    .line 256
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 257
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    add-int v2, v5, v4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 258
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 259
    if-gez v1, :cond_6

    .line 261
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    .line 262
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->d:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_4
    :goto_1
    if-gez v1, :cond_9

    if-nez v0, :cond_9

    .line 279
    const/4 v0, -0x1

    .line 291
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_5

    .line 293
    iput-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    .line 294
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->d:Ljava/io/InputStream;

    .line 296
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_2
    return v0

    .line 265
    :cond_6
    if-lez v1, :cond_8

    .line 267
    add-int/2addr v5, v1

    .line 268
    add-int v2, v0, v1

    .line 269
    sub-int v0, v4, v1

    .line 270
    :try_start_1
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->setPutIndex(I)V

    move v4, v0

    move v0, v2

    move v2, v3

    .line 275
    :cond_7
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-lez v6, :cond_4

    move v6, v2

    goto :goto_0

    .line 273
    :cond_8
    add-int/lit8 v2, v6, 0x1

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    goto :goto_1

    .line 291
    :cond_9
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_a

    .line 293
    iput-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    .line 294
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->d:Ljava/io/InputStream;

    .line 296
    :cond_a
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 285
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    .line 286
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->d:Ljava/io/InputStream;

    .line 287
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_b

    .line 293
    iput-object v8, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->c:Ljava/nio/channels/ReadableByteChannel;

    .line 294
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->d:Ljava/io/InputStream;

    .line 296
    :cond_b
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 297
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->f:Ljava/io/OutputStream;

    if-eq p1, v0, :cond_1

    .line 307
    :cond_0
    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    .line 308
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->f:Ljava/io/OutputStream;

    .line 311
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    monitor-enter v3

    move v2, v1

    .line 316
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->getIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->putIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 320
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    iget-object v4, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 321
    if-gez v0, :cond_4

    .line 341
    :cond_2
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->f:Ljava/io/OutputStream;

    .line 346
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 349
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 350
    return-void

    .line 323
    :cond_4
    if-lez v0, :cond_6

    .line 325
    :try_start_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->skip(I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    :cond_5
    move v2, v0

    .line 330
    goto :goto_0

    .line 328
    :cond_6
    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x1

    if-le v2, v4, :cond_5

    goto :goto_1

    .line 333
    :catch_0
    move-exception v0

    .line 335
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    .line 336
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->f:Ljava/io/OutputStream;

    .line 337
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_7

    .line 343
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->e:Ljava/nio/channels/WritableByteChannel;

    .line 344
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->f:Ljava/io/OutputStream;

    .line 346
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 347
    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v0

    .line 349
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
