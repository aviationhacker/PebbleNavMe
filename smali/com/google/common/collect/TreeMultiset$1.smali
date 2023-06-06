.class Lcom/google/common/collect/TreeMultiset$1;
.super Lcom/google/common/collect/Multisets$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeMultiset;->b(Lcom/google/common/collect/TreeMultiset$b;)Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeMultiset$b;

.field final synthetic b:Lcom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeMultiset;Lcom/google/common/collect/TreeMultiset$b;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/common/collect/TreeMultiset$1;->b:Lcom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lcom/google/common/collect/TreeMultiset$1;->a:Lcom/google/common/collect/TreeMultiset$b;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$1;->a:Lcom/google/common/collect/TreeMultiset$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->getCount()I

    move-result v0

    .line 347
    if-nez v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$1;->b:Lcom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lcom/google/common/collect/TreeMultiset$1;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 350
    :cond_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/common/collect/TreeMultiset$1;->a:Lcom/google/common/collect/TreeMultiset$b;

    invoke-virtual {v0}, Lcom/google/common/collect/TreeMultiset$b;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
