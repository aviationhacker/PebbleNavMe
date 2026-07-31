.class Lcom/google/common/collect/TreeRangeSet$c$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$c;->b()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lic",
        "<TC;>;",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;>;"
    }
.end annotation


# instance fields
.field a:Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic",
            "<TC;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lic;

.field final synthetic c:Lcom/google/common/collect/PeekingIterator;

.field final synthetic d:Lcom/google/common/collect/TreeRangeSet$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$c;Lic;Lcom/google/common/collect/PeekingIterator;)V
    .locals 1

    .prologue
    .line 508
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->d:Lcom/google/common/collect/TreeRangeSet$c;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->b:Lic;

    iput-object p3, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->c:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 509
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->b:Lic;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->a:Lic;

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->d:Lcom/google/common/collect/TreeRangeSet$c;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeSet$c;->a(Lcom/google/common/collect/TreeRangeSet$c;)Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->a:Lic;

    invoke-virtual {v0, v1}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->a:Lic;

    .line 514
    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$c$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 526
    :goto_0
    return-object v0

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->c:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->c:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 520
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->a:Lic;

    iget-object v2, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 521
    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->a:Lic;

    move-object v0, v1

    .line 526
    :goto_1
    iget-object v1, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->a:Lic;

    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 524
    invoke-static {}, Lic;->e()Lic;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/TreeRangeSet$c$1;->a:Lic;

    goto :goto_1
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 508
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$c$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
