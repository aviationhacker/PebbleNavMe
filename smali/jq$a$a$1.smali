.class Ljq$a$a$1;
.super Liw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljq$a$a;->f()Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Liw",
        "<",
        "Ljava/util/Map$Entry",
        "<TV;TK;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljq$a$a;


# direct methods
.method constructor <init>(Ljq$a$a;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Ljq$a$a$1;->a:Ljq$a$a;

    invoke-direct {p0}, Liw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Ljq$a$a$1;->a:Ljq$a$a;

    iget-object v0, v0, Ljq$a$a;->a:Ljq$a;

    iget-object v0, v0, Ljq$a;->a:Ljq;

    invoke-static {v0}, Ljq;->d(Ljq;)[Ljava/util/Map$Entry;

    move-result-object v0

    aget-object v0, v0, p1

    .line 237
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Ljava/util/Map$Entry",
            "<TV;TK;>;>;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Ljq$a$a$1;->a:Ljq$a$a;

    return-object v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Ljq$a$a$1;->a(I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
