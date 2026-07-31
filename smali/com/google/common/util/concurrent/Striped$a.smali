.class Lcom/google/common/util/concurrent/Striped$a;
.super Lcom/google/common/util/concurrent/Striped$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
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
.field private final a:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(ILcom/google/common/base/Supplier;)V
    .locals 3
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
    const/4 v1, 0x0

    .line 317
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Striped$e;-><init>(I)V

    .line 318
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Stripes must be <= 2^30)"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 320
    iget v0, p0, Lcom/google/common/util/concurrent/Striped$a;->d:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/util/concurrent/Striped$a;->a:[Ljava/lang/Object;

    .line 321
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$a;->a:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$a;->a:[Ljava/lang/Object;

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 318
    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/common/base/Supplier;Lcom/google/common/util/concurrent/Striped$1;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Striped$a;-><init>(ILcom/google/common/base/Supplier;)V

    return-void
.end method


# virtual methods
.method public getAt(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$a;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/common/util/concurrent/Striped$a;->a:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
