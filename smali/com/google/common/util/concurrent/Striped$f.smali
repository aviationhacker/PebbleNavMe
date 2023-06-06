.class Lcom/google/common/util/concurrent/Striped$f;
.super Lcom/google/common/util/concurrent/Striped$e;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Striped$f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped$e",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/util/concurrent/Striped$f$a",
            "<+T",
            "L;",
            ">;>;"
        }
    .end annotation
.end field

.field final b:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field final c:I

.field final e:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/base/Supplier",
            "<T",
            "L;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$e;-><init>(I)V

    .line 345
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$f;->e:Ljava/lang/ref/ReferenceQueue;

    .line 349
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$f;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/google/common/util/concurrent/Striped$f;->c:I

    .line 350
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/util/concurrent/Striped$f;->c:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 351
    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$f;->b:Lcom/google/common/base/Supplier;

    .line 352
    return-void

    .line 349
    :cond_0
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$f;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 382
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$f;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    check-cast v0, Lcom/google/common/util/concurrent/Striped$f$a;

    .line 387
    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v2, v0, Lcom/google/common/util/concurrent/Striped$f$a;->a:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 355
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$f;->c:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$f;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Striped$f$a;

    .line 359
    if-nez v0, :cond_1

    move-object v1, v3

    .line 360
    :goto_0
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 374
    :goto_1
    return-object v0

    .line 359
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Striped$f$a;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$f;->b:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 364
    new-instance v4, Lcom/google/common/util/concurrent/Striped$f$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$f;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v2, p1, v1}, Lcom/google/common/util/concurrent/Striped$f$a;-><init>(Ljava/lang/Object;ILjava/lang/ref/ReferenceQueue;)V

    .line 365
    :cond_3
    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 367
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$f;->a:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Striped$f$a;

    .line 368
    if-nez v0, :cond_4

    move-object v1, v3

    .line 369
    :goto_2
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 370
    goto :goto_1

    .line 368
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Striped$f$a;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 373
    :cond_5
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Striped$f;->a()V

    move-object v0, v2

    .line 374
    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$f;->c:I

    return v0
.end method
