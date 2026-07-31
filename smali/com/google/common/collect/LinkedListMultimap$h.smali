.class Lcom/google/common/collect/LinkedListMultimap$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;

.field b:I

.field c:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field d:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$h;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$h;->a:Ljava/lang/Object;

    .line 472
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->d(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$e;

    .line 473
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 474
    return-void

    .line 473
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V
    .locals 4
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 485
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$h;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->d(Lcom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/LinkedListMultimap$e;

    .line 487
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 488
    :goto_0
    invoke-static {p3, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 489
    div-int/lit8 v3, v1, 0x2

    if-lt p3, v3, :cond_2

    .line 490
    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 491
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    .line 492
    :goto_2
    add-int/lit8 v0, p3, 0x1

    if-ge p3, v1, :cond_4

    .line 493
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$h;->previous()Ljava/lang/Object;

    move p3, v0

    goto :goto_2

    .line 487
    :cond_0
    iget v1, v0, Lcom/google/common/collect/LinkedListMultimap$e;->c:I

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$e;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_1

    .line 496
    :cond_2
    if-nez v0, :cond_3

    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 497
    :goto_4
    add-int/lit8 v0, p3, -0x1

    if-lez p3, :cond_4

    .line 498
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$h;->next()Ljava/lang/Object;

    move p3, v0

    goto :goto_4

    .line 496
    :cond_3
    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$e;->a:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_3

    .line 501
    :cond_4
    iput-object p2, p0, Lcom/google/common/collect/LinkedListMultimap$h;->a:Ljava/lang/Object;

    .line 502
    iput-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 503
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$h;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-static {v0, v1, p1, v2}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/LinkedListMultimap$f;)Lcom/google/common/collect/LinkedListMultimap$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 566
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    .line 567
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 568
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;)V

    .line 513
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 514
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 515
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    .line 516
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

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
    .line 526
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;)V

    .line 527
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 528
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 529
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    .line 530
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 540
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lhu;->a(Z)V

    .line 546
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eq v0, v1, :cond_1

    .line 547
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->f:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 548
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->b:I

    .line 552
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$f;)V

    .line 553
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 554
    return-void

    .line 545
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->e:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 559
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$h;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->b:Ljava/lang/Object;

    .line 560
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
