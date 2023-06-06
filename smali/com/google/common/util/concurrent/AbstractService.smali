.class public abstract Lcom/google/common/util/concurrent/AbstractService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractService$e;,
        Lcom/google/common/util/concurrent/AbstractService$d;,
        Lcom/google/common/util/concurrent/AbstractService$a;,
        Lcom/google/common/util/concurrent/AbstractService$c;,
        Lcom/google/common/util/concurrent/AbstractService$b;
    }
.end annotation


# static fields
.field private static final a:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Lly$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Lcom/google/common/util/concurrent/Monitor;

.field private final i:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final j:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final k:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final l:Lcom/google/common/util/concurrent/Monitor$Guard;

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lly",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field

.field private volatile n:Lcom/google/common/util/concurrent/AbstractService$e;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$1;

    const-string v1, "starting()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->a:Lly$a;

    .line 64
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$2;

    const-string v1, "running()"

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->b:Lly$a;

    .line 70
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 71
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->b(Lcom/google/common/util/concurrent/Service$State;)Lly$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->c:Lly$a;

    .line 72
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 73
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->b(Lcom/google/common/util/concurrent/Service$State;)Lly$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->d:Lly$a;

    .line 75
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 76
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)Lly$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->e:Lly$a;

    .line 77
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 78
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)Lly$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->f:Lly$a;

    .line 79
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 80
    invoke-static {v0}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;)Lly$a;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractService;->g:Lly$a;

    .line 79
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    .line 100
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$b;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$b;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->i:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 113
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$c;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$c;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->j:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 126
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$a;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$a;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->k:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 139
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$d;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractService$d;-><init>(Lcom/google/common/util/concurrent/AbstractService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->l:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    .line 168
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 172
    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/AbstractService;)Lcom/google/common/util/concurrent/Monitor;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    return-object v0
.end method

.method private static a(Lcom/google/common/util/concurrent/Service$State;)Lly$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$3;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "terminated({from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/util/concurrent/AbstractService$3;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lly;

    invoke-virtual {v0}, Lly;->a()V

    .line 457
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 461
    :cond_0
    return-void
.end method

.method private a(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 507
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$5;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "failed({from = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cause = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/common/util/concurrent/AbstractService$5;-><init>(Lcom/google/common/util/concurrent/AbstractService;Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    .line 511
    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$5;->a(Ljava/lang/Iterable;)V

    .line 512
    return-void
.end method

.method private static b(Lcom/google/common/util/concurrent/Service$State;)Lly$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/Service$State;",
            ")",
            "Lly$a",
            "<",
            "Lcom/google/common/util/concurrent/Service$Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$4;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "stopping({from = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "})"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/common/util/concurrent/AbstractService$4;-><init>(Ljava/lang/String;Lcom/google/common/util/concurrent/Service$State;)V

    return-object v0
.end method

.method private b()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 465
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->a:Lly$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    .line 466
    return-void
.end method

.method private c()V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 470
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->b:Lly$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    .line 471
    return-void
.end method

.method private c(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 6
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 307
    if-eq v0, p1, :cond_1

    .line 308
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x37

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Expected the service to be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but the service has FAILED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->failureCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x25

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Expected the service to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_1
    return-void
.end method

.method private d(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 475
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_0

    .line 476
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->c:Lly$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne p1, v0, :cond_1

    .line 478
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->d:Lly$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 480
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private e(Lcom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "monitor"
    .end annotation

    .prologue
    .line 486
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService$6;->a:[I

    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 500
    :pswitch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 488
    :pswitch_1
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->e:Lly$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    .line 502
    :goto_0
    return-void

    .line 491
    :pswitch_2
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->f:Lly$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 494
    :pswitch_3
    sget-object v0, Lcom/google/common/util/concurrent/AbstractService;->g:Lly$a;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lly$a;->a(Ljava/lang/Iterable;)V

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 2

    .prologue
    .line 434
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v0, "executor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->m:Ljava/util/List;

    new-instance v1, Lly;

    invoke-direct {v1, p1, p2}, Lly;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 444
    return-void

    .line 442
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public final awaitRunning()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->k:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 255
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->c(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 259
    return-void

    .line 257
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->k:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->c(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 275
    return-void

    .line 266
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    .line 273
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x32

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Timed out waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to reach the RUNNING state."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final awaitTerminated()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->l:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 280
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->c(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 284
    return-void

    .line 282
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 7

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->l:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->c(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 301
    return-void

    .line 291
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    throw v0

    .line 298
    :cond_0
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x41

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Timed out waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to reach a terminal state. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "Current state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract doStart()V
.end method

.method protected abstract doStop()V
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$e;->b()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final notifyFailed(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 384
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 388
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 389
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->a:[I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 403
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 407
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    throw v0

    .line 392
    :pswitch_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Failed while in state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 396
    :pswitch_1
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p1}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 397
    invoke-direct {p0, v0, p1}, Lcom/google/common/util/concurrent/AbstractService;->a(Lcom/google/common/util/concurrent/Service$State;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    :pswitch_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 407
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    .line 409
    return-void

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected final notifyStarted()V
    .locals 4

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$e;->a:Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    iget-object v1, v1, Lcom/google/common/util/concurrent/AbstractService$e;->a:Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot notifyStarted() when the service is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 333
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 347
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    throw v0

    .line 336
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    iget-boolean v0, v0, Lcom/google/common/util/concurrent/AbstractService$e;->b:Z

    if-eqz v0, :cond_1

    .line 337
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 340
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 347
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    .line 349
    return-void

    .line 342
    :cond_1
    :try_start_2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 343
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final notifyStopped()V
    .locals 4

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->enter()V

    .line 363
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    iget-object v0, v0, Lcom/google/common/util/concurrent/AbstractService$e;->a:Lcom/google/common/util/concurrent/Service$State;

    .line 364
    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    if-eq v0, v1, :cond_0

    .line 365
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot notifyStopped() when the service is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0, v1}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V

    .line 368
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 374
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    throw v0

    .line 370
    :cond_0
    :try_start_1
    new-instance v1, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v2, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v1, v2}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 371
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->e(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 374
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    .line 376
    return-void
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->i:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 202
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->b()V

    .line 203
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStart()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 208
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    .line 213
    :goto_0
    return-object p0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 208
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 208
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    throw v0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already been started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractService$e;->a()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->j:Lcom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v0

    .line 220
    sget-object v1, Lcom/google/common/util/concurrent/AbstractService$6;->a:[I

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Service$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 240
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x12

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->notifyFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 246
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    .line 249
    :cond_0
    :goto_0
    return-object p0

    .line 222
    :pswitch_0
    :try_start_2
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 223
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->e(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    :goto_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 246
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    goto :goto_0

    .line 226
    :pswitch_1
    :try_start_3
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 227
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->d(Lcom/google/common/util/concurrent/Service$State;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/AbstractService;->h:Lcom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 246
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;->a()V

    throw v0

    .line 230
    :pswitch_2
    :try_start_4
    new-instance v0, Lcom/google/common/util/concurrent/AbstractService$e;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/AbstractService$e;-><init>(Lcom/google/common/util/concurrent/Service$State;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractService;->n:Lcom/google/common/util/concurrent/AbstractService$e;

    .line 231
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractService;->d(Lcom/google/common/util/concurrent/Service$State;)V

    .line 232
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->doStop()V

    goto :goto_1

    .line 238
    :pswitch_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2d

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "isStoppable is incorrectly implemented, saw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 447
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
