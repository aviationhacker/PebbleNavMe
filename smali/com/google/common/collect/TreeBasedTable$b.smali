.class Lcom/google/common/collect/TreeBasedTable$b;
.super Lkl$f;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeBasedTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkl",
        "<TR;TC;TV;>.f;",
        "Ljava/util/SortedMap",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field transient f:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation
.end field

.field final synthetic g:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TC;)V"
        }
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    .line 184
    invoke-direct {p0, p1, p2}, Lkl$f;-><init>(Lkl;Ljava/lang/Object;)V

    .line 185
    iput-object p3, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    .line 186
    iput-object p4, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    .line 187
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 188
    invoke-virtual {p0, p3, p4}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 187
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 189
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 205
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->g()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    .line 210
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    .line 211
    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->h()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TC;>;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeBasedTable;->columnComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 294
    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lkl$f;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->f()Ljava/util/SortedMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iput-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    .line 288
    iput-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->b:Ljava/util/Map;

    .line 290
    :cond_0
    return-void
.end method

.method public e()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/google/common/collect/Maps$s;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$s;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method f()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v0, v0, Lcom/google/common/collect/TreeBasedTable;->a:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    iput-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/TreeBasedTable$b;->f:Ljava/util/SortedMap;

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->g()Ljava/util/SortedMap;

    move-result-object v0

    .line 235
    if-nez v0, :cond_0

    .line 236
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->g()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method g()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-super {p0}, Lkl$f;->a()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method h()Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->f()Ljava/util/SortedMap;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_2

    .line 272
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 280
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 223
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$b;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->e()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->g()Ljava/util/SortedMap;

    move-result-object v0

    .line 244
    if-nez v0, :cond_0

    .line 245
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$b;->g()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 300
    invoke-super {p0, p1, p2}, Lkl$f;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 217
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/SortedMap",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TreeBasedTable$b;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 229
    new-instance v0, Lcom/google/common/collect/TreeBasedTable$b;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$b;->g:Lcom/google/common/collect/TreeBasedTable;

    iget-object v2, p0, Lcom/google/common/collect/TreeBasedTable$b;->a:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/TreeBasedTable$b;->e:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/collect/TreeBasedTable$b;-><init>(Lcom/google/common/collect/TreeBasedTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
