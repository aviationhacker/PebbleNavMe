.class public final Lit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    serializable = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/BoundType;

.field private final e:Z

.field private final f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/google/common/collect/BoundType;


# direct methods
.method private constructor <init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TT;>;ZTT;",
            "Lcom/google/common/collect/BoundType;",
            "ZTT;",
            "Lcom/google/common/collect/BoundType;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lit;->a:Ljava/util/Comparator;

    .line 115
    iput-boolean p2, p0, Lit;->b:Z

    .line 116
    iput-boolean p5, p0, Lit;->e:Z

    .line 117
    iput-object p3, p0, Lit;->c:Ljava/lang/Object;

    .line 118
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lit;->d:Lcom/google/common/collect/BoundType;

    .line 119
    iput-object p6, p0, Lit;->f:Ljava/lang/Object;

    .line 120
    invoke-static {p7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/BoundType;

    iput-object v0, p0, Lit;->g:Lcom/google/common/collect/BoundType;

    .line 122
    if-eqz p2, :cond_0

    .line 123
    invoke-interface {p1, p3, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 125
    :cond_0
    if-eqz p5, :cond_1

    .line 126
    invoke-interface {p1, p6, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 128
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p5, :cond_2

    .line 129
    invoke-interface {p1, p3, p6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 131
    if-gtz v3, :cond_3

    move v0, v1

    :goto_0
    const-string v4, "lowerEndpoint (%s) > upperEndpoint (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p3, v5, v2

    aput-object p6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    if-nez v3, :cond_2

    .line 134
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p4, v0, :cond_4

    move v0, v1

    :goto_1
    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-eq p7, v3, :cond_5

    :goto_2
    or-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 137
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 131
    goto :goto_0

    :cond_4
    move v0, v2

    .line 134
    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public static a(Ljava/util/Comparator;)Lit;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;)",
            "Lit",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lit;

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    move-object v1, p0

    move v5, v2

    move-object v6, v3

    invoke-direct/range {v0 .. v7}, Lit;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method public static a(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lit;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lit",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lit;

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lit;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method

.method public static b(Ljava/util/Comparator;Ljava/lang/Object;Lcom/google/common/collect/BoundType;)Lit;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator",
            "<-TT;>;TT;",
            "Lcom/google/common/collect/BoundType;",
            ")",
            "Lit",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lit;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lit;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0
.end method


# virtual methods
.method public a(Lit;)Lit;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit",
            "<TT;>;)",
            "Lit",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lit;->a:Ljava/util/Comparator;

    iget-object v1, p1, Lit;->a:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 185
    iget-boolean v2, p0, Lit;->b:Z

    .line 186
    invoke-virtual {p0}, Lit;->d()Ljava/lang/Object;

    move-result-object v1

    .line 187
    invoke-virtual {p0}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 188
    invoke-virtual {p0}, Lit;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 189
    iget-boolean v2, p1, Lit;->b:Z

    .line 190
    invoke-virtual {p1}, Lit;->d()Ljava/lang/Object;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v0

    .line 200
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lit;->e:Z

    .line 201
    invoke-virtual {p0}, Lit;->f()Ljava/lang/Object;

    move-result-object v6

    .line 202
    invoke-virtual {p0}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v7

    .line 203
    invoke-virtual {p0}, Lit;->c()Z

    move-result v3

    if-nez v3, :cond_5

    .line 204
    iget-boolean v5, p1, Lit;->e:Z

    .line 205
    invoke-virtual {p1}, Lit;->f()Ljava/lang/Object;

    move-result-object v6

    .line 206
    invoke-virtual {p1}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v7

    .line 215
    :cond_1
    :goto_1
    if-eqz v2, :cond_7

    if-eqz v5, :cond_7

    .line 216
    iget-object v3, p0, Lit;->a:Ljava/util/Comparator;

    invoke-interface {v3, v1, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 217
    if-gtz v3, :cond_2

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v0, v3, :cond_7

    sget-object v3, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v7, v3, :cond_7

    .line 220
    :cond_2
    sget-object v0, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    .line 221
    sget-object v7, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    move-object v4, v0

    move-object v3, v6

    .line 225
    :goto_2
    new-instance v0, Lit;

    iget-object v1, p0, Lit;->a:Ljava/util/Comparator;

    invoke-direct/range {v0 .. v7}, Lit;-><init>(Ljava/util/Comparator;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;ZLjava/lang/Object;Lcom/google/common/collect/BoundType;)V

    return-object v0

    .line 192
    :cond_3
    invoke-virtual {p1}, Lit;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lit;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lit;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lit;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 194
    if-ltz v3, :cond_4

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_0

    .line 195
    :cond_4
    invoke-virtual {p1}, Lit;->d()Ljava/lang/Object;

    move-result-object v1

    .line 196
    invoke-virtual {p1}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v0

    goto :goto_0

    .line 207
    :cond_5
    invoke-virtual {p1}, Lit;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lit;->a:Ljava/util/Comparator;

    invoke-virtual {p0}, Lit;->f()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1}, Lit;->f()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3, v4, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 209
    if-gtz v3, :cond_6

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_1

    .line 210
    :cond_6
    invoke-virtual {p1}, Lit;->f()Ljava/lang/Object;

    move-result-object v6

    .line 211
    invoke-virtual {p1}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v7

    goto :goto_1

    :cond_7
    move-object v4, v0

    move-object v3, v1

    goto :goto_2
.end method

.method public a()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lit;->a:Ljava/util/Comparator;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lit;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return v2

    .line 160
    :cond_0
    invoke-virtual {p0}, Lit;->d()Ljava/lang/Object;

    move-result-object v0

    .line 161
    iget-object v3, p0, Lit;->a:Ljava/util/Comparator;

    invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 162
    if-gez v0, :cond_1

    move v3, v1

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v4

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v5, :cond_3

    :goto_3
    and-int/2addr v0, v1

    or-int v2, v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lit;->b:Z

    return v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 166
    invoke-virtual {p0}, Lit;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return v2

    .line 169
    :cond_0
    invoke-virtual {p0}, Lit;->f()Ljava/lang/Object;

    move-result-object v0

    .line 170
    iget-object v3, p0, Lit;->a:Ljava/util/Comparator;

    invoke-interface {v3, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 171
    if-lez v0, :cond_1

    move v3, v1

    :goto_1
    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v4

    sget-object v5, Lcom/google/common/collect/BoundType;->OPEN:Lcom/google/common/collect/BoundType;

    if-ne v4, v5, :cond_3

    :goto_3
    and-int/2addr v0, v1

    or-int v2, v3, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lit;->e:Z

    return v0
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lit;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lit;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lit;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lit;->d:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 230
    instance-of v1, p1, Lit;

    if-eqz v1, :cond_0

    .line 231
    check-cast p1, Lit;

    .line 232
    iget-object v1, p0, Lit;->a:Ljava/util/Comparator;

    iget-object v2, p1, Lit;->a:Ljava/util/Comparator;

    invoke-interface {v1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lit;->b:Z

    iget-boolean v2, p1, Lit;->b:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lit;->e:Z

    iget-boolean v2, p1, Lit;->e:Z

    if-ne v1, v2, :cond_0

    .line 235
    invoke-virtual {p0}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {p1}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v1

    invoke-virtual {p1}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/common/collect/BoundType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0}, Lit;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lit;->d()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0}, Lit;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Lit;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 240
    :cond_0
    return v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lit;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Lcom/google/common/collect/BoundType;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lit;->g:Lcom/google/common/collect/BoundType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 245
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lit;->a:Ljava/util/Comparator;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 247
    invoke-virtual {p0}, Lit;->d()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 248
    invoke-virtual {p0}, Lit;->e()Lcom/google/common/collect/BoundType;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 249
    invoke-virtual {p0}, Lit;->f()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 250
    invoke-virtual {p0}, Lit;->g()Lcom/google/common/collect/BoundType;

    move-result-object v2

    aput-object v2, v0, v1

    .line 245
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lit;->a:Ljava/util/Comparator;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lit;->d:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_0

    const/16 v0, 0x5b

    .line 280
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lit;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lit;->c:Ljava/lang/Object;

    .line 281
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2c

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lit;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lit;->f:Ljava/lang/Object;

    .line 283
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lit;->g:Lcom/google/common/collect/BoundType;

    sget-object v2, Lcom/google/common/collect/BoundType;->CLOSED:Lcom/google/common/collect/BoundType;

    if-ne v0, v2, :cond_3

    const/16 v0, 0x5d

    .line 284
    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    const/16 v0, 0x28

    goto :goto_0

    .line 280
    :cond_1
    const-string v0, "-\u221e"

    goto :goto_1

    .line 282
    :cond_2
    const-string v0, "\u221e"

    goto :goto_2

    .line 283
    :cond_3
    const/16 v0, 0x29

    goto :goto_3
.end method
