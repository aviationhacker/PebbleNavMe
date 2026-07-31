.class public abstract Lic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lic$b;,
        Lic$d;,
        Lic$a;,
        Lic$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lic",
        "<TC;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final a:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Comparable;)V
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lic;->a:Ljava/lang/Comparable;

    .line 42
    return-void
.end method

.method public static b(Ljava/lang/Comparable;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Lic$d;

    invoke-direct {v0, p0}, Lic$d;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Comparable;)Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(TC;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Lic$b;

    invoke-direct {v0, p0}, Lic$b;-><init>(Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public static d()Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Lic$c;->f()Lic$c;

    move-result-object v0

    return-object v0
.end method

.method public static e()Lic;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 208
    invoke-static {}, Lic$a;->f()Lic$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lic;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lic",
            "<TC;>;)I"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lic;->d()Lic;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 74
    const/4 v0, 0x1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    invoke-static {}, Lic;->e()Lic;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 77
    const/4 v0, -0x1

    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lic;->a:Ljava/lang/Comparable;

    iget-object v1, p1, Lic;->a:Ljava/lang/Comparable;

    invoke-static {v0, v1}, Lcom/google/common/collect/Range;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    .line 80
    if-nez v0, :cond_0

    .line 84
    instance-of v0, p0, Lic$b;

    instance-of v1, p1, Lic$b;

    invoke-static {v0, v1}, Lcom/google/common/primitives/Booleans;->compare(ZZ)I

    move-result v0

    goto :goto_0
.end method

.method public abstract a()Lcom/google/common/collect/BoundType;
.end method

.method abstract a(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/StringBuilder;)V
.end method

.method public abstract a(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract b()Lcom/google/common/collect/BoundType;
.end method

.method abstract b(Lcom/google/common/collect/BoundType;Lcom/google/common/collect/DiscreteDomain;)Lic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/BoundType;",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/google/common/collect/DiscreteDomain;)Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)TC;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/StringBuilder;)V
.end method

.method public c(Lcom/google/common/collect/DiscreteDomain;)Lic;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/DiscreteDomain",
            "<TC;>;)",
            "Lic",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 67
    return-object p0
.end method

.method public c()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lic;->a:Ljava/lang/Comparable;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 36
    check-cast p1, Lic;

    invoke-virtual {p0, p1}, Lic;->a(Lic;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 94
    instance-of v1, p1, Lic;

    if-eqz v1, :cond_0

    .line 96
    check-cast p1, Lic;

    .line 98
    :try_start_0
    invoke-virtual {p0, p1}, Lic;->a(Lic;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 100
    :catch_0
    move-exception v1

    goto :goto_0
.end method
