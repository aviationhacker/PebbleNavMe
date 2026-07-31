.class public Lcom/google/common/collect/TreeRangeSet;
.super Lhl;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "uses NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeSet$e;,
        Lcom/google/common/collect/TreeRangeSet$f;,
        Lcom/google/common/collect/TreeRangeSet$b;,
        Lcom/google/common/collect/TreeRangeSet$c;,
        Lcom/google/common/collect/TreeRangeSet$d;,
        Lcom/google/common/collect/TreeRangeSet$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable",
        "<*>;>",
        "Lhl",
        "<TC;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/NavigableMap;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TC;>;",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lhl;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/NavigableMap;Lcom/google/common/collect/TreeRangeSet$1;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method

.method private a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 131
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->encloses(Lcom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/common/collect/TreeRangeSet;->a(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/google/common/collect/Range;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static create()Lcom/google/common/collect/TreeRangeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>()",
            "Lcom/google/common/collect/TreeRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/google/common/collect/TreeRangeSet;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/TreeRangeSet;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/RangeSet;)Lcom/google/common/collect/TreeRangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable",
            "<*>;>(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)",
            "Lcom/google/common/collect/TreeRangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {}, Lcom/google/common/collect/TreeRangeSet;->create()Lcom/google/common/collect/TreeRangeSet;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Lcom/google/common/collect/TreeRangeSet;->addAll(Lcom/google/common/collect/RangeSet;)V

    .line 61
    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    .line 159
    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    .line 161
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_2

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 165
    iget-object v3, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v3, v2}, Lic;->a(Lic;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 167
    iget-object v2, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v2, v1}, Lic;->a(Lic;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 169
    iget-object v1, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 175
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    move-object v2, v0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_3

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 183
    iget-object v3, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v3, v1}, Lic;->a(Lic;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 185
    iget-object v1, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-interface {v0, v2, v1}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 192
    invoke-static {v2, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet;->b(Lcom/google/common/collect/Range;)V

    goto :goto_0
.end method

.method public bridge synthetic addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhl;->addAll(Lcom/google/common/collect/RangeSet;)V

    return-void
.end method

.method public asDescendingSetOfRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->c:Ljava/util/Set;

    .line 80
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$a;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    .line 81
    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$a;-><init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->c:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public asRanges()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->b:Ljava/util/Set;

    .line 74
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$a;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeSet$a;-><init>(Lcom/google/common/collect/TreeRangeSet;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->b:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Lhl;->clear()V

    return-void
.end method

.method public complement()Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->d:Lcom/google/common/collect/RangeSet;

    .line 251
    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/TreeRangeSet$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/TreeRangeSet$b;-><init>(Lcom/google/common/collect/TreeRangeSet;)V

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->d:Lcom/google/common/collect/RangeSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhl;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    return v0
.end method

.method public encloses(Lcom/google/common/collect/Range;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)Z"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

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
    .line 42
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
    .line 42
    invoke-super {p0, p1}, Lhl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lhl;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 112
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-static {p1}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_2

    .line 209
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 210
    iget-object v1, v0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Lic;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    .line 213
    invoke-virtual {v1, v2}, Lic;->a(Lic;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 215
    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 216
    invoke-static {v1, v2}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v1

    .line 215
    invoke-direct {p0, v1}, Lcom/google/common/collect/TreeRangeSet;->b(Lcom/google/common/collect/Range;)V

    .line 218
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    .line 219
    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 218
    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet;->b(Lcom/google/common/collect/Range;)V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_3

    .line 226
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    .line 227
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    .line 228
    invoke-virtual {v1, v2}, Lic;->a(Lic;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 230
    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 231
    invoke-static {v1, v0}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 230
    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeRangeSet;->b(Lcom/google/common/collect/Range;)V

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    goto :goto_0
.end method

.method public bridge synthetic removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0, p1}, Lhl;->removeAll(Lcom/google/common/collect/RangeSet;)V

    return-void
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
    .line 140
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeSet;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 142
    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 145
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v2, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    invoke-static {v2, v0}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 832
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeSet$e;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeSet$e;-><init>(Lcom/google/common/collect/TreeRangeSet;Lcom/google/common/collect/Range;)V

    move-object p0, v0

    goto :goto_0
.end method
