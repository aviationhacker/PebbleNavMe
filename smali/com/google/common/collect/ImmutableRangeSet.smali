.class public final Lcom/google/common/collect/ImmutableRangeSet;
.super Lhl;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableRangeSet$d;,
        Lcom/google/common/collect/ImmutableRangeSet$Builder;,
        Lcom/google/common/collect/ImmutableRangeSet$b;,
        Lcom/google/common/collect/ImmutableRangeSet$a;,
        Lcom/google/common/collect/ImmutableRangeSet$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lhl",
        "<TC;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<",
            "Ljava/lang/Comparable",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final transient c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/ImmutableRangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 48
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableRangeSet;

    .line 50
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 51
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    sput-object v0, Lcom/google/common/collect/ImmutableRangeSet;->b:Lcom/google/common/collect/ImmutableRangeSet;

    .line 50
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lhl;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 106
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lhl;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 110
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet;->d:Lcom/google/common/collect/ImmutableRangeSet;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/ImmutableRangeSet;)Lcom/google/common/collect/ImmutableList;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method private a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 284
    invoke-static {}, Lcom/google/common/collect/Range;->b()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    sget-object v3, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 282
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 293
    :goto_1
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 294
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 297
    invoke-static {}, Lcom/google/common/collect/Range;->a()Lcom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/Range;->c:Lic;

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 295
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Comparable;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    .line 304
    :goto_2
    sub-int v2, v1, v0

    .line 305
    if-nez v2, :cond_5

    .line 306
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    goto :goto_2

    .line 308
    :cond_5
    new-instance v1, Lcom/google/common/collect/ImmutableRangeSet$1;

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/google/common/collect/ImmutableRangeSet$1;-><init>(Lcom/google/common/collect/ImmutableRangeSet;IILcom/google/common/collect/Range;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static a()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->b:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static builder()Lcom/google/common/collect/ImmutableRangeSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/ImmutableRangeSet$Builder",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 560
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableRangeSet$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 91
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/common/collect/RangeSet;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->a()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    instance-of v0, p0, Lcom/google/common/collect/ImmutableRangeSet;

    if-eqz v0, :cond_3

    move-object v0, p0

    .line 96
    check-cast v0, Lcom/google/common/collect/ImmutableRangeSet;

    .line 97
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableRangeSet;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    :cond_3
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-interface {p0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method

.method public static of()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/google/common/collect/ImmutableRangeSet;->a:Lcom/google/common/collect/ImmutableRangeSet;

    return-object v0
.end method

.method public static of(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {p0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->a()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_1
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    .line 191
    :cond_0
    new-instance v0, Ljw;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 192
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    sget-object v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Ordering;

    invoke-virtual {v2}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljw;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public bridge synthetic asDescendingSetOfRanges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asDescendingSetOfRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asRanges()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljw;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    sget-object v2, Lcom/google/common/collect/Range;->a:Lcom/google/common/collect/Ordering;

    invoke-direct {v0, v1, v2}, Ljw;-><init>(Lcom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public bridge synthetic asRanges()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->asRanges()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/google/common/collect/ImmutableSortedSet;->of()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    .line 387
    :goto_0
    return-object v0

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->canonical(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasLowerBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither the DiscreteDomain nor this range set are bounded below"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-nez v0, :cond_2

    .line 380
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/collect/DiscreteDomain;->maxValue()Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_2
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ImmutableRangeSet$a;-><init>(Lcom/google/common/collect/ImmutableRangeSet;Lcom/google/common/collect/DiscreteDomain;)V

    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 382
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Neither the DiscreteDomain nor this range set are bounded above"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lhl;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->d:Lcom/google/common/collect/ImmutableRangeSet;

    .line 255
    if-eqz v0, :cond_0

    .line 265
    :goto_0
    return-object v0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->a()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->d:Lcom/google/common/collect/ImmutableRangeSet;

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->d:Lcom/google/common/collect/ImmutableRangeSet;

    goto :goto_0

    .line 262
    :cond_2
    new-instance v1, Lcom/google/common/collect/ImmutableRangeSet$c;

    invoke-direct {v1, p0}, Lcom/google/common/collect/ImmutableRangeSet$c;-><init>(Lcom/google/common/collect/ImmutableRangeSet;)V

    .line 263
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {v0, v1, p0}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableRangeSet;)V

    iput-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->d:Lcom/google/common/collect/ImmutableRangeSet;

    goto :goto_0
.end method

.method public bridge synthetic complement()Lcom/google/common/collect/RangeSet;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->complement()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhl;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 120
    invoke-static {}, Lcom/google/common/collect/Range;->a()Lcom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    .line 122
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 125
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhl;->enclosesAll(Lcom/google/common/collect/RangeSet;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    .line 133
    invoke-static {}, Lcom/google/common/collect/Range;->a()Lcom/google/common/base/Function;

    move-result-object v1

    .line 134
    invoke-static {p1}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v2

    .line 135
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lcom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 131
    invoke-static/range {v0 .. v5}, Lcom/google/common/collect/SortedLists;->a(Ljava/util/List;Lcom/google/common/base/Function;Ljava/lang/Object;Ljava/util/Comparator;Lcom/google/common/collect/SortedLists$KeyPresentBehavior;Lcom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 138
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 140
    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    .line 140
    goto :goto_0

    :cond_1
    move-object v0, v6

    .line 142
    goto :goto_0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 175
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
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, v0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/ImmutableRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableRangeSet;->span()Lcom/google/common/collect/Range;

    move-result-object v0

    .line 339
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    :goto_0
    return-object p0

    .line 341
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->isConnected(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    move-object p0, v0

    goto :goto_0

    .line 345
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableRangeSet;->of()Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object p0

    goto :goto_0
.end method

.method public bridge synthetic subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 635
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet$d;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet;->c:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet$d;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
