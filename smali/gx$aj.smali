.class final Lgx$aj;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "aj"
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
    .line 3610
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3611
    new-instance v0, Lgx$aj$1;

    invoke-direct {v0, p0}, Lgx$aj$1;-><init>(Lgx$aj;)V

    iput-object v0, p0, Lgx$aj;->a:Lgx$p;

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
    .line 3662
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    .line 3663
    iget-object v1, p0, Lgx$aj;->a:Lgx$p;

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
    .line 3651
    invoke-interface {p1}, Lgx$p;->j()Lgx$p;

    move-result-object v0

    invoke-interface {p1}, Lgx$p;->i()Lgx$p;

    move-result-object v1

    invoke-static {v0, v1}, Lgx;->b(Lgx$p;Lgx$p;)V

    .line 3654
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->j()Lgx$p;

    move-result-object v0

    invoke-static {v0, p1}, Lgx;->b(Lgx$p;Lgx$p;)V

    .line 3655
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    invoke-static {p1, v0}, Lgx;->b(Lgx$p;Lgx$p;)V

    .line 3657
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
    .line 3668
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    .line 3669
    iget-object v1, p0, Lgx$aj;->a:Lgx$p;

    if-ne v0, v1, :cond_0

    .line 3670
    const/4 v0, 0x0

    .line 3674
    :goto_0
    return-object v0

    .line 3673
    :cond_0
    invoke-virtual {p0, v0}, Lgx$aj;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3713
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    .line 3714
    :goto_0
    iget-object v1, p0, Lgx$aj;->a:Lgx$p;

    if-eq v0, v1, :cond_0

    .line 3715
    invoke-interface {v0}, Lgx$p;->i()Lgx$p;

    move-result-object v1

    .line 3716
    invoke-static {v0}, Lgx;->c(Lgx$p;)V

    move-object v0, v1

    .line 3718
    goto :goto_0

    .line 3720
    :cond_0
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    iget-object v1, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0, v1}, Lgx$p;->c(Lgx$p;)V

    .line 3721
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    iget-object v1, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0, v1}, Lgx$p;->d(Lgx$p;)V

    .line 3722
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3692
    check-cast p1, Lgx$p;

    .line 3693
    invoke-interface {p1}, Lgx$p;->i()Lgx$p;

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
    .line 3698
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    iget-object v1, p0, Lgx$aj;->a:Lgx$p;

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
    .line 3726
    new-instance v0, Lgx$aj$2;

    invoke-virtual {p0}, Lgx$aj;->a()Lgx$p;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgx$aj$2;-><init>(Lgx$aj;Lgx$p;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3610
    check-cast p1, Lgx$p;

    invoke-virtual {p0, p1}, Lgx$aj;->a(Lgx$p;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3610
    invoke-virtual {p0}, Lgx$aj;->a()Lgx$p;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3610
    invoke-virtual {p0}, Lgx$aj;->b()Lgx$p;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3680
    check-cast p1, Lgx$p;

    .line 3681
    invoke-interface {p1}, Lgx$p;->j()Lgx$p;

    move-result-object v0

    .line 3682
    invoke-interface {p1}, Lgx$p;->i()Lgx$p;

    move-result-object v1

    .line 3683
    invoke-static {v0, v1}, Lgx;->b(Lgx$p;Lgx$p;)V

    .line 3684
    invoke-static {p1}, Lgx;->c(Lgx$p;)V

    .line 3686
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
    .line 3703
    const/4 v1, 0x0

    .line 3704
    iget-object v0, p0, Lgx$aj;->a:Lgx$p;

    invoke-interface {v0}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lgx$aj;->a:Lgx$p;

    if-eq v0, v2, :cond_0

    .line 3706
    add-int/lit8 v1, v1, 0x1

    .line 3705
    invoke-interface {v0}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    goto :goto_0

    .line 3708
    :cond_0
    return v1
.end method
