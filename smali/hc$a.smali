.class Lhc$a;
.super Lcom/google/common/collect/ForwardingSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lhc;


# direct methods
.method private constructor <init>(Lhc;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lhc$a;->b:Lhc;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    .line 281
    iget-object v0, p0, Lhc$a;->b:Lhc;

    invoke-static {v0}, Lhc;->b(Lhc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lhc$a;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lhc;Lhc$1;)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lhc$a;-><init>(Lhc;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lhc$a;->b:Lhc;

    invoke-virtual {v0}, Lhc;->clear()V

    .line 291
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lhc$a;->delegate()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lhc$a;->standardContainsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lhc$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lhc$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lhc$a;->a:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lhc$a;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 314
    new-instance v1, Lhc$a$1;

    invoke-direct {v1, p0, v0}, Lhc$a$1;-><init>(Lhc$a;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lhc$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    .line 300
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 301
    iget-object v0, p0, Lhc$a;->b:Lhc;

    iget-object v0, v0, Lhc;->a:Lhc;

    invoke-static {v0}, Lhc;->b(Lhc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lhc$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 308
    const/4 v0, 0x1

    goto :goto_0
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
    .line 384
    invoke-virtual {p0, p1}, Lhc$a;->standardRemoveAll(Ljava/util/Collection;)Z

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
    .line 389
    invoke-virtual {p0, p1}, Lhc$a;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lhc$a;->standardToArray()[Ljava/lang/Object;

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
    .line 369
    invoke-virtual {p0, p1}, Lhc$a;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
