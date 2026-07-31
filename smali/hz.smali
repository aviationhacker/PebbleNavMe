.class public final Lhz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhz$c;,
        Lhz$d;,
        Lhz$b;,
        Lhz$f;,
        Lhz$e;,
        Lhz$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/util/Collection;Lhy;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lhz$a;

    invoke-direct {v0, p0, p1}, Lhz$a;-><init>(Ljava/util/Collection;Lhy;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Lhy;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 200
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lhz$d;

    invoke-direct {v0, p0, p1}, Lhz$d;-><init>(Ljava/util/List;Lhy;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhz$b;

    invoke-direct {v0, p0, p1}, Lhz$b;-><init>(Ljava/util/List;Lhy;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/util/ListIterator;Lhy;)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1}, Lhz;->b(Ljava/util/ListIterator;Lhy;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Set;Lhy;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lhz$e;

    invoke-direct {v0, p0, p1}, Lhz$e;-><init>(Ljava/util/Set;Lhy;)V

    return-object v0
.end method

.method public static a(Ljava/util/SortedSet;Lhy;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lhz$f;

    invoke-direct {v0, p0, p1}, Lhz$f;-><init>(Ljava/util/SortedSet;Lhy;)V

    return-object v0
.end method

.method public static b(Ljava/util/Collection;Lhy;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lhy",
            "<TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 316
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 317
    check-cast p0, Ljava/util/SortedSet;

    invoke-static {p0, p1}, Lhz;->a(Ljava/util/SortedSet;Lhy;)Ljava/util/SortedSet;

    move-result-object v0

    .line 323
    :goto_0
    return-object v0

    .line 318
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 319
    check-cast p0, Ljava/util/Set;

    invoke-static {p0, p1}, Lhz;->a(Ljava/util/Set;Lhy;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 320
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 321
    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lhz;->a(Ljava/util/List;Lhy;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_2
    invoke-static {p0, p1}, Lhz;->a(Ljava/util/Collection;Lhy;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/util/ListIterator;Lhy;)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Lhz$c;

    invoke-direct {v0, p0, p1}, Lhz$c;-><init>(Ljava/util/ListIterator;Lhy;)V

    return-object v0
.end method

.method static synthetic c(Ljava/util/Collection;Lhy;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 37
    invoke-static {p0, p1}, Lhz;->d(Ljava/util/Collection;Lhy;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static d(Ljava/util/Collection;Lhy;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 336
    invoke-interface {p1, v2}, Lhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 338
    :cond_0
    return-object v0
.end method
