.class Lcom/google/common/collect/TreeRangeSet$d$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$d;->a()Ljava/util/Iterator;
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
.field final synthetic a:Lcom/google/common/collect/PeekingIterator;

.field final synthetic b:Lcom/google/common/collect/TreeRangeSet$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$d;Lcom/google/common/collect/PeekingIterator;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$d$2;->b:Lcom/google/common/collect/TreeRangeSet$d;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$d$2;->a:Lcom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

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
    .line 392
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$2;->a:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$d$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 398
    :goto_0
    return-object v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$d$2;->a:Lcom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lcom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 396
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$d$2;->b:Lcom/google/common/collect/TreeRangeSet$d;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$d;->a(Lcom/google/common/collect/TreeRangeSet$d;)Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v2, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 397
    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$d$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$d$2;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
