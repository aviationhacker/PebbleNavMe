.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Lists$e;,
        Lcom/google/common/collect/Lists$a;,
        Lcom/google/common/collect/Lists$g;,
        Lcom/google/common/collect/Lists$h;,
        Lcom/google/common/collect/Lists$b;,
        Lcom/google/common/collect/Lists$i;,
        Lcom/google/common/collect/Lists$f;,
        Lcom/google/common/collect/Lists$d;,
        Lcom/google/common/collect/Lists$j;,
        Lcom/google/common/collect/Lists$k;,
        Lcom/google/common/collect/Lists$l;,
        Lcom/google/common/collect/Lists$c;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 121
    const-string v0, "arraySize"

    invoke-static {p0, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 124
    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v0, v2

    div-int/lit8 v2, p0, 0xa

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method static a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 985
    const/4 v0, 0x1

    .line 986
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 987
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 989
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    .line 991
    goto :goto_0

    .line 987
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 992
    :cond_1
    return v0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1193
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static a(Ljava/util/List;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1117
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 1118
    new-instance v0, Lcom/google/common/collect/Lists$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$1;-><init>(Ljava/util/List;)V

    .line 1136
    :goto_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1127
    :cond_0
    new-instance v0, Lcom/google/common/collect/Lists$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$2;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method static a(Ljava/util/List;I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Lcom/google/common/collect/Lists$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/Lists$a;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;ILjava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TE;>;I",
            "Ljava/lang/Iterable",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1027
    const/4 v0, 0x0

    .line 1028
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 1029
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1030
    invoke-interface {v1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 1031
    const/4 v0, 0x1

    .line 1032
    goto :goto_0

    .line 1033
    :cond_0
    return v0
.end method

.method static a(Ljava/util/List;Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 999
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return v0

    .line 1002
    :cond_1
    instance-of v2, p1, Ljava/util/List;

    if-nez v2, :cond_2

    move v0, v1

    .line 1003
    goto :goto_0

    .line 1005
    :cond_2
    check-cast p1, Ljava/util/List;

    .line 1006
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 1007
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v3, v2, :cond_3

    move v0, v1

    .line 1008
    goto :goto_0

    .line 1010
    :cond_3
    instance-of v2, p0, Ljava/util/RandomAccess;

    if-eqz v2, :cond_5

    instance-of v2, p1, Ljava/util/RandomAccess;

    if-eqz v2, :cond_5

    move v2, v1

    .line 1012
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1013
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v1

    .line 1014
    goto :goto_0

    .line 1012
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1019
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v0

    goto :goto_0
.end method

.method public static asList(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Lcom/google/common/collect/Lists$l;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/Lists$l;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;[TE;)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/google/common/collect/Lists$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$c;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v0
.end method

.method static b(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1040
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 1041
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->d(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1049
    :goto_0
    return v0

    .line 1043
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1044
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1045
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1046
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    goto :goto_0

    .line 1049
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static c(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1075
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {p0, p1}, Lcom/google/common/collect/Lists;->e(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 1084
    :goto_0
    return v0

    .line 1078
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 1079
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1080
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1081
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_0

    .line 1084
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+TB;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 455
    invoke-static {p0}, Lht;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cartesianProduct([Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/List",
            "<+TB;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TB;>;>;"
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->cartesianProduct(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static charactersOf(Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    new-instance v1, Lcom/google/common/collect/Lists$i;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$i;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static charactersOf(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation build Lcom/google/common/annotations/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    new-instance v1, Lcom/google/common/collect/Lists$b;

    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Lcom/google/common/collect/Lists$b;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method private static d(Ljava/util/List;Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1054
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1055
    if-nez p1, :cond_2

    .line 1056
    :goto_0
    if-ge v0, v1, :cond_3

    .line 1057
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1068
    :goto_1
    return v0

    .line 1056
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ge v0, v1, :cond_3

    .line 1063
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 1068
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static e(Ljava/util/List;Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1089
    if-nez p1, :cond_2

    .line 1090
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 1091
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1102
    :cond_0
    :goto_1
    return v0

    .line 1090
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1096
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    .line 1097
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1096
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1102
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 147
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 148
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 163
    return-object v0
.end method

.method public static varargs newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(I)I

    move-result v0

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 116
    return-object v1
.end method

.method public static newArrayListWithCapacity(I)Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "initialArraySize"

    invoke-static {p0, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newArrayListWithExpectedSize(I)Ljava/util/ArrayList;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/Lists;->a(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArrayList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArrayList(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "CopyOnWriteArrayList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 288
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p0}, Lcom/google/common/collect/Collections2;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    .line 292
    :goto_0
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 291
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public static newLinkedList()Ljava/util/LinkedList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public static newLinkedList(Ljava/lang/Iterable;)Ljava/util/LinkedList;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtCompatible;
        serializable = true
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    .line 258
    invoke-static {v0, p0}, Lcom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 259
    return-object v0
.end method

.method public static partition(Ljava/util/List;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 682
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 684
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/Lists$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$f;-><init>(Ljava/util/List;I)V

    :goto_1
    return-object v0

    .line 683
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 684
    :cond_1
    new-instance v0, Lcom/google/common/collect/Lists$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$d;-><init>(Ljava/util/List;I)V

    goto :goto_1
.end method

.method public static reverse(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 825
    instance-of v0, p0, Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    .line 826
    check-cast p0, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->reverse()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 832
    :goto_0
    return-object v0

    .line 827
    :cond_0
    instance-of v0, p0, Lcom/google/common/collect/Lists$h;

    if-eqz v0, :cond_1

    .line 828
    check-cast p0, Lcom/google/common/collect/Lists$h;

    invoke-virtual {p0}, Lcom/google/common/collect/Lists$h;->a()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 829
    :cond_1
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_2

    .line 830
    new-instance v0, Lcom/google/common/collect/Lists$g;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$g;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 832
    :cond_2
    new-instance v0, Lcom/google/common/collect/Lists$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Lists$h;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TF;>;",
            "Lcom/google/common/base/Function",
            "<-TF;+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation

    .prologue
    .line 555
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/Lists$j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$j;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/collect/Lists$k;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$k;-><init>(Ljava/util/List;Lcom/google/common/base/Function;)V

    goto :goto_0
.end method
