.class public final Lcom/google/common/collect/Multisets;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multisets$f;,
        Lcom/google/common/collect/Multisets$c;,
        Lcom/google/common/collect/Multisets$b;,
        Lcom/google/common/collect/Multisets$a;,
        Lcom/google/common/collect/Multisets$d;,
        Lcom/google/common/collect/Multisets$e;,
        Lcom/google/common/collect/Multisets$g;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/Ordering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Ordering",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1108
    new-instance v0, Lcom/google/common/collect/Multisets$5;

    invoke-direct {v0}, Lcom/google/common/collect/Multisets$5;-><init>()V

    sput-object v0, Lcom/google/common/collect/Multisets;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/common/collect/Multiset;Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;I)I"
        }
    .end annotation

    .prologue
    .line 916
    const-string v0, "count"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 918
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 920
    sub-int v1, p2, v0

    .line 921
    if-lez v1, :cond_1

    .line 922
    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 927
    :cond_0
    :goto_0
    return v0

    .line 923
    :cond_1
    if-gez v1, :cond_0

    .line 924
    neg-int v1, v1

    invoke-interface {p0, p1, v1}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method static a(Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 374
    instance-of v0, p0, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 375
    check-cast p0, Lcom/google/common/collect/Multiset;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 377
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xb

    goto :goto_0
.end method

.method public static a(Lcom/google/common/collect/Multiset;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1037
    new-instance v0, Lcom/google/common/collect/Multisets$f;

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Multisets$f;-><init>(Lcom/google/common/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method private static a(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 695
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 699
    const/4 v0, 0x0

    move v1, v0

    .line 700
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 702
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v4

    .line 703
    if-nez v4, :cond_0

    .line 704
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v2

    :goto_1
    move v1, v0

    .line 710
    goto :goto_0

    .line 706
    :cond_0
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 707
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0, v4}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move v0, v2

    .line 708
    goto :goto_1

    .line 711
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 845
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 866
    :goto_0
    return v0

    .line 848
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_5

    .line 849
    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 856
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 857
    goto :goto_0

    .line 859
    :cond_2
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 860
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-eq v4, v0, :cond_3

    move v0, v2

    .line 861
    goto :goto_0

    :cond_4
    move v0, v1

    .line 864
    goto :goto_0

    :cond_5
    move v0, v2

    .line 866
    goto :goto_0
.end method

.method public static a(Lcom/google/common/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;TE;II)Z"
        }
    .end annotation

    .prologue
    .line 934
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 935
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 937
    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 938
    invoke-interface {p0, p1, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 939
    const/4 v0, 0x1

    .line 941
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 873
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    const/4 v0, 0x0

    .line 884
    :goto_0
    return v0

    .line 876
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    .line 877
    invoke-static {p1}, Lcom/google/common/collect/Multisets;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    .line 878
    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 879
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 882
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 884
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Lcom/google/common/collect/Multiset;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1094
    const-wide/16 v0, 0x0

    .line 1095
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 1096
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 1097
    goto :goto_0

    .line 1098
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method static b(Ljava/lang/Iterable;)Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1105
    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method

.method public static b(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 891
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 893
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 896
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static c(Lcom/google/common/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 903
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/common/collect/Multiset;

    .line 906
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 909
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static containsOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 655
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 658
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 659
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 660
    const/4 v0, 0x0

    .line 663
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static copyHighestCountFirst(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1124
    sget-object v0, Lcom/google/common/collect/Multisets;->a:Lcom/google/common/collect/Ordering;

    .line 1125
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1126
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMultiset;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static difference(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 611
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    new-instance v0, Lcom/google/common/collect/Multisets$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$4;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static filter(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multiset;
    .locals 3
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/base/Predicate",
            "<-TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 282
    instance-of v0, p0, Lcom/google/common/collect/Multisets$d;

    if-eqz v0, :cond_0

    .line 285
    check-cast p0, Lcom/google/common/collect/Multisets$d;

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/Multisets$d;->b:Lcom/google/common/base/Predicate;

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 287
    new-instance v0, Lcom/google/common/collect/Multisets$d;

    iget-object v2, p0, Lcom/google/common/collect/Multisets$d;->a:Lcom/google/common/collect/Multiset;

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/Multisets$d;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    .line 289
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Multisets$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$d;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/common/collect/Multisets$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$e;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static intersection(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 471
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    new-instance v0, Lcom/google/common/collect/Multisets$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$2;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 778
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const/4 v0, 0x0

    .line 782
    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    .line 783
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 785
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v4

    .line 786
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 787
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    move v0, v2

    :goto_1
    move v1, v0

    .line 793
    goto :goto_0

    .line 789
    :cond_0
    if-lez v4, :cond_2

    .line 790
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0, v4}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move v0, v2

    .line 791
    goto :goto_1

    .line 794
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static removeOccurrences(Lcom/google/common/collect/Multiset;Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 740
    instance-of v0, p1, Lcom/google/common/collect/Multiset;

    if-eqz v0, :cond_1

    .line 741
    check-cast p1, Lcom/google/common/collect/Multiset;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->removeOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result v0

    .line 749
    :cond_0
    return v0

    .line 743
    :cond_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const/4 v0, 0x0

    .line 746
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 747
    invoke-interface {p0, v2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 748
    goto :goto_0
.end method

.method public static retainOccurrences(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;",
            "Lcom/google/common/collect/Multiset",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 687
    invoke-static {p0, p1}, Lcom/google/common/collect/Multisets;->a(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Z

    move-result v0

    return v0
.end method

.method public static sum(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    new-instance v0, Lcom/google/common/collect/Multisets$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$3;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static union(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 398
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    new-instance v0, Lcom/google/common/collect/Multisets$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multisets$1;-><init>(Lcom/google/common/collect/Multiset;Lcom/google/common/collect/Multiset;)V

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/ImmutableMultiset;)Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 91
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    return-object v0
.end method

.method public static unmodifiableMultiset(Lcom/google/common/collect/Multiset;)Lcom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multiset",
            "<+TE;>;)",
            "Lcom/google/common/collect/Multiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 74
    instance-of v0, p0, Lcom/google/common/collect/Multisets$g;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultiset;

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Lcom/google/common/collect/Multisets$g;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Multisets$g;-><init>(Lcom/google/common/collect/Multiset;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static unmodifiableSortedMultiset(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/SortedMultiset;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 210
    new-instance v1, Lkp;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SortedMultiset;

    invoke-direct {v1, v0}, Lkp;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v1
.end method
