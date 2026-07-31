.class public final Ljd;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljd$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;
    .annotation build Lcom/google/j2objc/annotations/Weak;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    .line 39
    iput-object p1, p0, Ljd;->a:Lcom/google/common/collect/ImmutableMap;

    .line 40
    return-void
.end method

.method static synthetic a(Ljd;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Ljd;->a:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljd;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Iterators;->contains(Ljava/util/Iterator;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Ljd;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 77
    new-instance v1, Ljd$2;

    invoke-direct {v1, p0, v0}, Ljd$2;-><init>(Ljd;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Ljd$1;

    invoke-direct {v0, p0}, Ljd$1;-><init>(Ljd;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Ljd;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljd;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "serialization"
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljd$a;

    iget-object v1, p0, Ljd;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, v1}, Ljd$a;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
