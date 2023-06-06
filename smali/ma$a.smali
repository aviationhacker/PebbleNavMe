.class final Lma$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lma;


# direct methods
.method private constructor <init>(Lma;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lma$a;->a:Lma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lma;Lma$1;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lma$a;-><init>(Lma;)V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 178
    :goto_0
    const/4 v0, 0x0

    .line 179
    iget-object v1, p0, Lma$a;->a:Lma;

    invoke-static {v1}, Lma;->a(Lma;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v2, p0, Lma$a;->a:Lma;

    invoke-static {v2}, Lma;->b(Lma;)I

    move-result v2

    if-nez v2, :cond_0

    .line 182
    iget-object v0, p0, Lma$a;->a:Lma;

    invoke-static {v0}, Lma;->c(Lma;)Ljava/util/Deque;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 184
    :cond_0
    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lma$a;->a:Lma;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lma;->a(Lma;Z)Z

    .line 186
    monitor-exit v1

    return-void

    .line 188
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    invoke-static {}, Lma;->a()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x23

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Exception while executing runnable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 164
    :try_start_0
    invoke-direct {p0}, Lma$a;->a()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    iget-object v1, p0, Lma$a;->a:Lma;

    invoke-static {v1}, Lma;->a(Lma;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 167
    :try_start_1
    iget-object v2, p0, Lma$a;->a:Lma;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lma;->a(Lma;Z)Z

    .line 168
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    throw v0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
