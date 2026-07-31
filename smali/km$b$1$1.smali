.class Lkm$b$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkm$b$1;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map$Entry;

.field final synthetic b:Lkm$b$1;


# direct methods
.method constructor <init>(Lkm$b$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 879
    iput-object p1, p0, Lkm$b$1$1;->b:Lkm$b$1;

    iput-object p2, p0, Lkm$b$1$1;->a:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 887
    iget-object v0, p0, Lkm$b$1$1;->a:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lkm$b$1$1;->b:Lkm$b$1;

    iget-object v1, v1, Lkm$b$1;->a:Lkm$b;

    iget-object v1, v1, Lkm$b;->h:Ljava/lang/Object;

    invoke-static {v0, v1}, Lkm;->a(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Lkm$b$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 882
    iget-object v0, p0, Lkm$b$1$1;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 879
    invoke-virtual {p0}, Lkm$b$1$1;->a()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
