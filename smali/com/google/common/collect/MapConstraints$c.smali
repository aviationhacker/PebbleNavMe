.class Lcom/google/common/collect/MapConstraints$c;
.super Lcom/google/common/collect/MapConstraints$g;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/MapConstraints$g",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile a:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;Lcom/google/common/collect/MapConstraint;)V
    .locals 0
    .param p2    # Lcom/google/common/collect/BiMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;",
            "Lcom/google/common/collect/MapConstraint",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/MapConstraints$g;-><init>(Ljava/util/Map;Lcom/google/common/collect/MapConstraint;)V

    .line 371
    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$c;->a:Lcom/google/common/collect/BiMap;

    .line 372
    return-void
.end method


# virtual methods
.method protected a()Lcom/google/common/collect/BiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 376
    invoke-super {p0}, Lcom/google/common/collect/MapConstraints$g;->delegate()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method protected synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$c;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$c;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$c;->b:Lcom/google/common/collect/MapConstraint;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/MapConstraint;->checkKeyValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 382
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$c;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/BiMap;->forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$c;->a:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/google/common/collect/MapConstraints$c;

    .line 389
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$c;->a()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/MapConstraints$k;

    iget-object v3, p0, Lcom/google/common/collect/MapConstraints$c;->b:Lcom/google/common/collect/MapConstraint;

    invoke-direct {v2, v3}, Lcom/google/common/collect/MapConstraints$k;-><init>(Lcom/google/common/collect/MapConstraint;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/google/common/collect/MapConstraints$c;-><init>(Lcom/google/common/collect/BiMap;Lcom/google/common/collect/BiMap;Lcom/google/common/collect/MapConstraint;)V

    iput-object v0, p0, Lcom/google/common/collect/MapConstraints$c;->a:Lcom/google/common/collect/BiMap;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$c;->a:Lcom/google/common/collect/BiMap;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$c;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$c;->a()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
