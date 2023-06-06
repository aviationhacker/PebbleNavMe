.class abstract Lcom/google/common/util/concurrent/Striped$e;
.super Lcom/google/common/util/concurrent/Striped;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Striped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/Striped",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# instance fields
.field final d:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Striped;-><init>(Lcom/google/common/util/concurrent/Striped$1;)V

    .line 294
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Stripes must be positive"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 295
    const/high16 v0, 0x40000000    # 2.0f

    if-le p1, v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lcom/google/common/util/concurrent/Striped$e;->d:I

    .line 296
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_1
    invoke-static {p1}, Lcom/google/common/util/concurrent/Striped;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method final a(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 299
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Striped;->b(I)I

    move-result v0

    .line 300
    iget v1, p0, Lcom/google/common/util/concurrent/Striped$e;->d:I

    and-int/2addr v0, v1

    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 304
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Striped$e;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/Striped$e;->getAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
