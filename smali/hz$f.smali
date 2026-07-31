.class Lhz$f;
.super Lcom/google/common/collect/ForwardingSortedSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingSortedSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field final b:Lhy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhy",
            "<-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lhy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSortedSet;-><init>()V

    .line 150
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    iput-object v0, p0, Lhz$f;->a:Ljava/util/SortedSet;

    .line 151
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhy;

    iput-object v0, p0, Lhz$f;->b:Lhy;

    .line 152
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lhz$f;->b:Lhy;

    invoke-interface {v0, p1}, Lhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lhz$f;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lhz$f;->a:Ljava/util/SortedSet;

    iget-object v1, p0, Lhz$f;->b:Lhy;

    invoke-static {p1, v1}, Lhz;->c(Ljava/util/Collection;Lhy;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lhz$f;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lhz$f;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lhz$f;->delegate()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lhz$f;->a:Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lhz$f;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lhz$f;->b:Lhy;

    invoke-static {v0, v1}, Lhz;->a(Ljava/util/SortedSet;Lhy;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lhz$f;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lhz$f;->b:Lhy;

    invoke-static {v0, v1}, Lhz;->a(Ljava/util/SortedSet;Lhy;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lhz$f;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    iget-object v1, p0, Lhz$f;->b:Lhy;

    invoke-static {v0, v1}, Lhz;->a(Ljava/util/SortedSet;Lhy;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
