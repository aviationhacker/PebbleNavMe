.class Lcom/google/common/collect/LinkedListMultimap$c$1;
.super Lko;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/LinkedListMultimap$c;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lko",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/LinkedListMultimap$g;

.field final synthetic b:Lcom/google/common/collect/LinkedListMultimap$c;


# direct methods
.method constructor <init>(Lcom/google/common/collect/LinkedListMultimap$c;Ljava/util/ListIterator;Lcom/google/common/collect/LinkedListMultimap$g;)V
    .locals 0

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$c$1;->b:Lcom/google/common/collect/LinkedListMultimap$c;

    iput-object p3, p0, Lcom/google/common/collect/LinkedListMultimap$c$1;->a:Lcom/google/common/collect/LinkedListMultimap$g;

    invoke-direct {p0, p2}, Lko;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 752
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$c$1;->a(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 755
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$c$1;->a:Lcom/google/common/collect/LinkedListMultimap$g;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/LinkedListMultimap$g;->a(Ljava/lang/Object;)V

    .line 761
    return-void
.end method
