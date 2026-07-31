.class Lcom/google/common/collect/Range$a;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Range;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Lcom/google/common/collect/Range",
        "<*>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range$1;)V
    .locals 0

    .prologue
    .line 678
    invoke-direct {p0}, Lcom/google/common/collect/Range$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<*>;",
            "Lcom/google/common/collect/Range",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/Range;->b:Lic;

    iget-object v2, p2, Lcom/google/common/collect/Range;->b:Lic;

    .line 683
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-object v1, p1, Lcom/google/common/collect/Range;->c:Lic;

    iget-object v2, p2, Lcom/google/common/collect/Range;->c:Lic;

    .line 684
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 685
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 678
    check-cast p1, Lcom/google/common/collect/Range;

    check-cast p2, Lcom/google/common/collect/Range;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Range$a;->a(Lcom/google/common/collect/Range;Lcom/google/common/collect/Range;)I

    move-result v0

    return v0
.end method
