.class final Lcom/google/common/collect/TreeTraverser$b;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeTraverser;

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/google/common/collect/TreeTraverser$c",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/common/collect/TreeTraverser$b;->a:Lcom/google/common/collect/TreeTraverser;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 148
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/TreeTraverser$b;->b:Ljava/util/ArrayDeque;

    .line 149
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$b;->b:Ljava/util/ArrayDeque;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TreeTraverser$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/TreeTraverser$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 150
    return-void
.end method

.method private a(Ljava/lang/Object;)Lcom/google/common/collect/TreeTraverser$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/TreeTraverser$c",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/google/common/collect/TreeTraverser$c;

    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$b;->a:Lcom/google/common/collect/TreeTraverser;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/TreeTraverser;->children(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/TreeTraverser$c;-><init>(Ljava/lang/Object;Ljava/util/Iterator;)V

    return-object v0
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 154
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/google/common/collect/TreeTraverser$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/TreeTraverser$c;

    .line 156
    iget-object v1, v0, Lcom/google/common/collect/TreeTraverser$c;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$c;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$b;->b:Ljava/util/ArrayDeque;

    invoke-direct {p0, v0}, Lcom/google/common/collect/TreeTraverser$b;->a(Ljava/lang/Object;)Lcom/google/common/collect/TreeTraverser$c;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/TreeTraverser$b;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 161
    iget-object v0, v0, Lcom/google/common/collect/TreeTraverser$c;->a:Ljava/lang/Object;

    .line 164
    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/TreeTraverser$b;->endOfData()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method
