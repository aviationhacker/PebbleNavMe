.class public final Lcom/google/common/reflect/TypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeResolver$c;,
        Lcom/google/common/reflect/TypeResolver$d;,
        Lcom/google/common/reflect/TypeResolver$a;,
        Lcom/google/common/reflect/TypeResolver$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/reflect/TypeResolver$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/google/common/reflect/TypeResolver$b;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver$b;-><init>()V

    iput-object v0, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/google/common/reflect/TypeResolver$b;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/reflect/TypeResolver$b;Lcom/google/common/reflect/TypeResolver$1;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$b;)V

    return-void
.end method

.method static a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    invoke-static {p0}, Lcom/google/common/reflect/TypeResolver$a;->a(Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/google/common/reflect/TypeResolver;->b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;
    .locals 3

    .prologue
    .line 200
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 201
    if-nez v0, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    .line 202
    :goto_0
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 204
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 205
    invoke-direct {p0, v2}, Lcom/google/common/reflect/TypeResolver;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 206
    check-cast v0, Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Llr;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 194
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 196
    invoke-static {v0}, Llr;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;
    .locals 3

    .prologue
    .line 187
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 188
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 189
    new-instance v2, Llr$h;

    .line 190
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeResolver;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/common/reflect/TypeResolver;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Llr$h;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v2
.end method

.method static synthetic a(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/google/common/reflect/TypeResolver;->b(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/reflect/TypeResolver;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 3

    .prologue
    .line 179
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 180
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 181
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    return-object v1
.end method

.method private static b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not a "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$c;",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-ne v0, v1, :cond_0

    .line 111
    new-instance v0, Lcom/google/common/reflect/TypeResolver$1;

    invoke-direct {v0, p0, p2}, Lcom/google/common/reflect/TypeResolver$1;-><init>(Ljava/util/Map;Ljava/lang/reflect/Type;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver$1;->a([Ljava/lang/reflect/Type;)V

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/common/reflect/TypeResolver$c;",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Lcom/google/common/reflect/TypeResolver;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    iget-object v1, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    invoke-virtual {v1, p1}, Lcom/google/common/reflect/TypeResolver$b;->a(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver$b;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/reflect/TypeResolver;-><init>(Lcom/google/common/reflect/TypeResolver$b;)V

    return-object v0
.end method

.method public resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 163
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/google/common/reflect/TypeResolver;->a:Lcom/google/common/reflect/TypeResolver$b;

    check-cast p1, Ljava/lang/reflect/TypeVariable;

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeResolver$b;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 174
    :cond_0
    :goto_0
    return-object p1

    .line 166
    :cond_1
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 167
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p1

    goto :goto_0

    .line 168
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 169
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_3
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/WildcardType;

    move-result-object p1

    goto :goto_0
.end method

.method public where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    invoke-static {v2, v0, v1}, Lcom/google/common/reflect/TypeResolver;->b(Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    return-object v0
.end method
