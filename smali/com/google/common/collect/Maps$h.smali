.class Lcom/google/common/collect/Maps$h;
.super Lcom/google/common/collect/Maps$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Maps$h$b;,
        Lcom/google/common/collect/Maps$h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$a",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/common/base/Predicate",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 2791
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Maps$a;-><init>(Ljava/util/Map;Lcom/google/common/base/Predicate;)V

    .line 2792
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$h;->b:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/Maps$h;->c:Ljava/util/Set;

    .line 2793
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2797
    new-instance v0, Lcom/google/common/collect/Maps$h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$h$a;-><init>(Lcom/google/common/collect/Maps$h;Lcom/google/common/collect/Maps$1;)V

    return-object v0
.end method

.method h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 2831
    new-instance v0, Lcom/google/common/collect/Maps$h$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$h$b;-><init>(Lcom/google/common/collect/Maps$h;)V

    return-object v0
.end method
