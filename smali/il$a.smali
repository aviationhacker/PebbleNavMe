.class Lil$a;
.super Lcom/google/common/collect/Maps$ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$ad",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lil;


# direct methods
.method constructor <init>(Lil;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lil$a;->a:Lil;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$ad;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lil$a;->a:Lil;

    iget-object v0, v0, Lil;->a:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 183
    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-object v1

    .line 188
    :cond_0
    new-instance v2, Lil$c;

    iget-object v3, p0, Lil$a;->a:Lil;

    invoke-direct {v2, v3, p1}, Lil$c;-><init>(Lil;Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lil;->a(Ljava/util/Collection;Lcom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lil$a$a;

    invoke-direct {v0, p0}, Lil$a$a;-><init>(Lil$a;)V

    return-object v0
.end method

.method b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lil$a$c;

    invoke-direct {v0, p0}, Lil$a$c;-><init>(Lil$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lil$a;->a:Lil;

    iget-object v0, v0, Lil;->a:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 195
    if-nez v0, :cond_0

    move-object v0, v1

    .line 214
    :goto_0
    return-object v0

    .line 200
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 201
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 204
    iget-object v4, p0, Lil$a;->a:Lil;

    invoke-static {v4, p1, v3}, Lil;->a(Lil;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 206
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 210
    goto :goto_0

    .line 211
    :cond_3
    iget-object v0, p0, Lil$a;->a:Lil;

    iget-object v0, v0, Lil;->a:Lcom/google/common/collect/Multimap;

    instance-of v0, v0, Lcom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_4

    .line 212
    invoke-static {v2}, Lcom/google/common/collect/Sets;->newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lil$a;->a:Lil;

    invoke-virtual {v0}, Lil;->clear()V

    .line 178
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lil$a;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lil$a;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lil$a$b;

    invoke-direct {v0, p0}, Lil$a$b;-><init>(Lil$a;)V

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lil$a;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
