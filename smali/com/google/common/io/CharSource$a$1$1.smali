.class Lcom/google/common/io/CharSource$a$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/CharSource$a$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/google/common/io/CharSource$a$1;


# direct methods
.method constructor <init>(Lcom/google/common/io/CharSource$a$1;)V
    .locals 2

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/common/io/CharSource$a$1$1;->b:Lcom/google/common/io/CharSource$a$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 446
    invoke-static {}, Lcom/google/common/io/CharSource$a;->a()Lcom/google/common/base/Splitter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/io/CharSource$a$1$1;->b:Lcom/google/common/io/CharSource$a$1;

    iget-object v1, v1, Lcom/google/common/io/CharSource$a$1;->a:Lcom/google/common/io/CharSource$a;

    invoke-static {v1}, Lcom/google/common/io/CharSource$a;->a(Lcom/google/common/io/CharSource$a;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/CharSource$a$1$1;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/common/io/CharSource$a$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/google/common/io/CharSource$a$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    iget-object v1, p0, Lcom/google/common/io/CharSource$a$1$1;->a:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/io/CharSource$a$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/google/common/io/CharSource$a$1$1;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
