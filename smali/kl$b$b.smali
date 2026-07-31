.class Lkl$b$b;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkl$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkl$b;


# direct methods
.method private constructor <init>(Lkl$b;)V
    .locals 1

    .prologue
    .line 505
    iput-object p1, p0, Lkl$b$b;->b:Lkl$b;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 506
    iget-object v0, p0, Lkl$b$b;->b:Lkl$b;

    iget-object v0, v0, Lkl$b;->b:Lkl;

    iget-object v0, v0, Lkl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lkl$b$b;->a:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lkl$b;Lkl$1;)V
    .locals 0

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lkl$b$b;-><init>(Lkl$b;)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TR;TV;>;"
        }
    .end annotation

    .prologue
    .line 510
    :cond_0
    iget-object v0, p0, Lkl$b$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lkl$b$b;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 512
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lkl$b$b;->b:Lkl$b;

    iget-object v2, v2, Lkl$b;->a:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    new-instance v1, Lkl$b$b$a;

    invoke-direct {v1, p0, v0}, Lkl$b$b$a;-><init>(Lkl$b$b;Ljava/util/Map$Entry;)V

    move-object v0, v1

    .line 533
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lkl$b$b;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method protected synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 505
    invoke-virtual {p0}, Lkl$b$b;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
