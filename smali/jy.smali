.class final Ljy;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Ordering",
        "<",
        "Ljava/lang/Comparable;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final a:Ljy;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljy;

    invoke-direct {v0}, Ljy;-><init>()V

    sput-object v0, Ljy;->a:Ljy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Ljy;->a:Ljy;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1

    .prologue
    .line 34
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    if-ne p1, p2, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public varargs a(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljk;->max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public a(Ljava/lang/Iterable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1}, Ljk;->max(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public a(Ljava/util/Iterator;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1}, Ljk;->max(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1, p2}, Ljk;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public varargs b(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljk;->min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public b(Ljava/lang/Iterable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 86
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1}, Ljk;->min(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public b(Ljava/util/Iterator;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/util/Iterator",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 81
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1}, Ljk;->min(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(TE;TE;)TE;"
        }
    .end annotation

    .prologue
    .line 71
    sget-object v0, Ljk;->a:Ljk;

    invoke-virtual {v0, p1, p2}, Ljk;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Ljy;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public synthetic max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Ljy;->b(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Ljy;->c(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    check-cast p4, [Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljy;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic max(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Ljy;->b(Ljava/util/Iterator;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Ljy;->a(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Ljy;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    check-cast p4, [Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljy;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Ljy;->a(Ljava/util/Iterator;)Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public reverse()Lcom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lcom/google/common/collect/Ordering",
            "<TS;>;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "Ordering.natural().reverse()"

    return-object v0
.end method
