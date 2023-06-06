.class public abstract Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;
.super Ljavax/servlet/ServletOutputStream;
.source "SourceFile"


# instance fields
.field protected _bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

.field protected _closed:Z

.field protected _compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

.field protected _doNotCompress:Z

.field protected _out:Ljava/io/OutputStream;

.field protected final _response:Ljavax/servlet/http/HttpServletResponse;

.field protected final _vary:Ljava/lang/String;

.field protected final _wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/servlet/ServletOutputStream;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->a:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    .line 61
    invoke-virtual {p3}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    .line 62
    iput-object p4, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_vary:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    .line 66
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 306
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_4

    .line 312
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getBufferSize()I

    move-result v0

    if-le p1, v0, :cond_3

    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 316
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 317
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0

    .line 324
    :cond_3
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getBufferSize()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    goto :goto_0

    .line 328
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    .line 336
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 337
    cmp-long v2, v0, v2

    if-ltz v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 338
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    goto :goto_0

    .line 340
    :cond_5
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0
.end method


# virtual methods
.method protected addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getRequest()Ljavax/servlet/http/HttpServletRequest;

    move-result-object v0

    const-string v1, "javax.servlet.include.request_uri"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->flush()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_5

    .line 144
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 145
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 147
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v0

    int-to-long v0, v0

    .line 148
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->setContentLength(J)V

    .line 150
    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 151
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 161
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_6

    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 165
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    goto :goto_0

    .line 153
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_1

    .line 155
    :cond_5
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-nez v0, :cond_3

    .line 158
    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    goto :goto_1

    .line 164
    :cond_6
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_2
.end method

.method protected abstract createStream()Ljava/util/zip/DeflaterOutputStream;
.end method

.method public doCompress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-nez v0, :cond_2

    .line 238
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 243
    const-string v0, "Content-Encoding"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 246
    const-string v0, "Vary"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_vary:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->createStream()Ljava/util/zip/DeflaterOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    .line 248
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 250
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 256
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getETag()Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_2

    .line 258
    const-string v1, "ETag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_2
    :goto_0
    return-void

    .line 264
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    goto :goto_0
.end method

.method public doNotCompress(Z)V
    .locals 4

    .prologue
    .line 276
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Compressed output stream is already assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_5

    .line 280
    :cond_1
    if-eqz p1, :cond_2

    .line 281
    const-string v0, "Vary"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_vary:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getETag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 283
    const-string v0, "ETag"

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_doNotCompress:Z

    .line 287
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    .line 288
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->setContentLength()V

    .line 290
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_4

    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getCount()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 292
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 294
    :cond_5
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-nez v0, :cond_2

    .line 179
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 182
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 188
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    if-nez v0, :cond_2

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    .line 191
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 194
    :cond_2
    return-void

    .line 185
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 119
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getMinCompressSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doNotCompress(Z)V

    .line 125
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 126
    return-void

    .line 122
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->doCompress()V

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    return v0
.end method

.method protected newWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2

    .prologue
    .line 366
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

.method public resetBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_compressedOutputStream:Ljava/util/zip/DeflaterOutputStream;

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_closed:Z

    .line 77
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    .line 78
    iput-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 79
    iput-boolean v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_doNotCompress:Z

    .line 80
    return-void
.end method

.method public setBufferSize(I)V
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v0

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 87
    new-instance v0, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;-><init>(I)V

    .line 88
    iget-object v1, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->getBuf()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/ByteArrayOutputStream2;->write([BII)V

    .line 89
    iput-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_bOut:Lorg/eclipse/jetty/util/ByteArrayOutputStream2;

    .line 91
    :cond_0
    return-void
.end method

.method public setContentLength()V
    .locals 4

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_doNotCompress:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_wrapper:Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/gzip/CompressedResponseWrapper;->getContentLength()J

    move-result-wide v0

    .line 99
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 101
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 102
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    long-to-int v0, v0

    invoke-interface {v2, v0}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    const-string v3, "Content-Length"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_response:Ljavax/servlet/http/HttpServletResponse;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public write(I)V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->a(I)V

    .line 204
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 205
    return-void
.end method

.method public write([B)V
    .locals 1

    .prologue
    .line 214
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->a(I)V

    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 216
    return-void
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0, p3}, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->a(I)V

    .line 226
    iget-object v0, p0, Lorg/eclipse/jetty/http/gzip/AbstractCompressedStream;->_out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 227
    return-void
.end method
