.class public Ljj;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljj$o;,
        Ljj$b;,
        Ljj$m;,
        Ljj$e;,
        Ljj$y;,
        Ljj$j;,
        Ljj$d;,
        Ljj$ae;,
        Ljj$w;,
        Ljj$i;,
        Ljj$h;,
        Ljj$g;,
        Ljj$f;,
        Ljj$n;,
        Ljj$v;,
        Ljj$p;,
        Ljj$ad;,
        Ljj$ac;,
        Ljj$aa;,
        Ljj$ab;,
        Ljj$z;,
        Ljj$u;,
        Ljj$s;,
        Ljj$t;,
        Ljj$r;,
        Ljj$a;,
        Ljj$k;,
        Ljj$l;,
        Ljj$x;,
        Ljj$c;,
        Ljj$q;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field static final q:Ljj$x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj$x",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final r:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x5L


# instance fields
.field final transient b:I

.field final transient c:I

.field final transient d:[Ljj$n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljj$n",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final e:I

.field final f:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final h:Ljj$q;

.field final i:Ljj$q;

.field final j:I

.field final k:J

.field final l:J

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/MapMaker$f",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/google/common/collect/MapMaker$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$e",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient o:Ljj$c;

.field final p:Lcom/google/common/base/Ticker;

.field transient s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-class v0, Ljj;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljj;->a:Ljava/util/logging/Logger;

    .line 581
    new-instance v0, Ljj$1;

    invoke-direct {v0}, Ljj$1;-><init>()V

    sput-object v0, Ljj;->q:Ljj$x;

    .line 874
    new-instance v0, Ljj$2;

    invoke-direct {v0}, Ljj$2;-><init>()V

    sput-object v0, Ljj;->r:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/MapMaker;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 198
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 199
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->e()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljj;->e:I

    .line 201
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->f()Ljj$q;

    move-result-object v0

    iput-object v0, p0, Ljj;->h:Ljj$q;

    .line 202
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->g()Ljj$q;

    move-result-object v0

    iput-object v0, p0, Ljj;->i:Ljj$q;

    .line 204
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->c()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Ljj;->f:Lcom/google/common/base/Equivalence;

    .line 205
    iget-object v0, p0, Ljj;->i:Ljj$q;

    invoke-virtual {v0}, Ljj$q;->a()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Ljj;->g:Lcom/google/common/base/Equivalence;

    .line 207
    iget v0, p1, Lcom/google/common/collect/MapMaker;->e:I

    iput v0, p0, Ljj;->j:I

    .line 208
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->i()J

    move-result-wide v0

    iput-wide v0, p0, Ljj;->k:J

    .line 209
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->h()J

    move-result-wide v0

    iput-wide v0, p0, Ljj;->l:J

    .line 211
    iget-object v0, p0, Ljj;->h:Ljj$q;

    invoke-virtual {p0}, Ljj;->b()Z

    move-result v1

    invoke-virtual {p0}, Ljj;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, Ljj$c;->a(Ljj$q;ZZ)Ljj$c;

    move-result-object v0

    iput-object v0, p0, Ljj;->o:Ljj$c;

    .line 212
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->j()Lcom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Ljj;->p:Lcom/google/common/base/Ticker;

    .line 214
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->a()Lcom/google/common/collect/MapMaker$e;

    move-result-object v0

    iput-object v0, p0, Ljj;->n:Lcom/google/common/collect/MapMaker$e;

    .line 215
    iget-object v0, p0, Ljj;->n:Lcom/google/common/collect/MapMaker$e;

    sget-object v1, Liu$a;->a:Liu$a;

    if-ne v0, v1, :cond_2

    .line 217
    invoke-static {}, Ljj;->i()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljj;->m:Ljava/util/Queue;

    .line 220
    invoke-virtual {p1}, Lcom/google/common/collect/MapMaker;->d()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 221
    invoke-virtual {p0}, Ljj;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget v1, p0, Ljj;->j:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 230
    :goto_1
    iget v5, p0, Ljj;->e:I

    if-ge v1, v5, :cond_3

    .line 231
    invoke-virtual {p0}, Ljj;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v1, 0x2

    iget v6, p0, Ljj;->j:I

    if-gt v5, v6, :cond_3

    .line 232
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 233
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 235
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Ljj;->c:I

    .line 236
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Ljj;->b:I

    .line 238
    invoke-virtual {p0, v1}, Ljj;->d(I)[Ljj$n;

    move-result-object v3

    iput-object v3, p0, Ljj;->d:[Ljj$n;

    .line 240
    div-int v3, v0, v1

    .line 241
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 242
    add-int/lit8 v0, v3, 0x1

    .line 246
    :goto_2
    if-ge v2, v0, :cond_4

    .line 247
    shl-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 250
    :cond_4
    invoke-virtual {p0}, Ljj;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    iget v0, p0, Ljj;->j:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 253
    iget v3, p0, Ljj;->j:I

    rem-int v1, v3, v1

    .line 254
    :goto_3
    iget-object v3, p0, Ljj;->d:[Ljj$n;

    array-length v3, v3

    if-ge v4, v3, :cond_7

    .line 255
    if-ne v4, v1, :cond_5

    .line 256
    add-int/lit8 v0, v0, -0x1

    .line 258
    :cond_5
    iget-object v3, p0, Ljj;->d:[Ljj$n;

    invoke-virtual {p0, v2, v0}, Ljj;->a(II)Ljj$n;

    move-result-object v5

    aput-object v5, v3, v4

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 261
    :cond_6
    :goto_4
    iget-object v0, p0, Ljj;->d:[Ljj$n;

    array-length v0, v0

    if-ge v4, v0, :cond_7

    .line 262
    iget-object v0, p0, Ljj;->d:[Ljj$n;

    const/4 v1, -0x1

    invoke-virtual {p0, v2, v1}, Ljj;->a(II)Ljj$n;

    move-result-object v1

    aput-object v1, v0, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 265
    :cond_7
    return-void

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 74
    invoke-static {p0}, Ljj;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljj$l;Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$l",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1936
    invoke-interface {p0, p1}, Ljj$l;->a(Ljj$l;)V

    .line 1937
    invoke-interface {p1, p0}, Ljj$l;->b(Ljj$l;)V

    .line 1938
    return-void
.end method

.method private static b(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3929
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3930
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 3931
    return-object v0
.end method

.method static b(Ljj$l;Ljj$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$l",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1968
    invoke-interface {p0, p1}, Ljj$l;->c(Ljj$l;)V

    .line 1969
    invoke-interface {p1, p0}, Ljj$l;->d(Ljj$l;)V

    .line 1970
    return-void
.end method

.method static c(I)I
    .locals 3

    .prologue
    .line 1820
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1821
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1822
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1823
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1824
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1825
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static d(Ljj$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1942
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    .line 1943
    invoke-interface {p0, v0}, Ljj$l;->a(Ljj$l;)V

    .line 1944
    invoke-interface {p0, v0}, Ljj$l;->b(Ljj$l;)V

    .line 1945
    return-void
.end method

.method static e(Ljj$l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1974
    invoke-static {}, Ljj;->h()Ljj$l;

    move-result-object v0

    .line 1975
    invoke-interface {p0, v0}, Ljj$l;->c(Ljj$l;)V

    .line 1976
    invoke-interface {p0, v0}, Ljj$l;->d(Ljj$l;)V

    .line 1977
    return-void
.end method

.method static g()Ljj$x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 620
    sget-object v0, Ljj;->q:Ljj$x;

    return-object v0
.end method

.method static h()Ljj$l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 871
    sget-object v0, Ljj$k;->a:Ljj$k;

    return-object v0
.end method

.method static i()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 907
    sget-object v0, Ljj;->r:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method a(II)Ljj$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljj$n",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1894
    new-instance v0, Ljj$n;

    invoke-direct {v0, p0, p1, p2}, Ljj$n;-><init>(Ljj;II)V

    return-object v0
.end method

.method a(Ljj$l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1869
    invoke-interface {p1}, Ljj$l;->c()I

    move-result v0

    .line 1870
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljj$n;->a(Ljj$l;I)Z

    .line 1871
    return-void
.end method

.method a(Ljj$x;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$x",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1863
    invoke-interface {p1}, Ljj$x;->a()Ljj$l;

    move-result-object v0

    .line 1864
    invoke-interface {v0}, Ljj$l;->c()I

    move-result v1

    .line 1865
    invoke-virtual {p0, v1}, Ljj;->b(I)Ljj$n;

    move-result-object v2

    invoke-interface {v0}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Ljj$n;->a(Ljava/lang/Object;ILjj$x;)Z

    .line 1866
    return-void
.end method

.method a()Z
    .locals 2

    .prologue
    .line 268
    iget v0, p0, Ljj;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Ljj$l;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1931
    invoke-interface {p1}, Ljj$l;->e()J

    move-result-wide v0

    sub-long v0, p2, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1858
    iget-object v0, p0, Ljj;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1859
    invoke-static {v0}, Ljj;->c(I)I

    move-result v0

    return v0
.end method

.method b(Ljj$l;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1903
    invoke-interface {p1}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return-object v0

    .line 1906
    :cond_1
    invoke-interface {p1}, Ljj$l;->a()Ljj$x;

    move-result-object v1

    invoke-interface {v1}, Ljj$x;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1907
    if-eqz v1, :cond_0

    .line 1911
    invoke-virtual {p0}, Ljj;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Ljj;->c(Ljj$l;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 1914
    goto :goto_0
.end method

.method b(I)Ljj$n;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljj$n",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1890
    iget-object v0, p0, Ljj;->d:[Ljj$n;

    iget v1, p0, Ljj;->c:I

    ushr-int v1, p1, v1

    iget v2, p0, Ljj;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Ljj;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljj;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Ljj$l;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 3457
    if-nez p1, :cond_0

    .line 3458
    const/4 v0, 0x0

    .line 3461
    :goto_0
    return-object v0

    .line 3460
    :cond_0
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3461
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljj$n;->a(Ljava/lang/Object;I)Ljj$l;

    move-result-object v0

    goto :goto_0
.end method

.method c()Z
    .locals 4

    .prologue
    .line 276
    iget-wide v0, p0, Ljj;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljj$l;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljj$l",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1923
    iget-object v0, p0, Ljj;->p:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljj;->a(Ljj$l;J)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3573
    iget-object v1, p0, Ljj;->d:[Ljj$n;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3574
    invoke-virtual {v3}, Ljj$n;->m()V

    .line 3573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3576
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3466
    if-nez p1, :cond_0

    .line 3467
    const/4 v0, 0x0

    .line 3470
    :goto_0
    return v0

    .line 3469
    :cond_0
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3470
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljj$n;->d(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3475
    if-nez p1, :cond_0

    .line 3476
    const/4 v0, 0x0

    .line 3508
    :goto_0
    return v0

    .line 3484
    :cond_0
    iget-object v7, p0, Ljj;->d:[Ljj$n;

    .line 3485
    const-wide/16 v4, -0x1

    .line 3486
    const/4 v0, 0x0

    move v6, v0

    move-wide v8, v4

    :goto_1
    const/4 v0, 0x3

    if-ge v6, v0, :cond_5

    .line 3487
    const-wide/16 v2, 0x0

    .line 3488
    array-length v10, v7

    const/4 v0, 0x0

    move-wide v4, v2

    move v2, v0

    :goto_2
    if-ge v2, v10, :cond_4

    aget-object v3, v7, v2

    .line 3490
    iget v0, v3, Ljj$n;->b:I

    .line 3492
    iget-object v11, v3, Ljj$n;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3493
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3494
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$l;

    :goto_4
    if-eqz v0, :cond_2

    .line 3495
    invoke-virtual {v3, v0}, Ljj$n;->e(Ljj$l;)Ljava/lang/Object;

    move-result-object v12

    .line 3496
    if-eqz v12, :cond_1

    iget-object v13, p0, Ljj;->g:Lcom/google/common/base/Equivalence;

    invoke-virtual {v13, p1, v12}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3497
    const/4 v0, 0x1

    goto :goto_0

    .line 3494
    :cond_1
    invoke-interface {v0}, Ljj$l;->b()Ljj$l;

    move-result-object v0

    goto :goto_4

    .line 3493
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3501
    :cond_3
    iget v0, v3, Ljj$n;->c:I

    int-to-long v0, v0

    add-long/2addr v4, v0

    .line 3488
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3503
    :cond_4
    cmp-long v0, v4, v8

    if-nez v0, :cond_6

    .line 3508
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 3486
    :cond_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-wide v8, v4

    goto :goto_1
.end method

.method d()Z
    .locals 4

    .prologue
    .line 280
    iget-wide v0, p0, Ljj;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d(I)[Ljj$n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Ljj$n",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1981
    new-array v0, p1, [Ljj$n;

    return-object v0
.end method

.method e()Z
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Ljj;->h:Ljj$q;

    sget-object v1, Ljj$q;->a:Ljj$q;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 3598
    iget-object v0, p0, Ljj;->u:Ljava/util/Set;

    .line 3599
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljj$e;

    invoke-direct {v0, p0}, Ljj$e;-><init>(Ljj;)V

    iput-object v0, p0, Ljj;->u:Ljava/util/Set;

    goto :goto_0
.end method

.method f()Z
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Ljj;->i:Ljj$q;

    sget-object v1, Ljj$q;->a:Ljj$q;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 3445
    if-nez p1, :cond_0

    .line 3446
    const/4 v0, 0x0

    .line 3449
    :goto_0
    return-object v0

    .line 3448
    :cond_0
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3449
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljj$n;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3410
    .line 3411
    iget-object v6, p0, Ljj;->d:[Ljj$n;

    move v0, v1

    move-wide v2, v4

    .line 3412
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3413
    aget-object v7, v6, v0

    iget v7, v7, Ljj$n;->b:I

    if-eqz v7, :cond_1

    .line 3430
    :cond_0
    :goto_1
    return v1

    .line 3416
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Ljj$n;->c:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 3412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3419
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3420
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3421
    aget-object v7, v6, v0

    iget v7, v7, Ljj$n;->b:I

    if-nez v7, :cond_0

    .line 3424
    aget-object v7, v6, v0

    iget v7, v7, Ljj$n;->c:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3420
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3426
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3430
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method j()V
    .locals 4

    .prologue
    .line 1956
    :goto_0
    iget-object v0, p0, Ljj;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$f;

    if-eqz v0, :cond_0

    .line 1958
    :try_start_0
    iget-object v1, p0, Ljj;->n:Lcom/google/common/collect/MapMaker$e;

    invoke-interface {v1, v0}, Lcom/google/common/collect/MapMaker$e;->a(Lcom/google/common/collect/MapMaker$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    sget-object v1, Ljj;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1963
    :cond_0
    return-void
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
    .line 3582
    iget-object v0, p0, Ljj;->s:Ljava/util/Set;

    .line 3583
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljj$j;

    invoke-direct {v0, p0}, Ljj$j;-><init>(Ljj;)V

    iput-object v0, p0, Ljj;->s:Ljava/util/Set;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3513
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3514
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3515
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3516
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 3529
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3530
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljj;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3532
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3521
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3522
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3523
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3524
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3536
    if-nez p1, :cond_0

    .line 3537
    const/4 v0, 0x0

    .line 3540
    :goto_0
    return-object v0

    .line 3539
    :cond_0
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3540
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljj$n;->e(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3545
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3546
    :cond_0
    const/4 v0, 0x0

    .line 3549
    :goto_0
    return v0

    .line 3548
    :cond_1
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3549
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljj$n;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3565
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3566
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3567
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3568
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 3554
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3555
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    if-nez p2, :cond_0

    .line 3557
    const/4 v0, 0x0

    .line 3560
    :goto_0
    return v0

    .line 3559
    :cond_0
    invoke-virtual {p0, p1}, Ljj;->b(Ljava/lang/Object;)I

    move-result v0

    .line 3560
    invoke-virtual {p0, v0}, Ljj;->b(I)Ljj$n;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Ljj$n;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3435
    iget-object v1, p0, Ljj;->d:[Ljj$n;

    .line 3436
    const-wide/16 v2, 0x0

    .line 3437
    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 3438
    aget-object v4, v1, v0

    iget v4, v4, Ljj$n;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 3437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3440
    :cond_0
    invoke-static {v2, v3}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 3590
    iget-object v0, p0, Ljj;->t:Ljava/util/Collection;

    .line 3591
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljj$y;

    invoke-direct {v0, p0}, Ljj$y;-><init>(Ljj;)V

    iput-object v0, p0, Ljj;->t:Ljava/util/Collection;

    goto :goto_0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 14

    .prologue
    .line 3939
    new-instance v1, Ljj$o;

    iget-object v2, p0, Ljj;->h:Ljj$q;

    iget-object v3, p0, Ljj;->i:Ljj$q;

    iget-object v4, p0, Ljj;->f:Lcom/google/common/base/Equivalence;

    iget-object v5, p0, Ljj;->g:Lcom/google/common/base/Equivalence;

    iget-wide v6, p0, Ljj;->l:J

    iget-wide v8, p0, Ljj;->k:J

    iget v10, p0, Ljj;->j:I

    iget v11, p0, Ljj;->e:I

    iget-object v12, p0, Ljj;->n:Lcom/google/common/collect/MapMaker$e;

    move-object v13, p0

    invoke-direct/range {v1 .. v13}, Ljj$o;-><init>(Ljj$q;Ljj$q;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJIILcom/google/common/collect/MapMaker$e;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v1
.end method
