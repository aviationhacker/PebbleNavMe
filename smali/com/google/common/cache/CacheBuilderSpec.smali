.class public final Lcom/google/common/cache/CacheBuilderSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/CacheBuilderSpec$k;,
        Lcom/google/common/cache/CacheBuilderSpec$n;,
        Lcom/google/common/cache/CacheBuilderSpec$a;,
        Lcom/google/common/cache/CacheBuilderSpec$c;,
        Lcom/google/common/cache/CacheBuilderSpec$j;,
        Lcom/google/common/cache/CacheBuilderSpec$m;,
        Lcom/google/common/cache/CacheBuilderSpec$f;,
        Lcom/google/common/cache/CacheBuilderSpec$b;,
        Lcom/google/common/cache/CacheBuilderSpec$i;,
        Lcom/google/common/cache/CacheBuilderSpec$h;,
        Lcom/google/common/cache/CacheBuilderSpec$d;,
        Lcom/google/common/cache/CacheBuilderSpec$g;,
        Lcom/google/common/cache/CacheBuilderSpec$e;,
        Lcom/google/common/cache/CacheBuilderSpec$l;
    }
.end annotation


# static fields
.field private static final n:Lcom/google/common/base/Splitter;

.field private static final o:Lcom/google/common/base/Splitter;

.field private static final p:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/common/cache/CacheBuilderSpec$l;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/Integer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field b:Ljava/lang/Long;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field c:Ljava/lang/Long;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field d:Ljava/lang/Integer;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field e:Lgx$s;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field f:Lgx$s;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field g:Ljava/lang/Boolean;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field h:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field i:Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field j:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field k:Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field l:J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field m:Ljava/util/concurrent/TimeUnit;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 89
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->n:Lcom/google/common/base/Splitter;

    .line 92
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->trimResults()Lcom/google/common/base/Splitter;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->o:Lcom/google/common/base/Splitter;

    .line 96
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "initialCapacity"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$d;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$d;-><init>()V

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "maximumSize"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$h;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$h;-><init>()V

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "maximumWeight"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$i;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$i;-><init>()V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "concurrencyLevel"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$b;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$b;-><init>()V

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "weakKeys"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$f;

    sget-object v3, Lgx$s;->c:Lgx$s;

    invoke-direct {v2, v3}, Lcom/google/common/cache/CacheBuilderSpec$f;-><init>(Lgx$s;)V

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "softValues"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$m;

    sget-object v3, Lgx$s;->b:Lgx$s;

    invoke-direct {v2, v3}, Lcom/google/common/cache/CacheBuilderSpec$m;-><init>(Lgx$s;)V

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "weakValues"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$m;

    sget-object v3, Lgx$s;->c:Lgx$s;

    invoke-direct {v2, v3}, Lcom/google/common/cache/CacheBuilderSpec$m;-><init>(Lgx$s;)V

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "recordStats"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$j;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$j;-><init>()V

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "expireAfterAccess"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$a;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$a;-><init>()V

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "expireAfterWrite"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$n;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$n;-><init>()V

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "refreshAfterWrite"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$k;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$k;-><init>()V

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const-string v1, "refreshInterval"

    new-instance v2, Lcom/google/common/cache/CacheBuilderSpec$k;

    invoke-direct {v2}, Lcom/google/common/cache/CacheBuilderSpec$k;-><init>()V

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/CacheBuilderSpec;->p:Lcom/google/common/collect/ImmutableMap;

    .line 95
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/google/common/cache/CacheBuilderSpec;->q:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private static a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;
    .locals 2
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 283
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/google/common/cache/CacheBuilderSpec;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableCaching()Lcom/google/common/cache/CacheBuilderSpec;
    .locals 1

    .prologue
    .line 163
    const-string v0, "maximumSize=0"

    invoke-static {v0}, Lcom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/common/cache/CacheBuilderSpec;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 137
    new-instance v5, Lcom/google/common/cache/CacheBuilderSpec;

    invoke-direct {v5, p0}, Lcom/google/common/cache/CacheBuilderSpec;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 139
    sget-object v0, Lcom/google/common/cache/CacheBuilderSpec;->n:Lcom/google/common/base/Splitter;

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 140
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec;->o:Lcom/google/common/base/Splitter;

    invoke-virtual {v1, v0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 141
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_1
    const-string v2, "blank key-value pair"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 142
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1

    move v1, v3

    :goto_2
    const-string v2, "key-value pair %s with more than one equals sign"

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v4

    invoke-static {v1, v2, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec;->p:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/CacheBuilderSpec$l;

    .line 148
    if-eqz v1, :cond_2

    move v2, v3

    :goto_3
    const-string v8, "unknown key %s"

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v0, v9, v4

    invoke-static {v2, v8, v9}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    .line 151
    :goto_4
    invoke-interface {v1, v5, v0, v2}, Lcom/google/common/cache/CacheBuilderSpec$l;->a(Lcom/google/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v1, v4

    .line 141
    goto :goto_1

    :cond_1
    move v1, v4

    .line 142
    goto :goto_2

    :cond_2
    move v2, v4

    .line 148
    goto :goto_3

    .line 150
    :cond_3
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    .line 155
    :cond_4
    return-object v5
.end method


# virtual methods
.method a()Lcom/google/common/cache/CacheBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/CacheBuilder",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->initialCapacity(I)Lcom/google/common/cache/CacheBuilder;

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumSize(J)Lcom/google/common/cache/CacheBuilder;

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/common/cache/CacheBuilder;->maximumWeight(J)Lcom/google/common/cache/CacheBuilder;

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lcom/google/common/cache/CacheBuilder;

    .line 183
    :cond_3
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->e:Lgx$s;

    if-eqz v1, :cond_4

    .line 184
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec$1;->a:[I

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->e:Lgx$s;

    invoke-virtual {v2}, Lgx$s;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 189
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 186
    :pswitch_0
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->f:Lgx$s;

    if-eqz v1, :cond_5

    .line 193
    sget-object v1, Lcom/google/common/cache/CacheBuilderSpec$1;->a:[I

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->f:Lgx$s;

    invoke-virtual {v2}, Lgx$s;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 201
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :pswitch_1
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->softValues()Lcom/google/common/cache/CacheBuilder;

    .line 204
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->recordStats()Lcom/google/common/cache/CacheBuilder;

    .line 207
    :cond_6
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->i:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_7

    .line 208
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->h:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->i:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 210
    :cond_7
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_8

    .line 211
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->j:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 213
    :cond_8
    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->m:Ljava/util/concurrent/TimeUnit;

    if-eqz v1, :cond_9

    .line 214
    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->l:J

    iget-object v1, p0, Lcom/google/common/cache/CacheBuilderSpec;->m:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/common/cache/CacheBuilder;->refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lcom/google/common/cache/CacheBuilder;

    .line 217
    :cond_9
    return-object v0

    .line 198
    :pswitch_2
    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakValues()Lcom/google/common/cache/CacheBuilder;

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 193
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 256
    if-ne p0, p1, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    instance-of v2, p1, Lcom/google/common/cache/CacheBuilderSpec;

    if-nez v2, :cond_2

    move v0, v1

    .line 260
    goto :goto_0

    .line 262
    :cond_2
    check-cast p1, Lcom/google/common/cache/CacheBuilderSpec;

    .line 263
    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    .line 264
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    .line 265
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    .line 266
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->e:Lgx$s;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->e:Lgx$s;

    .line 267
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->f:Lgx$s;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->f:Lgx$s;

    .line 268
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Boolean;

    .line 269
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->h:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->i:Ljava/util/concurrent/TimeUnit;

    .line 270
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->h:J

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->i:Ljava/util/concurrent/TimeUnit;

    .line 271
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 270
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->j:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    .line 272
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->j:J

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    .line 273
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 272
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->l:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->m:Ljava/util/concurrent/TimeUnit;

    .line 274
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p1, Lcom/google/common/cache/CacheBuilderSpec;->l:J

    iget-object v3, p1, Lcom/google/common/cache/CacheBuilderSpec;->m:Ljava/util/concurrent/TimeUnit;

    .line 275
    invoke-static {v4, v5, v3}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v3

    .line 274
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 241
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->a:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->b:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->c:Ljava/lang/Long;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->d:Ljava/lang/Integer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->e:Lgx$s;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->f:Lgx$s;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->g:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->h:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->i:Ljava/util/concurrent/TimeUnit;

    .line 249
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->j:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->k:Ljava/util/concurrent/TimeUnit;

    .line 250
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/common/cache/CacheBuilderSpec;->l:J

    iget-object v4, p0, Lcom/google/common/cache/CacheBuilderSpec;->m:Ljava/util/concurrent/TimeUnit;

    .line 251
    invoke-static {v2, v3, v4}, Lcom/google/common/cache/CacheBuilderSpec;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    .line 241
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toParsableString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/common/cache/CacheBuilderSpec;->q:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/cache/CacheBuilderSpec;->toParsableString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
