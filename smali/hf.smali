.class public abstract Lhf;
.super Lhi;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhf$d;,
        Lhf$g;,
        Lhf$a;,
        Lhf$b;,
        Lhf$e;,
        Lhf$h;,
        Lhf$c;,
        Lhf$f;,
        Lhf$j;,
        Lhf$k;,
        Lhf$m;,
        Lhf$l;,
        Lhf$i;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lhi",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private transient b:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lhi;-><init>()V

    .line 124
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 125
    iput-object p1, p0, Lhf;->a:Ljava/util/Map;

    .line 126
    return-void
.end method

.method static synthetic a(Lhf;I)I
    .locals 0

    .prologue
    .line 92
    iput p1, p0, Lhf;->b:I

    return p1
.end method

.method static synthetic a(Lhf;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lhf;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lhf;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lhf;->b(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lhf;Ljava/lang/Object;Ljava/util/List;Lhf$i;)Ljava/util/List;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lhf;->a(Ljava/lang/Object;Ljava/util/List;Lhf$i;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/util/List;Lhf$i;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lhf$i;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "Lhf",
            "<TK;TV;>.i;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 332
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lhf$f;

    invoke-direct {v0, p0, p1, p2, p3}, Lhf$f;-><init>(Lhf;Ljava/lang/Object;Ljava/util/List;Lhf$i;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhf$j;

    invoke-direct {v0, p0, p1, p2, p3}, Lhf$j;-><init>(Lhf;Ljava/lang/Object;Ljava/util/List;Lhf$i;)V

    goto :goto_0
.end method

.method static synthetic a(Lhf;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lhf;)I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lhf;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lhf;->b:I

    return v0
.end method

.method private b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 213
    if-nez v0, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lhf;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_0
    return-object v0
.end method

.method private b(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 608
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    .line 609
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 610
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lhf;)I
    .locals 2

    .prologue
    .line 92
    iget v0, p0, Lhf;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lhf;->b:I

    return v0
.end method

.method private c(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->c(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1138
    const/4 v1, 0x0

    .line 1139
    if-eqz v0, :cond_0

    .line 1140
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 1141
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 1142
    iget v0, p0, Lhf;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lhf;->b:I

    :cond_0
    move v0, v1

    .line 1144
    return v0
.end method

.method static synthetic d(Lhf;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lhf;->b:I

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lhf;->c()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 320
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 321
    new-instance v0, Lhf$m;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lhf$m;-><init>(Lhf;Ljava/lang/Object;Ljava/util/SortedSet;Lhf$i;)V

    .line 327
    :goto_0
    return-object v0

    .line 322
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 323
    new-instance v0, Lhf$l;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lhf$l;-><init>(Lhf;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 324
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 325
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lhf;->a(Ljava/lang/Object;Ljava/util/List;Lhf$i;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 327
    :cond_2
    new-instance v0, Lhf$i;

    invoke-direct {v0, p0, p1, p2, v1}, Lhf$i;-><init>(Lhf;Ljava/lang/Object;Ljava/util/Collection;Lhf$i;)V

    goto :goto_0
.end method

.method protected a(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 275
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 276
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 277
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 278
    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    .line 279
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 280
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method protected final a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 130
    iput-object p1, p0, Lhf;->a:Ljava/util/Map;

    .line 131
    iput v2, p0, Lhf;->b:I

    .line 132
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 133
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 134
    iget v1, p0, Lhf;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lhf;->b:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 133
    goto :goto_1

    .line 136
    :cond_1
    return-void
.end method

.method protected abstract c()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 290
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lhf;->b:I

    .line 294
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0}, Lhf;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhf;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1227
    invoke-super {p0}, Lhi;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lhf$h;

    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lhf$h;-><init>(Lhf;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhf$c;

    iget-object v1, p0, Lhf;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lhf$c;-><init>(Lhf;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected g()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1201
    new-instance v0, Lhf$1;

    invoke-direct {v0, p0}, Lhf$1;-><init>(Lhf;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 306
    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0, p1}, Lhf;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 309
    :cond_0
    invoke-virtual {p0, p1, v0}, Lhf;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1240
    new-instance v0, Lhf$2;

    invoke-direct {v0, p0}, Lhf$2;-><init>(Lhf;)V

    return-object v0
.end method

.method protected i()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lhf$g;

    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lhf$g;-><init>(Lhf;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lhf$a;

    iget-object v1, p0, Lhf;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lhf$a;-><init>(Lhf;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
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
            "(TK;TV;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 193
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 194
    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0, p1}, Lhf;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 196
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    iget v2, p0, Lhf;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lhf;->b:I

    .line 198
    iget-object v2, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 207
    :goto_0
    return v0

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 203
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lhf;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lhf;->b:I

    move v0, v1

    .line 205
    goto :goto_0

    .line 207
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lhf;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 260
    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lhf;->d()Ljava/util/Collection;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lhf;->c()Ljava/util/Collection;

    move-result-object v1

    .line 265
    invoke-interface {v1, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 266
    iget v2, p0, Lhf;->b:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lhf;->b:I

    .line 267
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 269
    invoke-virtual {p0, v1}, Lhf;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 230
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Lhf;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lhf;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 236
    invoke-virtual {p0}, Lhf;->c()Ljava/util/Collection;

    move-result-object v2

    .line 237
    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 239
    iget v3, p0, Lhf;->b:I

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lhf;->b:I

    .line 240
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 242
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    iget v3, p0, Lhf;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lhf;->b:I

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0, v2}, Lhf;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lhf;->b:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1196
    invoke-super {p0}, Lhi;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
