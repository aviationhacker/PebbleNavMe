.class Lcom/google/common/collect/ImmutableSortedMap$a;
.super Ljb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableSortedMap;->e()Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljb",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSortedMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->a:Lcom/google/common/collect/ImmutableSortedMap;

    invoke-direct {p0}, Ljb;-><init>()V

    return-void
.end method


# virtual methods
.method b()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$a;->a:Lcom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method f()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 558
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$a$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableSortedMap$a$1;-><init>(Lcom/google/common/collect/ImmutableSortedMap$a;)V

    return-object v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$a;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSortedMap$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
