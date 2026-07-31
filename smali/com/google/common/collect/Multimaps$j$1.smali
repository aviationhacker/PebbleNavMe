.class Lcom/google/common/collect/Multimaps$j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Maps$EntryTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$j;->i()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/Maps$EntryTransformer",
        "<TK;",
        "Ljava/util/Collection",
        "<TV1;>;",
        "Ljava/util/Collection",
        "<TV2;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/Multimaps$j;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$j;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$j$1;->a:Lcom/google/common/collect/Multimaps$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<TV1;>;)",
            "Ljava/util/Collection",
            "<TV2;>;"
        }
    .end annotation

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$j$1;->a:Lcom/google/common/collect/Multimaps$j;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/Multimaps$j;->b(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public synthetic transformEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1229
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Multimaps$j$1;->a(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
