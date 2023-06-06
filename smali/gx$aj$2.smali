.class Lgx$aj$2;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgx$aj;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator",
        "<",
        "Lgx$p",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lgx$aj;


# direct methods
.method constructor <init>(Lgx$aj;Lgx$p;)V
    .locals 0

    .prologue
    .line 3726
    iput-object p1, p0, Lgx$aj$2;->a:Lgx$aj;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Lgx$p;)Lgx$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3729
    invoke-interface {p1}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    .line 3730
    iget-object v1, p0, Lgx$aj$2;->a:Lgx$aj;

    iget-object v1, v1, Lgx$aj;->a:Lgx$p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3726
    check-cast p1, Lgx$p;

    invoke-virtual {p0, p1}, Lgx$aj$2;->a(Lgx$p;)Lgx$p;

    move-result-object v0

    return-object v0
.end method
