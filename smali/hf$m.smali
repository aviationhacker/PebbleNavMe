.class Lhf$m;
.super Lhf$i;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<TK;TV;>.i;",
        "Ljava/util/SortedSet",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic g:Lhf;


# direct methods
.method constructor <init>(Lhf;Ljava/lang/Object;Ljava/util/SortedSet;Lhf$i;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lhf$i;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/SortedSet",
            "<TV;>;",
            "Lhf",
            "<TK;TV;>.i;)V"
        }
    .end annotation

    .prologue
    .line 645
    iput-object p1, p0, Lhf$m;->g:Lhf;

    .line 646
    invoke-direct {p0, p1, p2, p3, p4}, Lhf$i;-><init>(Lhf;Ljava/lang/Object;Ljava/util/Collection;Lhf$i;)V

    .line 647
    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TV;>;"
        }
    .end annotation

    .prologue
    .line 655
    invoke-virtual {p0}, Lhf$m;->h()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 660
    invoke-virtual {p0}, Lhf$m;->a()V

    .line 661
    invoke-virtual {p0}, Lhf$m;->h()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p0}, Lhf$m;->e()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 672
    invoke-virtual {p0}, Lhf$m;->a()V

    .line 673
    new-instance v0, Lhf$m;

    iget-object v1, p0, Lhf$m;->g:Lhf;

    .line 674
    invoke-virtual {p0}, Lhf$m;->c()Ljava/lang/Object;

    move-result-object v2

    .line 675
    invoke-virtual {p0}, Lhf$m;->h()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 676
    invoke-virtual {p0}, Lhf$m;->f()Lhf$i;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lhf$m;-><init>(Lhf;Ljava/lang/Object;Ljava/util/SortedSet;Lhf$i;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lhf$m;->f()Lhf$i;

    move-result-object p0

    goto :goto_0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p0}, Lhf$m;->a()V

    .line 667
    invoke-virtual {p0}, Lhf$m;->h()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p0}, Lhf$m;->a()V

    .line 682
    new-instance v0, Lhf$m;

    iget-object v1, p0, Lhf$m;->g:Lhf;

    .line 683
    invoke-virtual {p0}, Lhf$m;->c()Ljava/lang/Object;

    move-result-object v2

    .line 684
    invoke-virtual {p0}, Lhf$m;->h()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 685
    invoke-virtual {p0}, Lhf$m;->f()Lhf$i;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lhf$m;-><init>(Lhf;Ljava/lang/Object;Ljava/util/SortedSet;Lhf$i;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lhf$m;->f()Lhf$i;

    move-result-object p0

    goto :goto_0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/SortedSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 690
    invoke-virtual {p0}, Lhf$m;->a()V

    .line 691
    new-instance v0, Lhf$m;

    iget-object v1, p0, Lhf$m;->g:Lhf;

    .line 692
    invoke-virtual {p0}, Lhf$m;->c()Ljava/lang/Object;

    move-result-object v2

    .line 693
    invoke-virtual {p0}, Lhf$m;->h()Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v3

    .line 694
    invoke-virtual {p0}, Lhf$m;->f()Lhf$i;

    move-result-object v4

    if-nez v4, :cond_0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lhf$m;-><init>(Lhf;Ljava/lang/Object;Ljava/util/SortedSet;Lhf$i;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lhf$m;->f()Lhf$i;

    move-result-object p0

    goto :goto_0
.end method
