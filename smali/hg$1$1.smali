.class Lhg$1$1;
.super Lcom/google/common/collect/Multisets$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhg$1;->a()Lcom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Multisets$a",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lhg$1;


# direct methods
.method constructor <init>(Lhg$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lhg$1$1;->b:Lhg$1;

    iput-object p2, p0, Lhg$1$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/Multisets$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lhg$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lib;

    .line 108
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lib;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 109
    :cond_0
    iget-object v1, p0, Lhg$1$1;->b:Lhg$1;

    iget-object v1, v1, Lhg$1;->c:Lhg;

    invoke-static {v1}, Lhg;->a(Lhg;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lhg$1$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lib;

    .line 110
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v1}, Lib;->a()I

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lib;->a()I

    move-result v0

    goto :goto_0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lhg$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
