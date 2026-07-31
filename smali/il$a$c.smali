.class Lil$a$c;
.super Lcom/google/common/collect/Maps$ac;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lil$a;->b()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ac",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lil$a;


# direct methods
.method constructor <init>(Lil$a;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lil$a$c;->a:Lil$a;

    .line 298
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$ac;-><init>(Ljava/util/Map;)V

    .line 299
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 303
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 304
    check-cast p1, Ljava/util/Collection;

    .line 305
    iget-object v0, p0, Lil$a$c;->a:Lil$a;

    iget-object v0, v0, Lil$a;->a:Lil;

    iget-object v0, v0, Lil;->a:Lcom/google/common/collect/Multimap;

    .line 306
    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 307
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 309
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    new-instance v4, Lil$c;

    iget-object v5, p0, Lil$a$c;->a:Lil$a;

    iget-object v5, v5, Lil$a;->a:Lil;

    invoke-direct {v4, v5, v3}, Lil$c;-><init>(Lil;Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lil;->a(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    .line 312
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 314
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 318
    :goto_0
    const/4 v0, 0x1

    .line 322
    :goto_1
    return v0

    .line 316
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 322
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lil$a$c;->a:Lil$a;

    iget-object v0, v0, Lil$a;->a:Lil;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lil;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lil$a$c;->a:Lil$a;

    iget-object v0, v0, Lil$a;->a:Lil;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->b(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lil;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
