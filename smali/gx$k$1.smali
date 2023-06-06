.class Lgx$k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgx$k;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgx$k;


# direct methods
.method constructor <init>(Lgx$k;)V
    .locals 0

    .prologue
    .line 3551
    iput-object p1, p0, Lgx$k$1;->a:Lgx$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3554
    iget-object v0, p0, Lgx$k$1;->a:Lgx$k;

    invoke-virtual {v0, p1}, Lgx$k;->b(Ljava/lang/Object;)Z

    .line 3555
    return-object p1
.end method
