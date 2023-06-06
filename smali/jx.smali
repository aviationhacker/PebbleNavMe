.class public abstract Ljx;
.super Lcom/google/common/collect/ImmutableTable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljx$b;,
        Ljx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableTable;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Iterable;)Ljx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;)",
            "Ljx",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-static {p0, v0, v0}, Ljx;->a(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Ljx;

    move-result-object v0

    return-object v0
.end method

.method private static final a(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Ljx;
    .locals 12
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Ljx",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 148
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 149
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 150
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 151
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_0
    if-nez p1, :cond_1

    .line 157
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    move-object v2, v0

    .line 160
    :goto_1
    if-nez p2, :cond_2

    .line 162
    invoke-static {v3}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 168
    :goto_2
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    int-to-long v10, v1

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x2

    div-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-lez v1, :cond_3

    new-instance v1, Lid;

    invoke-direct {v1, v4, v2, v0}, Lid;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V

    move-object v0, v1

    :goto_3
    return-object v0

    .line 159
    :cond_1
    invoke-static {p1}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 164
    :cond_2
    invoke-static {p2}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/common/collect/Ordering;->immutableSortedCopy(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 163
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_2

    .line 168
    :cond_3
    new-instance v1, Lkj;

    invoke-direct {v1, v4, v2, v0}, Lkj;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V

    move-object v0, v1

    goto :goto_3
.end method

.method public static a(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Ljx;
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Comparator;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;",
            "Ljava/util/Comparator",
            "<-TR;>;",
            "Ljava/util/Comparator",
            "<-TC;>;)",
            "Ljx",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 114
    :cond_0
    new-instance v0, Ljx$1;

    invoke-direct {v0, p1, p2}, Ljx$1;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 130
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 132
    :cond_1
    invoke-static {p0, p1, p2}, Ljx;->a(Ljava/lang/Iterable;Ljava/util/Comparator;Ljava/util/Comparator;)Ljx;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a(I)Lcom/google/common/collect/Table$Cell;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation
.end method

.method synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljx;->e()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract b(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation
.end method

.method synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljx;->g()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method final e()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Ljx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljx$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljx$a;-><init>(Ljx;Ljx$1;)V

    goto :goto_0
.end method

.method final g()Lcom/google/common/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Ljx;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljx$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljx$b;-><init>(Ljx;Ljx$1;)V

    goto :goto_0
.end method
