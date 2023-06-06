.class final Ljq$a$a;
.super Ljb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljb",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljq$a;


# direct methods
.method constructor <init>(Ljq$a;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Ljq$a$a;->a:Ljq$a;

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
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Ljq$a$a;->a:Ljq$a;

    return-object v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method f()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljq$a$a$1;

    invoke-direct {v0, p0}, Ljq$a$a$1;-><init>(Ljq$a$a;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ljq$a$a;->a:Ljq$a;

    iget-object v0, v0, Ljq$a;->a:Ljq;

    invoke-static {v0}, Ljq;->c(Ljq;)I

    move-result v0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Ljq$a$a;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Ljq$a$a;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
