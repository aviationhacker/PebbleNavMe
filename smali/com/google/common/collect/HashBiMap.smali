.class public final Lcom/google/common/collect/HashBiMap;
.super Lcom/google/common/collect/Maps$m;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/HashBiMap$c;,
        Lcom/google/common/collect/HashBiMap$b;,
        Lcom/google/common/collect/HashBiMap$e;,
        Lcom/google/common/collect/HashBiMap$d;,
        Lcom/google/common/collect/HashBiMap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$m",
        "<TK;TV;>;",
        "Lcom/google/common/collect/BiMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not needed in emulated source"
    .end annotation
.end field


# instance fields
.field private transient a:[Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient b:[Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient c:Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient d:Lcom/google/common/collect/HashBiMap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private transient e:I

.field private transient f:I

.field private transient g:I

.field private transient h:Lcom/google/common/collect/BiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/common/collect/Maps$m;-><init>()V

    .line 113
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(I)V

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;)Lcom/google/common/collect/HashBiMap$a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->c:Lcom/google/common/collect/HashBiMap$a;

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->f:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 220
    :goto_0
    if-eqz v0, :cond_1

    .line 222
    iget v1, v0, Lcom/google/common/collect/HashBiMap$a;->a:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$a;->g:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :goto_1
    return-object v0

    .line 221
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 267
    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v1

    .line 268
    invoke-static {p2}, Liv;->a(Ljava/lang/Object;)I

    move-result v2

    .line 270
    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v3

    .line 271
    if-eqz v3, :cond_0

    iget v4, v3, Lcom/google/common/collect/HashBiMap$a;->b:I

    if-ne v2, v4, :cond_0

    iget-object v4, v3, Lcom/google/common/collect/HashBiMap$a;->h:Ljava/lang/Object;

    .line 273
    invoke-static {p2, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    :goto_0
    return-object p2

    .line 277
    :cond_0
    invoke-direct {p0, p2, v2}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v4

    .line 278
    if-eqz v4, :cond_1

    .line 279
    if-eqz p3, :cond_2

    .line 280
    invoke-direct {p0, v4}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;)V

    .line 286
    :cond_1
    new-instance v4, Lcom/google/common/collect/HashBiMap$a;

    invoke-direct {v4, p1, v1, p2, v2}, Lcom/google/common/collect/HashBiMap$a;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 287
    if-eqz v3, :cond_3

    .line 288
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;)V

    .line 289
    invoke-direct {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$a;)V

    .line 290
    iput-object v0, v3, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    .line 291
    iput-object v0, v3, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    .line 292
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->a()V

    .line 293
    iget-object p2, v3, Lcom/google/common/collect/HashBiMap$a;->h:Ljava/lang/Object;

    goto :goto_0

    .line 282
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "value already present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_3
    invoke-direct {p0, v4, v0}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$a;)V

    .line 296
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->a()V

    move-object p2, v0

    .line 297
    goto :goto_0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    .line 337
    iget v1, p0, Lcom/google/common/collect/HashBiMap;->e:I

    array-length v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v4, v5}, Liv;->a(IID)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    .line 340
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->b(I)[Lcom/google/common/collect/HashBiMap$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    .line 341
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->b(I)[Lcom/google/common/collect/HashBiMap$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    .line 342
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->f:I

    .line 343
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    .line 345
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->c:Lcom/google/common/collect/HashBiMap$a;

    .line 346
    :goto_0
    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0, v0, v0}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$a;)V

    .line 347
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_0

    .line 350
    :cond_0
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 352
    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    const-string v0, "expectedSize"

    invoke-static {p1, v0}, Lhu;->a(ILjava/lang/String;)I

    .line 118
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, v0, v1}, Liv;->a(ID)I

    move-result v0

    .line 119
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->b(I)[Lcom/google/common/collect/HashBiMap$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    .line 120
    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->b(I)[Lcom/google/common/collect/HashBiMap$a;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    .line 121
    iput-object v3, p0, Lcom/google/common/collect/HashBiMap;->c:Lcom/google/common/collect/HashBiMap$a;

    .line 122
    iput-object v3, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    .line 123
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->e:I

    .line 124
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->f:I

    .line 125
    iput v2, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 126
    return-void
.end method

.method private a(Lcom/google/common/collect/HashBiMap$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    iget v0, p1, Lcom/google/common/collect/HashBiMap$a;->a:I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->f:I

    and-int v3, v0, v2

    .line 135
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    aget-object v0, v0, v3

    move-object v2, v1

    .line 138
    :goto_0
    if-ne v0, p1, :cond_1

    .line 139
    if-nez v2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    iget-object v2, p1, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap$a;

    aput-object v2, v0, v3

    .line 149
    :goto_1
    iget v0, p1, Lcom/google/common/collect/HashBiMap$a;->b:I

    iget v2, p0, Lcom/google/common/collect/HashBiMap;->f:I

    and-int/2addr v2, v0

    .line 151
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    aget-object v0, v0, v2

    .line 154
    :goto_2
    if-ne v0, p1, :cond_3

    .line 155
    if-nez v1, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$a;->d:Lcom/google/common/collect/HashBiMap$a;

    aput-object v1, v0, v2

    .line 165
    :goto_3
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->c:Lcom/google/common/collect/HashBiMap$a;

    .line 171
    :goto_4
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    if-nez v0, :cond_5

    .line 172
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    .line 177
    :goto_5
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    .line 178
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 179
    return-void

    .line 142
    :cond_0
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap$a;

    iput-object v0, v2, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_1

    .line 137
    :cond_1
    iget-object v2, v0, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap$a;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->d:Lcom/google/common/collect/HashBiMap$a;

    iput-object v0, v1, Lcom/google/common/collect/HashBiMap$a;->d:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_3

    .line 153
    :cond_3
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$a;->d:Lcom/google/common/collect/HashBiMap$a;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    .line 168
    :cond_4
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    iput-object v1, v0, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_4

    .line 174
    :cond_5
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    iget-object v1, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    iput-object v1, v0, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_5
.end method

.method private a(Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$a;)V
    .locals 2
    .param p2    # Lcom/google/common/collect/HashBiMap$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 182
    iget v0, p1, Lcom/google/common/collect/HashBiMap$a;->a:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->f:I

    and-int/2addr v0, v1

    .line 183
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$a;->c:Lcom/google/common/collect/HashBiMap$a;

    .line 184
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    aput-object p1, v1, v0

    .line 186
    iget v0, p1, Lcom/google/common/collect/HashBiMap$a;->b:I

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->f:I

    and-int/2addr v0, v1

    .line 187
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/google/common/collect/HashBiMap$a;->d:Lcom/google/common/collect/HashBiMap$a;

    .line 188
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    aput-object p1, v1, v0

    .line 190
    if-nez p2, :cond_1

    .line 191
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    .line 193
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    if-nez v0, :cond_0

    .line 194
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->c:Lcom/google/common/collect/HashBiMap$a;

    .line 198
    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    .line 214
    :goto_1
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    .line 215
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 216
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    iput-object p1, v0, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_0

    .line 200
    :cond_1
    iget-object v0, p2, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    .line 201
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    if-nez v0, :cond_2

    .line 202
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->c:Lcom/google/common/collect/HashBiMap$a;

    .line 206
    :goto_2
    iget-object v0, p2, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    iput-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    .line 207
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    if-nez v0, :cond_3

    .line 208
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_1

    .line 204
    :cond_2
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    iput-object p1, v0, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_2

    .line 210
    :cond_3
    iget-object v0, p1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    iput-object p1, v0, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$a;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$a;)V

    return-void
.end method

.method static synthetic b(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    return v0
.end method

.method static synthetic b(Lcom/google/common/collect/HashBiMap;Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    iget v1, p0, Lcom/google/common/collect/HashBiMap;->f:I

    and-int/2addr v1, p2

    aget-object v0, v0, v1

    .line 231
    :goto_0
    if-eqz v0, :cond_1

    .line 233
    iget v1, v0, Lcom/google/common/collect/HashBiMap$a;->b:I

    if-ne p2, v1, :cond_0

    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$a;->h:Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :goto_1
    return-object v0

    .line 232
    :cond_0
    iget-object v0, v0, Lcom/google/common/collect/HashBiMap$a;->d:Lcom/google/common/collect/HashBiMap$a;

    goto :goto_0

    .line 237
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TK;Z)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v0

    .line 304
    invoke-static {p2}, Liv;->a(Ljava/lang/Object;)I

    move-result v1

    .line 306
    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v2

    .line 307
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/google/common/collect/HashBiMap$a;->a:I

    if-ne v1, v3, :cond_0

    iget-object v3, v2, Lcom/google/common/collect/HashBiMap$a;->g:Ljava/lang/Object;

    .line 309
    invoke-static {p2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    :goto_0
    return-object p2

    .line 313
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_1

    .line 315
    if-eqz p3, :cond_4

    .line 316
    invoke-direct {p0, v3}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;)V

    .line 322
    :cond_1
    if-eqz v2, :cond_2

    .line 323
    invoke-direct {p0, v2}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;)V

    .line 325
    :cond_2
    new-instance v4, Lcom/google/common/collect/HashBiMap$a;

    invoke-direct {v4, p2, v1, p1, v0}, Lcom/google/common/collect/HashBiMap$a;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    .line 326
    invoke-direct {p0, v4, v3}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;Lcom/google/common/collect/HashBiMap$a;)V

    .line 327
    if-eqz v3, :cond_3

    .line 328
    iput-object v5, v3, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    .line 329
    iput-object v5, v3, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    .line 331
    :cond_3
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap;->a()V

    .line 332
    invoke-static {v2}, Lcom/google/common/collect/Maps;->b(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    .line 318
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x17

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "value already present: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(I)[Lcom/google/common/collect/HashBiMap$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/HashBiMap$a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 356
    new-array v0, p1, [Lcom/google/common/collect/HashBiMap$a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/common/collect/HashBiMap;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    return v0
.end method

.method public static create()Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 62
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/google/common/collect/HashBiMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;)Lcom/google/common/collect/HashBiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)",
            "Lcom/google/common/collect/HashBiMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->create(I)Lcom/google/common/collect/HashBiMap;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Lcom/google/common/collect/HashBiMap;->putAll(Ljava/util/Map;)V

    .line 82
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectInputStream"
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 701
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/common/collect/HashBiMap;->a(I)V

    .line 702
    invoke-static {p1}, Lka;->a(Ljava/io/ObjectInputStream;)I

    move-result v0

    .line 703
    invoke-static {p0, p1, v0}, Lka;->a(Ljava/util/Map;Ljava/io/ObjectInputStream;I)V

    .line 704
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "java.io.ObjectOutputStream"
    .end annotation

    .prologue
    .line 694
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 695
    invoke-static {p0, p1}, Lka;->a(Ljava/util/Map;Ljava/io/ObjectOutputStream;)V

    .line 696
    return-void
.end method


# virtual methods
.method b()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 468
    new-instance v0, Lcom/google/common/collect/HashBiMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$1;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    .line 375
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->a:[Lcom/google/common/collect/HashBiMap$a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->b:[Lcom/google/common/collect/HashBiMap$a;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 377
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->c:Lcom/google/common/collect/HashBiMap$a;

    .line 378
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap;->d:Lcom/google/common/collect/HashBiMap$a;

    .line 379
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/HashBiMap;->g:I

    .line 380
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 242
    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 247
    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->b(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/google/common/collect/Maps$m;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public forcePut(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
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
    .line 253
    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->c(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/BiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 520
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:Lcom/google/common/collect/BiMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/HashBiMap$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/HashBiMap$b;-><init>(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$1;)V

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:Lcom/google/common/collect/BiMap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap;->h:Lcom/google/common/collect/BiMap;

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lcom/google/common/collect/HashBiMap$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/HashBiMap$e;-><init>(Lcom/google/common/collect/HashBiMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    const/4 v0, 0x0

    .line 361
    invoke-static {p1}, Liv;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/HashBiMap;->a(Ljava/lang/Object;I)Lcom/google/common/collect/HashBiMap$a;

    move-result-object v1

    .line 362
    if-nez v1, :cond_0

    .line 368
    :goto_0
    return-object v0

    .line 365
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/common/collect/HashBiMap;->a(Lcom/google/common/collect/HashBiMap$a;)V

    .line 366
    iput-object v0, v1, Lcom/google/common/collect/HashBiMap$a;->f:Lcom/google/common/collect/HashBiMap$a;

    .line 367
    iput-object v0, v1, Lcom/google/common/collect/HashBiMap$a;->e:Lcom/google/common/collect/HashBiMap$a;

    .line 368
    iget-object v0, v1, Lcom/google/common/collect/HashBiMap$a;->h:Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/google/common/collect/HashBiMap;->e:I

    return v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
