.class Lcom/google/common/collect/BinaryTreeTraverser$2;
.super Lcom/google/common/collect/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/BinaryTreeTraverser;->inOrderTraversal(Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/FluentIterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/common/collect/BinaryTreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->b:Lcom/google/common/collect/BinaryTreeTraverser;

    iput-object p2, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 174
    new-instance v0, Lcom/google/common/collect/BinaryTreeTraverser$a;

    iget-object v1, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->b:Lcom/google/common/collect/BinaryTreeTraverser;

    iget-object v2, p0, Lcom/google/common/collect/BinaryTreeTraverser$2;->a:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/BinaryTreeTraverser$a;-><init>(Lcom/google/common/collect/BinaryTreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/google/common/collect/BinaryTreeTraverser$2;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
