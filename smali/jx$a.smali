.class final Ljx$a;
.super Lcom/google/common/collect/ImmutableSet$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSet$a",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljx;


# direct methods
.method private constructor <init>(Ljx;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Ljx$a;->a:Ljx;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljx;Ljx$1;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljx$a;-><init>(Ljx;)V

    return-void
.end method


# virtual methods
.method synthetic a(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Ljx$a;->b(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method b(I)Lcom/google/common/collect/Table$Cell;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Ljx$a;->a:Ljx;

    invoke-virtual {v0, p1}, Ljx;->a(I)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v1, :cond_0

    .line 63
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 64
    iget-object v1, p0, Ljx$a;->a:Ljx;

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljx;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 67
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljx$a;->a:Ljx;

    invoke-virtual {v0}, Ljx;->size()I

    move-result v0

    return v0
.end method
