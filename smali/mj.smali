.class public Lmj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final a:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lmj;->a:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private static a(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lcom/google/common/collect/ImmutableMap$Builder",
            "<",
            "Ljava/lang/String;",
            "Lmi;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    const/16 v5, 0x21

    const/16 v7, 0x3f

    const/16 v6, 0x2c

    const/4 v2, 0x0

    .line 65
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v0, v2

    move v1, v2

    .line 70
    :goto_0
    if-ge v1, v3, :cond_0

    .line 71
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 72
    const/16 v4, 0x26

    if-eq v0, v4, :cond_0

    if-eq v0, v7, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v8, :cond_0

    if-ne v0, v6, :cond_6

    .line 77
    :cond_0
    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lmj;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {p0, v2, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    if-eq v0, v5, :cond_1

    if-eq v0, v7, :cond_1

    if-eq v0, v8, :cond_1

    if-ne v0, v6, :cond_2

    .line 84
    :cond_1
    sget-object v4, Lmj;->a:Lcom/google/common/base/Joiner;

    invoke-virtual {v4, p0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 86
    invoke-static {v0}, Lmi;->a(C)Lmi;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 89
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 91
    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_7

    move v0, v1

    .line 92
    :cond_3
    if-ge v0, v3, :cond_5

    .line 94
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lmj;->a(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v7, :cond_4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_3

    .line 97
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 102
    :cond_5
    :goto_1
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    return v0

    .line 70
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lmi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 40
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 41
    const/4 v0, 0x0

    .line 42
    :goto_0
    if-ge v0, v2, :cond_0

    .line 44
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v3

    .line 45
    invoke-interface {p0, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 43
    invoke-static {v3, v4, v1}, Lmj;->a(Ljava/util/List;Ljava/lang/CharSequence;Lcom/google/common/collect/ImmutableMap$Builder;)I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static a([CII)V
    .locals 2

    .prologue
    .line 131
    aget-char v0, p0, p1

    .line 132
    aget-char v1, p0, p2

    aput-char v1, p0, p1

    .line 133
    aput-char v0, p0, p2

    .line 134
    return-void
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 112
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 113
    if-gt v1, v0, :cond_0

    .line 127
    :goto_0
    return-object p0

    .line 117
    :cond_0
    new-array v2, v1, [C

    .line 118
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 120
    :goto_1
    if-ge v0, v1, :cond_2

    .line 121
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, v2, v0

    .line 122
    aget-char v3, v2, v0

    add-int/lit8 v4, v0, -0x1

    aget-char v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3, v0}, Lmj;->a([CII)V

    .line 120
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
