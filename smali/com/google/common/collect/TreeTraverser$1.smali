.class Lcom/google/common/collect/TreeTraverser$1;
.super Lcom/google/common/collect/FluentIterable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeTraverser;->preOrderTraversal(Ljava/lang/Object;)Lcom/google/common/collect/FluentIterable;
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

.field final synthetic b:Lcom/google/common/collect/TreeTraverser;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$1;->b:Lcom/google/common/collect/TreeTraverser;

    iput-object p2, p0, Lcom/google/common/collect/TreeTraverser$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$1;->b:Lcom/google/common/collect/TreeTraverser;

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$1;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/TreeTraverser;->a(Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/google/common/collect/TreeTraverser$1;->a()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
