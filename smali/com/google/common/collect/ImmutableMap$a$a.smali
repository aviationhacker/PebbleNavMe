.class Lcom/google/common/collect/ImmutableMap$a$a;
.super Ljb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap$a;->e()Lcom/google/common/collect/ImmutableSet;
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
.field final synthetic a:Lcom/google/common/collect/ImmutableMap$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap$a;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$a$a;->a:Lcom/google/common/collect/ImmutableMap$a;

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
    .line 378
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$a$a;->a:Lcom/google/common/collect/ImmutableMap$a;

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
    .line 383
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$a$a;->a:Lcom/google/common/collect/ImmutableMap$a;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$a;->d()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableMap$a$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
