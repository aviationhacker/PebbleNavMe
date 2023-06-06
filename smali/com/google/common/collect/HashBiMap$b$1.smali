.class Lcom/google/common/collect/HashBiMap$b$1;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$b;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f",
        "<TV;TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$b;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$b$1;->a:Lcom/google/common/collect/HashBiMap$b;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$f;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 620
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$b$1;->a:Lcom/google/common/collect/HashBiMap$b;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 625
    new-instance v0, Lcom/google/common/collect/HashBiMap$b$1$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$b$1$1;-><init>(Lcom/google/common/collect/HashBiMap$b$1;)V

    return-object v0
.end method
