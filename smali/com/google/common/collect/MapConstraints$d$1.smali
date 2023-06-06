.class Lcom/google/common/collect/MapConstraints$d$1;
.super Lkn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapConstraints$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkn",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/MapConstraints$d;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapConstraints$d;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/google/common/collect/MapConstraints$d$1;->a:Lcom/google/common/collect/MapConstraints$d;

    invoke-direct {p0, p2}, Lkn;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 633
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapConstraints$d$1;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/common/collect/MapConstraints$d$1;->a:Lcom/google/common/collect/MapConstraints$d;

    iget-object v0, v0, Lcom/google/common/collect/MapConstraints$d;->a:Lcom/google/common/collect/MapConstraint;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapConstraints;->a(Ljava/util/Map$Entry;Lcom/google/common/collect/MapConstraint;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
