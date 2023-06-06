.class Lcom/google/common/collect/ImmutableMultiset$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:[Ljava/lang/Object;

.field final b:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 383
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:[Ljava/lang/Object;

    .line 384
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$c;->b:[I

    .line 385
    const/4 v0, 0x0

    .line 386
    invoke-interface {p1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 387
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:[Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 388
    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$c;->b:[I

    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v0

    aput v0, v3, v1

    .line 389
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 390
    goto :goto_0

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:[Ljava/lang/Object;

    array-length v0, v0

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v1

    .line 395
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/google/common/collect/ImmutableMultiset$c;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/google/common/collect/ImmutableMultiset$c;->b:[I

    aget v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/LinkedHashMultiset;->add(Ljava/lang/Object;I)I

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {v1}, Lcom/google/common/collect/ImmutableMultiset;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMultiset;

    move-result-object v0

    return-object v0
.end method
