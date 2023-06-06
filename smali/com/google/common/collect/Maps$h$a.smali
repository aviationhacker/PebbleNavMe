.class Lcom/google/common/collect/Maps$h$a;
.super Lcom/google/common/collect/ForwardingSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$h;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Maps$h;)V
    .locals 0

    .prologue
    .line 2801
    iput-object p1, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Maps$h;Lcom/google/common/collect/Maps$1;)V
    .locals 0

    .prologue
    .line 2801
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$h$a;-><init>(Lcom/google/common/collect/Maps$h;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2800
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$h$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 2800
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$h$a;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
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
    .line 2804
    iget-object v0, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    iget-object v0, v0, Lcom/google/common/collect/Maps$h;->c:Ljava/util/Set;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 2809
    new-instance v0, Lcom/google/common/collect/Maps$h$a$1;

    iget-object v1, p0, Lcom/google/common/collect/Maps$h$a;->a:Lcom/google/common/collect/Maps$h;

    iget-object v1, v1, Lcom/google/common/collect/Maps$h;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Maps$h$a$1;-><init>(Lcom/google/common/collect/Maps$h$a;Ljava/util/Iterator;)V

    return-object v0
.end method
