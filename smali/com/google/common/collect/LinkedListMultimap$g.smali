.class Lcom/google/common/collect/LinkedListMultimap$g;
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
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcom/google/common/collect/LinkedListMultimap$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation
.end field

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

.field e:I

.field final synthetic f:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap;I)V
    .locals 2

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->e:I

    .line 324
    invoke-virtual {p1}, Lcom/google/common/collect/LinkedListMultimap;->size()I

    move-result v1

    .line 325
    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 326
    div-int/lit8 v0, v1, 0x2

    if-lt p2, v0, :cond_0

    .line 327
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->b(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 328
    iput v1, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    .line 329
    :goto_0
    add-int/lit8 v0, p2, 0x1

    if-ge p2, v1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->b()Lcom/google/common/collect/LinkedListMultimap$f;

    move p2, v0

    goto :goto_0

    .line 333
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/LinkedListMultimap;->c(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/LinkedListMultimap$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 334
    :goto_1
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->a()Lcom/google/common/collect/LinkedListMultimap$f;

    move p2, v0

    goto :goto_1

    .line 338
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 339
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/LinkedListMultimap$g;->e:I

    if-eq v0, v1, :cond_0

    .line 343
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 345
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/LinkedListMultimap$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->c()V

    .line 356
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 358
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 359
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    .line 360
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 416
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object p1, v0, Lcom/google/common/collect/LinkedListMultimap$f;->b:Ljava/lang/Object;

    .line 417
    return-void

    .line 415
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic add(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$g;->b(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public b()Lcom/google/common/collect/LinkedListMultimap$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/LinkedListMultimap$f",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->c()V

    .line 387
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 389
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 390
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    .line 391
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    return-object v0
.end method

.method public b(Ljava/util/Map$Entry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->c()V

    .line 350
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

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
    .line 380
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->c()V

    .line 381
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->a()Lcom/google/common/collect/LinkedListMultimap$f;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    return v0
.end method

.method public synthetic previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->b()Lcom/google/common/collect/LinkedListMultimap$f;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/google/common/collect/LinkedListMultimap$g;->c()V

    .line 366
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lhu;->a(Z)V

    .line 367
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    if-eq v0, v1, :cond_1

    .line 368
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->d:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 369
    iget v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->a:I

    .line 373
    :goto_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap;

    iget-object v1, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$f;)V

    .line 374
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    .line 375
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->f:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->a(Lcom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->e:I

    .line 376
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iget-object v0, v0, Lcom/google/common/collect/LinkedListMultimap$f;->c:Lcom/google/common/collect/LinkedListMultimap$f;

    iput-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$g;->b:Lcom/google/common/collect/LinkedListMultimap$f;

    goto :goto_1
.end method

.method public synthetic set(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$g;->a(Ljava/util/Map$Entry;)V

    return-void
.end method
