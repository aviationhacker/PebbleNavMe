.class Lcom/google/common/collect/ImmutableRangeMap$1;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lcom/google/common/collect/Range;)Lcom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/common/collect/Range;

.field final synthetic d:Lcom/google/common/collect/ImmutableRangeMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableRangeMap;IILcom/google/common/collect/Range;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->d:Lcom/google/common/collect/ImmutableRangeMap;

    iput p2, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->a:I

    iput p3, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->b:I

    iput-object p4, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->c:Lcom/google/common/collect/Range;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/common/collect/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Range",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 283
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->a:I

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 284
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->a:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->d:Lcom/google/common/collect/ImmutableRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeMap;->a(Lcom/google/common/collect/ImmutableRangeMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->c:Lcom/google/common/collect/Range;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->d:Lcom/google/common/collect/ImmutableRangeMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableRangeMap;->a(Lcom/google/common/collect/ImmutableRangeMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    goto :goto_0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableRangeMap$1;->a(I)Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/google/common/collect/ImmutableRangeMap$1;->a:I

    return v0
.end method
