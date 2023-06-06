.class Lcom/google/common/collect/ImmutableList$a;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    .line 502
    iput-object p1, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    .line 503
    return-void
.end method

.method private a(I)I
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method private b(I)I
    .locals 1

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->size()I

    move-result v0

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 544
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$a;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 525
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 526
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$a;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 498
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 532
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableList$a;->a(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 498
    invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->listIterator()Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 498
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$a;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 538
    iget-object v0, p0, Lcom/google/common/collect/ImmutableList$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-direct {p0, p2}, Lcom/google/common/collect/ImmutableList$a;->b(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableList$a;->b(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 498
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$a;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
