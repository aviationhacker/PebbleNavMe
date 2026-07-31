.class Lcom/google/common/collect/TreeRangeMap$c$a$3;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeRangeMap$c$a;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/common/collect/TreeRangeMap$c$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeMap$c$a;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeMap$c$a$3;->b:Lcom/google/common/collect/TreeRangeMap$c$a;

    iput-object p2, p0, Lcom/google/common/collect/TreeRangeMap$c$a$3;->a:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;>;"
        }
    .end annotation

    .prologue
    .line 612
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a$3;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeMap$c$a$3;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeRangeMap$b;

    .line 614
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->b()Lic;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$c$a$3;->b:Lcom/google/common/collect/TreeRangeMap$c$a;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->c:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Lic;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 615
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c$a$3;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 621
    :goto_0
    return-object v0

    .line 616
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->c()Lic;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$c$a$3;->b:Lcom/google/common/collect/TreeRangeMap$c$a;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lcom/google/common/collect/Range;->b:Lic;

    invoke-virtual {v1, v2}, Lic;->a(Lic;)I

    move-result v1

    if-lez v1, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->a()Lcom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/TreeRangeMap$c$a$3;->b:Lcom/google/common/collect/TreeRangeMap$c$a;

    iget-object v2, v2, Lcom/google/common/collect/TreeRangeMap$c$a;->b:Lcom/google/common/collect/TreeRangeMap$c;

    invoke-static {v2}, Lcom/google/common/collect/TreeRangeMap$c;->a(Lcom/google/common/collect/TreeRangeMap$c;)Lcom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/Range;->intersection(Lcom/google/common/collect/Range;)Lcom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/collect/TreeRangeMap$b;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_0

    .line 621
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c$a$3;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeMap$c$a$3;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
