.class Lhc$a$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc$a$1;->a()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lhc$a$1;


# direct methods
.method constructor <init>(Lhc$a$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lhc$a$1$1;->b:Lhc$a$1;

    iput-object p2, p0, Lhc$a$1$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    invoke-virtual {p0}, Lhc$a$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lhc$a$1$1;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 336
    iget-object v0, p0, Lhc$a$1$1;->b:Lhc$a$1;

    iget-object v0, v0, Lhc$a$1;->c:Lhc$a;

    invoke-virtual {v0, p0}, Lhc$a;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "entry no longer in map"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 338
    invoke-virtual {p0}, Lhc$a$1$1;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-object p1

    .line 341
    :cond_0
    iget-object v0, p0, Lhc$a$1$1;->b:Lhc$a$1;

    iget-object v0, v0, Lhc$a$1;->c:Lhc$a;

    iget-object v0, v0, Lhc$a;->b:Lhc;

    invoke-virtual {v0, p1}, Lhc;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "value already present: %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lhc$a$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 343
    iget-object v2, p0, Lhc$a$1$1;->b:Lhc$a$1;

    iget-object v2, v2, Lhc$a$1;->c:Lhc$a;

    iget-object v2, v2, Lhc$a;->b:Lhc;

    invoke-virtual {p0}, Lhc$a$1$1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lhc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "entry no longer in map"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 344
    iget-object v2, p0, Lhc$a$1$1;->b:Lhc$a$1;

    iget-object v2, v2, Lhc$a$1;->c:Lhc$a;

    iget-object v2, v2, Lhc$a;->b:Lhc;

    invoke-virtual {p0}, Lhc$a$1$1;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, v1, v0, p1}, Lhc;->a(Lhc;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;)V

    move-object p1, v0

    .line 345
    goto :goto_0

    :cond_1
    move v0, v2

    .line 341
    goto :goto_1
.end method
