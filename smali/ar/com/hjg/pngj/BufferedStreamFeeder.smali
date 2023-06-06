.class public Lar/com/hjg/pngj/BufferedStreamFeeder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[B

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;-><init>(Ljava/io/InputStream;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->e:Z

    .line 18
    iput-boolean v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->f:Z

    .line 19
    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->g:Z

    .line 29
    iput-object p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->a:Ljava/io/InputStream;

    .line 30
    if-ge p2, v1, :cond_0

    const/16 p2, 0x2000

    :cond_0
    new-array v0, p2, [B

    iput-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->b:[B

    .line 31
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->e:Z

    .line 140
    iput-object v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->b:[B

    .line 141
    iput v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    .line 142
    iput v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->d:I

    .line 143
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->f:Z

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :cond_0
    :goto_0
    iput-object v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->a:Ljava/io/InputStream;

    .line 151
    return-void

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public feed(Lar/com/hjg/pngj/IBytesConsumer;)I
    .locals 1

    .prologue
    .line 48
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;I)I

    move-result v0

    return v0
.end method

.method public feed(Lar/com/hjg/pngj/IBytesConsumer;I)I
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    if-nez v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->refillBuffer()V

    .line 60
    :cond_0
    if-lez p2, :cond_2

    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    if-ge p2, v1, :cond_2

    .line 61
    :goto_0
    if-lez p2, :cond_1

    .line 62
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->b:[B

    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->d:I

    invoke-interface {p1, v0, v1, p2}, Lar/com/hjg/pngj/IBytesConsumer;->consume([BII)I

    move-result v0

    .line 63
    if-lez v0, :cond_1

    .line 64
    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->d:I

    add-int/2addr v1, v0

    iput v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->d:I

    .line 65
    iget v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    .line 68
    :cond_1
    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    iget-boolean v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->g:Z

    if-eqz v1, :cond_3

    .line 69
    new-instance v0, Lar/com/hjg/pngj/PngjInputException;

    const-string v1, "failed feed bytes"

    invoke-direct {v0, v1}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    iget p2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    goto :goto_0

    .line 70
    :cond_3
    return v0
.end method

.method public feedFixed(Lar/com/hjg/pngj/IBytesConsumer;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 81
    .line 82
    :goto_0
    if-lez p2, :cond_0

    .line 83
    invoke-virtual {p0, p1, p2}, Lar/com/hjg/pngj/BufferedStreamFeeder;->feed(Lar/com/hjg/pngj/IBytesConsumer;I)I

    move-result v1

    .line 84
    if-ge v1, v0, :cond_1

    .line 85
    const/4 v0, 0x0

    .line 88
    :cond_0
    return v0

    .line 86
    :cond_1
    sub-int/2addr p2, v1

    .line 87
    goto :goto_0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public hasMoreToFeed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    iget-boolean v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->e:Z

    if-eqz v2, :cond_2

    .line 116
    iget v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    if-lez v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 116
    goto :goto_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->refillBuffer()V

    .line 119
    iget v2, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isEof()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->e:Z

    return v0
.end method

.method protected refillBuffer()V
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->e:Z

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->d:I

    .line 100
    iget-object v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->a:Ljava/io/InputStream;

    iget-object v1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->b:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    .line 101
    iget v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->c:I

    if-gez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lar/com/hjg/pngj/BufferedStreamFeeder;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    new-instance v1, Lar/com/hjg/pngj/PngjInputException;

    invoke-direct {v1, v0}, Lar/com/hjg/pngj/PngjInputException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setCloseStream(Z)V
    .locals 0

    .prologue
    .line 126
    iput-boolean p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->f:Z

    .line 127
    return-void
.end method

.method public setFailIfNoFeed(Z)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->g:Z

    .line 179
    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 160
    iput-object p1, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->a:Ljava/io/InputStream;

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lar/com/hjg/pngj/BufferedStreamFeeder;->e:Z

    .line 162
    return-void
.end method
