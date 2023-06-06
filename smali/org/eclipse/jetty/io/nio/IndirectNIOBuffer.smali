.class public Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;
.super Lorg/eclipse/jetty/io/ByteArrayBuffer;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/io/nio/NIOBuffer;


# instance fields
.field protected final _buf:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(IIZ)V

    .line 33
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 34
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 35
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-eqz p2, :cond_0

    move v4, v2

    :goto_0
    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>([BIIIZ)V

    .line 42
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 41
    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    .line 44
    :cond_1
    iput-object p1, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_get:I

    .line 46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_put:I

    .line 47
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 48
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 49
    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;->_buf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
