.class public Lcom/google/common/collect/TreeMultimap;
.super Lhn;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lhn",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private transient a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/Comparator",
            "<-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lhn;-><init>(Ljava/util/SortedMap;)V

    .line 117
    iput-object p1, p0, Lcom/google/common/collect/TreeMultimap;->a:Ljava/util/Comparator;

    .line 118
    iput-object p2, p0, Lcom/google/common/collect/TreeMultimap;->b:Ljava/util/Comparator;

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/Comparator",
            "<-TV;>;",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    .line 126
    invoke-virtual {p0, p3}, Lcom/google/common/collect/TreeMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 127
    return-void
.end method

.method public static create()Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/TreeMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/TreeMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Lcom/google/common/collect/TreeMultimap;

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/TreeMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/TreeMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v2, Lcom/google/common/collect/TreeMultimap;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {v2, v0, v1}, Lcom/google/common/collect/TreeMultimap;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->a:Ljava/util/Comparator;

    .line 255
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/TreeMultimap;->b:Ljava/util/Comparator;

    .line 256
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeMultimap;->a(Ljava/util/Map;)V

    .line 257
    invoke-static {p0, p1}, Lka;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;)V

    .line 258
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 245
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 247
    invoke-static {p0, p1}, Lka;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 248
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 144
    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keyComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lhn;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 192
    new-instance v0, Lhf$k;

    check-cast p2, Ljava/util/NavigableSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lhf$k;-><init>(Lhf;Ljava/lang/Object;Ljava/util/NavigableSet;Lhf$i;)V

    return-object v0
.end method

.method a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 186
    check-cast p1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lcom/google/common/collect/Sets;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method synthetic a()Ljava/util/Set;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->n()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMap()Ljava/util/NavigableMap;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0}, Lhn;->asMap()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/SortedMap;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->asMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->n()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lhn;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lhn;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lhn;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic e()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->p()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Set;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lhn;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method synthetic f()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->q()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 180
    invoke-super {p0, p1}, Lhn;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeMultimap;->get(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->hashCode()I

    move-result v0

    return v0
.end method

.method synthetic i()Ljava/util/Map;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->r()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public keySet()Ljava/util/NavigableSet;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 207
    invoke-super {p0}, Lhn;->keySet()Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/SortedSet;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method synthetic m()Ljava/util/SortedMap;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->p()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method n()Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/common/collect/TreeMultimap;->b:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method p()Ljava/util/NavigableMap;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-super {p0}, Lhn;->m()Ljava/util/SortedMap;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lhn;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Lhn;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lhn;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method q()Ljava/util/NavigableSet;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableSet"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lhf$e;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->p()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhf$e;-><init>(Lhf;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method r()Ljava/util/NavigableMap;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "NavigableMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lhf$d;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultimap;->p()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lhf$d;-><init>(Lhf;Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lhn;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Lhn;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lhn;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/common/collect/TreeMultimap;->b:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lhn;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
