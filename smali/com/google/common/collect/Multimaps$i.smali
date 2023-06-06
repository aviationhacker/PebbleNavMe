.class final Lcom/google/common/collect/Multimaps$i;
.super Lcom/google/common/collect/Multimaps$j;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/ListMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Multimaps$j",
        "<TK;TV1;TV2;>;",
        "Lcom/google/common/collect/ListMultimap",
        "<TK;TV2;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/collect/ListMultimap;Lcom/google/common/collect/Maps$EntryTransformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ListMultimap",
            "<TK;TV1;>;",
            "Lcom/google/common/collect/Maps$EntryTransformer",
            "<-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    .prologue
    .line 1427
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Multimaps$j;-><init>(Lcom/google/common/collect/Multimap;Lcom/google/common/collect/Maps$EntryTransformer;)V

    .line 1428
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV1;>;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1432
    check-cast p2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->b:Lcom/google/common/collect/Maps$EntryTransformer;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/collect/Maps$EntryTransformer;Ljava/lang/Object;)Lcom/google/common/base/Function;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method synthetic b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$i;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$i;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->a:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$i;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$i;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$i;->a:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/Multimaps$i;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1422
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$i;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV2;>;)",
            "Ljava/util/List",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1448
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
