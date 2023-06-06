.class final Ljq$a;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljq;


# direct methods
.method private constructor <init>(Ljq;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Ljq$a;->a:Ljq;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Ljq;Ljq$1;)V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0, p1}, Ljq$a;-><init>(Ljq;)V

    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method e()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Ljq$a$a;

    invoke-direct {v0, p0}, Ljq$a$a;-><init>(Ljq$a;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 190
    if-eqz p1, :cond_0

    iget-object v1, p0, Ljq$a;->a:Ljq;

    invoke-static {v1}, Ljq;->a(Ljq;)[Lja;

    move-result-object v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 193
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Liv;->a(I)I

    move-result v1

    iget-object v2, p0, Ljq$a;->a:Ljq;

    invoke-static {v2}, Ljq;->b(Ljq;)I

    move-result v2

    and-int/2addr v1, v2

    .line 194
    iget-object v2, p0, Ljq$a;->a:Ljq;

    invoke-static {v2}, Ljq;->a(Ljq;)[Lja;

    move-result-object v2

    aget-object v1, v2, v1

    .line 195
    :goto_1
    if-eqz v1, :cond_0

    .line 197
    invoke-virtual {v1}, Lja;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v1}, Lja;->getKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v1}, Lja;->b()Lja;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Ljq$a;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Ljq$a;->a:Ljq;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Ljq$a;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Ljq$b;

    iget-object v1, p0, Ljq$a;->a:Ljq;

    invoke-direct {v0, v1}, Ljq$b;-><init>(Lcom/google/common/collect/ImmutableBiMap;)V

    return-object v0
.end method
