.class Lil$a$b;
.super Lcom/google/common/collect/Maps$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lil$a;->h()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$n",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lil$a;


# direct methods
.method constructor <init>(Lil$a;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lil$a$b;->a:Lil$a;

    .line 223
    invoke-direct {p0, p1}, Lcom/google/common/collect/Maps$n;-><init>(Ljava/util/Map;)V

    .line 224
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 238
    iget-object v0, p0, Lil$a$b;->a:Lil$a;

    invoke-virtual {v0, p1}, Lil$a;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lil$a$b;->a:Lil$a;

    iget-object v0, v0, Lil$a;->a:Lil;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lil;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lil$a$b;->a:Lil$a;

    iget-object v0, v0, Lil$a;->a:Lil;

    invoke-static {p1}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Maps;->a(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lil;->a(Lcom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
