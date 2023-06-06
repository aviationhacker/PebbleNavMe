.class public Llk;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/CharSource;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/io/CharSource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 38
    iput-object p1, p0, Llk;->a:Ljava/util/Iterator;

    .line 39
    invoke-direct {p0}, Llk;->a()V

    .line 40
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Llk;->close()V

    .line 47
    iget-object v0, p0, Llk;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Llk;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/CharSource;

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Llk;->b:Ljava/io/Reader;

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Llk;->b:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 85
    :try_start_0
    iget-object v0, p0, Llk;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iput-object v1, p0, Llk;->b:Ljava/io/Reader;

    .line 90
    :cond_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    iput-object v1, p0, Llk;->b:Ljava/io/Reader;

    throw v0
.end method

.method public read([CII)I
    .locals 2
    .param p1    # [C
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, -0x1

    .line 53
    iget-object v1, p0, Llk;->b:Ljava/io/Reader;

    if-nez v1, :cond_0

    .line 61
    :goto_0
    return v0

    .line 56
    :cond_0
    iget-object v1, p0, Llk;->b:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 57
    if-ne v1, v0, :cond_1

    .line 58
    invoke-direct {p0}, Llk;->a()V

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Llk;->read([CII)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Llk;->b:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llk;->b:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public skip(J)J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "n is negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 66
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 67
    :goto_1
    iget-object v0, p0, Llk;->b:Ljava/io/Reader;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Llk;->b:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v0

    .line 69
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 75
    :goto_2
    return-wide v0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 72
    :cond_1
    invoke-direct {p0}, Llk;->a()V

    goto :goto_1

    :cond_2
    move-wide v0, v2

    .line 75
    goto :goto_2
.end method
