.class Lhf$l;
.super Lhf$i;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<TK;TV;>.i;",
        "Ljava/util/Set",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhf;


# direct methods
.method constructor <init>(Lhf;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 616
    iput-object p1, p0, Lhf$l;->a:Lhf;

    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lhf$i;-><init>(Lhf;Ljava/lang/Object;Ljava/util/Collection;Lhf$i;)V

    .line 618
    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 622
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    const/4 v0, 0x0

    .line 636
    :cond_0
    :goto_0
    return v0

    .line 625
    :cond_1
    invoke-virtual {p0}, Lhf$l;->size()I

    move-result v1

    .line 630
    iget-object v0, p0, Lhf$l;->c:Ljava/util/Collection;

    check-cast v0, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result v0

    .line 631
    if-eqz v0, :cond_0

    .line 632
    iget-object v2, p0, Lhf$l;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 633
    iget-object v3, p0, Lhf$l;->a:Lhf;

    iget-object v4, p0, Lhf$l;->a:Lhf;

    invoke-static {v4}, Lhf;->d(Lhf;)I

    move-result v4

    sub-int v1, v2, v1

    add-int/2addr v1, v4

    invoke-static {v3, v1}, Lhf;->a(Lhf;I)I

    .line 634
    invoke-virtual {p0}, Lhf$l;->b()V

    goto :goto_0
.end method
