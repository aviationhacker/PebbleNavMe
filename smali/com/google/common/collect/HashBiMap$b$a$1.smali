.class Lcom/google/common/collect/HashBiMap$b$a$1;
.super Lcom/google/common/collect/HashBiMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/HashBiMap$b$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/HashBiMap",
        "<TK;TV;>.d<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/HashBiMap$b$a;


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap$b$a;)V
    .locals 1

    .prologue
    .line 600
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$b$a$1;->a:Lcom/google/common/collect/HashBiMap$b$a;

    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$b$a;->a:Lcom/google/common/collect/HashBiMap$b;

    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$b;->a:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap$d;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-void
.end method


# virtual methods
.method b(Lcom/google/common/collect/HashBiMap$a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 603
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->h:Ljava/lang/Object;

    return-object v0
.end method
