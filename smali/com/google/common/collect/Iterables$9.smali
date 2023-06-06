.class final Lcom/google/common/collect/Iterables$9;
.super Lkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterables;->d(Ljava/lang/Iterable;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn",
        "<",
        "Ljava/lang/Iterable",
        "<+TT;>;",
        "Ljava/util/Iterator",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 509
    invoke-direct {p0, p1}, Lkn;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 509
    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Iterables$9;->a(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 512
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
