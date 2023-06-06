.class Lcom/google/common/collect/TreeMultiset$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->e()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/TreeMultiset$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/TreeMultiset$b",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;)V
    .locals 1

    .prologue
    .line 449
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->d(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->b:Lcom/google/common/collect/Multiset$Entry;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$3;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v0, v1}, Lcom/google/common/collect/TreeMultiset;->a(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 471
    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->b:Lcom/google/common/collect/Multiset$Entry;

    .line 472
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$b;->h(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lcom/google/common/collect/TreeMultiset;->c(Lcom/google/common/collect/TreeMultiset;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 473
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    .line 477
    :goto_0
    return-object v0

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset$b;->h(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/TreeMultiset$b;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    if-nez v1, :cond_0

    .line 461
    :goto_0
    return v0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset;

    invoke-static {v1}, Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset;)Lit;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    invoke-virtual {v2}, Lcom/google/common/collect/TreeMultiset$b;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lit;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/TreeMultiset$3;->a:Lcom/google/common/collect/TreeMultiset$b;

    goto :goto_0

    .line 461
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$3;->a()Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->b:Lcom/google/common/collect/Multiset$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lhu;->a(Z)V

    .line 483
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->c:Lcom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lcom/google/common/collect/TreeMultiset$3;->b:Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {v2}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/TreeMultiset$3;->b:Lcom/google/common/collect/Multiset$Entry;

    .line 485
    return-void

    :cond_0
    move v0, v1

    .line 482
    goto :goto_0
.end method
