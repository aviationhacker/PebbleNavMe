.class public final Llr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llr$d;,
        Llr$c;,
        Llr$h;,
        Llr$f;,
        Llr$g;,
        Llr$e;,
        Llr$b;,
        Llr$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Llr$1;

    invoke-direct {v0}, Llr$1;-><init>()V

    sput-object v0, Llr;->a:Lcom/google/common/base/Function;

    .line 67
    const-string v0, ", "

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Llr;->b:Lcom/google/common/base/Joiner;

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/Function;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Llr;->a:Lcom/google/common/base/Function;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 527
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Llr;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Llr$e;

    sget-object v1, Llr$a;->c:Llr$a;

    .line 107
    invoke-virtual {v1, p0}, Llr$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Llr$e;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs a(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 4
    .param p0    # Ljava/lang/reflect/Type;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/ParameterizedType;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-nez p0, :cond_0

    .line 93
    invoke-static {p1, p2}, Llr;->a(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Owner type for unenclosed %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Llr$e;

    invoke-direct {v0, p0, p1, p2}, Llr$e;-><init>(Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 97
    goto :goto_1
.end method

.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 71
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_3

    .line 72
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 73
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 74
    array-length v0, v3

    if-gt v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v4, "Wildcard cannot have more than one lower bounds."

    invoke-static {v0, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 75
    array-length v0, v3

    if-ne v0, v1, :cond_1

    .line 76
    aget-object v0, v3, v2

    invoke-static {v0}, Llr;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Llr;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    .line 83
    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    .line 74
    goto :goto_0

    .line 78
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 79
    array-length v3, v0

    if-ne v3, v1, :cond_2

    :goto_2
    const-string v3, "Wildcard should have only one upper bound."

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 80
    aget-object v0, v0, v2

    invoke-static {v0}, Llr;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Llr;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v1, v2

    .line 79
    goto :goto_2

    .line 83
    :cond_3
    sget-object v0, Llr$c;->d:Llr$c;

    invoke-virtual {v0, p0}, Llr$c;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_1
.end method

.method static synthetic a([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Llr;->b([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public static varargs a(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 156
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array p2, v0, [Ljava/lang/reflect/Type;

    const/4 v0, 0x0

    const-class v1, Ljava/lang/Object;

    aput-object v1, p2, v0

    :cond_0
    invoke-static {p0, p1, p2}, Llr;->b(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0, p1}, Llr;->b([Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Llr;->b(Ljava/util/Collection;)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/Joiner;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Llr;->b:Lcom/google/common/base/Joiner;

    return-object v0
.end method

.method private static b(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    const-class v0, Ljava/lang/Object;

    .line 509
    invoke-static {v0}, Lcom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lcom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Predicates;->not(Lcom/google/common/base/Predicate;)Lcom/google/common/base/Predicate;

    move-result-object v0

    .line 508
    invoke-static {p0, v0}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private static b([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 214
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v1, p0, v0

    .line 215
    invoke-static {v1}, Llr;->e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_1

    .line 219
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 220
    check-cast v0, Ljava/lang/Class;

    .line 221
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :goto_1
    return-object v0

    .line 225
    :cond_0
    invoke-static {v1}, Llr;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v0

    goto :goto_1

    .line 214
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/TypeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Ljava/lang/reflect/GenericDeclaration;",
            ">(TD;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/TypeVariable",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Llr$f;

    invoke-direct {v0, p0, p1, p2}, Llr$f;-><init>(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/reflect/Type;)V

    .line 329
    const-class v1, Ljava/lang/reflect/TypeVariable;

    new-instance v2, Llr$g;

    invoke-direct {v2, v0}, Llr$g;-><init>(Llr$f;)V

    invoke-static {v1, v2}, Lcom/google/common/reflect/Reflection;->newProxy(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    .line 331
    return-object v0
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 166
    new-instance v0, Llr$h;

    new-array v1, v3, [Ljava/lang/reflect/Type;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Llr$h;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static b([Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 513
    array-length v5, p0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, p0, v4

    .line 514
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 515
    check-cast v0, Ljava/lang/Class;

    .line 516
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    const-string v6, "Primitive type \'%s\' used as %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v3

    aput-object p1, v7, v2

    invoke-static {v1, v6, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 513
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 516
    goto :goto_1

    .line 520
    :cond_2
    return-void
.end method

.method private static b(Ljava/util/Collection;)[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 504
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 171
    new-instance v0, Llr$h;

    new-array v1, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v1, v4

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Llr$h;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static d(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 190
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 192
    new-instance v1, Llr$2;

    invoke-direct {v1, v0}, Llr$2;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 205
    invoke-virtual {v1, v2}, Llr$2;->a([Ljava/lang/reflect/Type;)V

    .line 206
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0
.end method
