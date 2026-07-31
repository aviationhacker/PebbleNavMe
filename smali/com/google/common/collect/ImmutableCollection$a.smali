.class abstract Lcom/google/common/collect/ImmutableCollection$a;
.super Lcom/google/common/collect/ImmutableCollection$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection$Builder",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:[Ljava/lang/Object;

.field b:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection$Builder;-><init>()V

    .line 430
    const-string v0, "initialCapacity"

    invoke-static {p1, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 431
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 433
    return-void
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    array-length v1, v1

    .line 443
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$a;->a(II)I

    move-result v1

    .line 442
    invoke-static {v0, v1}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableCollection$a;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;

    move-result-object v0

    return-object v0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p1}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 458
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;->a(I)V

    .line 459
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    .line 461
    return-object p0
.end method

.method public add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/common/collect/ImmutableCollection$a",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 449
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    iget v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;->a(I)V

    .line 451
    iget-object v0, p0, Lcom/google/common/collect/ImmutableCollection$a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    aput-object p1, v0, v1

    .line 452
    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableCollection$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 466
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 467
    check-cast v0, Ljava/util/Collection;

    .line 468
    iget v1, p0, Lcom/google/common/collect/ImmutableCollection$a;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableCollection$a;->a(I)V

    .line 470
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;

    .line 471
    return-object p0
.end method
