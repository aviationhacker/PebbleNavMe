.class public abstract Lcom/google/common/reflect/TypeToken;
.super Llp;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/reflect/TypeToken$e;,
        Lcom/google/common/reflect/TypeToken$d;,
        Lcom/google/common/reflect/TypeToken$a;,
        Lcom/google/common/reflect/TypeToken$f;,
        Lcom/google/common/reflect/TypeToken$b;,
        Lcom/google/common/reflect/TypeToken$c;,
        Lcom/google/common/reflect/TypeToken$TypeSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llp",
        "<TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private transient b:Lcom/google/common/reflect/TypeResolver;


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Llp;-><init>()V

    .line 113
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 114
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 114
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Llp;-><init>()V

    .line 140
    invoke-super {p0}, Llp;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 141
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 142
    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Llp;-><init>()V

    .line 149
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/google/common/reflect/TypeToken$1;)V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/reflect/TypeToken;)Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 1025
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 1026
    invoke-static {v0}, Llr;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1030
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1043
    :goto_0
    return-object v0

    .line 1033
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    .line 1034
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1035
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 1037
    :goto_1
    array-length v2, v1

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v0, v2, :cond_3

    .line 1040
    :cond_1
    invoke-static {v0, p0, v1}, Llr;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 1035
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1043
    :cond_3
    invoke-static {p0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<-TT;>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1049
    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p2, v0

    .line 1051
    invoke-static {v2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v2

    .line 1052
    invoke-virtual {v2, p1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1054
    invoke-virtual {v2, p1}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1055
    return-object v0

    .line 1049
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1058
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isn\'t a super type of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->b:Lcom/google/common/reflect/TypeResolver;

    iput-object v1, v0, Lcom/google/common/reflect/TypeToken;->b:Lcom/google/common/reflect/TypeResolver;

    .line 259
    return-object v0
.end method

.method static synthetic a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 898
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 900
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 909
    :goto_0
    return v0

    .line 903
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 905
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 906
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 907
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 909
    goto :goto_0
.end method

.method private a(Ljava/lang/reflect/ParameterizedType;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 876
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    .line 877
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
    :cond_0
    :goto_0
    return v1

    .line 880
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    .line 881
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move v0, v1

    .line 882
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 890
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-direct {v4, v5}, Lcom/google/common/reflect/TypeToken;->c(Ljava/lang/reflect/Type;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 894
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/common/reflect/TypeToken;[Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private a([Ljava/lang/reflect/Type;)[Ljava/lang/reflect/Type;
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 250
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/google/common/reflect/TypeToken;->resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    aput-object v1, p1, v0

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    return-object p1
.end method

.method static synthetic a([Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 95
    invoke-static {p0, p1}, Lcom/google/common/reflect/TypeToken;->b([Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private b([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 335
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 337
    invoke-static {v3}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v3

    .line 338
    invoke-virtual {v3}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 1062
    array-length v0, p2

    const/4 v1, 0x0

    if-ge v1, v0, :cond_0

    aget-object v0, p2, v1

    .line 1064
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1066
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0

    .line 1068
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " isn\'t a subclass of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 295
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    const/4 v0, 0x0

    .line 301
    :cond_0
    return-object v0
.end method

.method static synthetic b(Lcom/google/common/reflect/TypeToken;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method private static final b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 410
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 412
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 413
    new-instance v1, Lcom/google/common/reflect/TypeToken$1;

    invoke-direct {v1, p1, v0}, Lcom/google/common/reflect/TypeToken$1;-><init>(Ljava/lang/Class;Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 432
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken$1;->a([Ljava/lang/reflect/Type;)V

    .line 433
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 868
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    const/4 v0, 0x1

    .line 872
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/reflect/GenericArrayType;)Z
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 916
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    const-class v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    .line 924
    :goto_0
    return v0

    .line 919
    :cond_0
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_2

    .line 921
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 922
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 924
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final b([Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 438
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    .line 439
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 440
    aget-object v2, p0, v0

    invoke-static {v2, p1}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v2

    aput-object v2, v1, v0

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    return-object v1
.end method

.method private static c([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$a;
    .locals 2

    .prologue
    .line 953
    new-instance v0, Lcom/google/common/reflect/TypeToken$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/TypeToken$a;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private c(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    const-string v1, "%s isn\'t a super type of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/reflect/TypeToken;

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1081
    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 1083
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1084
    return-object v0
.end method

.method private c(Ljava/lang/reflect/Type;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 936
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    :goto_0
    return v1

    .line 939
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 945
    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->c([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/google/common/reflect/TypeToken$a;->b(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 946
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->c([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$a;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Lcom/google/common/reflect/TypeToken$a;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 948
    goto :goto_0
.end method

.method private static d([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$a;
    .locals 2

    .prologue
    .line 958
    new-instance v0, Lcom/google/common/reflect/TypeToken$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/common/reflect/TypeToken$a;-><init>([Ljava/lang/reflect/Type;Z)V

    return-object v0
.end method

.method private d(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 1089
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1090
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1092
    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 1094
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1095
    return-object v0
.end method

.method private static d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 1125
    sget-object v0, Llr$c;->b:Llr$c;

    invoke-virtual {v0, p0}, Llr$c;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private e(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1116
    :goto_0
    return-object p1

    .line 1110
    :cond_0
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 1113
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v1, v1, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 1115
    new-instance v2, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v2}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v1, v3}, Lcom/google/common/reflect/TypeResolver;->where(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 1116
    invoke-virtual {v1, v0}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 579
    invoke-static {}, Lcom/google/common/primitives/Primitives;->allWrapperTypes()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private f()Lcom/google/common/collect/ImmutableSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/lang/Class",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 991
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 992
    new-instance v1, Lcom/google/common/reflect/TypeToken$5;

    invoke-direct {v1, p0, v0}, Lcom/google/common/reflect/TypeToken$5;-><init>(Lcom/google/common/reflect/TypeToken;Lcom/google/common/collect/ImmutableSet$Builder;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    aput-object v4, v2, v3

    .line 1010
    invoke-virtual {v1, v2}, Lcom/google/common/reflect/TypeToken$5;->a([Ljava/lang/reflect/Type;)V

    .line 1013
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1014
    return-object v0
.end method

.method public static of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/google/common/reflect/TypeToken$d;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$d;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v0, Lcom/google/common/reflect/TypeToken$d;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$d;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method final b()Lcom/google/common/reflect/TypeToken;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 291
    :goto_0
    return-object v0

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 286
    if-nez v0, :cond_2

    .line 287
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0
.end method

.method final c()Lcom/google/common/collect/ImmutableList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;>;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->b([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->b([Ljava/lang/reflect/Type;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v2, v0

    .line 327
    invoke-direct {p0, v4}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v4

    .line 328
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0
.end method

.method public final constructor(Ljava/lang/reflect/Constructor;)Lcom/google/common/reflect/Invokable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)",
            "Lcom/google/common/reflect/Invokable",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 642
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "%s not declared by %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 643
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v4, v1

    .line 642
    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 644
    new-instance v0, Lcom/google/common/reflect/TypeToken$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/TypeToken$3;-><init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Constructor;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 642
    goto :goto_0
.end method

.method final d()Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 846
    new-instance v0, Lcom/google/common/reflect/TypeToken$4;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$4;-><init>(Lcom/google/common/reflect/TypeToken;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    aput-object v3, v1, v2

    .line 862
    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$4;->a([Ljava/lang/reflect/Type;)V

    .line 863
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 819
    instance-of v0, p1, Lcom/google/common/reflect/TypeToken;

    if-eqz v0, :cond_0

    .line 820
    check-cast p1, Lcom/google/common/reflect/TypeToken;

    .line 821
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    iget-object v1, p1, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 823
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getComponentType()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Llr;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 603
    if-nez v0, :cond_0

    .line 604
    const/4 v0, 0x0

    .line 606
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->f()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 181
    return-object v0
.end method

.method public final getSubtype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 389
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot get subtype of type variable <%s>"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p0, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 391
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 405
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 389
    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->d(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_1

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const-string v3, "%s isn\'t a subclass of %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p0, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 401
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->e(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 404
    invoke-static {v0, p1}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_1
.end method

.method public final getSupertype(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s is not a super class of %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->c(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0

    .line 379
    :cond_2
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    iget-object v0, v0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    goto :goto_0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getTypes()Lcom/google/common/reflect/TypeToken$TypeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>.TypeSet;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v0, Lcom/google/common/reflect/TypeToken$TypeSet;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/TypeToken$TypeSet;-><init>(Lcom/google/common/reflect/TypeToken;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isArray()Z
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getComponentType()Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isAssignableFrom(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken;->isSupertypeOf(Lcom/google/common/reflect/TypeToken;)Z

    move-result v0

    return v0
.end method

.method public final isAssignableFrom(Ljava/lang/reflect/Type;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 468
    invoke-virtual {p0, p1}, Lcom/google/common/reflect/TypeToken;->isSupertypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isPrimitive()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubtypeOf(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 501
    invoke-virtual {p1}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSubtypeOf(Ljava/lang/reflect/Type;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 512
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 517
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->d([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken$a;->b(Ljava/lang/reflect/Type;)Z

    move-result v0

    .line 542
    :goto_0
    return v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->d([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$a;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    goto :goto_0

    .line 527
    :cond_1
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 529
    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->d([Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeToken$a;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 531
    :cond_4
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 532
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v1, v0}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    goto :goto_0

    .line 535
    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    .line 536
    check-cast p1, Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 537
    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_7

    .line 538
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/ParameterizedType;)Z

    move-result v0

    goto :goto_0

    .line 539
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_8

    .line 540
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {p0, p1}, Lcom/google/common/reflect/TypeToken;->a(Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    goto :goto_0

    :cond_8
    move v0, v1

    .line 542
    goto :goto_0
.end method

.method public final isSupertypeOf(Lcom/google/common/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final isSupertypeOf(Ljava/lang/reflect/Type;)Z
    .locals 2

    .prologue
    .line 490
    invoke-static {p1}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeToken;->isSubtypeOf(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final method(Ljava/lang/reflect/Method;)Lcom/google/common/reflect/Invokable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/google/common/reflect/Invokable",
            "<TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/reflect/TypeToken;->b(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "%s not declared by %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 617
    new-instance v0, Lcom/google/common/reflect/TypeToken$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/reflect/TypeToken$2;-><init>(Lcom/google/common/reflect/TypeToken;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public final resolveType(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/common/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->b:Lcom/google/common/reflect/TypeResolver;

    .line 242
    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/reflect/TypeToken;->b:Lcom/google/common/reflect/TypeResolver;

    .line 245
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-static {v0}, Llr;->d(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unwrap()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/google/common/reflect/TypeToken;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 592
    invoke-static {v0}, Lcom/google/common/primitives/Primitives;->unwrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p0

    .line 594
    :cond_0
    return-object p0
.end method

.method public final where(Lcom/google/common/reflect/TypeParameter;Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeParameter",
            "<TX;>;",
            "Lcom/google/common/reflect/TypeToken",
            "<TX;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    new-instance v1, Lcom/google/common/reflect/TypeResolver$c;

    iget-object v2, p1, Lcom/google/common/reflect/TypeParameter;->a:Ljava/lang/reflect/TypeVariable;

    invoke-direct {v1, v2}, Lcom/google/common/reflect/TypeResolver$c;-><init>(Ljava/lang/reflect/TypeVariable;)V

    iget-object v2, p2, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    .line 206
    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->a(Ljava/util/Map;)Lcom/google/common/reflect/TypeResolver;

    move-result-object v0

    .line 210
    new-instance v1, Lcom/google/common/reflect/TypeToken$d;

    iget-object v2, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v2}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/reflect/TypeToken$d;-><init>(Ljava/lang/reflect/Type;)V

    return-object v1
.end method

.method public final where(Lcom/google/common/reflect/TypeParameter;Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/reflect/TypeParameter",
            "<TX;>;",
            "Ljava/lang/Class",
            "<TX;>;)",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p2}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/reflect/TypeToken;->where(Lcom/google/common/reflect/TypeParameter;Lcom/google/common/reflect/TypeToken;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method

.method public final wrap()Lcom/google/common/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lcom/google/common/reflect/TypeToken;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 573
    invoke-static {v0}, Lcom/google/common/primitives/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/Class;)Lcom/google/common/reflect/TypeToken;

    move-result-object p0

    .line 575
    :cond_0
    return-object p0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 838
    new-instance v0, Lcom/google/common/reflect/TypeResolver;

    invoke-direct {v0}, Lcom/google/common/reflect/TypeResolver;-><init>()V

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/google/common/reflect/TypeResolver;->resolveType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/reflect/TypeToken;->of(Ljava/lang/reflect/Type;)Lcom/google/common/reflect/TypeToken;

    move-result-object v0

    return-object v0
.end method
