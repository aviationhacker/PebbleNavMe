.class Lil$b$1;
.super Lcom/google/common/collect/Multisets$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lil$b;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$c",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lil$b;


# direct methods
.method constructor <init>(Lil$b;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lil$b$1;->a:Lil$b;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$c;-><init>()V

    return-void
.end method

.method private a(Lcom/google/common/base/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lil$b$1;->a:Lil$b;

    iget-object v0, v0, Lil$b;->a:Lil;

    new-instance v1, Lil$b$1$1;

    invoke-direct {v1, p0, p1}, Lil$b$1$1;-><init>(Lil$b$1;Lcom/google/common/base/Predicate;)V

    .line 397
    invoke-virtual {v0, v1}, Lil;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method a()Lcom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lil$b$1;->a:Lil$b;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lil$b$1;->a:Lil$b;

    invoke-virtual {v0}, Lil$b;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 409
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lil$b$1;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 414
    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-direct {p0, v0}, Lil$b$1;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lil$b$1;->a:Lil$b;

    iget-object v0, v0, Lil$b;->a:Lil;

    invoke-virtual {v0}, Lil;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
