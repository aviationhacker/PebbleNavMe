.class Lcom/google/common/collect/Maps$b$a;
.super Lcom/google/common/collect/Maps$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$b;->a()Ljava/util/Set;
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
.field final synthetic a:Lcom/google/common/collect/Maps$b;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$b;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/google/common/collect/Maps$b$a;->a:Lcom/google/common/collect/Maps$b;

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
    .line 833
    iget-object v0, p0, Lcom/google/common/collect/Maps$b$a;->a:Lcom/google/common/collect/Maps$b;

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
    .line 838
    iget-object v0, p0, Lcom/google/common/collect/Maps$b$a;->a:Lcom/google/common/collect/Maps$b;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$b;->c()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$b$a;->a:Lcom/google/common/collect/Maps$b;

    iget-object v1, v1, Lcom/google/common/collect/Maps$b;->a:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
