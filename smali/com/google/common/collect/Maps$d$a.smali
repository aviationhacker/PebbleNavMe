.class Lcom/google/common/collect/Maps$d$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$d;->b()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$f",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Maps$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$d;)V
    .locals 0

    .prologue
    .line 4060
    iput-object p1, p0, Lcom/google/common/collect/Maps$d$a;->a:Lcom/google/common/collect/Maps$d;

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
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4063
    iget-object v0, p0, Lcom/google/common/collect/Maps$d$a;->a:Lcom/google/common/collect/Maps$d;

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
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/google/common/collect/Maps$d$a;->a:Lcom/google/common/collect/Maps$d;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$d;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
