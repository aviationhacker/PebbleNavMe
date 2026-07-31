.class Lcom/google/common/collect/ArrayTable$b;
.super Lcom/google/common/collect/ArrayTable$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$a",
        "<TR;TV;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .locals 2

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$b;->b:Lcom/google/common/collect/ArrayTable;

    .line 591
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->c(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable$a;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$1;)V

    .line 592
    iput p2, p0, Lcom/google/common/collect/ArrayTable$b;->a:I

    .line 593
    return-void
.end method


# virtual methods
.method a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$b;->b:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$b;->a:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 597
    const-string v0, "Row"

    return-object v0
.end method

.method b(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$b;->b:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$b;->a:I

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
