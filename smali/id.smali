.class final Lid;
.super Ljx;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lid$b;,
        Lid$e;,
        Lid$a;,
        Lid$d;,
        Lid$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljx",
        "<TR;TC;TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation
.end field

.field private final e:[I

.field private final f:[I

.field private final g:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field

.field private final h:[I

.field private final i:[I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSet;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TR;>;",
            "Lcom/google/common/collect/ImmutableSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljx;-><init>()V

    .line 50
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v0

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableSet;->size()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    check-cast v0, [[Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lid;->g:[[Ljava/lang/Object;

    .line 52
    invoke-static {p2}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lid;->a:Lcom/google/common/collect/ImmutableMap;

    .line 53
    invoke-static {p3}, Lcom/google/common/collect/Maps;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lid;->b:Lcom/google/common/collect/ImmutableMap;

    .line 54
    iget-object v0, p0, Lid;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lid;->e:[I

    .line 55
    iget-object v0, p0, Lid;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lid;->f:[I

    .line 56
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 57
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    new-array v4, v0, [I

    .line 58
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 59
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Table$Cell;

    .line 60
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v5

    .line 61
    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v6

    .line 62
    iget-object v1, p0, Lid;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 63
    iget-object v1, p0, Lid;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 64
    iget-object v1, p0, Lid;->g:[[Ljava/lang/Object;

    aget-object v1, v1, v7

    aget-object v1, v1, v8

    .line 65
    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    const-string v9, "duplicate key: (%s, %s)"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v5, 0x1

    aput-object v6, v10, v5

    invoke-static {v1, v9, v10}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lid;->g:[[Ljava/lang/Object;

    aget-object v1, v1, v7

    invoke-interface {v0}, Lcom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v1, v8

    .line 67
    iget-object v0, p0, Lid;->e:[I

    aget v1, v0, v7

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v7

    .line 68
    iget-object v0, p0, Lid;->f:[I

    aget v1, v0, v8

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v8

    .line 69
    aput v7, v3, v2

    .line 70
    aput v8, v4, v2

    .line 58
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 65
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 72
    :cond_1
    iput-object v3, p0, Lid;->h:[I

    .line 73
    iput-object v4, p0, Lid;->i:[I

    .line 74
    new-instance v0, Lid$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lid$e;-><init>(Lid;Lid$1;)V

    iput-object v0, p0, Lid;->c:Lcom/google/common/collect/ImmutableMap;

    .line 75
    new-instance v0, Lid$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lid$b;-><init>(Lid;Lid$1;)V

    iput-object v0, p0, Lid;->d:Lcom/google/common/collect/ImmutableMap;

    .line 76
    return-void
.end method

.method static synthetic a(Lid;)[I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lid;->e:[I

    return-object v0
.end method

.method static synthetic b(Lid;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lid;->b:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic c(Lid;)[[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lid;->g:[[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lid;)[I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lid;->f:[I

    return-object v0
.end method

.method static synthetic e(Lid;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lid;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method a(I)Lcom/google/common/collect/Table$Cell;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Table$Cell",
            "<TR;TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lid;->h:[I

    aget v0, v0, p1

    .line 255
    iget-object v1, p0, Lid;->i:[I

    aget v1, v1, p1

    .line 256
    invoke-virtual {p0}, Lid;->rowKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 257
    invoke-virtual {p0}, Lid;->columnKeySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 258
    iget-object v4, p0, Lid;->g:[[Ljava/lang/Object;

    aget-object v0, v4, v0

    aget-object v0, v0, v1

    .line 259
    invoke-static {v2, v3, v0}, Lid;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method b(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lid;->g:[[Ljava/lang/Object;

    iget-object v1, p0, Lid;->h:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lid;->i:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public columnMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TC;",
            "Ljava/util/Map",
            "<TR;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lid;->d:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lid;->columnMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lid;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 243
    iget-object v1, p0, Lid;->b:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 244
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Lid;->g:[[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lid;->c:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lid;->rowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lid;->h:[I

    array-length v0, v0

    return v0
.end method
