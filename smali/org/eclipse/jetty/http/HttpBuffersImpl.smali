.class public Lorg/eclipse/jetty/http/HttpBuffersImpl;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jetty/http/HttpBuffers;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Lorg/eclipse/jetty/io/Buffers$Type;

.field private g:Lorg/eclipse/jetty/io/Buffers$Type;

.field private h:Lorg/eclipse/jetty/io/Buffers$Type;

.field private i:Lorg/eclipse/jetty/io/Buffers$Type;

.field private j:Lorg/eclipse/jetty/io/Buffers;

.field private k:Lorg/eclipse/jetty/io/Buffers;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1800

    .line 49
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 32
    const/16 v0, 0x4000

    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->a:I

    .line 33
    iput v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->b:I

    .line 34
    const v0, 0x8000

    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->c:I

    .line 35
    iput v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->d:I

    .line 36
    const/16 v0, 0x400

    iput v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->e:I

    .line 38
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->f:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 39
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->g:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 40
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 41
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->BYTE_ARRAY:Lorg/eclipse/jetty/io/Buffers$Type;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->i:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 50
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->g:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->b:I

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->f:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v3, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->a:I

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->f:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->j:Lorg/eclipse/jetty/io/Buffers;

    .line 201
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->i:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->d:I

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    iget v3, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->c:I

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpBuffersImpl;->getMaxBuffers()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->k:Lorg/eclipse/jetty/io/Buffers;

    .line 202
    invoke-super {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;->doStart()V

    .line 203
    return-void
.end method

.method protected doStop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->j:Lorg/eclipse/jetty/io/Buffers;

    .line 210
    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->k:Lorg/eclipse/jetty/io/Buffers;

    .line 211
    return-void
.end method

.method public getMaxBuffers()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->e:I

    return v0
.end method

.method public getRequestBufferSize()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->a:I

    return v0
.end method

.method public getRequestBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->f:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->j:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getRequestHeaderSize()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->b:I

    return v0
.end method

.method public getRequestHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->g:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getResponseBufferSize()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->c:I

    return v0
.end method

.method public getResponseBufferType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->k:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getResponseHeaderSize()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->d:I

    return v0
.end method

.method public getResponseHeaderType()Lorg/eclipse/jetty/io/Buffers$Type;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->i:Lorg/eclipse/jetty/io/Buffers$Type;

    return-object v0
.end method

.method public setMaxBuffers(I)V
    .locals 0

    .prologue
    .line 226
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->e:I

    .line 227
    return-void
.end method

.method public setRequestBufferSize(I)V
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->a:I

    .line 66
    return-void
.end method

.method public setRequestBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->f:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 130
    return-void
.end method

.method public setRequestBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->j:Lorg/eclipse/jetty/io/Buffers;

    .line 186
    return-void
.end method

.method public setRequestHeaderSize(I)V
    .locals 0

    .prologue
    .line 81
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->b:I

    .line 82
    return-void
.end method

.method public setRequestHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->g:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 146
    return-void
.end method

.method public setResponseBufferSize(I)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->c:I

    .line 98
    return-void
.end method

.method public setResponseBufferType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->h:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 162
    return-void
.end method

.method public setResponseBuffers(Lorg/eclipse/jetty/io/Buffers;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->k:Lorg/eclipse/jetty/io/Buffers;

    .line 194
    return-void
.end method

.method public setResponseHeaderSize(I)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->d:I

    .line 114
    return-void
.end method

.method public setResponseHeaderType(Lorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->i:Lorg/eclipse/jetty/io/Buffers$Type;

    .line 178
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->j:Lorg/eclipse/jetty/io/Buffers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpBuffersImpl;->k:Lorg/eclipse/jetty/io/Buffers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
