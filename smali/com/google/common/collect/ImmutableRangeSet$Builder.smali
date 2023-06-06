.class public Lcom/google/common/collect/ImmutableRangeSet$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 569
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 570
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->a:Lcom/google/common/collect/RangeSet;

    .line 571
    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 581
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "range must not be empty, but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->a:Lcom/google/common/collect/RangeSet;

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->complement()Lcom/google/common/collect/RangeSet;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 584
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->a:Lcom/google/common/collect/RangeSet;

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 586
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    :goto_1
    const-string v5, "Ranges may not overlap, but received %s and %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object p1, v6, v3

    .line 585
    invoke-static {v1, v5, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 586
    goto :goto_1

    .line 591
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should have thrown an IAE above"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->a:Lcom/google/common/collect/RangeSet;

    invoke-interface {v0, p1}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 594
    return-object p0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 602
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 603
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;->add(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet$Builder;

    goto :goto_0

    .line 605
    :cond_0
    return-object p0
.end method

.method public build()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet$Builder;->a:Lcom/google/common/collect/RangeSet;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeSet;->copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method
