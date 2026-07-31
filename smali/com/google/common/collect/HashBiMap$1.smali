.class Lcom/google/common/collect/HashBiMap$1;
.super Lcom/google/common/collect/HashBiMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap;->b()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.d<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$1;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap$d;-><init>(Lcom/google/common/collect/HashBiMap;)V

    .line 474
    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/HashBiMap$a;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v0, Lcom/google/common/collect/HashBiMap$1$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/HashBiMap$1$a;-><init>(Lcom/google/common/collect/HashBiMap$1;Lcom/google/common/collect/HashBiMap$a;)V

    return-object v0
.end method

.method synthetic b(Lcom/google/common/collect/HashBiMap$a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/google/common/collect/HashBiMap$1;->a(Lcom/google/common/collect/HashBiMap$a;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
