.class public Lcom/google/common/collect/ImmutableRangeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/RangeMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeMap$a;,
        Lcom/google/common/collect/ImmutableRangeMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable",
        "<*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<",
            "Ljava/lang/Comparable",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient b:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;>;"
        }
    .end annotation
.end field

.field private final transient c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap;

    .line 46
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeMap;->a:Lcom/google/common/collect/ImmutableRangeMap;

    .line 44
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;>;",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    .line 158
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeMap;->c:Lcom/google/common/collect/ImmutableList;

    .line 159
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableRangeMap;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeMap;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 66
    instance-of v0, p0, Lcom/google/common/collect/ImmutableRangeMap;

    if-eqz v0, :cond_0

    .line 67
    check-cast p0, Lcom/google/common/collect/ImmutableRangeMap;

    .line 76
    :goto_0
    return-object p0

    .line 69
    :cond_0
    invoke-interface {p0}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    .line 70
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 71
    new-instance v2, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 76
    :cond_1
    new-instance p0, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/google/common/collect/ImmutableRangeMap;->a:Lcom/google/common/collect/ImmutableRangeMap;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/Range;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable",
            "<*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableRangeMap;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 242
    :cond_0
    new-instance v1, Ljw;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    .line 244
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljw;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 245
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Ljw;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMapOfRanges()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 232
    :cond_0
    new-instance v1, Ljw;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Ordering;

    invoke-direct {v1, v0, v2}, Ljw;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 234
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->c:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/ImmutableSortedMap;-><init>(Ljw;Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 316
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 317
    check-cast p1, Lcom/google/common/collect/RangeMap;

    .line 318
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    .line 167
    invoke-static {}, Lcom/google/common/collect/Range;->a()Lcom/google/common/base/Function;

    move-result-object v2

    .line 168
    invoke-static {p1}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 165
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v2

    .line 171
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 175
    :goto_0
    return-object v1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 175
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    .line 185
    invoke-static {}, Lcom/google/common/collect/Range;->a()Lcom/google/common/base/Function;

    move-result-object v2

    .line 186
    invoke-static {p1}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 183
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v2

    .line 189
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 193
    :goto_0
    return-object v1

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 193
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 214
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public span()Lcom/google/common/collect/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 203
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    .line 204
    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, v1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)",
            "Lcom/google/common/collect/ImmutableRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 250
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    .line 297
    :goto_0
    return-object v0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p0

    .line 253
    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    .line 258
    invoke-static {}, Lcom/google/common/collect/Range;->b()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 256
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    .line 262
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap;->b:Lcom/google/common/collect/ImmutableList;

    .line 265
    invoke-static {}, Lcom/google/common/collect/Range;->a()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/Range;->c:Lic;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 263
    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v3

    .line 269
    if-lt v1, v3, :cond_3

    .line 270
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeMap;->of()Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_3
    sub-int v0, v3, v1

    .line 274
    new-instance v2, Lcom/google/common/collect/ImmutableRangeMap$1;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/google/common/collect/ImmutableRangeMap$1;-><init>(Lcom/google/common/collect/ImmutableRangeMap;IILcom/google/common/collect/Range;)V

    .line 297
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$2;

    iget-object v4, p0, Lcom/google/common/collect/ImmutableRangeMap;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1, v3}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    move-object v1, p0

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/common/collect/ImmutableRangeMap$2;-><init>(Lcom/google/common/collect/ImmutableRangeMap;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/Range;Lcom/google/common/collect/ImmutableRangeMap;)V

    goto :goto_0
.end method

.method public bridge synthetic subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/google/common/collect/ImmutableRangeMap$a;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeMap$a;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
