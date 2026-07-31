.class public Ljq;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq$b;,
        Ljq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field public static final a:Ljq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljq",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient c:[Lja;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lja",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient d:[Lja;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lja",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient e:[Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient f:I

.field private final transient g:I

.field private transient h:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 40
    new-instance v0, Ljq;

    sget-object v3, Lcom/google/common/collect/ImmutableMap;->b:[Ljava/util/Map$Entry;

    check-cast v3, [Ljava/util/Map$Entry;

    move-object v2, v1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Ljq;-><init>([Lja;[Lja;[Ljava/util/Map$Entry;II)V

    sput-object v0, Ljq;->a:Ljq;

    return-void
.end method

.method private constructor <init>([Lja;[Lja;[Ljava/util/Map$Entry;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lja",
            "<TK;TV;>;[",
            "Lja",
            "<TK;TV;>;[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;II)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 116
    iput-object p1, p0, Ljq;->c:[Lja;

    .line 117
    iput-object p2, p0, Ljq;->d:[Lja;

    .line 118
    iput-object p3, p0, Ljq;->e:[Ljava/util/Map$Entry;

    .line 119
    iput p4, p0, Ljq;->f:I

    .line 120
    iput p5, p0, Ljq;->g:I

    .line 121
    return-void
.end method

.method public static a(I[Ljava/util/Map$Entry;)Ljq;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, p0

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 58
    const-wide v2, 0x3ff3333333333333L    # 1.2

    move/from16 v0, p0

    invoke-static {v0, v2, v3}, Liv;->a(ID)I

    move-result v2

    .line 59
    add-int/lit8 v6, v2, -0x1

    .line 60
    invoke-static {v2}, Lja;->a(I)[Lja;

    move-result-object v3

    .line 61
    invoke-static {v2}, Lja;->a(I)[Lja;

    move-result-object v4

    .line 63
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, p0

    if-ne v0, v2, :cond_0

    move-object/from16 v5, p1

    .line 68
    :goto_0
    const/4 v7, 0x0

    .line 70
    const/4 v2, 0x0

    move v9, v2

    :goto_1
    move/from16 v0, p0

    if-ge v9, v0, :cond_4

    .line 72
    aget-object v8, p1, v9

    .line 73
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    .line 74
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 75
    invoke-static {v10, v11}, Lhu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 77
    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v13

    .line 78
    invoke-static {v12}, Liv;->a(I)I

    move-result v2

    and-int v14, v2, v6

    .line 79
    invoke-static {v13}, Liv;->a(I)I

    move-result v2

    and-int v15, v2, v6

    .line 81
    aget-object v2, v3, v14

    .line 82
    invoke-static {v10, v8, v2}, Ljs;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lja;)V

    .line 83
    aget-object v16, v4, v15

    .line 84
    move-object/from16 v0, v16

    invoke-static {v11, v8, v0}, Ljq;->a(Ljava/lang/Object;Ljava/util/Map$Entry;Lja;)V

    .line 86
    if-nez v16, :cond_3

    if-nez v2, :cond_3

    .line 93
    instance-of v2, v8, Lja;

    if-eqz v2, :cond_1

    move-object v2, v8

    check-cast v2, Lja;

    .line 94
    invoke-virtual {v2}, Lja;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 95
    :goto_2
    if-eqz v2, :cond_2

    check-cast v8, Lja;

    .line 102
    :goto_3
    aput-object v8, v3, v14

    .line 103
    aput-object v8, v4, v15

    .line 104
    aput-object v8, v5, v9

    .line 105
    xor-int v2, v12, v13

    add-int/2addr v7, v2

    .line 70
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_1

    .line 66
    :cond_0
    invoke-static/range {p0 .. p0}, Lja;->a(I)[Lja;

    move-result-object v5

    goto :goto_0

    .line 94
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 95
    :cond_2
    new-instance v8, Lja;

    invoke-direct {v8, v10, v11}, Lja;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 99
    :cond_3
    new-instance v8, Lja$a;

    move-object/from16 v0, v16

    invoke-direct {v8, v10, v11, v2, v0}, Lja$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lja;Lja;)V

    goto :goto_3

    .line 107
    :cond_4
    new-instance v2, Ljq;

    invoke-direct/range {v2 .. v7}, Ljq;-><init>([Lja;[Lja;[Ljava/util/Map$Entry;II)V

    return-object v2
.end method

.method public static varargs a([Ljava/util/Map$Entry;)Ljq;
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
            "Ljq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 53
    array-length v0, p0

    invoke-static {v0, p0}, Ljq;->a(I[Ljava/util/Map$Entry;)Ljq;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Object;Ljava/util/Map$Entry;Lja;)V
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
    .line 127
    :goto_0
    if-eqz p2, :cond_1

    .line 128
    invoke-virtual {p2}, Lja;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const-string v1, "value"

    invoke-static {v0, v1, p1, p2}, Ljq;->a(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 127
    invoke-virtual {p2}, Lja;->b()Lja;

    move-result-object p2

    goto :goto_0

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 130
    :cond_1
    return-void
.end method

.method static synthetic a(Ljq;)[Lja;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljq;->d:[Lja;

    return-object v0
.end method

.method static synthetic b(Ljq;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ljq;->f:I

    return v0
.end method

.method static synthetic c(Ljq;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Ljq;->g:I

    return v0
.end method

.method static synthetic d(Ljq;)[Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Ljq;->e:[Ljava/util/Map$Entry;

    return-object v0
.end method


# virtual methods
.method b()Z
    .locals 1

    .prologue
    .line 157
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
    .line 140
    invoke-virtual {p0}, Ljq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljb$b;

    iget-object v1, p0, Ljq;->e:[Ljava/util/Map$Entry;

    invoke-direct {v0, p0, v1}, Ljb$b;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/util/Map$Entry;)V

    goto :goto_0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Ljq;->c:[Lja;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljq;->c:[Lja;

    iget v1, p0, Ljq;->f:I

    invoke-static {p1, v0, v1}, Ljs;->a(Ljava/lang/Object;[Lja;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Ljq;->g:I

    return v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Ljq;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Ljq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lcom/google/common/collect/ImmutableBiMap;->of()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    iget-object v0, p0, Ljq;->h:Lcom/google/common/collect/ImmutableBiMap;

    .line 173
    if-nez v0, :cond_0

    new-instance v0, Ljq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljq$a;-><init>(Ljq;Ljq$1;)V

    iput-object v0, p0, Ljq;->h:Lcom/google/common/collect/ImmutableBiMap;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ljq;->e:[Ljava/util/Map$Entry;

    array-length v0, v0

    return v0
.end method
