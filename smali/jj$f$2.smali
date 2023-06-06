.class Ljj$f$2;
.super Lcom/google/common/collect/AbstractSequentialIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljj$f;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractSequentialIterator",
        "<",
        "Ljj$l",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljj$f;


# direct methods
.method constructor <init>(Ljj$f;Ljj$l;)V
    .locals 0

    .prologue
    .line 3232
    iput-object p1, p0, Ljj$f$2;->a:Ljj$f;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractSequentialIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Ljj$l;)Ljj$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3235
    invoke-interface {p1}, Ljj$l;->h()Ljj$l;

    move-result-object v0

    .line 3236
    iget-object v1, p0, Ljj$f$2;->a:Ljj$f;

    iget-object v1, v1, Ljj$f;->a:Ljj$l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3232
    check-cast p1, Ljj$l;

    invoke-virtual {p0, p1}, Ljj$f$2;->a(Ljj$l;)Ljj$l;

    move-result-object v0

    return-object v0
.end method
