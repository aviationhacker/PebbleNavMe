.class final Ljj$e;
.super Ljj$m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljj$m",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljj;


# direct methods
.method constructor <init>(Ljj;)V
    .locals 1

    .prologue
    .line 3864
    iput-object p1, p0, Ljj$e;->a:Ljj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljj$m;-><init>(Ljj$1;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 3908
    iget-object v0, p0, Ljj$e;->a:Ljj;

    invoke-virtual {v0}, Ljj;->clear()V

    .line 3909
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3873
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3883
    :cond_0
    :goto_0
    return v0

    .line 3876
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3877
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3878
    if-eqz v1, :cond_0

    .line 3881
    iget-object v2, p0, Ljj$e;->a:Ljj;

    invoke-virtual {v2, v1}, Ljj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3883
    if-eqz v1, :cond_0

    iget-object v2, p0, Ljj$e;->a:Ljj;

    iget-object v2, v2, Ljj;->g:Lcom/google/common/base/Equivalence;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 3903
    iget-object v0, p0, Ljj$e;->a:Ljj;

    invoke-virtual {v0}, Ljj;->isEmpty()Z

    move-result v0

    return v0
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
    .line 3868
    new-instance v0, Ljj$d;

    iget-object v1, p0, Ljj$e;->a:Ljj;

    invoke-direct {v0, v1}, Ljj$d;-><init>(Ljj;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 3888
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_1

    .line 3893
    :cond_0
    :goto_0
    return v0

    .line 3891
    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    .line 3892
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 3893
    if-eqz v1, :cond_0

    iget-object v2, p0, Ljj$e;->a:Ljj;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljj;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 3898
    iget-object v0, p0, Ljj$e;->a:Ljj;

    invoke-virtual {v0}, Ljj;->size()I

    move-result v0

    return v0
.end method
