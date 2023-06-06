.class Lcom/google/common/reflect/TypeToken$e$3;
.super Lcom/google/common/reflect/TypeToken$e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken$e;->a()Lcom/google/common/reflect/TypeToken$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/reflect/TypeToken$e$a",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/google/common/reflect/TypeToken$e;


# direct methods
.method constructor <init>(Lcom/google/common/reflect/TypeToken$e;Lcom/google/common/reflect/TypeToken$e;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$e$3;->c:Lcom/google/common/reflect/TypeToken$e;

    invoke-direct {p0, p2}, Lcom/google/common/reflect/TypeToken$e$a;-><init>(Lcom/google/common/reflect/TypeToken$e;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1183
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 1184
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1185
    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeToken$e$3;->b(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1186
    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1189
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/common/reflect/TypeToken$e$a;->a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Iterable",
            "<+TK;>;"
        }
    .end annotation

    .prologue
    .line 1180
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
