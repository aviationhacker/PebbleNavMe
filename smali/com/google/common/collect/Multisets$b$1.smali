.class Lcom/google/common/collect/Multisets$b$1;
.super Lkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multisets$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn",
        "<",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TE;>;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multisets$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multisets$b;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/google/common/collect/Multisets$b$1;->a:Lcom/google/common/collect/Multisets$b;

    invoke-direct {p0, p2}, Lkn;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 973
    invoke-interface {p1}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 970
    check-cast p1, Lcom/google/common/collect/Multiset$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multisets$b$1;->a(Lcom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
