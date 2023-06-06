.class final Lcom/google/common/collect/ImmutableMultiset$a;
.super Lcom/google/common/collect/ImmutableSet$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet$a",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableMultiset;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ImmutableMultiset;Lcom/google/common/collect/ImmutableMultiset$1;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$a;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMultiset$a;->b(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->a()Z

    move-result v0

    return v0
.end method

.method b(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMultiset;->a(I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 339
    instance-of v1, p1, Lcom/google/common/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 340
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    .line 341
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 345
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 359
    new-instance v0, Lcom/google/common/collect/ImmutableMultiset$b;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMultiset$a;->a:Lcom/google/common/collect/ImmutableMultiset;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableMultiset$b;-><init>(Lcom/google/common/collect/ImmutableMultiset;)V

    return-object v0
.end method
