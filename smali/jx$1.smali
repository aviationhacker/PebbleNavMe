.class final Ljx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljx;->a(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Ljx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Comparator;

.field final synthetic b:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Ljx$1;->a:Ljava/util/Comparator;

    iput-object p2, p0, Ljx$1;->b:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    iget-object v1, p0, Ljx$1;->a:Ljava/util/Comparator;

    if-nez v1, :cond_1

    move v1, v0

    .line 122
    :goto_0
    if-eqz v1, :cond_2

    move v0, v1

    .line 127
    :cond_0
    :goto_1
    return v0

    .line 118
    :cond_1
    iget-object v1, p0, Ljx$1;->a:Ljava/util/Comparator;

    .line 121
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 125
    :cond_2
    iget-object v1, p0, Ljx$1;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_0

    iget-object v0, p0, Ljx$1;->b:Ljava/util/Comparator;

    .line 127
    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 115
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    check-cast p2, Lcom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1, p2}, Ljx$1;->a(Lcom/google/common/collect/Table$Cell;Lcom/google/common/collect/Table$Cell;)I

    move-result v0

    return v0
.end method
