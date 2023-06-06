.class public final Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$a;,
        Lcom/google/common/collect/Multimaps$f;,
        Lcom/google/common/collect/Multimaps$g;,
        Lcom/google/common/collect/Multimaps$i;,
        Lcom/google/common/collect/Multimaps$j;,
        Lcom/google/common/collect/Multimaps$h;,
        Lcom/google/common/collect/Multimaps$n;,
        Lcom/google/common/collect/Multimaps$m;,
        Lcom/google/common/collect/Multimaps$k;,
        Lcom/google/common/collect/Multimaps$l;,
        Lcom/google/common/collect/Multimaps$e;,
        Lcom/google/common/collect/Multimaps$d;,
        Lcom/google/common/collect/Multimaps$b;,
        Lcom/google/common/collect/Multimaps$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Liq;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Liq",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2106
    invoke-interface {p0}, Liq;->b()Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 2107
    new-instance v1, Lil;

    invoke-interface {p0}, Liq;->a()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lil;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static a(Lis;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lis",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2118
    invoke-interface {p0}, Lis;->b()Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 2119
    new-instance v1, Lim;

    invoke-interface {p0}, Lis;->d()Lcom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lim;-><init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)V

    return-object v1
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->c(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2123
    if-ne p1, p0, :cond_0

    .line 2124
    const/4 v0, 0x1

    .line 2130
    :goto_0
    return v0

    .line 2126
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 2127
    check-cast p1, Lcom/google/common/collect/Multimap;

    .line 2128
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static asMap(Lcom/google/common/collect/ListMultimap;)Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 892
    invoke-interface {p0}, Lcom/google/common/collect/ListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lcom/google/common/collect/Multimap;)Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 930
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lcom/google/common/collect/SetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Set",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 905
    invoke-interface {p0}, Lcom/google/common/collect/SetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lcom/google/common/collect/SortedSetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/SortedSet",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 919
    invoke-interface {p0}, Lcom/google/common/collect/SortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 68
    invoke-static {p0}, Lcom/google/common/collect/Multimaps;->d(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 855
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 856
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    .line 862
    :goto_0
    return-object v0

    .line 857
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 858
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 859
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 860
    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 862
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 876
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 877
    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 879
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Maps$y;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/Maps$y;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static filterEntries(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 2051
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2052
    instance-of v0, p0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 2053
    check-cast p0, Lcom/google/common/collect/SetMultimap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterEntries(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    .line 2057
    :goto_0
    return-object v0

    .line 2055
    :cond_0
    instance-of v0, p0, Liq;

    if-eqz v0, :cond_1

    check-cast p0, Liq;

    .line 2056
    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->a(Liq;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lil;

    .line 2057
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    invoke-direct {v1, v0, p1}, Lil;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterEntries(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 2091
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    instance-of v0, p0, Lis;

    if-eqz v0, :cond_0

    check-cast p0, Lis;

    .line 2093
    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->a(Lis;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    .line 2094
    :goto_0
    return-object v0

    .line 2093
    :cond_0
    new-instance v1, Lim;

    .line 2094
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SetMultimap;

    invoke-direct {v1, v0, p1}, Lim;-><init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static filterKeys(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1939
    instance-of v0, p0, Lin;

    if-eqz v0, :cond_0

    .line 1940
    check-cast p0, Lin;

    .line 1941
    new-instance v0, Lin;

    .line 1942
    invoke-virtual {p0}, Lin;->c()Lcom/google/common/collect/ListMultimap;

    move-result-object v1

    iget-object v2, p0, Lin;->b:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lin;-><init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Predicate;)V

    .line 1944
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lin;

    invoke-direct {v0, p0, p1}, Lin;-><init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static filterKeys(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1845
    instance-of v0, p0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1846
    check-cast p0, Lcom/google/common/collect/SetMultimap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    .line 1857
    :goto_0
    return-object v0

    .line 1847
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/ListMultimap;

    if-eqz v0, :cond_1

    .line 1848
    check-cast p0, Lcom/google/common/collect/ListMultimap;

    invoke-static {p0, p1}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    goto :goto_0

    .line 1849
    :cond_1
    instance-of v0, p0, Lio;

    if-eqz v0, :cond_2

    .line 1850
    check-cast p0, Lio;

    .line 1851
    new-instance v0, Lio;

    iget-object v1, p0, Lio;->a:Lcom/google/common/collect/Multimap;

    iget-object v2, p0, Lio;->b:Lcom/google/common/base/Predicate;

    .line 1852
    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V

    goto :goto_0

    .line 1853
    :cond_2
    instance-of v0, p0, Liq;

    if-eqz v0, :cond_3

    .line 1854
    check-cast p0, Liq;

    .line 1855
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Multimaps;->a(Liq;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    goto :goto_0

    .line 1857
    :cond_3
    new-instance v0, Lio;

    invoke-direct {v0, p0, p1}, Lio;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TK;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1894
    instance-of v0, p0, Lip;

    if-eqz v0, :cond_0

    .line 1895
    check-cast p0, Lip;

    .line 1896
    new-instance v0, Lip;

    .line 1897
    invoke-virtual {p0}, Lip;->d()Lcom/google/common/collect/SetMultimap;

    move-result-object v1

    iget-object v2, p0, Lip;->b:Lcom/google/common/base/Predicate;

    invoke-static {v2, p1}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lip;-><init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)V

    .line 1902
    :goto_0
    return-object v0

    .line 1898
    :cond_0
    instance-of v0, p0, Lis;

    if-eqz v0, :cond_1

    .line 1899
    check-cast p0, Lis;

    .line 1900
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Multimaps;->a(Lis;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    goto :goto_0

    .line 1902
    :cond_1
    new-instance v0, Lip;

    invoke-direct {v0, p0, p1}, Lip;-><init>(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)V

    goto :goto_0
.end method

.method public static filterValues(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 1981
    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Multimaps;->filterEntries(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-TV;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 2017
    invoke-static {p1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Multimaps;->filterEntries(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 951
    new-instance v0, Lcom/google/common/collect/Multimaps$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$h;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static index(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1496
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Multimaps;->index(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static index(Ljava/util/Iterator;Lcom/google/common/base/Function;)Lcom/google/common/collect/ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<TV;>;",
            "Lcom/google/common/base/Function",
            "<-TV;TK;>;)",
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1544
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    invoke-static {}, Lcom/google/common/collect/ImmutableListMultimap;->builder()Lcom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1546
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1547
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1548
    invoke-static {v1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    invoke-interface {p1, v1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableListMultimap$Builder;

    goto :goto_0

    .line 1551
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableListMultimap$Builder;->build()Lcom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static invertFrom(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;>(",
            "Lcom/google/common/collect/Multimap",
            "<+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    .prologue
    .line 405
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 407
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    :cond_0
    return-object p1
.end method

.method public static newListMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/List",
            "<TV;>;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/google/common/collect/Multimaps$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$b;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/google/common/collect/Multimaps$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$c;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/Set",
            "<TV;>;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Lcom/google/common/collect/Multimaps$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$d;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSortedSetMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;",
            "Lcom/google/common/base/Supplier",
            "<+",
            "Ljava/util/SortedSet",
            "<TV;>;>;)",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/google/common/collect/Multimaps$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$e;-><init>(Ljava/util/Map;Lcom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static synchronizedListMultimap(Lcom/google/common/collect/ListMultimap;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 806
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkm;->a(Lcom/google/common/collect/ListMultimap;Ljava/lang/Object;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedMultimap(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkm;->a(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSetMultimap(Lcom/google/common/collect/SetMultimap;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 713
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkm;->a(Lcom/google/common/collect/SetMultimap;Ljava/lang/Object;)Lcom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedSetMultimap(Lcom/google/common/collect/SortedSetMultimap;)Lcom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkm;->a(Lcom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Lcom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static transformEntries(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1419
    new-instance v0, Lcom/google/common/collect/Multimaps$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$i;-><init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1202
    new-instance v0, Lcom/google/common/collect/Multimaps$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$j;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Lcom/google/common/collect/ListMultimap;Lcom/google/common/base/Function;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1360
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1362
    invoke-static {p0, v0}, Lcom/google/common/collect/Multimaps;->transformEntries(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Lcom/google/common/collect/Multimap;Lcom/google/common/base/Function;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV1;>;",
            "Lcom/google/common/base/Function",
            "<-TV1;TV2;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV2;>;"
        }
    .end annotation

    .prologue
    .line 1140
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Function;)Lcom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1142
    invoke-static {p0, v0}, Lcom/google/common/collect/Multimaps;->transformEntries(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Maps$EntryTransformer;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lcom/google/common/collect/ImmutableListMultimap;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableListMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 843
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lcom/google/common/collect/ListMultimap;)Lcom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 828
    instance-of v0, p0, Lcom/google/common/collect/Multimaps$k;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_1

    .line 831
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/common/collect/Multimaps$k;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$k;-><init>(Lcom/google/common/collect/ListMultimap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static unmodifiableMultimap(Lcom/google/common/collect/ImmutableMultimap;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 481
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multimap;

    return-object v0
.end method

.method public static unmodifiableMultimap(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 467
    instance-of v0, p0, Lcom/google/common/collect/Multimaps$l;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/common/collect/Multimaps$l;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$l;-><init>(Lcom/google/common/collect/Multimap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static unmodifiableSetMultimap(Lcom/google/common/collect/ImmutableSetMultimap;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/ImmutableSetMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 750
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/SetMultimap;

    return-object v0
.end method

.method public static unmodifiableSetMultimap(Lcom/google/common/collect/SetMultimap;)Lcom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/SetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 735
    instance-of v0, p0, Lcom/google/common/collect/Multimaps$m;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lcom/google/common/collect/Multimaps$m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$m;-><init>(Lcom/google/common/collect/SetMultimap;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static unmodifiableSortedSetMultimap(Lcom/google/common/collect/SortedSetMultimap;)Lcom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/SortedSetMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 790
    instance-of v0, p0, Lcom/google/common/collect/Multimaps$n;

    if-eqz v0, :cond_0

    .line 793
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Multimaps$n;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$n;-><init>(Lcom/google/common/collect/SortedSetMultimap;)V

    move-object p0, v0

    goto :goto_0
.end method
