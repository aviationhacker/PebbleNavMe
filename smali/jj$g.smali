.class final Ljj$g;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
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
        "Ljj$l",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljj$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3253
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3254
    new-instance v0, Ljj$g$1;

    invoke-direct {v0, p0}, Ljj$g$1;-><init>(Ljj$g;)V

    iput-object v0, p0, Ljj$g;->a:Ljj$l;

    return-void
.end method


# virtual methods
.method public a()Ljj$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3306
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    .line 3307
    iget-object v1, p0, Ljj$g;->a:Ljj$l;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public a(Ljj$l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 3295
    invoke-interface {p1}, Ljj$l;->g()Ljj$l;

    move-result-object v0

    invoke-interface {p1}, Ljj$l;->f()Ljj$l;

    move-result-object v1

    invoke-static {v0, v1}, Ljj;->a(Ljj$l;Ljj$l;)V

    .line 3298
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0}, Ljj$l;->g()Ljj$l;

    move-result-object v0

    invoke-static {v0, p1}, Ljj;->a(Ljj$l;Ljj$l;)V

    .line 3299
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    invoke-static {p1, v0}, Ljj;->a(Ljj$l;Ljj$l;)V

    .line 3301
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljj$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3312
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    .line 3313
    iget-object v1, p0, Ljj$g;->a:Ljj$l;

    if-ne v0, v1, :cond_0

    .line 3314
    const/4 v0, 0x0

    .line 3318
    :goto_0
    return-object v0

    .line 3317
    :cond_0
    invoke-virtual {p0, v0}, Ljj$g;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 3356
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    .line 3357
    :goto_0
    iget-object v1, p0, Ljj$g;->a:Ljj$l;

    if-eq v0, v1, :cond_0

    .line 3358
    invoke-interface {v0}, Ljj$l;->f()Ljj$l;

    move-result-object v1

    .line 3359
    invoke-static {v0}, Ljj;->d(Ljj$l;)V

    move-object v0, v1

    .line 3361
    goto :goto_0

    .line 3363
    :cond_0
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    iget-object v1, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0, v1}, Ljj$l;->a(Ljj$l;)V

    .line 3364
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    iget-object v1, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0, v1}, Ljj$l;->b(Ljj$l;)V

    .line 3365
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3336
    check-cast p1, Ljj$l;

    .line 3337
    invoke-interface {p1}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    sget-object v1, Ljj$k;->a:Ljj$k;

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
    .line 3342
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    iget-object v1, p0, Ljj$g;->a:Ljj$l;

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
            "Ljj$l",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3369
    new-instance v0, Ljj$g$2;

    invoke-virtual {p0}, Ljj$g;->a()Ljj$l;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljj$g$2;-><init>(Ljj$g;Ljj$l;)V

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3253
    check-cast p1, Ljj$l;

    invoke-virtual {p0, p1}, Ljj$g;->a(Ljj$l;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3253
    invoke-virtual {p0}, Ljj$g;->a()Ljj$l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3253
    invoke-virtual {p0}, Ljj$g;->b()Ljj$l;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 3324
    check-cast p1, Ljj$l;

    .line 3325
    invoke-interface {p1}, Ljj$l;->g()Ljj$l;

    move-result-object v0

    .line 3326
    invoke-interface {p1}, Ljj$l;->f()Ljj$l;

    move-result-object v1

    .line 3327
    invoke-static {v0, v1}, Ljj;->a(Ljj$l;Ljj$l;)V

    .line 3328
    invoke-static {p1}, Ljj;->d(Ljj$l;)V

    .line 3330
    sget-object v0, Ljj$k;->a:Ljj$k;

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
    .line 3347
    const/4 v1, 0x0

    .line 3348
    iget-object v0, p0, Ljj$g;->a:Ljj$l;

    invoke-interface {v0}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Ljj$g;->a:Ljj$l;

    if-eq v0, v2, :cond_0

    .line 3349
    add-int/lit8 v1, v1, 0x1

    .line 3348
    invoke-interface {v0}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    goto :goto_0

    .line 3351
    :cond_0
    return v1
.end method
