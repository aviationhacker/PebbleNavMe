.class abstract Ljj$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:Ljj$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$n",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Ljj$l",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Ljj$ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj",
            "<TK;TV;>.ae;"
        }
    .end annotation
.end field

.field h:Ljj$ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj",
            "<TK;TV;>.ae;"
        }
    .end annotation
.end field

.field final synthetic i:Ljj;


# direct methods
.method constructor <init>(Ljj;)V
    .locals 1

    .prologue
    .line 3614
    iput-object p1, p0, Ljj$h;->i:Ljj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3615
    iget-object v0, p1, Ljj;->d:[Ljj$n;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljj$h;->b:I

    .line 3616
    const/4 v0, -0x1

    iput v0, p0, Ljj$h;->c:I

    .line 3617
    invoke-virtual {p0}, Ljj$h;->b()V

    .line 3618
    return-void
.end method


# virtual methods
.method a(Ljj$l;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3680
    :try_start_0
    invoke-interface {p1}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v0

    .line 3681
    iget-object v1, p0, Ljj$h;->i:Ljj;

    invoke-virtual {v1, p1}, Ljj;->b(Ljj$l;)Ljava/lang/Object;

    move-result-object v1

    .line 3682
    if-eqz v1, :cond_0

    .line 3683
    new-instance v2, Ljj$ae;

    iget-object v3, p0, Ljj$h;->i:Ljj;

    invoke-direct {v2, v3, v0, v1}, Ljj$ae;-><init>(Ljj;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Ljj$h;->g:Ljj$ae;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3684
    const/4 v0, 0x1

    .line 3690
    iget-object v1, p0, Ljj$h;->d:Ljj$n;

    invoke-virtual {v1}, Ljj$n;->n()V

    :goto_0
    return v0

    .line 3687
    :cond_0
    const/4 v0, 0x0

    .line 3690
    iget-object v1, p0, Ljj$h;->d:Ljj$n;

    invoke-virtual {v1}, Ljj$n;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljj$h;->d:Ljj$n;

    invoke-virtual {v1}, Ljj$n;->n()V

    throw v0
.end method

.method final b()V
    .locals 3

    .prologue
    .line 3624
    const/4 v0, 0x0

    iput-object v0, p0, Ljj$h;->g:Ljj$ae;

    .line 3626
    invoke-virtual {p0}, Ljj$h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3644
    :cond_0
    :goto_0
    return-void

    .line 3630
    :cond_1
    invoke-virtual {p0}, Ljj$h;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3634
    :cond_2
    iget v0, p0, Ljj$h;->b:I

    if-ltz v0, :cond_0

    .line 3635
    iget-object v0, p0, Ljj$h;->i:Ljj;

    iget-object v0, v0, Ljj;->d:[Ljj$n;

    iget v1, p0, Ljj$h;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljj$h;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljj$h;->d:Ljj$n;

    .line 3636
    iget-object v0, p0, Ljj$h;->d:Ljj$n;

    iget v0, v0, Ljj$n;->b:I

    if-eqz v0, :cond_2

    .line 3637
    iget-object v0, p0, Ljj$h;->d:Ljj$n;

    iget-object v0, v0, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Ljj$h;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3638
    iget-object v0, p0, Ljj$h;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljj$h;->c:I

    .line 3639
    invoke-virtual {p0}, Ljj$h;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 3650
    iget-object v0, p0, Ljj$h;->f:Ljj$l;

    if-eqz v0, :cond_1

    .line 3651
    iget-object v0, p0, Ljj$h;->f:Ljj$l;

    invoke-interface {v0}, Ljj$l;->b()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$h;->f:Ljj$l;

    :goto_0
    iget-object v0, p0, Ljj$h;->f:Ljj$l;

    if-eqz v0, :cond_1

    .line 3652
    iget-object v0, p0, Ljj$h;->f:Ljj$l;

    invoke-virtual {p0, v0}, Ljj$h;->a(Ljj$l;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3653
    const/4 v0, 0x1

    .line 3657
    :goto_1
    return v0

    .line 3651
    :cond_0
    iget-object v0, p0, Ljj$h;->f:Ljj$l;

    invoke-interface {v0}, Ljj$l;->b()Ljj$l;

    move-result-object v0

    iput-object v0, p0, Ljj$h;->f:Ljj$l;

    goto :goto_0

    .line 3657
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method d()Z
    .locals 3

    .prologue
    .line 3664
    :cond_0
    iget v0, p0, Ljj$h;->c:I

    if-ltz v0, :cond_2

    .line 3665
    iget-object v0, p0, Ljj$h;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Ljj$h;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljj$h;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    iput-object v0, p0, Ljj$h;->f:Ljj$l;

    if-eqz v0, :cond_0

    .line 3666
    iget-object v0, p0, Ljj$h;->f:Ljj$l;

    invoke-virtual {p0, v0}, Ljj$h;->a(Ljj$l;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljj$h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3667
    :cond_1
    const/4 v0, 0x1

    .line 3671
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()Ljj$ae;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj",
            "<TK;TV;>.ae;"
        }
    .end annotation

    .prologue
    .line 3700
    iget-object v0, p0, Ljj$h;->g:Ljj$ae;

    if-nez v0, :cond_0

    .line 3701
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 3703
    :cond_0
    iget-object v0, p0, Ljj$h;->g:Ljj$ae;

    iput-object v0, p0, Ljj$h;->h:Ljj$ae;

    .line 3704
    invoke-virtual {p0}, Ljj$h;->b()V

    .line 3705
    iget-object v0, p0, Ljj$h;->h:Ljj$ae;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 3696
    iget-object v0, p0, Ljj$h;->g:Ljj$ae;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 3710
    iget-object v0, p0, Ljj$h;->h:Ljj$ae;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lhu;->a(Z)V

    .line 3711
    iget-object v0, p0, Ljj$h;->i:Ljj;

    iget-object v1, p0, Ljj$h;->h:Ljj$ae;

    invoke-virtual {v1}, Ljj$ae;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljj;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3712
    const/4 v0, 0x0

    iput-object v0, p0, Ljj$h;->h:Ljj$ae;

    .line 3713
    return-void

    .line 3710
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
