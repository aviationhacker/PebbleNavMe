.class Lcom/google/common/collect/ImmutableRangeSet$a$2;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeSet$a;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/google/common/collect/ImmutableRangeSet$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeSet$a;)V
    .locals 1

    .prologue
    .line 440
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->c:Lcom/google/common/collect/ImmutableRangeSet$a;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->c:Lcom/google/common/collect/ImmutableRangeSet$a;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableRangeSet$a;->a:Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->a:Ljava/util/Iterator;

    .line 442
    invoke-static {}, Lcom/google/common/collect/Iterators;->emptyIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 446
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->c:Lcom/google/common/collect/ImmutableRangeSet$a;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableRangeSet$a;->a(Lcom/google/common/collect/ImmutableRangeSet$a;)Lcom/google/common/collect/DiscreteDomain;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ContiguousSet;->create(Lcom/google/common/collect/Range;Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ContiguousSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ContiguousSet;->descendingIterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->b:Ljava/util/Iterator;

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$a$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 453
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$a$2;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    goto :goto_1
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet$a$2;->a()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method
