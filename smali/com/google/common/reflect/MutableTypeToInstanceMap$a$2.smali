.class final Lcom/google/common/reflect/MutableTypeToInstanceMap$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/MutableTypeToInstanceMap$a;->b(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 2
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
    .line 126
    new-instance v0, Lcom/google/common/reflect/MutableTypeToInstanceMap$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/common/reflect/MutableTypeToInstanceMap$a;-><init>(Ljava/util/Map$Entry;Lcom/google/common/reflect/MutableTypeToInstanceMap$1;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/reflect/MutableTypeToInstanceMap$a$2;->a(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
