.class final Lcom/google/common/collect/Sets$a;
.super Lcom/google/common/collect/ForwardingCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Ljava/util/List",
        "<TE;>;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/List",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final transient a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final transient b:Lht;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lht",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ImmutableList;Lht;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/common/collect/ImmutableSet",
            "<TE;>;>;",
            "Lht",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    .line 1203
    iput-object p1, p0, Lcom/google/common/collect/Sets$a;->a:Lcom/google/common/collect/ImmutableList;

    .line 1204
    iput-object p2, p0, Lcom/google/common/collect/Sets$a;->b:Lht;

    .line 1205
    return-void
.end method

.method static a(Ljava/util/List;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Set",
            "<+TE;>;>;)",
            "Ljava/util/Set",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1172
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    .line 1173
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 1174
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1175
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1176
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1177
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 1199
    :goto_1
    return-object v0

    .line 1179
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 1181
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1182
    new-instance v2, Lcom/google/common/collect/Sets$a$1;

    invoke-direct {v2, v1}, Lcom/google/common/collect/Sets$a$1;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 1199
    new-instance v0, Lcom/google/common/collect/Sets$a;

    new-instance v3, Lht;

    invoke-direct {v3, v2}, Lht;-><init>(Lcom/google/common/collect/ImmutableList;)V

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/Sets$a;-><init>(Lcom/google/common/collect/ImmutableList;Lht;)V

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$a;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/google/common/collect/Sets$a;->b:Lht;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1216
    instance-of v0, p1, Lcom/google/common/collect/Sets$a;

    if-eqz v0, :cond_0

    .line 1217
    check-cast p1, Lcom/google/common/collect/Sets$a;

    .line 1218
    iget-object v0, p0, Lcom/google/common/collect/Sets$a;->a:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p1, Lcom/google/common/collect/Sets$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1220
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/google/common/collect/Sets$a;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1230
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/Sets$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1231
    mul-int/lit8 v1, v1, 0x1f

    .line 1232
    xor-int/lit8 v1, v1, -0x1

    xor-int/lit8 v1, v1, -0x1

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    const/4 v0, 0x1

    .line 1236
    iget-object v2, p0, Lcom/google/common/collect/Sets$a;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    move v2, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1237
    mul-int/lit8 v2, v2, 0x1f

    invoke-virtual {p0}, Lcom/google/common/collect/Sets$a;->size()I

    move-result v4

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v5

    div-int/2addr v4, v5

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    mul-int/2addr v0, v4

    add-int/2addr v0, v2

    .line 1239
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    move v2, v0

    .line 1240
    goto :goto_1

    .line 1241
    :cond_1
    add-int v0, v2, v1

    .line 1242
    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method
