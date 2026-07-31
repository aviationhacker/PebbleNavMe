.class Lht$1;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lht;->a(I)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lht;


# direct methods
.method constructor <init>(Lht;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lht$1;->b:Lht;

    iput p2, p0, Lht$1;->a:I

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lht$1;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 84
    iget-object v0, p0, Lht$1;->b:Lht;

    iget v1, p0, Lht$1;->a:I

    invoke-static {v0, v1, p1}, Lht;->a(Lht;II)I

    move-result v1

    .line 85
    iget-object v0, p0, Lht$1;->b:Lht;

    invoke-static {v0}, Lht;->a(Lht;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lht$1;->b:Lht;

    invoke-static {v0}, Lht;->a(Lht;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method
