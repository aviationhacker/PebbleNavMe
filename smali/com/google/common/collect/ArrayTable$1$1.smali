.class Lcom/google/common/collect/ArrayTable$1$1;
.super Lcom/google/common/collect/Tables$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable$1;->b(I)Lcom/google/common/collect/Table$Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Tables$a",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/common/collect/ArrayTable$1;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable$1;I)V
    .locals 2

    .prologue
    .line 545
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$1$1;->d:Lcom/google/common/collect/ArrayTable$1;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$1$1;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/Tables$a;-><init>()V

    .line 546
    iget v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->c:I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->d:Lcom/google/common/collect/ArrayTable$1;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$1;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->a(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->a:I

    .line 547
    iget v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->c:I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->d:Lcom/google/common/collect/ArrayTable$1;

    iget-object v1, v1, Lcom/google/common/collect/ArrayTable$1;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->a(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->b:I

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->d:Lcom/google/common/collect/ArrayTable$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$1;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->a(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->d:Lcom/google/common/collect/ArrayTable$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$1;->a:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->b(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->a:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$1$1;->d:Lcom/google/common/collect/ArrayTable$1;

    iget-object v0, v0, Lcom/google/common/collect/ArrayTable$1;->a:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$1$1;->a:I

    iget v2, p0, Lcom/google/common/collect/ArrayTable$1$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
