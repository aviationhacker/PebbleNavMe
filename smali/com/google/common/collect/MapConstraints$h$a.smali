.class Lcom/google/common/collect/MapConstraints$h$a;
.super Lcom/google/common/collect/ForwardingMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$h;->asMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMap",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/google/common/collect/MapConstraints$h;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$h;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 442
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$h$a;->d:Lcom/google/common/collect/MapConstraints$h;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$h$a;->c:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 464
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$h$a;->d:Lcom/google/common/collect/MapConstraints$h;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/MapConstraints$h;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 465
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 465
    goto :goto_0

    .line 466
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$h$a;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$h$a;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$h$a;->c:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$h$a;->a:Ljava/util/Set;

    .line 454
    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$h$a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapConstraints$h$a;->d:Lcom/google/common/collect/MapConstraints$h;

    iget-object v1, v1, Lcom/google/common/collect/MapConstraints$h;->a:Lcom/google/common/collect/MapConstraint;

    invoke-static {v0, v1}, Lcom/google/common/collect/MapConstraints;->b(Ljava/util/Set;Lcom/google/common/collect/MapConstraint;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$h$a;->a:Ljava/util/Set;

    .line 457
    :cond_0
    return-object v0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$h$a;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$h$a;->b:Ljava/util/Collection;

    .line 474
    if-nez v0, :cond_0

    .line 475
    new-instance v0, Lcom/google/common/collect/MapConstraints$b;

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$h$a;->delegate()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$h$a;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapConstraints$b;-><init>(Ljava/util/Collection;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$h$a;->b:Ljava/util/Collection;

    .line 477
    :cond_0
    return-object v0
.end method
