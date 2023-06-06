.class Lcom/google/common/collect/MinMaxPriorityQueue$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MinMaxPriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/MinMaxPriorityQueue;

.field private b:I

.field private c:I

.field private d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method private constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V
    .locals 1

    .prologue
    .line 760
    iput-object p1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    .line 762
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MinMaxPriorityQueue;Lcom/google/common/collect/MinMaxPriorityQueue$1;)V
    .locals 0

    .prologue
    .line 760
    invoke-direct {p0, p1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;-><init>(Lcom/google/common/collect/MinMaxPriorityQueue;)V

    return-void
.end method

.method private a(I)I
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 850
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 854
    :cond_0
    return p1
.end method

.method private a(Ljava/lang/Iterable;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TE;>;TE;)Z"
        }
    .end annotation

    .prologue
    .line 819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 820
    if-ne v1, p2, :cond_0

    .line 821
    const/4 v0, 0x1

    .line 824
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->c(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:I

    if-eq v0, v1, :cond_0

    .line 840
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 842
    :cond_0
    return-void
.end method

.method a(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 829
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(Lcom/google/common/collect/MinMaxPriorityQueue;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 830
    iget-object v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-static {v2}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(Lcom/google/common/collect/MinMaxPriorityQueue;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 831
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    .line 832
    const/4 v1, 0x1

    .line 835
    :cond_0
    return v1

    .line 829
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a()V

    .line 771
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d:Ljava/util/Queue;

    .line 772
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 777
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a()V

    .line 778
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a(I)I

    move-result v0

    .line 779
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 780
    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    .line 781
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->g:Z

    .line 782
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 788
    :goto_0
    return-object v0

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d:Ljava/util/Queue;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    .line 785
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->f:Ljava/lang/Object;

    .line 786
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->f:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 787
    iput-boolean v2, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->g:Z

    .line 788
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->f:Ljava/lang/Object;

    goto :goto_0

    .line 791
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "iterator moved past last element in queue."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->g:Z

    invoke-static {v0}, Lhu;->a(Z)V

    .line 797
    invoke-virtual {p0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a()V

    .line 798
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->g:Z

    .line 799
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->c:I

    .line 800
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    invoke-virtual {v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 801
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a:Lcom/google/common/collect/MinMaxPriorityQueue;

    iget v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MinMaxPriorityQueue;->b(I)Lcom/google/common/collect/MinMaxPriorityQueue$b;

    move-result-object v0

    .line 802
    if-eqz v0, :cond_1

    .line 803
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d:Ljava/util/Queue;

    if-nez v1, :cond_0

    .line 804
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d:Ljava/util/Queue;

    .line 805
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->e:Ljava/util/List;

    .line 807
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->d:Ljava/util/Queue;

    iget-object v2, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 808
    iget-object v1, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->e:Ljava/util/List;

    iget-object v0, v0, Lcom/google/common/collect/MinMaxPriorityQueue$b;->b:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_1
    iget v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->b:I

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_2
    iget-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->f:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/MinMaxPriorityQueue$c;->a(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 813
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/MinMaxPriorityQueue$c;->f:Ljava/lang/Object;

    goto :goto_0
.end method
