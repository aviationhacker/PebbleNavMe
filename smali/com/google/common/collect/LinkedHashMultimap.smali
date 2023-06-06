.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lhm;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$b;,
        Lcom/google/common/collect/LinkedHashMultimap$a;,
        Lcom/google/common/collect/LinkedHashMultimap$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lhm",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java serialization not supported"
    .end annotation
.end field


# instance fields
.field transient a:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private transient b:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-direct {p0, v0}, Lhm;-><init>(Ljava/util/Map;)V

    .line 224
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->a:I

    .line 229
    const-string v0, "expectedValuesPerKey"

    invoke-static {p2, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 231
    iput p2, p0, Lcom/google/common/collect/LinkedHashMultimap;->a:I

    .line 232
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$a;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$a;)V

    iput-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 233
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 234
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$c;Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$c;Lcom/google/common/collect/LinkedHashMultimap$c;)V

    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->c()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->d()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 149
    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->a(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 140
    invoke-virtual {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->b(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 141
    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->a()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->b()Lcom/google/common/collect/LinkedHashMultimap$c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$c;Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 145
    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$c;Lcom/google/common/collect/LinkedHashMultimap$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$c",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-interface {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$c;->b(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 135
    invoke-interface {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$c;->a(Lcom/google/common/collect/LinkedHashMultimap$c;)V

    .line 136
    return-void
.end method

.method public static create()Lcom/google/common/collect/LinkedHashMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    const/16 v1, 0x10

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(II)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(II)",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap;

    .line 104
    invoke-static {p0}, Lcom/google/common/collect/Maps;->a(I)I

    move-result v1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->a(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;-><init>(II)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/LinkedHashMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/LinkedHashMultimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->create(II)Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 120
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 562
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 563
    new-instance v1, Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-direct {v1, v2, v2, v0, v2}, Lcom/google/common/collect/LinkedHashMultimap$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;ILcom/google/common/collect/LinkedHashMultimap$a;)V

    iput-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    .line 564
    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    iget-object v2, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-static {v1, v2}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 565
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->a:I

    .line 566
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 567
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move v1, v0

    .line 568
    :goto_0
    if-ge v1, v2, :cond_0

    .line 570
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 571
    invoke-virtual {p0, v4}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    move v1, v0

    .line 574
    :goto_1
    if-ge v1, v2, :cond_1

    .line 576
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 578
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 579
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 581
    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/common/collect/LinkedHashMultimap;->a(Ljava/util/Map;)V

    .line 582
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 548
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 549
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 550
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 551
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 554
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 556
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_1

    .line 558
    :cond_1
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$b;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->a:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$b;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/util/LinkedHashSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->a:I

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lhm;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method synthetic c()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Lhm;->clear()V

    .line 539
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    iget-object v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->b:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-static {v0, v1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 540
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
    .line 82
    invoke-super {p0, p1, p2}, Lhm;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .line 82
    invoke-super {p0, p1}, Lhm;->containsKey(Ljava/lang/Object;)Z

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
    .line 82
    invoke-super {p0, p1}, Lhm;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 291
    invoke-super {p0}, Lhm;->entries()Ljava/util/Set;

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
    .line 82
    invoke-super {p0, p1}, Lhm;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method g()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->h()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Lhm;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method h()Ljava/util/Iterator;
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
    .line 502
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lhm;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lhm;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lhm;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keys()Lcom/google/common/collect/Multiset;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lhm;->keys()Lcom/google/common/collect/Multiset;

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
    .line 82
    invoke-super {p0, p1, p2}, Lhm;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Lhm;->putAll(Lcom/google/common/collect/Multimap;)Z

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
    .line 82
    invoke-super {p0, p1, p2}, Lhm;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

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
    .line 82
    invoke-super {p0, p1, p2}, Lhm;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Lhm;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/LinkedHashMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable",
            "<+TV;>;)",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Lhm;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lhm;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lhm;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 303
    invoke-super {p0}, Lhm;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
