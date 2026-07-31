.class final Lgx$c;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lgx$p",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lgx$p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3747
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3748
    new-instance v0, Lgx$c$1;

    invoke-direct {v0, p0}, Lgx$c$1;-><init>(Lgx$c;)V

    iput-object v0, p0, Lgx$c;->a:Lgx$p;

    return-void
.end method


# virtual methods
.method public a()Lgx$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3799
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    .line 3800
    iget-object v1, p0, Lgx$c;->a:Lgx$p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Lgx$p;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3788
    invoke-interface {p1}, Lgx$p;->g()Lgx$p;

    move-result-object v0

    invoke-interface {p1}, Lgx$p;->f()Lgx$p;

    move-result-object v1

    invoke-static {v0, v1}, Lgx;->a(Lgx$p;Lgx$p;)V

    .line 3791
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->g()Lgx$p;

    move-result-object v0

    invoke-static {v0, p1}, Lgx;->a(Lgx$p;Lgx$p;)V

    .line 3792
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    invoke-static {p1, v0}, Lgx;->a(Lgx$p;Lgx$p;)V

    .line 3794
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lgx$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3805
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    .line 3806
    iget-object v1, p0, Lgx$c;->a:Lgx$p;

    if-ne v0, v1, :cond_0

    .line 3807
    const/4 v0, 0x0

    .line 3811
    :goto_0
    return-object v0

    .line 3810
    :cond_0
    invoke-virtual {p0, v0}, Lgx$c;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3850
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    .line 3851
    :goto_0
    iget-object v1, p0, Lgx$c;->a:Lgx$p;

    if-eq v0, v1, :cond_0

    .line 3852
    invoke-interface {v0}, Lgx$p;->f()Lgx$p;

    move-result-object v1

    .line 3853
    invoke-static {v0}, Lgx;->b(Lgx$p;)V

    move-object v0, v1

    .line 3855
    goto :goto_0

    .line 3857
    :cond_0
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    iget-object v1, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0, v1}, Lgx$p;->a(Lgx$p;)V

    .line 3858
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    iget-object v1, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0, v1}, Lgx$p;->b(Lgx$p;)V

    .line 3859
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3829
    check-cast p1, Lgx$p;

    .line 3830
    invoke-interface {p1}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    sget-object v1, Lgx$o;->a:Lgx$o;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 3835
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    iget-object v1, p0, Lgx$c;->a:Lgx$p;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgx$p",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3863
    new-instance v0, Lgx$c$2;

    invoke-virtual {p0}, Lgx$c;->a()Lgx$p;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgx$c$2;-><init>(Lgx$c;Lgx$p;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3747
    check-cast p1, Lgx$p;

    invoke-virtual {p0, p1}, Lgx$c;->a(Lgx$p;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3747
    invoke-virtual {p0}, Lgx$c;->a()Lgx$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3747
    invoke-virtual {p0}, Lgx$c;->b()Lgx$p;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3817
    check-cast p1, Lgx$p;

    .line 3818
    invoke-interface {p1}, Lgx$p;->g()Lgx$p;

    move-result-object v0

    .line 3819
    invoke-interface {p1}, Lgx$p;->f()Lgx$p;

    move-result-object v1

    .line 3820
    invoke-static {v0, v1}, Lgx;->a(Lgx$p;Lgx$p;)V

    .line 3821
    invoke-static {p1}, Lgx;->b(Lgx$p;)V

    .line 3823
    sget-object v0, Lgx$o;->a:Lgx$o;

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 3840
    const/4 v1, 0x0

    .line 3841
    iget-object v0, p0, Lgx$c;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lgx$c;->a:Lgx$p;

    if-eq v0, v2, :cond_0

    .line 3843
    add-int/lit8 v1, v1, 0x1

    .line 3842
    invoke-interface {v0}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    goto :goto_0

    .line 3845
    :cond_0
    return v1
.end method
