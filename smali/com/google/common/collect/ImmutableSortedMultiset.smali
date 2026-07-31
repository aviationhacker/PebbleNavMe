.class public abstract Lcom/google/common/collect/ImmutableSortedMultiset;
.super Ljg;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/SortedMultiset;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "hasn\'t been tested yet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSortedMultiset$a;,
        Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljg",
        "<TE;>;",
        "Lcom/google/common/collect/SortedMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field transient a:Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->b:Ljava/util/Comparator;

    .line 56
    new-instance v0, Ljv;

    sget-object v1, Lcom/google/common/collect/ImmutableSortedMultiset;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljv;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->c:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljg;-><init>()V

    return-void
.end method

.method protected static a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 279
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->b:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->c:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 282
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljv;

    invoke-direct {v0, p0}, Ljv;-><init>(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method private static a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 262
    :cond_0
    new-instance v3, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 263
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [J

    .line 265
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 266
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 267
    add-int/lit8 v6, v1, 0x1

    aget-wide v8, v4, v1

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    int-to-long v10, v0

    add-long/2addr v8, v10

    aput-wide v8, v4, v6

    .line 268
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 269
    goto :goto_1

    .line 270
    :cond_1
    new-instance v0, Ljv;

    new-instance v1, Ljw;

    .line 271
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Ljw;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 274
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Ljv;-><init>(Ljw;[JII)V

    goto :goto_0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 176
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 221
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSortedMultiset;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 223
    check-cast v0, Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 224
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 233
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/collect/TreeMultiset;->create(Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultiset;

    move-result-object v0

    .line 234
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 235
    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TE;>;",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 205
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;->build()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 194
    invoke-static {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>([TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfSorted(Lcom/google/common/collect/SortedMultiset;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedMultiset",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 253
    .line 254
    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->a(Ljava/util/Comparator;Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static naturalOrder()Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/common/collect/ImmutableSortedMultiset;->c:Lcom/google/common/collect/ImmutableSortedMultiset;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 71
    .line 72
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSortedSet;->of(Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    check-cast v0, Ljw;

    .line 73
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    .line 74
    new-instance v2, Ljv;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Ljv;-><init>(Ljw;[JII)V

    return-object v2

    .line 73
    :array_0
    .array-data 8
        0x0
        0x1
    .end array-data
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 132
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    .line 133
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 134
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Comparable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    const/4 v2, 0x5

    aput-object p5, v1, v2

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 135
    invoke-static {v0, p6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 136
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TE;>;)",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 364
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lcom/google/common/collect/ImmutableSortedMultiset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/ImmutableSortedMultiset$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMultiset$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->a:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 301
    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMultiset;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMultiset;->a:Lcom/google/common/collect/ImmutableSortedMultiset;

    .line 307
    :cond_0
    return-object v0

    .line 304
    :cond_1
    new-instance v0, Lie;

    invoke-direct {v0, p0}, Lie;-><init>(Lcom/google/common/collect/ImmutableSortedMultiset;)V

    goto :goto_0
.end method

.method public bridge synthetic descendingMultiset()Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public abstract elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            "TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 344
    .line 345
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Expected lowerBound <= upperBound but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v1

    .line 344
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 345
    goto :goto_0
.end method

.method public bridge synthetic subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/ImmutableSortedMultiset;->subMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 547
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMultiset$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMultiset$a;-><init>(Lcom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method
