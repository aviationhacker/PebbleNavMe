.class public abstract Lcom/google/common/collect/MultimapBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MultimapBuilder$SortedSetMultimapBuilder;,
        Lcom/google/common/collect/MultimapBuilder$SetMultimapBuilder;,
        Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;,
        Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;,
        Lcom/google/common/collect/MultimapBuilder$b;,
        Lcom/google/common/collect/MultimapBuilder$f;,
        Lcom/google/common/collect/MultimapBuilder$d;,
        Lcom/google/common/collect/MultimapBuilder$c;,
        Lcom/google/common/collect/MultimapBuilder$e;,
        Lcom/google/common/collect/MultimapBuilder$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K0:",
        "Ljava/lang/Object;",
        "V0:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/MultimapBuilder$1;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder;-><init>()V

    return-void
.end method

.method public static enumKeys(Ljava/lang/Class;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Enum",
            "<TK0;>;>(",
            "Ljava/lang/Class",
            "<TK0;>;)",
            "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
            "<TK0;>;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$4;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$4;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static hashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->hashKeys(I)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static hashKeys(I)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 100
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$1;-><init>(I)V

    return-object v0
.end method

.method public static linkedHashKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->linkedHashKeys(I)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static linkedHashKeys(I)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    const-string v0, "expectedKeys"

    invoke-static {p0, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 131
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$2;-><init>(I)V

    return-object v0
.end method

.method public static treeKeys()Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/MultimapBuilder;->treeKeys(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    return-object v0
.end method

.method public static treeKeys(Ljava/util/Comparator;)Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K0:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<TK0;>;)",
            "Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys",
            "<TK0;>;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$3;

    invoke-direct {v0, p0}, Lcom/google/common/collect/MultimapBuilder$3;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public abstract build()Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public build(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/collect/Multimap",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/Multimap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/google/common/collect/MultimapBuilder;->build()Lcom/google/common/collect/Multimap;

    move-result-object v0

    .line 434
    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    .line 435
    return-object v0
.end method
