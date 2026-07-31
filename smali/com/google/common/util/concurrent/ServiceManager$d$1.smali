.class Lcom/google/common/util/concurrent/ServiceManager$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ServiceManager$d;->e()Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Lcom/google/common/util/concurrent/Service;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/util/concurrent/ServiceManager$d;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ServiceManager$d;)V
    .locals 0

    .prologue
    .line 613
    iput-object p1, p0, Lcom/google/common/util/concurrent/ServiceManager$d$1;->a:Lcom/google/common/util/concurrent/ServiceManager$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    .line 615
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 613
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ServiceManager$d$1;->a(Ljava/util/Map$Entry;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
