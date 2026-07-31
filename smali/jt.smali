.class public Ljt;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljt$a;,
        Ljt$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final a:Ljt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:[Lcom/google/common/collect/Multisets$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$e",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient c:[Lcom/google/common/collect/Multisets$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/Multisets$e",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final transient d:I

.field private final transient e:I

.field private transient f:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljt;

    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljt;-><init>(Ljava/util/Collection;)V

    sput-object v0, Ljt;->a:Ljt;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/common/collect/Multiset$Entry",
            "<+TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 49
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 51
    new-array v7, v0, [Lcom/google/common/collect/Multisets$e;

    .line 52
    if-nez v0, :cond_0

    .line 53
    iput-object v7, p0, Ljt;->b:[Lcom/google/common/collect/Multisets$e;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Ljt;->c:[Lcom/google/common/collect/Multisets$e;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Ljt;->d:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Ljt;->e:I

    .line 57
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Ljt;->f:Lcom/google/common/collect/ImmutableSet;

    .line 94
    :goto_0
    return-void

    .line 59
    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Liv;->a(ID)I

    move-result v0

    .line 60
    add-int/lit8 v8, v0, -0x1

    .line 62
    new-array v9, v0, [Lcom/google/common/collect/Multisets$e;

    .line 64
    const/4 v3, 0x0

    .line 65
    const/4 v2, 0x0

    .line 66
    const-wide/16 v0, 0x0

    .line 67
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v5, v3

    move v14, v2

    move-wide v2, v0

    move v1, v14

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    .line 68
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 69
    invoke-interface {v0}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v11

    .line 70
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 71
    invoke-static {v12}, Liv;->a(I)I

    move-result v4

    and-int v13, v4, v8

    .line 72
    aget-object v4, v9, v13

    .line 74
    if-nez v4, :cond_3

    .line 75
    instance-of v4, v0, Lcom/google/common/collect/Multisets$e;

    if-eqz v4, :cond_1

    instance-of v4, v0, Ljt$b;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    .line 77
    :goto_2
    if-eqz v4, :cond_2

    check-cast v0, Lcom/google/common/collect/Multisets$e;

    .line 84
    :goto_3
    xor-int v4, v12, v11

    add-int/2addr v4, v1

    .line 85
    add-int/lit8 v6, v5, 0x1

    aput-object v0, v7, v5

    .line 86
    aput-object v0, v9, v13

    .line 87
    int-to-long v0, v11

    add-long/2addr v0, v2

    move-wide v2, v0

    move v5, v6

    move v1, v4

    .line 88
    goto :goto_1

    .line 75
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 77
    :cond_2
    new-instance v0, Lcom/google/common/collect/Multisets$e;

    invoke-direct {v0, v6, v11}, Lcom/google/common/collect/Multisets$e;-><init>(Ljava/lang/Object;I)V

    goto :goto_3

    .line 82
    :cond_3
    new-instance v0, Ljt$b;

    invoke-direct {v0, v6, v11, v4}, Ljt$b;-><init>(Ljava/lang/Object;ILcom/google/common/collect/Multisets$e;)V

    goto :goto_3

    .line 89
    :cond_4
    iput-object v7, p0, Ljt;->b:[Lcom/google/common/collect/Multisets$e;

    .line 90
    iput-object v9, p0, Ljt;->c:[Lcom/google/common/collect/Multisets$e;

    .line 91
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    iput v0, p0, Ljt;->d:I

    .line 92
    iput v1, p0, Ljt;->e:I

    goto :goto_0
.end method

.method static synthetic a(Ljt;)[Lcom/google/common/collect/Multisets$e;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljt;->b:[Lcom/google/common/collect/Multisets$e;

    return-object v0
.end method


# virtual methods
.method a(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Ljt;->b:[Lcom/google/common/collect/Multisets$e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method a()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Ljt;->f:Lcom/google/common/collect/ImmutableSet;

    .line 141
    if-nez v0, :cond_0

    new-instance v0, Ljt$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljt$a;-><init>(Ljt;Ljt$1;)V

    iput-object v0, p0, Ljt;->f:Lcom/google/common/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Ljt;->c:[Lcom/google/common/collect/Multisets$e;

    .line 118
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 121
    :cond_1
    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v2

    .line 122
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    .line 123
    and-int/2addr v2, v3

    aget-object v1, v1, v2

    .line 124
    :goto_1
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/google/common/collect/Multisets$e;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {v1}, Lcom/google/common/collect/Multisets$e;->getCount()I

    move-result v0

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v1}, Lcom/google/common/collect/Multisets$e;->a()Lcom/google/common/collect/Multisets$e;

    move-result-object v1

    goto :goto_1
.end method

.method public synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Ljt;->b()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Ljt;->e:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Ljt;->d:I

    return v0
.end method
