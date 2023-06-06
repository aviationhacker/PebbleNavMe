.class Lcom/google/common/reflect/TypeResolver$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/TypeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeResolver$c;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver$b;->a:Lcom/google/common/collect/ImmutableMap;

    .line 224
    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Lcom/google/common/reflect/TypeResolver$c;",
            "Ljava/lang/reflect/Type;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver$b;->a:Lcom/google/common/collect/ImmutableMap;

    .line 228
    return-void
.end method


# virtual methods
.method final a(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver$b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$c;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver$b;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    .line 233
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$b;->a:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 234
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/reflect/TypeResolver$c;

    .line 236
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 237
    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeResolver$c;->b(Ljava/lang/reflect/Type;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    :goto_1
    const-string v7, "Type variable %s bound to itself"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v1, v8, v4

    invoke-static {v2, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v5, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_0
    move v2, v4

    .line 237
    goto :goto_1

    .line 240
    :cond_1
    new-instance v0, Lcom/google/common/reflect/TypeResolver$b;

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver$b;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method final a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 244
    .line 245
    new-instance v0, Lcom/google/common/reflect/TypeResolver$b$1;

    invoke-direct {v0, p0, p1, p0}, Lcom/google/common/reflect/TypeResolver$b$1;-><init>(Lcom/google/common/reflect/TypeResolver$b;Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)V

    .line 254
    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeResolver$b;->a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/reflect/TypeVariable;Lcom/google/common/reflect/TypeResolver$b;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;",
            "Lcom/google/common/reflect/TypeResolver$b;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 266
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver$b;->a:Lcom/google/common/collect/ImmutableMap;

    new-instance v1, Lcom/google/common/reflect/TypeResolver$c;

    invoke-direct {v1, p1}, Lcom/google/common/reflect/TypeResolver$c;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 267
    if-nez v0, :cond_3

    .line 268
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 269
    array-length v1, v0

    if-nez v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object p1

    .line 272
    :cond_1
    new-instance v1, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v1, p2, v2}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$b;Lcom/google/common/reflect/TypeResolver$1;)V

    invoke-static {v1, v0}, Lcom/google/common/reflect/TypeResolver;->a(Lcom/google/common/reflect/TypeResolver;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 301
    sget-boolean v2, Llr$d;->a:Z

    if-eqz v2, :cond_2

    .line 302
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :cond_2
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v0, v2, v1}, Llr;->a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    goto :goto_0

    .line 309
    :cond_3
    new-instance v1, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v1, p2, v2}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$b;Lcom/google/common/reflect/TypeResolver$1;)V

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method
