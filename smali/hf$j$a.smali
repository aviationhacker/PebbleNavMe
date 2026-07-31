.class Lhf$j$a;
.super Lhf$i$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhf$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhf",
        "<TK;TV;>.i.a;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lhf$j;


# direct methods
.method constructor <init>(Lhf$j;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lhf$j$a;->d:Lhf$j;

    invoke-direct {p0, p1}, Lhf$i$a;-><init>(Lhf$i;)V

    return-void
.end method

.method public constructor <init>(Lhf$j;I)V
    .locals 1

    .prologue
    .line 870
    iput-object p1, p0, Lhf$j$a;->d:Lhf$j;

    .line 871
    invoke-virtual {p1}, Lhf$j;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lhf$i$a;-><init>(Lhf$i;Ljava/util/Iterator;)V

    .line 872
    return-void
.end method

.method private c()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 875
    invoke-virtual {p0}, Lhf$j$a;->b()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 905
    iget-object v0, p0, Lhf$j$a;->d:Lhf$j;

    invoke-virtual {v0}, Lhf$j;->isEmpty()Z

    move-result v0

    .line 906
    invoke-direct {p0}, Lhf$j$a;->c()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 907
    iget-object v1, p0, Lhf$j$a;->d:Lhf$j;

    iget-object v1, v1, Lhf$j;->g:Lhf;

    invoke-static {v1}, Lhf;->c(Lhf;)I

    .line 908
    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lhf$j$a;->d:Lhf$j;

    invoke-virtual {v0}, Lhf$j;->d()V

    .line 911
    :cond_0
    return-void
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 880
    invoke-direct {p0}, Lhf$j$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 890
    invoke-direct {p0}, Lhf$j$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 885
    invoke-direct {p0}, Lhf$j$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 895
    invoke-direct {p0}, Lhf$j$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 900
    invoke-direct {p0}, Lhf$j$a;->c()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 901
    return-void
.end method
