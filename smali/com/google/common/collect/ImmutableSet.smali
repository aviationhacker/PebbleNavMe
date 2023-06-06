.class public abstract Lcom/google/common/collect/ImmutableSet;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableSet$Builder;,
        Lcom/google/common/collect/ImmutableSet$b;,
        Lcom/google/common/collect/ImmutableSet$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static synthetic a(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 310
    invoke-static {p0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Liz;->a(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private static varargs b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 135
    packed-switch p0, :pswitch_data_0

    .line 145
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->c(I)I

    move-result v5

    .line 146
    new-array v6, v5, [Ljava/lang/Object;

    .line 147
    add-int/lit8 v7, v5, -0x1

    move v3, v4

    move v1, v4

    move v2, v4

    .line 150
    :goto_0
    if-ge v3, p0, :cond_2

    .line 151
    aget-object v0, p1, v3

    invoke-static {v0, v3}, Lcom/google/common/collect/ObjectArrays;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    .line 152
    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 153
    invoke-static {v9}, Liv;->a(I)I

    move-result v0

    .line 154
    :goto_1
    and-int v10, v0, v7

    .line 155
    aget-object v11, v6, v10

    .line 156
    if-nez v11, :cond_0

    .line 158
    add-int/lit8 v0, v1, 0x1

    aput-object v8, p1, v1

    .line 159
    aput-object v8, v6, v10

    .line 160
    add-int v1, v2, v9

    .line 150
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 137
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 182
    :goto_3
    return-object v0

    .line 140
    :pswitch_1
    aget-object v0, p1, v4

    .line 141
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_3

    .line 162
    :cond_0
    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v0, v1

    move v1, v2

    .line 163
    goto :goto_2

    .line 153
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, v1, p0, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 168
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    .line 171
    aget-object v1, p1, v4

    .line 172
    new-instance v0, Lkd;

    invoke-direct {v0, v1, v2}, Lkd;-><init>(Ljava/lang/Object;I)V

    goto :goto_3

    .line 173
    :cond_3
    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->c(I)I

    move-result v0

    if-eq v5, v0, :cond_4

    .line 176
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_3

    .line 178
    :cond_4
    array-length v0, p1

    if-ge v1, v0, :cond_5

    .line 180
    invoke-static {p1, v1}, Lcom/google/common/collect/ObjectArrays;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 182
    :cond_5
    new-instance v0, Lju;

    invoke-direct {v0, p1, v2, v6, v7}, Lju;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;I)V

    goto :goto_3

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static builder()Lcom/google/common/collect/ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet$Builder",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 398
    new-instance v0, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    return-object v0
.end method

.method static c(I)I
    .locals 6
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 206
    const v0, 0x2ccccccc

    if-ge p0, v0, :cond_0

    .line 208
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 209
    :goto_0
    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    int-to-double v4, p0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 210
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    if-ge p0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const-string v2, "collection too large"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    move v0, v1

    .line 217
    :cond_1
    return v0

    .line 216
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 263
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    .line 264
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 237
    instance-of v0, p0, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/google/common/collect/ImmutableSortedSet;

    if-nez v0, :cond_0

    move-object v0, p0

    .line 239
    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 240
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :goto_0
    return-object v0

    .line 243
    :cond_0
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_1

    .line 244
    check-cast p0, Ljava/util/EnumSet;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 246
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 247
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 286
    :goto_0
    return-object v0

    .line 279
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 280
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 281
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_1
    new-instance v1, Lcom/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableSet$Builder;-><init>()V

    .line 284
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/util/Iterator;)Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 298
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 304
    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0

    .line 300
    :pswitch_0
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 302
    :pswitch_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static of()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v0, Lju;->a:Lju;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Lkd;

    invoke-direct {v0, p0}, Lkd;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 69
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 78
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 87
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x5

    .line 96
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v2, v0}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 107
    .line 108
    array-length v0, p6

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    aput-object p0, v0, v3

    .line 110
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 111
    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 112
    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 113
    const/4 v1, 0x4

    aput-object p4, v0, v1

    .line 114
    const/4 v1, 0x5

    aput-object p5, v0, v1

    .line 115
    const/4 v1, 0x6

    array-length v2, p6

    invoke-static {p6, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    array-length v1, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/ImmutableSet;->b(I[Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public e()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 322
    if-ne p1, p0, :cond_0

    .line 323
    const/4 v0, 0x1

    .line 330
    :goto_0
    return v0

    .line 324
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableSet;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableSet;

    .line 326
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 328
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :cond_1
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public abstract iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 390
    new-instance v0, Lcom/google/common/collect/ImmutableSet$b;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableSet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSet$b;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
