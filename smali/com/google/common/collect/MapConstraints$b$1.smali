.class Lcom/google/common/collect/MapConstraints$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/MapConstraints$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$b;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$b$1;->b:Lcom/google/common/collect/MapConstraints$b;

    iput-object p2, p0, Lcom/google/common/collect/MapConstraints$b$1;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$b$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$b$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/google/common/collect/MapConstraints$b$1;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$b$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 575
    return-void
.end method
