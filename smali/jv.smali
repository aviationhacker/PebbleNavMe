.class public final Ljv;
.super Lcom/google/common/collect/ImmutableSortedMultiset;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSortedMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final b:[J


# instance fields
.field private final transient c:Ljw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljw",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient d:[J

.field private final transient e:I

.field private final transient f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    sput-object v0, Ljv;->b:[J

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedSet;->a(Ljava/util/Comparator;)Ljw;

    move-result-object v0

    iput-object v0, p0, Ljv;->c:Ljw;

    .line 43
    sget-object v0, Ljv;->b:[J

    iput-object v0, p0, Ljv;->d:[J

    .line 44
    iput v1, p0, Ljv;->e:I

    .line 45
    iput v1, p0, Ljv;->f:I

    .line 46
    return-void
.end method

.method public constructor <init>(Ljw;[JII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljw",
            "<TE;>;[JII)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 50
    iput-object p1, p0, Ljv;->c:Ljw;

    .line 51
    iput-object p2, p0, Ljv;->d:[J

    .line 52
    iput p3, p0, Ljv;->e:I

    .line 53
    iput p4, p0, Ljv;->f:I

    .line 54
    return-void
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Ljv;->d:[J

    iget v1, p0, Ljv;->e:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljv;->d:[J

    iget v3, p0, Ljv;->e:I

    add-int/2addr v3, p1

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method a(II)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 104
    iget v0, p0, Ljv;->f:I

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 105
    if-ne p1, p2, :cond_1

    .line 106
    invoke-virtual {p0}, Ljv;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljv;->a(Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p0

    .line 112
    :cond_0
    :goto_0
    return-object p0

    .line 107
    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Ljv;->f:I

    if-eq p2, v0, :cond_0

    .line 110
    :cond_2
    iget-object v0, p0, Ljv;->c:Ljw;

    .line 111
    invoke-virtual {v0, p1, p2}, Ljw;->a(II)Ljw;

    move-result-object v1

    .line 112
    new-instance v0, Ljv;

    iget-object v2, p0, Ljv;->d:[J

    iget v3, p0, Ljv;->e:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-direct {v0, v1, v2, v3, v4}, Ljv;-><init>(Ljw;[JII)V

    move-object p0, v0

    goto :goto_0
.end method

.method a(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Ljv;->c:Ljw;

    invoke-virtual {v0}, Ljw;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1}, Ljv;->b(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 2

    .prologue
    .line 119
    iget v0, p0, Ljv;->e:I

    if-gtz v0, :cond_0

    iget v0, p0, Ljv;->f:I

    iget-object v1, p0, Ljv;->d:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 77
    iget-object v0, p0, Ljv;->c:Ljw;

    invoke-virtual {v0, p1}, Ljw;->a(Ljava/lang/Object;)I

    move-result v0

    .line 78
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Ljv;->b(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Ljv;->c:Ljw;

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Ljv;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Ljv;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Ljv;->elementSet()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Ljv;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljv;->a(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Ljv;->c:Ljw;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, p1, v0}, Ljw;->c(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljv;->a(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Ljv;->headMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Ljv;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Ljv;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljv;->a(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Ljv;->d:[J

    iget v1, p0, Ljv;->e:I

    iget v2, p0, Ljv;->f:I

    add-int/2addr v1, v2

    aget-wide v0, v0, v1

    iget-object v2, p0, Ljv;->d:[J

    iget v3, p0, Ljv;->e:I

    aget-wide v2, v2, v3

    sub-long/2addr v0, v2

    .line 84
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lcom/google/common/collect/ImmutableSortedMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v1, p0, Ljv;->c:Ljw;

    .line 100
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Ljw;->d(Ljava/lang/Object;Z)I

    move-result v0

    iget v1, p0, Ljv;->f:I

    .line 99
    invoke-virtual {p0, v0, v1}, Ljv;->a(II)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0

    .line 100
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/SortedMultiset;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1, p2}, Ljv;->tailMultiset(Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lcom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method
