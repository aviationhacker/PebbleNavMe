.class final Lgx$j;
.super Lgx$n;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/LoadingCache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lgx$n",
        "<TK;TV;>;",
        "Lcom/google/common/cache/LoadingCache",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient a:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lgx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4729
    invoke-direct {p0, p1}, Lgx$n;-><init>(Lgx;)V

    .line 4730
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 4733
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4734
    invoke-virtual {p0}, Lgx$j;->a()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4735
    iget-object v1, p0, Lgx$j;->m:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    iput-object v0, p0, Lgx$j;->a:Lcom/google/common/cache/LoadingCache;

    .line 4736
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4764
    iget-object v0, p0, Lgx$j;->a:Lcom/google/common/cache/LoadingCache;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4755
    iget-object v0, p0, Lgx$j;->a:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4740
    iget-object v0, p0, Lgx$j;->a:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4750
    iget-object v0, p0, Lgx$j;->a:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4745
    iget-object v0, p0, Lgx$j;->a:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 4760
    iget-object v0, p0, Lgx$j;->a:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->refresh(Ljava/lang/Object;)V

    .line 4761
    return-void
.end method
