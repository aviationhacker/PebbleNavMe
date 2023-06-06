.class Lcom/google/common/collect/ImmutableSortedMap$a$1;
.super Liw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap$a;->f()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liw",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSortedMap$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap$a;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$a$1;->a:Lcom/google/common/collect/ImmutableSortedMap$a;

    invoke-direct {p0}, Liw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a$1;->a:Lcom/google/common/collect/ImmutableSortedMap$a;

    iget-object v0, v0, Lcom/google/common/collect/ImmutableSortedMap$a;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSortedMap;->a(Lcom/google/common/collect/ImmutableSortedMap;)Ljw;

    move-result-object v0

    invoke-virtual {v0}, Ljw;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$a$1;->a:Lcom/google/common/collect/ImmutableSortedMap$a;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSortedMap$a;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSortedMap;->b(Lcom/google/common/collect/ImmutableSortedMap;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a$1;->a:Lcom/google/common/collect/ImmutableSortedMap$a;

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 558
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableSortedMap$a$1;->a(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
