.class public final Lcom/google/common/collect/LinkedHashMultiset;
.super Lhg;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lhg",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "not needed in emulated source"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 81
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lhg;-><init>(Ljava/util/Map;)V

    .line 82
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Lcom/google/common/collect/Maps;->newLinkedHashMapWithExpectedSize(I)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-direct {p0, v0}, Lhg;-><init>(Ljava/util/Map;)V

    .line 86
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/google/common/collect/LinkedHashMultiset;

    invoke-direct {v0}, Lcom/google/common/collect/LinkedHashMultiset;-><init>()V

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/LinkedHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lcom/google/common/collect/LinkedHashMultiset;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lcom/google/common/collect/LinkedHashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/LinkedHashMultiset",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p0}, Lcom/google/common/collect/Multisets;->a(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/LinkedHashMultiset;->create(I)Lcom/google/common/collect/LinkedHashMultiset;

    move-result-object v0

    .line 76
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 77
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 101
    invoke-static {p1}, Lka;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 102
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0, v1}, Lcom/google/common/collect/LinkedHashMultiset;->a(Ljava/util/Map;)V

    .line 103
    invoke-static {p0, p1, v0}, Lka;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectInputStream;I)V

    .line 104
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 95
    invoke-static {p0, p1}, Lka;->a(Lcom/google/common/collect/Multiset;Ljava/io/ObjectOutputStream;)V

    .line 96
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lhg;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhg;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhg;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->clear()V

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhg;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhg;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->entrySet()Ljava/util/Set;

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
    .line 43
    invoke-super {p0, p1}, Lhg;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lhg;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhg;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhg;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Lhg;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Lhg;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic setCount(Ljava/lang/Object;II)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lhg;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lhg;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
