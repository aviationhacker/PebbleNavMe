.class Lgx$m$1;
.super Lcom/google/common/cache/CacheLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgx$m;->get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/CacheLoader",
        "<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Callable;

.field final synthetic b:Lgx$m;


# direct methods
.method constructor <init>(Lgx$m;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 4790
    iput-object p1, p0, Lgx$m$1;->b:Lgx$m;

    iput-object p2, p0, Lgx$m$1;->a:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Lcom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4793
    iget-object v0, p0, Lgx$m$1;->a:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
