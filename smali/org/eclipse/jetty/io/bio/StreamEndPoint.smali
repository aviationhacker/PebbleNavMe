.class public Lorg/eclipse/jetty/io/bio/StreamEndPoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/EndPoint;


# instance fields
.field d:Ljava/io/InputStream;

.field e:Ljava/io/OutputStream;

.field f:I

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    .line 44
    iput-object p2, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    .line 45
    return-void
.end method


# virtual methods
.method public blockReadable(J)Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public blockWritable(J)Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 109
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 112
    :cond_1
    iput-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    .line 113
    return-void
.end method

.method public fill(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 126
    iget-boolean v2, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->g:Z

    if-eqz v2, :cond_0

    .line 149
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    if-nez v2, :cond_1

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    .line 132
    if-gtz v2, :cond_3

    .line 134
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "FULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    invoke-interface {p1, v1, v2}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v1

    .line 142
    if-gez v1, :cond_4

    .line 143
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->shutdownInput()V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 148
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->idleExpired()V

    goto :goto_0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;)I
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->h:Z

    if-eqz v0, :cond_1

    .line 159
    const/4 v0, -0x1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 161
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 163
    if-lez v0, :cond_3

    .line 164
    iget-object v1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    invoke-interface {p1, v1}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    .line 165
    :cond_3
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto :goto_0
.end method

.method public flush(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)I
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 177
    if-eqz p1, :cond_1

    .line 179
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 180
    if-lez v1, :cond_1

    .line 182
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v0

    .line 184
    if-ge v0, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    if-eqz p2, :cond_3

    .line 191
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    .line 192
    if-lez v2, :cond_3

    .line 194
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 195
    if-gez v1, :cond_2

    .line 196
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 197
    :cond_2
    add-int/2addr v0, v1

    .line 198
    if-lt v1, v2, :cond_0

    .line 203
    :cond_3
    if-eqz p3, :cond_0

    .line 205
    invoke-interface {p3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 206
    if-lez v1, :cond_0

    .line 208
    invoke-virtual {p0, p3}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->flush(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 209
    if-gez v1, :cond_4

    .line 210
    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 211
    :cond_4
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 311
    :cond_0
    return-void
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->f:I

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getRemoteAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getTransport()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method protected idleExpired()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 119
    :cond_0
    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->g:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->h:Z

    return v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    .line 290
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 0

    .prologue
    .line 322
    iput p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->f:I

    .line 323
    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    .line 302
    return-void
.end method

.method public shutdownInput()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->g:Z

    .line 93
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 95
    :cond_0
    return-void
.end method

.method public shutdownOutput()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->h:Z

    .line 81
    iget-boolean v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->e:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 83
    :cond_0
    return-void
.end method
