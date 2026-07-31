.class public final Llh;
.super Ljava/io/Reader;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Llh;->a:Ljava/lang/CharSequence;

    .line 45
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Llh;->a:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reader closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Llh;->c()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Llh;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Llh;->b:I

    sub-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Llh;->a:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    monitor-enter p0

    if-ltz p1, :cond_0

    :goto_0
    :try_start_0
    const-string v1, "readAheadLimit (%s) may not be negative"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0}, Llh;->a()V

    .line 119
    iget v0, p0, Llh;->b:I

    iput v0, p0, Llh;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    monitor-exit p0

    return-void

    :cond_0
    move v0, v1

    .line 117
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read()I
    .locals 3

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llh;->a()V

    .line 78
    invoke-direct {p0}, Llh;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llh;->a:Ljava/lang/CharSequence;

    iget v1, p0, Llh;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Llh;->b:I

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(Ljava/nio/CharBuffer;)I
    .locals 5

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Llh;->a()V

    .line 65
    invoke-direct {p0}, Llh;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 66
    const/4 v0, -0x1

    .line 72
    :cond_0
    monitor-exit p0

    return v0

    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    invoke-direct {p0}, Llh;->c()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 69
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    iget-object v2, p0, Llh;->a:Ljava/lang/CharSequence;

    iget v3, p0, Llh;->b:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Llh;->b:I

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([CII)I
    .locals 6

    .prologue
    .line 83
    monitor-enter p0

    add-int v0, p2, p3

    :try_start_0
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 84
    invoke-direct {p0}, Llh;->a()V

    .line 85
    invoke-direct {p0}, Llh;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 86
    const/4 v0, -0x1

    .line 92
    :cond_0
    monitor-exit p0

    return v0

    .line 88
    :cond_1
    :try_start_1
    invoke-direct {p0}, Llh;->c()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 89
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 90
    add-int v2, p2, v1

    iget-object v3, p0, Llh;->a:Ljava/lang/CharSequence;

    iget v4, p0, Llh;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Llh;->b:I

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ready()Z
    .locals 1

    .prologue
    .line 106
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llh;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llh;->a()V

    .line 125
    iget v0, p0, Llh;->c:I

    iput v0, p0, Llh;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skip(J)J
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    :goto_0
    :try_start_0
    const-string v1, "n (%s) may not be negative"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    invoke-direct {p0}, Llh;->a()V

    .line 99
    invoke-direct {p0}, Llh;->c()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 100
    iget v1, p0, Llh;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Llh;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
