.class Lcom/google/common/util/concurrent/Striped$b;
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
    name = "b"
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
.field final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "T",
            "L;",
            ">;"
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
    .line 416
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$e;-><init>(I)V

    .line 417
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$b;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    :goto_0
    iput v0, p0, Lcom/google/common/util/concurrent/Striped$b;->c:I

    .line 418
    iput-object p2, p0, Lcom/google/common/util/concurrent/Striped$b;->b:Lcom/google/common/base/Supplier;

    .line 419
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakValues()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$b;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 420
    return-void

    .line 417
    :cond_0
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$b;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 423
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$b;->c:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Striped$b;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_1

    .line 432
    :goto_0
    return-object v0

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$b;->b:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lcom/google/common/util/concurrent/Striped$b;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 432
    invoke-static {v1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$b;->c:I

    return v0
.end method
