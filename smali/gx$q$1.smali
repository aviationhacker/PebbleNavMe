.class Lgx$q$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgx$q;->b(Ljava/lang/Object;ILgx$k;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:I

.field final synthetic c:Lgx$k;

.field final synthetic d:Lcom/google/common/util/concurrent/ListenableFuture;

.field final synthetic e:Lgx$q;


# direct methods
.method constructor <init>(Lgx$q;Ljava/lang/Object;ILgx$k;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .prologue
    .line 2331
    iput-object p1, p0, Lgx$q$1;->e:Lgx$q;

    iput-object p2, p0, Lgx$q$1;->a:Ljava/lang/Object;

    iput p3, p0, Lgx$q$1;->b:I

    iput-object p4, p0, Lgx$q$1;->c:Lgx$k;

    iput-object p5, p0, Lgx$q$1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2335
    :try_start_0
    iget-object v0, p0, Lgx$q$1;->e:Lgx$q;

    iget-object v1, p0, Lgx$q$1;->a:Ljava/lang/Object;

    iget v2, p0, Lgx$q$1;->b:I

    iget-object v3, p0, Lgx$q$1;->c:Lgx$k;

    iget-object v4, p0, Lgx$q$1;->d:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1, v2, v3, v4}, Lgx$q;->a(Ljava/lang/Object;ILgx$k;Lcom/google/common/util/concurrent/ListenableFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2340
    :goto_0
    return-void

    .line 2336
    :catch_0
    move-exception v0

    .line 2337
    sget-object v1, Lgx;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown during refresh"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2338
    iget-object v1, p0, Lgx$q$1;->c:Lgx$k;

    invoke-virtual {v1, v0}, Lgx$k;->a(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method
