.class public final Lcom/google/common/io/FileBackedOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/FileBackedOutputStream$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Lcom/google/common/io/ByteSource;

.field private d:Ljava/io/OutputStream;

.field private e:Lcom/google/common/io/FileBackedOutputStream$a;

.field private f:Ljava/io/File;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/io/FileBackedOutputStream;-><init>(IZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 91
    iput p1, p0, Lcom/google/common/io/FileBackedOutputStream;->a:I

    .line 92
    iput-boolean p2, p0, Lcom/google/common/io/FileBackedOutputStream;->b:Z

    .line 93
    new-instance v0, Lcom/google/common/io/FileBackedOutputStream$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/io/FileBackedOutputStream$a;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    .line 94
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    .line 96
    if-eqz p2, :cond_0

    .line 97
    new-instance v0, Lcom/google/common/io/FileBackedOutputStream$1;

    invoke-direct {v0, p0}, Lcom/google/common/io/FileBackedOutputStream$1;-><init>(Lcom/google/common/io/FileBackedOutputStream;)V

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->c:Lcom/google/common/io/ByteSource;

    .line 119
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/google/common/io/FileBackedOutputStream$2;

    invoke-direct {v0, p0}, Lcom/google/common/io/FileBackedOutputStream$2;-><init>(Lcom/google/common/io/FileBackedOutputStream;)V

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->c:Lcom/google/common/io/ByteSource;

    goto :goto_0
.end method

.method private declared-synchronized a()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    :goto_0
    monitor-exit p0

    return-object v0

    .line 135
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    .line 136
    invoke-virtual {v1}, Lcom/google/common/io/FileBackedOutputStream$a;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v3}, Lcom/google/common/io/FileBackedOutputStream$a;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/google/common/io/FileBackedOutputStream;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/io/FileBackedOutputStream;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 195
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream$a;->b()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/common/io/FileBackedOutputStream;->a:I

    if-le v0, v1, :cond_1

    .line 196
    const-string v0, "FileBackedOutputStream"

    invoke-static {v0, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 197
    iget-boolean v1, p0, Lcom/google/common/io/FileBackedOutputStream;->b:Z

    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 202
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 203
    iget-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v2}, Lcom/google/common/io/FileBackedOutputStream$a;->a()[B

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v4}, Lcom/google/common/io/FileBackedOutputStream$a;->b()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 204
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 207
    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    .line 208
    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 209
    iput-object v5, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    .line 211
    :cond_1
    return-void
.end method


# virtual methods
.method public asByteSource()Lcom/google/common/io/ByteSource;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->c:Lcom/google/common/io/ByteSource;

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 4

    .prologue
    .line 149
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/io/FileBackedOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/google/common/io/FileBackedOutputStream$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/io/FileBackedOutputStream$a;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    iput-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    .line 157
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 160
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 161
    new-instance v1, Ljava/io/IOException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 154
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v0}, Lcom/google/common/io/FileBackedOutputStream$a;->reset()V

    goto :goto_0

    .line 151
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    if-nez v1, :cond_1

    .line 152
    new-instance v1, Lcom/google/common/io/FileBackedOutputStream$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/common/io/FileBackedOutputStream$a;-><init>(Lcom/google/common/io/FileBackedOutputStream$1;)V

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    iput-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    .line 157
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 159
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/common/io/FileBackedOutputStream;->f:Ljava/io/File;

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    new-instance v0, Ljava/io/IOException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/google/common/io/FileBackedOutputStream;->e:Lcom/google/common/io/FileBackedOutputStream$a;

    invoke-virtual {v1}, Lcom/google/common/io/FileBackedOutputStream$a;->reset()V

    goto :goto_1

    .line 163
    :cond_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/common/io/FileBackedOutputStream;->a(I)V

    .line 169
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 2

    .prologue
    .line 173
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/io/FileBackedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/google/common/io/FileBackedOutputStream;->a(I)V

    .line 179
    iget-object v0, p0, Lcom/google/common/io/FileBackedOutputStream;->d:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
