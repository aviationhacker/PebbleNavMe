.class Lgx$n;
.super Lcom/google/common/cache/ForwardingCache;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/ForwardingCache",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final b:Lgx$s;

.field final c:Lgx$s;

.field final d:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final e:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:J

.field final g:J

.field final h:J

.field final i:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final j:I

.field final k:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field final l:Lcom/google/common/base/Ticker;

.field final m:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field transient n:Lcom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lgx$s;Lgx$s;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJJLcom/google/common/cache/Weigher;ILcom/google/common/cache/RemovalListener;Lcom/google/common/base/Ticker;Lcom/google/common/cache/CacheLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx$s;",
            "Lgx$s;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lcom/google/common/cache/Weigher",
            "<TK;TV;>;I",
            "Lcom/google/common/cache/RemovalListener",
            "<-TK;-TV;>;",
            "Lcom/google/common/base/Ticker;",
            "Lcom/google/common/cache/CacheLoader",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4651
    invoke-direct {p0}, Lcom/google/common/cache/ForwardingCache;-><init>()V

    .line 4652
    iput-object p1, p0, Lgx$n;->b:Lgx$s;

    .line 4653
    iput-object p2, p0, Lgx$n;->c:Lgx$s;

    .line 4654
    iput-object p3, p0, Lgx$n;->d:Lcom/google/common/base/Equivalence;

    .line 4655
    iput-object p4, p0, Lgx$n;->e:Lcom/google/common/base/Equivalence;

    .line 4656
    iput-wide p5, p0, Lgx$n;->f:J

    .line 4657
    iput-wide p7, p0, Lgx$n;->g:J

    .line 4658
    iput-wide p9, p0, Lgx$n;->h:J

    .line 4659
    iput-object p11, p0, Lgx$n;->i:Lcom/google/common/cache/Weigher;

    .line 4660
    iput p12, p0, Lgx$n;->j:I

    .line 4661
    move-object/from16 v0, p13

    iput-object v0, p0, Lgx$n;->k:Lcom/google/common/cache/RemovalListener;

    .line 4662
    invoke-static {}, Lcom/google/common/base/Ticker;->systemTicker()Lcom/google/common/base/Ticker;

    move-result-object v1

    move-object/from16 v0, p14

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/common/cache/CacheBuilder;->d:Lcom/google/common/base/Ticker;

    move-object/from16 v0, p14

    if-ne v0, v1, :cond_1

    :cond_0
    const/16 p14, 0x0

    :cond_1
    move-object/from16 v0, p14

    iput-object v0, p0, Lgx$n;->l:Lcom/google/common/base/Ticker;

    .line 4664
    move-object/from16 v0, p15

    iput-object v0, p0, Lgx$n;->m:Lcom/google/common/cache/CacheLoader;

    .line 4665
    return-void
.end method

.method constructor <init>(Lgx;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgx",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4630
    move-object/from16 v0, p1

    iget-object v4, v0, Lgx;->h:Lgx$s;

    move-object/from16 v0, p1

    iget-object v5, v0, Lgx;->i:Lgx$s;

    move-object/from16 v0, p1

    iget-object v6, v0, Lgx;->f:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    iget-object v7, v0, Lgx;->g:Lcom/google/common/base/Equivalence;

    move-object/from16 v0, p1

    iget-wide v8, v0, Lgx;->m:J

    move-object/from16 v0, p1

    iget-wide v10, v0, Lgx;->l:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lgx;->j:J

    move-object/from16 v0, p1

    iget-object v14, v0, Lgx;->k:Lcom/google/common/cache/Weigher;

    move-object/from16 v0, p1

    iget v15, v0, Lgx;->e:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lgx;->p:Lcom/google/common/cache/RemovalListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgx;->q:Lcom/google/common/base/Ticker;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lgx;->t:Lcom/google/common/cache/CacheLoader;

    move-object/from16 v18, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v18}, Lgx$n;-><init>(Lgx$s;Lgx$s;Lcom/google/common/base/Equivalence;Lcom/google/common/base/Equivalence;JJJLcom/google/common/cache/Weigher;ILcom/google/common/cache/RemovalListener;Lcom/google/common/base/Ticker;Lcom/google/common/cache/CacheLoader;)V

    .line 4643
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 4699
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4700
    invoke-virtual {p0}, Lgx$n;->a()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4701
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->build()Lcom/google/common/cache/Cache;

    move-result-object v0

    iput-object v0, p0, Lgx$n;->n:Lcom/google/common/cache/Cache;

    .line 4702
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4705
    iget-object v0, p0, Lgx$n;->n:Lcom/google/common/cache/Cache;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/common/cache/CacheBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, -0x1

    .line 4668
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lgx$n;->b:Lgx$s;

    .line 4669
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lgx$s;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lgx$n;->c:Lgx$s;

    .line 4670
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->b(Lgx$s;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lgx$n;->d:Lcom/google/common/base/Equivalence;

    .line 4671
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->a(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lgx$n;->e:Lcom/google/common/base/Equivalence;

    .line 4672
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->b(Lcom/google/common/base/Equivalence;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget v1, p0, Lgx$n;->j:I

    .line 4673
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lgx$n;->k:Lcom/google/common/cache/RemovalListener;

    .line 4674
    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->removalListener(Lcom/google/common/cache/RemovalListener;)Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4675
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/cache/CacheBuilder;->e:Z

    .line 4676
    iget-wide v2, p0, Lgx$n;->f:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 4677
    iget-wide v2, p0, Lgx$n;->f:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 4679
    :cond_0
    iget-wide v2, p0, Lgx$n;->g:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 4680
    iget-wide v2, p0, Lgx$n;->g:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 4682
    :cond_1
    iget-object v1, p0, Lgx$n;->i:Lcom/google/common/cache/Weigher;

    sget-object v2, Lcom/google/common/cache/CacheBuilder$b;->a:Lcom/google/common/cache/CacheBuilder$b;

    if-eq v1, v2, :cond_4

    .line 4683
    iget-object v1, p0, Lgx$n;->i:Lcom/google/common/cache/Weigher;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->weigher(Lcom/google/common/cache/Weigher;)Lcom/google/common/cache/CacheBuilder;

    .line 4684
    iget-wide v2, p0, Lgx$n;->h:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 4685
    iget-wide v2, p0, Lgx$n;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumWeight(J)Lcom/google/common/cache/CacheBuilder;

    .line 4692
    :cond_2
    :goto_0
    iget-object v1, p0, Lgx$n;->l:Lcom/google/common/base/Ticker;

    if-eqz v1, :cond_3

    .line 4693
    iget-object v1, p0, Lgx$n;->l:Lcom/google/common/base/Ticker;

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->ticker(Lcom/google/common/base/Ticker;)Lcom/google/common/cache/CacheBuilder;

    .line 4695
    :cond_3
    return-object v0

    .line 4688
    :cond_4
    iget-wide v2, p0, Lgx$n;->h:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 4689
    iget-wide v2, p0, Lgx$n;->h:J

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumSize(J)Lcom/google/common/cache/CacheBuilder;

    goto :goto_0
.end method

.method protected delegate()Lcom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/Cache",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 4710
    iget-object v0, p0, Lgx$n;->n:Lcom/google/common/cache/Cache;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4610
    invoke-virtual {p0}, Lgx$n;->delegate()Lcom/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method
