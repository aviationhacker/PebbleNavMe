.class public final Lcom/google/common/collect/ArrayListMultimap;
.super Lhe;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lhe",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source."
    .end annotation
.end field


# instance fields
.field transient a:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lhe;-><init>(Ljava/util/Map;)V

    .line 106
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/common/collect/ArrayListMultimap;->a:I

    .line 107
    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .prologue
    .line 110
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lhe;-><init>(Ljava/util/Map;)V

    .line 111
    const-string v0, "expectedValuesPerKey"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 112
    iput p2, p0, Lcom/google/common/collect/ArrayListMultimap;->a:I

    .line 113
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/Multimap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .line 117
    invoke-interface {p1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    instance-of v0, p1, Lcom/google/common/collect/ArrayListMultimap;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ArrayListMultimap;

    iget v0, v0, Lcom/google/common/collect/ArrayListMultimap;->a:I

    .line 116
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>(II)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ArrayListMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 122
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static create()Lcom/google/common/collect/ArrayListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ArrayListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0}, Lcom/google/common/collect/ArrayListMultimap;-><init>()V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/ArrayListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/ArrayListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ArrayListMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ArrayListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/ArrayListMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Lcom/google/common/collect/ArrayListMultimap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ArrayListMultimap;-><init>(Lcom/google/common/collect/Multimap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 157
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/common/collect/ArrayListMultimap;->a:I

    .line 158
    invoke-static {p1}, Lka;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 159
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 160
    invoke-virtual {p0, v1}, Lcom/google/common/collect/ArrayListMultimap;->a(Ljava/util/Map;)V

    .line 161
    invoke-static {p0, p1, v0}, Lka;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectInputStream;I)V

    .line 162
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 151
    invoke-static {p0, p1}, Lka;->a(Lcom/google/common/collect/Multimap;Ljava/io/ObjectOutputStream;)V

    .line 152
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/common/collect/ArrayListMultimap;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->clear()V

    return-void
.end method

.method public bridge synthetic containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lhe;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Lhe;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Lhe;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Lhe;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Lhe;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lhe;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lhe;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lhe;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lhe;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Lhe;->removeAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lhe;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/common/collect/ArrayListMultimap;->e()Ljava/util/Map;

    move-result-object v0

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

    .line 138
    check-cast v0, Ljava/util/ArrayList;

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lhe;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
