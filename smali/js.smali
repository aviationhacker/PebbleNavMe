.class public final Ljs;
.super Lcom/google/common/collect/ImmutableMap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient a:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient c:[Lja;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lja",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient d:I


# direct methods
.method private constructor <init>([Ljava/util/Map$Entry;[Lja;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;[",
            "Lja",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 90
    iput-object p1, p0, Ljs;->a:[Ljava/util/Map$Entry;

    .line 91
    iput-object p2, p0, Ljs;->c:[Lja;

    .line 92
    iput p3, p0, Ljs;->d:I

    .line 93
    return-void
.end method

.method static a(Ljava/lang/Object;[Lja;I)Ljava/lang/Object;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Lja",
            "<*TV;>;I)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Liv;->a(I)I

    move-result v1

    and-int/2addr v1, p2

    .line 120
    aget-object v1, p1, v1

    .line 121
    :goto_1
    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {v1}, Lja;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    invoke-virtual {v1}, Lja;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v1}, Lja;->a()Lja;

    move-result-object v1

    goto :goto_1
.end method

.method public static a(I[Ljava/util/Map$Entry;)Ljs;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljs",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 55
    array-length v0, p1

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 57
    array-length v0, p1

    if-ne p0, v0, :cond_0

    move-object v2, p1

    .line 62
    :goto_0
    const-wide v0, 0x3ff3333333333333L    # 1.2

    invoke-static {p0, v0, v1}, Liv;->a(ID)I

    move-result v0

    .line 63
    invoke-static {v0}, Lja;->a(I)[Lja;

    move-result-object v5

    .line 64
    add-int/lit8 v6, v0, -0x1

    move v4, v3

    .line 65
    :goto_1
    if-ge v4, p0, :cond_4

    .line 66
    aget-object v1, p1, v4

    .line 67
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 69
    invoke-static {v7, v8}, Lhu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Liv;->a(I)I

    move-result v0

    and-int v9, v0, v6

    .line 71
    aget-object v10, v5, v9

    .line 74
    if-nez v10, :cond_3

    .line 75
    instance-of v0, v1, Lja;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lja;

    .line 76
    invoke-virtual {v0}, Lja;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 77
    :goto_2
    if-eqz v0, :cond_2

    check-cast v1, Lja;

    .line 82
    :goto_3
    aput-object v1, v5, v9

    .line 83
    aput-object v1, v2, v4

    .line 84
    invoke-static {v7, v1, v10}, Ljs;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lja;)V

    .line 65
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 60
    :cond_0
    invoke-static {p0}, Lja;->a(I)[Lja;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    new-instance v1, Lja;

    invoke-direct {v1, v7, v8}, Lja;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 80
    :cond_3
    new-instance v1, Lja$b;

    invoke-direct {v1, v7, v8, v10}, Lja$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lja;)V

    goto :goto_3

    .line 86
    :cond_4
    new-instance v0, Ljs;

    invoke-direct {v0, v2, v5, v6}, Ljs;-><init>([Ljava/util/Map$Entry;[Lja;I)V

    return-object v0
.end method

.method public static varargs a([Ljava/util/Map$Entry;)Ljs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljs",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    array-length v0, p0

    invoke-static {v0, p0}, Ljs;->a(I[Ljava/util/Map$Entry;)Ljs;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/util/Map$Entry;Lja;)V
    .locals 2
    .param p2    # Lja;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map$Entry",
            "<**>;",
            "Lja",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 97
    :goto_0
    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p2}, Lja;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v1, "key"

    invoke-static {v0, v1, p1, p2}, Ljs;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 97
    invoke-virtual {p2}, Lja;->a()Lja;

    move-result-object p2

    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 100
    :cond_1
    return-void
.end method


# virtual methods
.method b()Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method e()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljb$b;

    iget-object v1, p0, Ljs;->a:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Ljb$b;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Ljs;->c:[Lja;

    iget v1, p0, Ljs;->d:I

    invoke-static {p1, v0, v1}, Ljs;->a(Ljava/lang/Object;[Lja;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ljs;->a:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
