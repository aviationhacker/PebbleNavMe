.class Lcom/google/common/base/Optional$1$1;
.super Lgr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Optional$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgr",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/Optional$1;

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/common/base/Optional",
            "<+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Optional$1;)V
    .locals 1

    .prologue
    .line 300
    iput-object p1, p0, Lcom/google/common/base/Optional$1$1;->a:Lcom/google/common/base/Optional$1;

    invoke-direct {p0}, Lgr;-><init>()V

    .line 301
    iget-object v0, p0, Lcom/google/common/base/Optional$1$1;->a:Lcom/google/common/base/Optional$1;

    iget-object v0, v0, Lcom/google/common/base/Optional$1;->a:Ljava/lang/Iterable;

    .line 302
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lcom/google/common/base/Optional$1$1;->b:Ljava/util/Iterator;

    .line 301
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 306
    :cond_0
    iget-object v0, p0, Lcom/google/common/base/Optional$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/google/common/base/Optional$1$1;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 308
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/base/Optional$1$1;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
