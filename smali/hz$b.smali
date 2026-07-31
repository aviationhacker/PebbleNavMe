.class Lhz$b;
.super Lcom/google/common/collect/ForwardingList;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
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
.method constructor <init>(Ljava/util/List;Lhy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Lhy",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingList;-><init>()V

    .line 212
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lhz$b;->a:Ljava/util/List;

    .line 213
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhy;

    iput-object v0, p0, Lhz$b;->b:Lhy;

    .line 214
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lhz$b;->b:Lhy;

    invoke-interface {v0, p2}, Lhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 231
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lhz$b;->b:Lhy;

    invoke-interface {v0, p1}, Lhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    iget-object v1, p0, Lhz$b;->b:Lhy;

    invoke-static {p2, v1}, Lhz;->c(Ljava/util/Collection;Lhy;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

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
    .line 235
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    iget-object v1, p0, Lhz$b;->b:Lhy;

    invoke-static {p1, v1}, Lhz;->c(Ljava/util/Collection;Lhy;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lhz$b;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lhz$b;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iget-object v1, p0, Lhz$b;->b:Lhy;

    invoke-static {v0, v1}, Lhz;->a(Ljava/util/ListIterator;Lhy;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iget-object v1, p0, Lhz$b;->b:Lhy;

    invoke-static {v0, v1}, Lhz;->a(Ljava/util/ListIterator;Lhy;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lhz$b;->b:Lhy;

    invoke-interface {v0, p2}, Lhy;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lhz$b;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lhz$b;->b:Lhy;

    invoke-static {v0, v1}, Lhz;->a(Ljava/util/List;Lhy;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
