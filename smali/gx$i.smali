.class final Lgx$i;
.super Lgx$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgx",
        "<TK;TV;>.a<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lgx;


# direct methods
.method constructor <init>(Lgx;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 4498
    iput-object p1, p0, Lgx$i;->c:Lgx;

    .line 4499
    invoke-direct {p0, p1, p2}, Lgx$a;-><init>(Lgx;Ljava/util/concurrent/ConcurrentMap;)V

    .line 4500
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 4509
    iget-object v0, p0, Lgx$i;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4504
    new-instance v0, Lgx$h;

    iget-object v1, p0, Lgx$i;->c:Lgx;

    invoke-direct {v0, v1}, Lgx$h;-><init>(Lgx;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 4514
    iget-object v0, p0, Lgx$i;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
