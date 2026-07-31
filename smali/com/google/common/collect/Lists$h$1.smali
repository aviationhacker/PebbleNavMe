.class Lcom/google/common/collect/Lists$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$h;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Ljava/util/ListIterator;

.field final synthetic c:Lcom/google/common/collect/Lists$h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$h;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 909
    iput-object p1, p0, Lcom/google/common/collect/Lists$h$1;->c:Lcom/google/common/collect/Lists$h;

    iput-object p2, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 916
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$h$1;->a:Z

    .line 918
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 932
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$h$1;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 935
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$h$1;->a:Z

    .line 936
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->c:Lcom/google/common/collect/Lists$h;

    iget-object v1, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Lists$h;->a(Lcom/google/common/collect/Lists$h;I)I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$h$1;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 949
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$h$1;->a:Z

    .line 950
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$h$1;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$h$1;->a:Z

    invoke-static {v0}, Lhu;->a(Z)V

    .line 961
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/Lists$h$1;->a:Z

    .line 963
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/google/common/collect/Lists$h$1;->a:Z

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 968
    iget-object v0, p0, Lcom/google/common/collect/Lists$h$1;->b:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 969
    return-void
.end method
