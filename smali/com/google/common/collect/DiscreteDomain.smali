.class public abstract Lcom/google/common/collect/DiscreteDomain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/DiscreteDomain$a;,
        Lcom/google/common/collect/DiscreteDomain$c;,
        Lcom/google/common/collect/DiscreteDomain$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bigIntegers()Lcom/google/common/collect/DiscreteDomain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain$a;->a()Lcom/google/common/collect/DiscreteDomain$a;

    move-result-object v0

    return-object v0
.end method

.method public static integers()Lcom/google/common/collect/DiscreteDomain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain$b;->c()Lcom/google/common/collect/DiscreteDomain$b;

    move-result-object v0

    return-object v0
.end method

.method public static longs()Lcom/google/common/collect/DiscreteDomain;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/DiscreteDomain",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/google/common/collect/DiscreteDomain$c;->c()Lcom/google/common/collect/DiscreteDomain$c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract distance(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)J"
        }
    .end annotation
.end method

.method public maxValue()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public minValue()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 258
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public abstract next(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method

.method public abstract previous(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)TC;"
        }
    .end annotation
.end method
