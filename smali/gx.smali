.class public Lgx;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgx$l;,
        Lgx$m;,
        Lgx$j;,
        Lgx$n;,
        Lgx$f;,
        Lgx$aa;,
        Lgx$i;,
        Lgx$a;,
        Lgx$e;,
        Lgx$ak;,
        Lgx$y;,
        Lgx$h;,
        Lgx$g;,
        Lgx$c;,
        Lgx$aj;,
        Lgx$k;,
        Lgx$q;,
        Lgx$ah;,
        Lgx$ag;,
        Lgx$ai;,
        Lgx$w;,
        Lgx$r;,
        Lgx$ae;,
        Lgx$ac;,
        Lgx$af;,
        Lgx$ab;,
        Lgx$ad;,
        Lgx$u;,
        Lgx$x;,
        Lgx$t;,
        Lgx$v;,
        Lgx$b;,
        Lgx$o;,
        Lgx$p;,
        Lgx$z;,
        Lgx$d;,
        Lgx$s;
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
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final u:Lgx$z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgx$z",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final v:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final b:I

.field final c:I

.field final d:[Lgx$q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lgx$q",
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

.field final h:Lgx$s;

.field final i:Lgx$s;

.field final j:J

.field final k:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final l:J

.field final m:J

.field final n:J

.field final o:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/cache/RemovalNotification",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final p:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final q:Lcom/google/common/base/Ticker;

.field final r:Lgx$d;

.field final s:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field final t:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field x:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field y:Ljava/util/Set;
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
    .line 161
    const-class v0, Lgx;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lgx;->a:Ljava/util/logging/Logger;

    .line 691
    new-instance v0, Lgx$1;

    invoke-direct {v0}, Lgx$1;-><init>()V

    sput-object v0, Lgx;->u:Lgx$z;

    .line 1022
    new-instance v0, Lgx$2;

    invoke-direct {v0}, Lgx$2;-><init>()V

    sput-object v0, Lgx;->v:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .locals 12
    .param p2    # Lcom/google/common/cache/CacheLoader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilder",
            "<-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 240
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 241
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->e()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lgx;->e:I

    .line 243
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->h()Lgx$s;

    move-result-object v0

    iput-object v0, p0, Lgx;->h:Lgx$s;

    .line 244
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->i()Lgx$s;

    move-result-object v0

    iput-object v0, p0, Lgx;->i:Lgx$s;

    .line 246
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->b()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lgx;->f:Lcom/google/common/base/Equivalence;

    .line 247
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->c()Lcom/google/common/base/Equivalence;

    move-result-object v0

    iput-object v0, p0, Lgx;->g:Lcom/google/common/base/Equivalence;

    .line 249
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lgx;->j:J

    .line 250
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->g()Lcom/google/common/cache/Weigher;

    move-result-object v0

    iput-object v0, p0, Lgx;->k:Lcom/google/common/cache/Weigher;

    .line 251
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->k()J

    move-result-wide v0

    iput-wide v0, p0, Lgx;->l:J

    .line 252
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->j()J

    move-result-wide v0

    iput-wide v0, p0, Lgx;->m:J

    .line 253
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lgx;->n:J

    .line 255
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->m()Lcom/google/common/cache/RemovalListener;

    move-result-object v0

    iput-object v0, p0, Lgx;->p:Lcom/google/common/cache/RemovalListener;

    .line 256
    iget-object v0, p0, Lgx;->p:Lcom/google/common/cache/RemovalListener;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$a;->a:Lcom/google/common/cache/CacheBuilder$a;

    if-ne v0, v1, :cond_2

    .line 257
    invoke-static {}, Lgx;->q()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lgx;->o:Ljava/util/Queue;

    .line 260
    invoke-virtual {p0}, Lgx;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/common/cache/CacheBuilder;->a(Z)Lcom/google/common/base/Ticker;

    move-result-object v0

    iput-object v0, p0, Lgx;->q:Lcom/google/common/base/Ticker;

    .line 261
    iget-object v0, p0, Lgx;->h:Lgx$s;

    invoke-virtual {p0}, Lgx;->l()Z

    move-result v1

    invoke-virtual {p0}, Lgx;->k()Z

    move-result v3

    invoke-static {v0, v1, v3}, Lgx$d;->a(Lgx$s;ZZ)Lgx$d;

    move-result-object v0

    iput-object v0, p0, Lgx;->r:Lgx$d;

    .line 262
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v0, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 263
    iput-object p2, p0, Lgx;->t:Lcom/google/common/cache/CacheLoader;

    .line 265
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->d()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 266
    invoke-virtual {p0}, Lgx;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgx;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    iget-wide v6, p0, Lgx;->j:J

    long-to-int v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v2

    move v3, v4

    .line 277
    :goto_1
    iget v5, p0, Lgx;->e:I

    if-ge v1, v5, :cond_3

    .line 278
    invoke-virtual {p0}, Lgx;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    mul-int/lit8 v5, v1, 0x14

    int-to-long v6, v5

    iget-wide v8, p0, Lgx;->j:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 279
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 280
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 257
    :cond_2
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_0

    .line 282
    :cond_3
    rsub-int/lit8 v3, v3, 0x20

    iput v3, p0, Lgx;->c:I

    .line 283
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lgx;->b:I

    .line 285
    invoke-virtual {p0, v1}, Lgx;->c(I)[Lgx$q;

    move-result-object v3

    iput-object v3, p0, Lgx;->d:[Lgx$q;

    .line 287
    div-int v3, v0, v1

    .line 288
    mul-int v5, v3, v1

    if-ge v5, v0, :cond_8

    .line 289
    add-int/lit8 v0, v3, 0x1

    :goto_2
    move v5, v2

    .line 293
    :goto_3
    if-ge v5, v0, :cond_4

    .line 294
    shl-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_3

    .line 297
    :cond_4
    invoke-virtual {p0}, Lgx;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    iget-wide v2, p0, Lgx;->j:J

    int-to-long v6, v1

    div-long/2addr v2, v6

    add-long/2addr v2, v10

    .line 300
    iget-wide v6, p0, Lgx;->j:J

    int-to-long v0, v1

    rem-long/2addr v6, v0

    move-wide v0, v2

    .line 301
    :goto_4
    iget-object v2, p0, Lgx;->d:[Lgx$q;

    array-length v2, v2

    if-ge v4, v2, :cond_6

    .line 302
    int-to-long v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_7

    .line 303
    sub-long v2, v0, v10

    .line 305
    :goto_5
    iget-object v1, p0, Lgx;->d:[Lgx$q;

    .line 306
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v5, v2, v3, v0}, Lgx;->a(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lgx$q;

    move-result-object v0

    aput-object v0, v1, v4

    .line 301
    add-int/lit8 v4, v4, 0x1

    move-wide v0, v2

    goto :goto_4

    .line 309
    :cond_5
    :goto_6
    iget-object v0, p0, Lgx;->d:[Lgx$q;

    array-length v0, v0

    if-ge v4, v0, :cond_6

    .line 310
    iget-object v1, p0, Lgx;->d:[Lgx$q;

    const-wide/16 v2, -0x1

    .line 311
    invoke-virtual {p1}, Lcom/google/common/cache/CacheBuilder;->n()Lcom/google/common/base/Supplier;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {p0, v5, v2, v3, v0}, Lgx;->a(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lgx$q;

    move-result-object v0

    aput-object v0, v1, v4

    .line 309
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 314
    :cond_6
    return-void

    :cond_7
    move-wide v2, v0

    goto :goto_5

    :cond_8
    move v0, v3

    goto :goto_2
.end method

.method static a(I)I
    .locals 3

    .prologue
    .line 1800
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr v0, p0

    .line 1801
    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    .line 1802
    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    .line 1803
    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    .line 1804
    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1805
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 100
    invoke-static {p0}, Lgx;->b(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static a(Lgx$p;Lgx$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$p",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1927
    invoke-interface {p0, p1}, Lgx$p;->a(Lgx$p;)V

    .line 1928
    invoke-interface {p1, p0}, Lgx$p;->b(Lgx$p;)V

    .line 1929
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
    .line 4490
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4491
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 4492
    return-object v0
.end method

.method static b(Lgx$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1933
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    .line 1934
    invoke-interface {p0, v0}, Lgx$p;->a(Lgx$p;)V

    .line 1935
    invoke-interface {p0, v0}, Lgx$p;->b(Lgx$p;)V

    .line 1936
    return-void
.end method

.method static b(Lgx$p;Lgx$p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$p",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1940
    invoke-interface {p0, p1}, Lgx$p;->c(Lgx$p;)V

    .line 1941
    invoke-interface {p1, p0}, Lgx$p;->d(Lgx$p;)V

    .line 1942
    return-void
.end method

.method static c(Lgx$p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1946
    invoke-static {}, Lgx;->p()Lgx$p;

    move-result-object v0

    .line 1947
    invoke-interface {p0, v0}, Lgx$p;->c(Lgx$p;)V

    .line 1948
    invoke-interface {p0, v0}, Lgx$p;->d(Lgx$p;)V

    .line 1949
    return-void
.end method

.method static o()Lgx$z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 737
    sget-object v0, Lgx;->u:Lgx$z;

    return-object v0
.end method

.method static p()Lgx$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1019
    sget-object v0, Lgx$o;->a:Lgx$o;

    return-object v0
.end method

.method static q()Ljava/util/Queue;
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
    .line 1054
    sget-object v0, Lgx;->v:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1843
    iget-object v0, p0, Lgx;->f:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1844
    invoke-static {v0}, Lgx;->a(I)I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3961
    .line 3964
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3965
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3966
    invoke-virtual {p0, v4}, Lgx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3967
    if-nez v5, :cond_0

    .line 3968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3973
    :cond_0
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3974
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3977
    :cond_1
    iget-object v3, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3978
    iget-object v1, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3979
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method a(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lgx$q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lgx$q",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1880
    new-instance v1, Lgx$q;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lgx$q;-><init>(Lgx;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V

    return-object v1
.end method

.method a(Lgx$p;J)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1891
    invoke-interface {p1}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1902
    :cond_0
    :goto_0
    return-object v0

    .line 1894
    :cond_1
    invoke-interface {p1}, Lgx$p;->a()Lgx$z;

    move-result-object v1

    invoke-interface {v1}, Lgx$z;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1895
    if-eqz v1, :cond_0

    .line 1899
    invoke-virtual {p0, p1, p2, p3}, Lgx;->b(Lgx$p;J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1902
    goto :goto_0
.end method

.method a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 3952
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3953
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lgx$q;->a(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 4034
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4035
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4036
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v3

    .line 4041
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    :try_end_0
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 4062
    if-nez v4, :cond_1

    .line 4063
    iget-object v0, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4064
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null map from loadAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4044
    :catch_0
    move-exception v0

    .line 4046
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4057
    :catchall_0
    move-exception v0

    :goto_0
    if-nez v2, :cond_0

    .line 4058
    iget-object v1, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v2}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    :cond_0
    throw v0

    .line 4047
    :catch_1
    move-exception v1

    .line 4048
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 4049
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4057
    :catchall_1
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto :goto_0

    .line 4050
    :catch_2
    move-exception v1

    .line 4051
    new-instance v2, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4052
    :catch_3
    move-exception v1

    .line 4053
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 4054
    :catch_4
    move-exception v1

    .line 4055
    new-instance v2, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {v2, v1}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4067
    :cond_1
    invoke-virtual {v3}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 4070
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4071
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 4072
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 4073
    if-eqz v6, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    move v1, v0

    .line 4079
    goto :goto_1

    .line 4077
    :cond_3
    invoke-virtual {p0, v6, v0}, Lgx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_2

    .line 4081
    :cond_4
    if-eqz v1, :cond_5

    .line 4082
    iget-object v0, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4083
    new-instance v0, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned null keys or values from loadAll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4087
    :cond_5
    iget-object v0, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 4088
    return-object v4
.end method

.method a(Lgx$p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1854
    invoke-interface {p1}, Lgx$p;->c()I

    move-result v0

    .line 1855
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lgx$q;->a(Lgx$p;I)Z

    .line 1856
    return-void
.end method

.method a(Lgx$z;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$z",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1848
    invoke-interface {p1}, Lgx$z;->b()Lgx$p;

    move-result-object v0

    .line 1849
    invoke-interface {v0}, Lgx$p;->c()I

    move-result v1

    .line 1850
    invoke-virtual {p0, v1}, Lgx;->b(I)Lgx$q;

    move-result-object v2

    invoke-interface {v0}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lgx$q;->a(Ljava/lang/Object;ILgx$z;)Z

    .line 1851
    return-void
.end method

.method a()Z
    .locals 4

    .prologue
    .line 317
    iget-wide v0, p0, Lgx;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3983
    .line 3986
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 3987
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v2

    .line 3988
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3989
    invoke-virtual {p0, v5}, Lgx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3990
    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3991
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3992
    if-nez v6, :cond_1

    .line 3993
    add-int/lit8 v0, v0, 0x1

    .line 3994
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3996
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4002
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-nez v4, :cond_6

    .line 4004
    :try_start_1
    iget-object v4, p0, Lgx;->t:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v2, v4}, Lgx;->a(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object v4

    .line 4005
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 4006
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 4007
    if-nez v7, :cond_3

    .line 4008
    new-instance v4, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x25

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "loadAll failed to return a value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4012
    :catch_0
    move-exception v4

    .line 4014
    :try_start_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    move v2, v0

    :goto_2
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 4015
    add-int/lit8 v2, v2, -0x1

    .line 4016
    iget-object v5, p0, Lgx;->t:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v0, v5}, Lgx;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 4022
    :catchall_0
    move-exception v0

    :goto_3
    iget-object v3, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4023
    iget-object v1, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    throw v0

    .line 4010
    :cond_3
    :try_start_4
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 4022
    :catchall_1
    move-exception v2

    move-object v8, v2

    move v2, v0

    move-object v0, v8

    goto :goto_3

    :cond_4
    move v2, v0

    .line 4020
    :cond_5
    :goto_4
    :try_start_5
    invoke-static {v3}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 4022
    iget-object v3, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 4023
    iget-object v1, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    return-object v0

    :cond_6
    move v2, v0

    goto :goto_4
.end method

.method b(I)Lgx$q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lgx$q",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1875
    iget-object v0, p0, Lgx;->d:[Lgx$q;

    iget v1, p0, Lgx;->c:I

    ushr-int v1, p1, v1

    iget v2, p0, Lgx;->b:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    const/4 v2, 0x1

    .line 3941
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3942
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lgx$q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 3943
    if-nez v0, :cond_0

    .line 3944
    iget-object v1, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3948
    :goto_0
    return-object v0

    .line 3946
    :cond_0
    iget-object v1, p0, Lgx;->s:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v1, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    goto :goto_0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lgx;->k:Lcom/google/common/cache/Weigher;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$b;->a:Lcom/google/common/cache/CacheBuilder$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(Lgx$p;J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$p",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1911
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1912
    invoke-virtual {p0}, Lgx;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1913
    invoke-interface {p1}, Lgx$p;->e()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lgx;->l:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1920
    :cond_0
    :goto_0
    return v0

    .line 1916
    :cond_1
    invoke-virtual {p0}, Lgx;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1917
    invoke-interface {p1}, Lgx$p;->h()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lgx;->m:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1920
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 3957
    iget-object v0, p0, Lgx;->t:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lgx;->a(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method c(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4228
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4229
    invoke-virtual {p0, v1}, Lgx;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4231
    :cond_0
    return-void
.end method

.method c()Z
    .locals 4

    .prologue
    .line 329
    iget-wide v0, p0, Lgx;->m:J

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

.method final c(I)[Lgx$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lgx$q",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1969
    new-array v0, p1, [Lgx$q;

    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 4221
    iget-object v1, p0, Lgx;->d:[Lgx$q;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 4222
    invoke-virtual {v3}, Lgx$q;->k()V

    .line 4221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4224
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
    .line 4112
    if-nez p1, :cond_0

    .line 4113
    const/4 v0, 0x0

    .line 4116
    :goto_0
    return v0

    .line 4115
    :cond_0
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4116
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lgx$q;->c(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 20
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 4122
    if-nez p1, :cond_0

    .line 4123
    const/4 v4, 0x0

    .line 4156
    :goto_0
    return v4

    .line 4131
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    invoke-virtual {v4}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v14

    .line 4132
    move-object/from16 v0, p0

    iget-object v11, v0, Lgx;->d:[Lgx$q;

    .line 4133
    const-wide/16 v8, -0x1

    .line 4134
    const/4 v4, 0x0

    move v10, v4

    move-wide v12, v8

    :goto_1
    const/4 v4, 0x3

    if-ge v10, v4, :cond_5

    .line 4135
    const-wide/16 v6, 0x0

    .line 4136
    array-length v0, v11

    move/from16 v16, v0

    const/4 v4, 0x0

    move-wide v8, v6

    move v6, v4

    :goto_2
    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    aget-object v7, v11, v6

    .line 4138
    iget v4, v7, Lgx$q;->b:I

    .line 4140
    iget-object v0, v7, Lgx$q;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v17, v0

    .line 4141
    const/4 v4, 0x0

    move v5, v4

    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_3

    .line 4142
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgx$p;

    :goto_4
    if-eqz v4, :cond_2

    .line 4143
    invoke-virtual {v7, v4, v14, v15}, Lgx$q;->c(Lgx$p;J)Ljava/lang/Object;

    move-result-object v18

    .line 4144
    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lgx;->g:Lcom/google/common/base/Equivalence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 4145
    const/4 v4, 0x1

    goto :goto_0

    .line 4142
    :cond_1
    invoke-interface {v4}, Lgx$p;->b()Lgx$p;

    move-result-object v4

    goto :goto_4

    .line 4141
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    .line 4149
    :cond_3
    iget v4, v7, Lgx$q;->d:I

    int-to-long v4, v4

    add-long/2addr v8, v4

    .line 4136
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_2

    .line 4151
    :cond_4
    cmp-long v4, v8, v12

    if-nez v4, :cond_6

    .line 4156
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 4134
    :cond_6
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v12, v8

    goto :goto_1
.end method

.method d(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 4105
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4106
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    iget-object v2, p0, Lgx;->t:Lcom/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lgx$q;->a(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    .line 4107
    return-void
.end method

.method d()Z
    .locals 4

    .prologue
    .line 333
    iget-wide v0, p0, Lgx;->l:J

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

.method e()Z
    .locals 4

    .prologue
    .line 337
    iget-wide v0, p0, Lgx;->n:J

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

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Not supported."
    .end annotation

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
    .line 4257
    iget-object v0, p0, Lgx;->y:Ljava/util/Set;

    .line 4258
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgx$f;

    invoke-direct {v0, p0, p0}, Lgx$f;-><init>(Lgx;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lgx;->y:Ljava/util/Set;

    goto :goto_0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 341
    invoke-virtual {p0}, Lgx;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgx;->a()Z

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

.method g()Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lgx;->c()Z

    move-result v0

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
    .line 3932
    if-nez p1, :cond_0

    .line 3933
    const/4 v0, 0x0

    .line 3936
    :goto_0
    return-object v0

    .line 3935
    :cond_0
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3936
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lgx$q;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Lgx;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgx;->e()Z

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

.method i()Z
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lgx;->d()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3892
    .line 3893
    iget-object v6, p0, Lgx;->d:[Lgx$q;

    move v0, v1

    move-wide v2, v4

    .line 3894
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3895
    aget-object v7, v6, v0

    iget v7, v7, Lgx$q;->b:I

    if-eqz v7, :cond_1

    .line 3912
    :cond_0
    :goto_1
    return v1

    .line 3898
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lgx$q;->d:I

    int-to-long v8, v7

    add-long/2addr v2, v8

    .line 3894
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3901
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3902
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3903
    aget-object v7, v6, v0

    iget v7, v7, Lgx$q;->b:I

    if-nez v7, :cond_0

    .line 3906
    aget-object v7, v6, v0

    iget v7, v7, Lgx$q;->d:I

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 3902
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3908
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3912
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method j()Z
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lgx;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgx;->i()Z

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

.method k()Z
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lgx;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgx;->h()Z

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
    .line 4238
    iget-object v0, p0, Lgx;->w:Ljava/util/Set;

    .line 4239
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgx$i;

    invoke-direct {v0, p0, p0}, Lgx$i;-><init>(Lgx;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lgx;->w:Ljava/util/Set;

    goto :goto_0
.end method

.method l()Z
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lgx;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgx;->i()Z

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

.method m()Z
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lgx;->h:Lgx$s;

    sget-object v1, Lgx$s;->a:Lgx$s;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method n()Z
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lgx;->i:Lgx$s;

    sget-object v1, Lgx$s;->a:Lgx$s;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 4161
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4162
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4163
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4164
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lgx$q;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 4177
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

    .line 4178
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lgx;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4180
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
    .line 4169
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4170
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4172
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lgx$q;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method r()V
    .locals 4

    .prologue
    .line 1958
    :goto_0
    iget-object v0, p0, Lgx;->o:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalNotification;

    if-eqz v0, :cond_0

    .line 1960
    :try_start_0
    iget-object v1, p0, Lgx;->p:Lcom/google/common/cache/RemovalListener;

    invoke-interface {v1, v0}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1961
    :catch_0
    move-exception v0

    .line 1962
    sget-object v1, Lgx;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1965
    :cond_0
    return-void
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
    .line 4184
    if-nez p1, :cond_0

    .line 4185
    const/4 v0, 0x0

    .line 4188
    :goto_0
    return-object v0

    .line 4187
    :cond_0
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4188
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lgx$q;->d(Ljava/lang/Object;I)Ljava/lang/Object;

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
    .line 4193
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4194
    :cond_0
    const/4 v0, 0x0

    .line 4197
    :goto_0
    return v0

    .line 4196
    :cond_1
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4197
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lgx$q;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

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
    .line 4213
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4214
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4215
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4216
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lgx$q;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

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
    .line 4202
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4203
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4204
    if-nez p2, :cond_0

    .line 4205
    const/4 v0, 0x0

    .line 4208
    :goto_0
    return v0

    .line 4207
    :cond_0
    invoke-virtual {p0, p1}, Lgx;->a(Ljava/lang/Object;)I

    move-result v0

    .line 4208
    invoke-virtual {p0, v0}, Lgx;->b(I)Lgx$q;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lgx$q;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public s()V
    .locals 4

    .prologue
    .line 3876
    iget-object v1, p0, Lgx;->d:[Lgx$q;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3877
    invoke-virtual {v3}, Lgx$q;->n()V

    .line 3876
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3879
    :cond_0
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 3926
    invoke-virtual {p0}, Lgx;->t()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method t()J
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3916
    iget-object v4, p0, Lgx;->d:[Lgx$q;

    .line 3917
    const-wide/16 v2, 0x0

    move v0, v1

    .line 3918
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 3919
    aget-object v5, v4, v0

    iget v5, v5, Lgx$q;->b:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 3918
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3921
    :cond_0
    return-wide v2
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
    .line 4247
    iget-object v0, p0, Lgx;->x:Ljava/util/Collection;

    .line 4248
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lgx$aa;

    invoke-direct {v0, p0, p0}, Lgx$aa;-><init>(Lgx;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lgx;->x:Ljava/util/Collection;

    goto :goto_0
.end method
