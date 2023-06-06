.class abstract Lgx$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<**>;"
        }
    .end annotation
.end field

.field final synthetic b:Lgx;


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
    .line 4455
    iput-object p1, p0, Lgx$a;->b:Lgx;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 4456
    iput-object p2, p0, Lgx$a;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 4457
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 4471
    iget-object v0, p0, Lgx$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 4472
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4466
    iget-object v0, p0, Lgx$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 4461
    iget-object v0, p0, Lgx$a;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4479
    invoke-static {p0}, Lgx;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)[TE;"
        }
    .end annotation

    .prologue
    .line 4484
    invoke-static {p0}, Lgx;->a(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
