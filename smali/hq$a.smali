.class Lhq$a;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Table$Cell",
        "<TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhq;


# direct methods
.method constructor <init>(Lhq;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lhq$a;->a:Lhq;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lhq$a;->a:Lhq;

    invoke-virtual {v0}, Lhq;->clear()V

    .line 150
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 125
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_1

    .line 126
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 127
    iget-object v0, p0, Lhq$a;->a:Lhq;

    invoke-virtual {v0}, Lhq;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 128
    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 129
    invoke-static {v0, v2}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 129
    goto :goto_0

    :cond_1
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lhq$a;->a:Lhq;

    invoke-virtual {v0}, Lhq;->b()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 137
    instance-of v0, p1, Lcom/google/common/collect/Table$Cell;

    if-eqz v0, :cond_1

    .line 138
    check-cast p1, Lcom/google/common/collect/Table$Cell;

    .line 139
    iget-object v0, p0, Lhq$a;->a:Lhq;

    invoke-virtual {v0}, Lhq;->rowMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 140
    if-eqz v0, :cond_0

    .line 142
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 141
    invoke-static {v0, v2}, Lcom/google/common/collect/Collections2;->b(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 141
    goto :goto_0

    :cond_1
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lhq$a;->a:Lhq;

    invoke-virtual {v0}, Lhq;->size()I

    move-result v0

    return v0
.end method
