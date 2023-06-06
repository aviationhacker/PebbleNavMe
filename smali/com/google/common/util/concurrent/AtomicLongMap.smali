.class public final Lcom/google/common/util/concurrent/AtomicLongMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private transient b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    return-void
.end method

.method private a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/google/common/util/concurrent/AtomicLongMap$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AtomicLongMap$1;-><init>(Lcom/google/common/util/concurrent/AtomicLongMap;)V

    .line 294
    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lcom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v0

    .line 293
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/google/common/util/concurrent/AtomicLongMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/util/concurrent/AtomicLongMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lcom/google/common/util/concurrent/AtomicLongMap;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/util/concurrent/AtomicLongMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/util/concurrent/AtomicLongMap",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/google/common/util/concurrent/AtomicLongMap;->create()Lcom/google/common/util/concurrent/AtomicLongMap;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->putAll(Ljava/util/Map;)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .prologue
    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 108
    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 110
    if-nez v0, :cond_1

    .line 129
    :goto_0
    return-wide p2

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 118
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_2
    add-long v2, v4, p2

    .line 128
    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide p2, v2

    .line 129
    goto :goto_0
.end method

.method public asMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->b:Ljava/util/Map;

    .line 289
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AtomicLongMap;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->b:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 332
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 98
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public get(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 84
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 157
    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 159
    if-nez v0, :cond_1

    move-wide v0, v2

    .line 178
    :goto_0
    return-wide v0

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 167
    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    .line 170
    goto :goto_0

    .line 176
    :cond_2
    add-long v6, v4, p2

    .line 177
    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v0, v4

    .line 178
    goto :goto_0
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 147
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 140
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    .line 91
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/AtomicLongMap;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;J)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 192
    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 194
    if-nez v0, :cond_1

    move-wide v0, v2

    .line 212
    :goto_0
    return-wide v0

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 202
    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    .line 204
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v4, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, v2

    .line 205
    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v0, v4, v5, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    move-wide v0, v4

    .line 212
    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/common/util/concurrent/AtomicLongMap;->put(Ljava/lang/Object;J)J

    goto :goto_0

    .line 229
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)J"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 237
    if-nez v0, :cond_0

    move-wide v0, v2

    .line 247
    :goto_0
    return-wide v0

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 243
    cmp-long v1, v4, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-wide v0, v4

    .line 247
    goto :goto_0
.end method

.method public removeAllZeros()V
    .locals 6

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 260
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 264
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 267
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public sum()J
    .locals 5

    .prologue
    .line 275
    const-wide/16 v0, 0x0

    .line 276
    iget-object v2, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 277
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 278
    goto :goto_0

    .line 279
    :cond_0
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/common/util/concurrent/AtomicLongMap;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
