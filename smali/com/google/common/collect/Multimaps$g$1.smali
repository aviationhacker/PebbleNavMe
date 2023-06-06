.class Lcom/google/common/collect/Multimaps$g$1;
.super Lkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$g;->a()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;",
        "Lcom/google/common/collect/Multiset$Entry",
        "<TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$g;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$g;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$g$1;->a:Lcom/google/common/collect/Multimaps$g;

    invoke-direct {p0, p2}, Lkn;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/util/Map$Entry;)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1567
    new-instance v0, Lcom/google/common/collect/Multimaps$g$1$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$g$1$1;-><init>(Lcom/google/common/collect/Multimaps$g$1;Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1564
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$g$1;->a(Ljava/util/Map$Entry;)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method
