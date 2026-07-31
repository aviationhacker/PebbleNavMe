.class public abstract Lgf;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgf;->b:J

    .line 16
    iput p1, p0, Lgf;->a:I

    .line 17
    return-void
.end method

.method private final a(Z)V
    .locals 6

    .prologue
    .line 62
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget v0, p0, Lgf;->count:I

    iget v1, p0, Lgf;->a:I

    if-lt v0, v1, :cond_3

    .line 63
    :cond_1
    iget v0, p0, Lgf;->a:I

    .line 64
    iget v1, p0, Lgf;->count:I

    if-le v0, v1, :cond_2

    .line 65
    iget v0, p0, Lgf;->count:I

    .line 66
    :cond_2
    if-nez v0, :cond_4

    .line 75
    :cond_3
    return-void

    .line 68
    :cond_4
    iget-object v1, p0, Lgf;->buf:[B

    invoke-virtual {p0, v1, v0}, Lgf;->flushBuffer([BI)V

    .line 69
    iget-wide v2, p0, Lgf;->b:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lgf;->b:J

    .line 70
    iget v1, p0, Lgf;->count:I

    sub-int/2addr v1, v0

    .line 71
    iput v1, p0, Lgf;->count:I

    .line 72
    if-lez v1, :cond_0

    .line 73
    iget-object v2, p0, Lgf;->buf:[B

    iget-object v3, p0, Lgf;->buf:[B

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Lgf;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 26
    return-void

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 31
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lgf;->a(Z)V

    .line 32
    return-void
.end method

.method protected abstract flushBuffer([BI)V
.end method

.method public getCountFlushed()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lgf;->b:J

    return-wide v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSize(I)V
    .locals 3

    .prologue
    .line 80
    iput p1, p0, Lgf;->a:I

    .line 81
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgf;->count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgf;->a(Z)V

    .line 83
    return-void
.end method

.method public final write(I)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgf;->a(Z)V

    .line 50
    return-void
.end method

.method public final write([B)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgf;->a(Z)V

    .line 44
    return-void
.end method

.method public final write([BII)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lgf;->a(Z)V

    .line 38
    return-void
.end method
