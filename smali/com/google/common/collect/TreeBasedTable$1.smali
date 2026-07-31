.class Lcom/google/common/collect/TreeBasedTable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/TreeBasedTable;->g()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Map",
        "<TC;TV;>;",
        "Ljava/util/Iterator",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeBasedTable;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$1;->a:Lcom/google/common/collect/TreeBasedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TC;TV;>;)",
            "Ljava/util/Iterator",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 331
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/TreeBasedTable$1;->a(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
