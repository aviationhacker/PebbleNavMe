.class Lcom/google/common/collect/Lists$k$1;
.super Lko;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Lists$k;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lko",
        "<TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Lists$k;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Lists$k;Ljava/util/ListIterator;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/google/common/collect/Lists$k$1;->a:Lcom/google/common/collect/Lists$k;

    invoke-direct {p0, p2}, Lko;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/common/collect/Lists$k$1;->a:Lcom/google/common/collect/Lists$k;

    iget-object v0, v0, Lcom/google/common/collect/Lists$k;->b:Lcom/google/common/base/Function;

    invoke-interface {v0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
