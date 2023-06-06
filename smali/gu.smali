.class public final Lgu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# direct methods
.method public static a()J
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->a()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum",
            "<TT;>;>(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Lcom/google/common/base/Enums;->a(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 43
    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_0
.end method
