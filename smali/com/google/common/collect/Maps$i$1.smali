.class Lcom/google/common/collect/Maps$i$1;
.super Lcom/google/common/collect/Maps$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$i;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$q",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$i;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$i;Ljava/util/NavigableMap;)V
    .locals 0

    .prologue
    .line 3020
    iput-object p1, p0, Lcom/google/common/collect/Maps$i$1;->a:Lcom/google/common/collect/Maps$i;

    invoke-direct {p0, p2}, Lcom/google/common/collect/Maps$q;-><init>(Ljava/util/NavigableMap;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3023
    iget-object v0, p0, Lcom/google/common/collect/Maps$i$1;->a:Lcom/google/common/collect/Maps$i;

    .line 3024
    invoke-static {v0}, Lcom/google/common/collect/Maps$i;->b(Lcom/google/common/collect/Maps$i;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$i$1;->a:Lcom/google/common/collect/Maps$i;

    .line 3025
    invoke-static {v1}, Lcom/google/common/collect/Maps$i;->a(Lcom/google/common/collect/Maps$i;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 3023
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/google/common/collect/Maps$i$1;->a:Lcom/google/common/collect/Maps$i;

    .line 3031
    invoke-static {v0}, Lcom/google/common/collect/Maps$i;->b(Lcom/google/common/collect/Maps$i;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$i$1;->a:Lcom/google/common/collect/Maps$i;

    .line 3033
    invoke-static {v1}, Lcom/google/common/collect/Maps$i;->a(Lcom/google/common/collect/Maps$i;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v2

    .line 3032
    invoke-static {v1, v2}, Lcom/google/common/base/Predicates;->and(Lcom/google/common/base/Predicate;Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    .line 3030
    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->removeIf(Ljava/util/Iterator;Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
