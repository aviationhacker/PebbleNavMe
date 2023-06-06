.class public LCatalano/Core/Structs/BinaryHeap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Ljava/lang/Comparable",
        "<TE;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, LCatalano/Core/Structs/BinaryHeap;->b:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    .line 57
    return-void
.end method

.method public constructor <init>([Ljava/lang/Comparable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, LCatalano/Core/Structs/BinaryHeap;->b:I

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    .line 64
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 65
    iget-object v3, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_1

    .line 68
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-direct {p0, v1, v0}, LCatalano/Core/Structs/BinaryHeap;->b(ILjava/lang/Comparable;)V

    .line 67
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 70
    :cond_1
    return-void
.end method

.method private a(ILjava/lang/Comparable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 120
    :goto_0
    if-lez p1, :cond_0

    .line 121
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v1, v0, 0x2

    .line 122
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 123
    invoke-interface {p2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 129
    :cond_0
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void

    .line 126
    :cond_1
    iget-object v2, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v1

    .line 128
    goto :goto_0
.end method

.method private b(ILjava/lang/Comparable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    iget-object v2, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move p1, v0

    .line 136
    :cond_1
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2

    .line 137
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, 0x1

    .line 138
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    iget-object v2, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    .line 139
    add-int/lit8 v0, v1, 0x1

    .line 141
    :goto_1
    iget-object v1, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 147
    :cond_2
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Comparable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 79
    invoke-direct {p0, v0, p1}, LCatalano/Core/Structs/BinaryHeap;->a(ILjava/lang/Comparable;)V

    .line 80
    iget v0, p0, LCatalano/Core/Structs/BinaryHeap;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LCatalano/Core/Structs/BinaryHeap;->b:I

    .line 81
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, LCatalano/Core/Structs/BinaryHeap;->b:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public min()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public remove()Ljava/lang/Comparable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 89
    iget-object v1, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    iget-object v2, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    .line 90
    invoke-direct {p0, v3, v1}, LCatalano/Core/Structs/BinaryHeap;->b(ILjava/lang/Comparable;)V

    .line 91
    iget v1, p0, LCatalano/Core/Structs/BinaryHeap;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, LCatalano/Core/Structs/BinaryHeap;->b:I

    .line 92
    return-object v0
.end method

.method public remove(Ljava/lang/Comparable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LCatalano/Core/Structs/BinaryHeap;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
