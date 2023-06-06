.class public abstract Liu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liu$a;
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

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected a:Lcom/google/common/collect/MapMaker$e;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$e",
            "<TK0;TV0;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/MapMaker$e;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "To be supported"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Lcom/google/common/collect/MapMaker$e",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Liu;->a:Lcom/google/common/collect/MapMaker$e;

    sget-object v1, Liu$a;->a:Liu$a;

    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$e;

    return-object v0
.end method

.method protected abstract a(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected abstract b()Ljj;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "MapMakerInternalMap"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljj",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract concurrencyLevel(I)Liu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Liu",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract initialCapacity(I)Liu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Liu",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract makeMap()Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:TK0;V:TV0;>()",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract weakKeys()Liu;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Liu",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method

.method public abstract weakValues()Liu;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.lang.ref.WeakReference"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Liu",
            "<TK0;TV0;>;"
        }
    .end annotation
.end method
