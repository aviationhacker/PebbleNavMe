.class Lcom/google/common/collect/ConcurrentHashMultiset$a;
.super Lhj$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ConcurrentHashMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhj",
        "<TE;>.b;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/google/common/collect/ConcurrentHashMultiset;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    invoke-direct {p0, p1}, Lhj$b;-><init>(Lhj;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ConcurrentHashMultiset;Lcom/google/common/collect/ConcurrentHashMultiset$1;)V
    .locals 0

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/google/common/collect/ConcurrentHashMultiset$a;-><init>(Lcom/google/common/collect/ConcurrentHashMultiset;)V

    return-void
.end method

.method private c()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayListWithExpectedSize(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 581
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 582
    return-object v0
.end method


# virtual methods
.method synthetic a()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b()Lcom/google/common/collect/ConcurrentHashMultiset;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/google/common/collect/ConcurrentHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ConcurrentHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/collect/ConcurrentHashMultiset$a;->b:Lcom/google/common/collect/ConcurrentHashMultiset;

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/google/common/collect/ConcurrentHashMultiset$a;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
