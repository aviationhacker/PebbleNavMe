.class public abstract Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;
.super Ljavax/servlet/http/HttpServletResponseWrapper;
.source "SourceFile"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_MIN_COMPRESS_SIZE:I = 0x100


# instance fields
.field protected _request:Ljavax/servlet/http/HttpServletRequest;

.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:Ljava/io/PrintWriter;

.field private e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 45
    const/16 v0, 0x2000

    iput v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->b:I

    .line 46
    const/16 v0, 0x100

    iput v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->c:I

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    .line 60
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 357
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 359
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 360
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    long-to-int v0, v0

    invoke-super {p0, v0}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentLength(I)V

    .line 364
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 365
    const-string v0, "ETag"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->f:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_1
    return-void

    .line 362
    :cond_2
    const-string v0, "Content-Length"

    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v0, v1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 214
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    .line 217
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 224
    :cond_2
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_0

    .line 232
    :cond_3
    const-string v0, "etag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 233
    iput-object p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->f:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_4
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-nez v0, :cond_0

    const-string v0, "etag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x1

    .line 406
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->finish()V

    .line 350
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->a()V

    goto :goto_0
.end method

.method public flushBuffer()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->flush()V

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    goto :goto_0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->b:I

    return v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    return-wide v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMinCompressSize()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->c:I

    return v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-nez v0, :cond_3

    .line 418
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    .line 426
    :goto_0
    return-object v0

    .line 421
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 426
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    goto :goto_0

    .line 423
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    if-eqz v0, :cond_2

    .line 424
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getWriter() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRequest()Ljavax/servlet/http/HttpServletRequest;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    if-nez v0, :cond_3

    .line 438
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOutputStream() called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 441
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-eqz v0, :cond_2

    .line 442
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 444
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->_request:Ljavax/servlet/http/HttpServletRequest;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 445
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    .line 447
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method protected abstract newCompressedStream(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 478
    if-nez p2, :cond_0

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    goto :goto_0
.end method

.method public noCompression()V
    .locals 2

    .prologue
    .line 322
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->a()V

    .line 324
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    .line 325
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 329
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_1
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 333
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->reset()V

    .line 261
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->resetBuffer()V

    .line 263
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    .line 264
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    .line 266
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    .line 267
    return-void
.end method

.method public resetBuffer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 276
    invoke-super {p0}, Ljavax/servlet/http/HttpServletResponseWrapper;->resetBuffer()V

    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->resetBuffer()V

    .line 279
    :cond_0
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->d:Ljava/io/PrintWriter;

    .line 280
    iput-object v1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    .line 281
    return-void
.end method

.method public sendError(I)V
    .locals 0

    .prologue
    .line 301
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 302
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(I)V

    .line 303
    return-void
.end method

.method public sendError(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 291
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendError(ILjava/lang/String;)V

    .line 292
    return-void
.end method

.method public sendRedirect(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->resetBuffer()V

    .line 313
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->sendRedirect(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .prologue
    .line 109
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->b:I

    .line 110
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setBufferSize(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public setContentLength(I)V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentLength(I)V

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    goto :goto_0
.end method

.method protected setContentLength(J)V
    .locals 7

    .prologue
    .line 190
    iput-wide p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    .line 196
    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 198
    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    long-to-int v1, v2

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    goto :goto_0

    .line 202
    :cond_2
    const-string v1, "Content-Length"

    iget-wide v2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setContentType(Ljava/lang/String;)V

    .line 132
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-nez v0, :cond_4

    .line 134
    if-eqz p1, :cond_0

    .line 136
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 137
    if-lez v0, :cond_0

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->a:Ljava/util/Set;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const-string v0, "gzip"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->a:Ljava/util/Set;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->a:Ljava/util/Set;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    .line 148
    :cond_4
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 376
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->h:Z

    if-eqz v0, :cond_1

    .line 377
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    goto :goto_0

    .line 382
    :cond_2
    const-string v0, "content-type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 384
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_3
    const-string v0, "content-encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    goto :goto_0

    .line 394
    :cond_4
    const-string v0, "etag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    iput-object p2, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->f:Ljava/lang/String;

    goto :goto_0

    .line 397
    :cond_5
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setIntHeader(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 457
    const-string v0, "content-length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    int-to-long v0, p2

    iput-wide v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->g:J

    .line 460
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->e:Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setIntHeader(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMimeTypes(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->a:Ljava/util/Set;

    .line 100
    return-void
.end method

.method public setMinCompressSize(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->c:I

    .line 121
    return-void
.end method

.method public setStatus(I)V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(I)V

    .line 170
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    .line 172
    :cond_1
    return-void
.end method

.method public setStatus(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Ljavax/servlet/http/HttpServletResponseWrapper;->setStatus(ILjava/lang/String;)V

    .line 158
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_1

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->noCompression()V

    .line 160
    :cond_1
    return-void
.end method
