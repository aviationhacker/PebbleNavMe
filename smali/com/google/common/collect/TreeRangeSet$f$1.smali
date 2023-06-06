.class Lcom/google/common/collect/TreeRangeSet$f$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeSet$f;->b()Ljava/util/Iterator;
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
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lic;

.field final synthetic c:Lcom/google/common/collect/TreeRangeSet$f;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet$f;Ljava/util/Iterator;Lic;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$f$1;->c:Lcom/google/common/collect/TreeRangeSet$f;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeSet$f$1;->a:Ljava/util/Iterator;

    iput-object p3, p0, Lcom/google/common/collect/TreeRangeSet$f$1;->b:Lic;

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
    .line 774
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$f$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 782
    :goto_0
    return-object v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$f$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 778
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f$1;->b:Lic;

    iget-object v2, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$f$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    .line 781
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet$f$1;->c:Lcom/google/common/collect/TreeRangeSet$f;

    invoke-static {v1}, Lcom/google/common/collect/TreeRangeSet$f;->a(Lcom/google/common/collect/TreeRangeSet$f;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 782
    iget-object v1, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$f$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
