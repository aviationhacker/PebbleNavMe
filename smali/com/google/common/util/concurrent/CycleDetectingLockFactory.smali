.class public Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$e;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$c;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$f;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Enum;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/logging/Logger;

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 289
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    .line 290
    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 480
    const-class v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 481
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->c:Ljava/util/logging/Logger;

    .line 497
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V
    .locals 1

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    iput-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    .line 487
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-void
.end method

.method private static a(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/util/Map;
    .locals 10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Ljava/util/Map",
            "<TE;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-static {p0}, Lcom/google/common/collect/Maps;->newEnumMap(Ljava/lang/Class;)Ljava/util/EnumMap;

    move-result-object v3

    .line 328
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 329
    array-length v4, v0

    .line 331
    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 333
    array-length v6, v0

    move v2, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v7, v0, v2

    .line 334
    new-instance v8, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    invoke-static {v7}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v3, v7, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_0
    const/4 v0, 0x1

    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 340
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    sget-object v6, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->THROW:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    invoke-virtual {v5, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 339
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 343
    :cond_1
    :goto_2
    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_2

    .line 344
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    sget-object v2, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    add-int/lit8 v6, v1, 0x1

    .line 345
    invoke-virtual {v5, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .line 344
    invoke-virtual {v0, v2, v6}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 343
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 347
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->c:Ljava/util/logging/Logger;

    return-object v0
.end method

.method private a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V
    .locals 3

    .prologue
    .line 760
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 762
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;->a()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    move-result-object v1

    .line 763
    iget-object v2, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    invoke-virtual {v1, v2, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V

    .line 764
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    return-void
.end method

.method private static b(Ljava/lang/Class;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum;",
            ">;)",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Enum;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 310
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 311
    if-eqz v0, :cond_0

    .line 316
    :goto_0
    return-object v0

    .line 314
    :cond_0
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 315
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 316
    invoke-static {v0, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_0
.end method

.method private b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V
    .locals 4

    .prologue
    .line 775
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 777
    invoke-interface {p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;->a()Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    move-result-object v2

    .line 780
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 781
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_1

    .line 782
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 787
    :cond_0
    return-void

    .line 780
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;)V

    return-void
.end method

.method public static newInstance(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)V

    return-object v0
.end method

.method public static newInstanceWithExplicitOrdering(Ljava/lang/Class;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;)Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum",
            "<TE;>;>(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            ")",
            "Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-static {p0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    .line 304
    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;

    invoke-direct {v1, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public newReentrantLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    goto :goto_0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->newReentrantReadWriteLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/String;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;

    new-instance v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;

    invoke-direct {v1, p1}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$d;-><init>(Lcom/google/common/util/concurrent/CycleDetectingLockFactory;Lcom/google/common/util/concurrent/CycleDetectingLockFactory$g;ZLcom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    goto :goto_0
.end method
