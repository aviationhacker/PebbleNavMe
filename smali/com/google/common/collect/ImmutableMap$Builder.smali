.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation
.end field

.field b:[Lja;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lja",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 173
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-array v0, p1, [Lja;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    .line 178
    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    .line 179
    iput-boolean v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->d:Z

    .line 180
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    array-length v1, v1

    .line 186
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->a(II)I

    move-result v1

    .line 185
    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->d:Z

    .line 189
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 271
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    packed-switch v0, :pswitch_data_0

    .line 284
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_1

    .line 285
    iget-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->d:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    invoke-static {v0, v2}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lja;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    iget-object v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:Ljava/util/Comparator;

    .line 292
    invoke-static {v3}, Lcom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-static {}, Lcom/google/common/collect/Maps;->b()Lcom/google/common/base/Function;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/Function;)Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 288
    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 294
    :cond_1
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    array-length v2, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->d:Z

    .line 295
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    invoke-static {v0, v1}, Ljs;->a(I[Ljava/util/Map$Entry;)Ljs;

    move-result-object v0

    :goto_1
    return-object v0

    .line 273
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_1

    .line 275
    :pswitch_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lja;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lja;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 294
    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public orderEntriesByValue(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:Ljava/util/Comparator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "valueComparator was already set"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 256
    const-string v0, "valueComparator"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->a:Ljava/util/Comparator;

    .line 257
    return-object p0

    .line 255
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 196
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->a(I)V

    .line 197
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/lang/Object;Ljava/lang/Object;)Lja;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->b:[Lja;

    iget v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    aput-object v0, v1, v2

    .line 200
    return-object p0
.end method

.method public put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 211
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/util/Map$Entry",
            "<+TK;+TV;>;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 233
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 234
    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->c:I

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->a(I)V

    .line 236
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 237
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/util/Map$Entry;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 239
    :cond_1
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 221
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    return-object v0
.end method
