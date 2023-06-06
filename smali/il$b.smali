.class Lil$b;
.super Lcom/google/common/collect/Multimaps$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multimaps$g",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lil;


# direct methods
.method constructor <init>(Lil;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lil$b;->a:Lil;

    .line 347
    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$g;-><init>(Lcom/google/common/collect/Multimap;)V

    .line 348
    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lil$b$1;

    invoke-direct {v0, p0}, Lil$b$1;-><init>(Lil$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 352
    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 353
    if-nez p2, :cond_1

    .line 354
    invoke-virtual {p0, p1}, Lil$b;->count(Ljava/lang/Object;)I

    move-result v1

    .line 373
    :cond_0
    :goto_0
    return v1

    .line 356
    :cond_1
    iget-object v0, p0, Lil$b;->a:Lil;

    iget-object v0, v0, Lil;->a:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 357
    if-eqz v0, :cond_0

    .line 363
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v0, v1

    .line 364
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 365
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 366
    iget-object v3, p0, Lil$b;->a:Lil;

    invoke-static {v3, p1, v1}, Lil;->a(Lil;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 367
    add-int/lit8 v0, v0, 0x1

    .line 368
    if-gt v0, p2, :cond_2

    .line 369
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_3
    move v1, v0

    .line 373
    goto :goto_0
.end method
