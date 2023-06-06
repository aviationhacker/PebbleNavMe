.class Lcom/google/common/collect/ArrayTable$c;
.super Lcom/google/common/collect/ArrayTable$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$a",
        "<TC;",
        "Ljava/util/Map",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 2

    .prologue
    .line 632
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$c;->a:Lcom/google/common/collect/ArrayTable;

    .line 633
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->d(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable$a;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$1;)V

    .line 634
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$c;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 630
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$c;->a(ILjava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    const-string v0, "Column"

    return-object v0
.end method

.method a(ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<TR;TV;>;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 648
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/Map",
            "<TR;TV;>;)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 653
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayTable$c;->c(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method c(I)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 643
    new-instance v0, Lcom/google/common/collect/ArrayTable$b;

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$c;->a:Lcom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/ArrayTable$b;-><init>(Lcom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 630
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ArrayTable$c;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
