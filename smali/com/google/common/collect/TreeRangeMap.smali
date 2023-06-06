.class public final Lcom/google/common/collect/TreeRangeMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/RangeMap;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/TreeRangeMap$c;,
        Lcom/google/common/collect/TreeRangeMap$a;,
        Lcom/google/common/collect/TreeRangeMap$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final b:Lcom/google/common/collect/RangeMap;


# instance fields
.field private final a:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lic",
            "<TK;>;",
            "Lcom/google/common/collect/TreeRangeMap$b",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$1;

    invoke-direct {v0}, Lcom/google/common/collect/TreeRangeMap$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/TreeRangeMap;->b:Lcom/google/common/collect/RangeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {}, Lcom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    .line 66
    return-void
.end method

.method private a()Lcom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 269
    sget-object v0, Lcom/google/common/collect/TreeRangeMap;->b:Lcom/google/common/collect/RangeMap;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    return-object v0
.end method

.method private a(Lic;Lic;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TK;>;",
            "Lic",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    new-instance v1, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/common/collect/TreeRangeMap$b;-><init>(Lic;Lic;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/TreeRangeMap;)Lcom/google/common/collect/RangeMap;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/common/collect/TreeRangeMap;->a()Lcom/google/common/collect/RangeMap;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/collect/TreeRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/TreeRangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lcom/google/common/collect/TreeRangeMap;

    invoke-direct {v0}, Lcom/google/common/collect/TreeRangeMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$a;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeMap$a;-><init>(Lcom/google/common/collect/TreeRangeMap;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public asMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 213
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$a;

    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/TreeRangeMap$a;-><init>(Lcom/google/common/collect/TreeRangeMap;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    .line 143
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 645
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 646
    check-cast p1, Lcom/google/common/collect/RangeMap;

    .line 647
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 649
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 2
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
    .line 115
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    .line 116
    invoke-static {p1}, Lic;->b(Ljava/lang/Comparable;)Lic;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TreeRangeMap$b;->a(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeRangeMap;->remove(Lcom/google/common/collect/Range;)V

    .line 129
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    new-instance v2, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-direct {v2, p1, p2}, Lcom/google/common/collect/TreeRangeMap$b;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_0
    return-void
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    invoke-interface {p1}, Lcom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/TreeRangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_0
    return-void
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    .line 171
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 172
    if-eqz v2, :cond_2

    .line 174
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    .line 175
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v1, v3}, Lic;->a(Lic;)I

    move-result v1

    if-lez v1, :cond_2

    .line 177
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1, v3}, Lic;->a(Lic;)I

    move-result v1

    if-lez v1, :cond_1

    .line 180
    iget-object v3, p1, Lcom/google/common/collect/Range;->c:Lic;

    .line 182
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v4

    .line 183
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v1}, Lcom/google/common/collect/TreeRangeMap$b;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 180
    invoke-direct {p0, v3, v4, v1}, Lcom/google/common/collect/TreeRangeMap;->a(Lic;Lic;Ljava/lang/Object;)V

    .line 187
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->b()Lic;

    move-result-object v1

    iget-object v3, p1, Lcom/google/common/collect/Range;->b:Lic;

    .line 189
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 186
    invoke-direct {p0, v1, v3, v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lic;Lic;Ljava/lang/Object;)V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    .line 194
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_3

    .line 197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    .line 198
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v2

    iget-object v3, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v2, v3}, Lic;->a(Lic;)I

    move-result v2

    if-lez v2, :cond_3

    .line 201
    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    .line 203
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v3

    .line 204
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 201
    invoke-direct {p0, v2, v3, v0}, Lcom/google/common/collect/TreeRangeMap;->a(Lic;Lic;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_3
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v2, p1, Lcom/google/common/collect/Range;->c:Lic;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    goto/16 :goto_0
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
    .line 147
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 149
    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 153
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->a()Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v2, v0, Lcom/google/common/collect/Range;->b:Lic;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->a()Lcom/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/collect/Range;->c:Lic;

    .line 152
    invoke-static {v2, v0}, Lcom/google/common/collect/Range;->a(Lic;Lic;)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 260
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/common/collect/TreeRangeMap$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/TreeRangeMap$c;-><init>(Lcom/google/common/collect/TreeRangeMap;Lcom/google/common/collect/Range;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap;->a:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
