.class final Lcom/google/common/reflect/TypeToken$b;
.super Lcom/google/common/reflect/TypeToken$TypeSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken",
        "<TT;>.TypeSet;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic a:Lcom/google/common/reflect/TypeToken;

.field private transient c:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/reflect/TypeToken;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$b;->a:Lcom/google/common/reflect/TypeToken;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/reflect/TypeToken$1;)V
    .locals 0

    .prologue
    .line 759
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken$b;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$b;->a:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$TypeSet;->classes()Lcom/google/common/reflect/TypeToken$TypeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public classes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;"
        }
    .end annotation

    .prologue
    .line 778
    return-object p0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$b;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken$b;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$b;->c:Lcom/google/common/collect/ImmutableSet;

    .line 765
    if-nez v0, :cond_0

    .line 767
    sget-object v0, Lcom/google/common/reflect/TypeToken$e;->a:Lcom/google/common/reflect/TypeToken$e;

    .line 768
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$e;->a()Lcom/google/common/reflect/TypeToken$e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$b;->a:Lcom/google/common/reflect/TypeToken;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$e;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 769
    invoke-static {v0}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    sget-object v1, Lcom/google/common/reflect/TypeToken$f;->a:Lcom/google/common/reflect/TypeToken$f;

    .line 770
    invoke-virtual {v0, v1}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Lcom/google/common/collect/FluentIterable;->toSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken$b;->c:Lcom/google/common/collect/ImmutableSet;

    .line 773
    :cond_0
    return-object v0
.end method

.method public interfaces()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;"
        }
    .end annotation

    .prologue
    .line 790
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "classes().interfaces() not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rawTypes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 784
    sget-object v0, Lcom/google/common/reflect/TypeToken$e;->b:Lcom/google/common/reflect/TypeToken$e;

    .line 785
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken$e;->a()Lcom/google/common/reflect/TypeToken$e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$b;->a:Lcom/google/common/reflect/TypeToken;

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->a(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$e;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 786
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
