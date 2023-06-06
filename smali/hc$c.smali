.class Lhc$c;
.super Lcom/google/common/collect/ForwardingSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhc;


# direct methods
.method private constructor <init>(Lhc;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lhc$c;->a:Lhc;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhc;Lhc$1;)V
    .locals 0

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lhc$c;-><init>(Lhc;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lhc$c;->a:Lhc;

    invoke-virtual {v0}, Lhc;->clear()V

    .line 202
    return-void
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lhc$c;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lhc$c;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lhc$c;->a:Lhc;

    invoke-static {v0}, Lhc;->b(Lhc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lhc$c;->a:Lhc;

    invoke-virtual {v0}, Lhc;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lhc$c;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    .line 210
    :goto_0
    return v0

    .line 209
    :cond_0
    iget-object v0, p0, Lhc$c;->a:Lhc;

    invoke-static {v0, p1}, Lhc;->a(Lhc;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lhc$c;->standardRemoveAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 220
    invoke-virtual {p0, p1}, Lhc$c;->standardRetainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
