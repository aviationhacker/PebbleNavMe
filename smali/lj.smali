.class public final Llj;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/ByteSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Llj;->a:Ljava/util/Iterator;

    .line 47
    invoke-direct {p0}, Llj;->a()V

    .line 48
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Llj;->close()V

    .line 65
    iget-object v0, p0, Llj;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Llj;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/ByteSource;

    invoke-virtual {v0}, Lcom/google/common/io/ByteSource;->openStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Llj;->b:Ljava/io/InputStream;

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Llj;->b:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Llj;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Llj;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    iget-object v0, p0, Llj;->b:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iput-object v1, p0, Llj;->b:Ljava/io/InputStream;

    .line 58
    :cond_0
    return-void

    .line 55
    :catchall_0
    move-exception v0

    iput-object v1, p0, Llj;->b:Ljava/io/InputStream;

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 82
    iget-object v1, p0, Llj;->b:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 90
    :goto_0
    return v0

    .line 85
    :cond_0
    iget-object v1, p0, Llj;->b:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 86
    if-ne v1, v0, :cond_1

    .line 87
    invoke-direct {p0}, Llj;->a()V

    .line 88
    invoke-virtual {p0}, Llj;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 90
    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1    # [B
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 94
    iget-object v1, p0, Llj;->b:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v1, p0, Llj;->b:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 98
    if-ne v1, v0, :cond_1

    .line 99
    invoke-direct {p0}, Llj;->a()V

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Llj;->read([BII)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 102
    goto :goto_0
.end method

.method public skip(J)J
    .locals 9

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v2, 0x0

    .line 106
    iget-object v0, p0, Llj;->b:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_2

    :cond_0
    move-wide v0, v2

    .line 116
    :cond_1
    :goto_0
    return-wide v0

    .line 109
    :cond_2
    iget-object v0, p0, Llj;->b:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 110
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 113
    invoke-virtual {p0}, Llj;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    move-wide v0, v2

    .line 114
    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Llj;->b:Ljava/io/InputStream;

    sub-long v2, p1, v6

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_0
.end method
