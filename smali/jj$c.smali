.class abstract enum Ljj$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljj$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ljj$c;

.field public static final enum b:Ljj$c;

.field public static final enum c:Ljj$c;

.field public static final enum d:Ljj$c;

.field public static final enum e:Ljj$c;

.field public static final enum f:Ljj$c;

.field public static final enum g:Ljj$c;

.field public static final enum h:Ljj$c;

.field static final i:[[Ljj$c;

.field private static final synthetic j:[Ljj$c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 354
    new-instance v0, Ljj$c$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Ljj$c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->a:Ljj$c;

    .line 361
    new-instance v0, Ljj$c$2;

    const-string v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1, v4}, Ljj$c$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->b:Ljj$c;

    .line 376
    new-instance v0, Ljj$c$3;

    const-string v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1, v5}, Ljj$c$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->c:Ljj$c;

    .line 391
    new-instance v0, Ljj$c$4;

    const-string v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1, v6}, Ljj$c$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->d:Ljj$c;

    .line 408
    new-instance v0, Ljj$c$5;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v7}, Ljj$c$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->e:Ljj$c;

    .line 415
    new-instance v0, Ljj$c$6;

    const-string v1, "WEAK_EXPIRABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljj$c$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->f:Ljj$c;

    .line 430
    new-instance v0, Ljj$c$7;

    const-string v1, "WEAK_EVICTABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljj$c$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->g:Ljj$c;

    .line 445
    new-instance v0, Ljj$c$8;

    const-string v1, "WEAK_EXPIRABLE_EVICTABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljj$c$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$c;->h:Ljj$c;

    .line 353
    const/16 v0, 0x8

    new-array v0, v0, [Ljj$c;

    sget-object v1, Ljj$c;->a:Ljj$c;

    aput-object v1, v0, v3

    sget-object v1, Ljj$c;->b:Ljj$c;

    aput-object v1, v0, v4

    sget-object v1, Ljj$c;->c:Ljj$c;

    aput-object v1, v0, v5

    sget-object v1, Ljj$c;->d:Ljj$c;

    aput-object v1, v0, v6

    sget-object v1, Ljj$c;->e:Ljj$c;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljj$c;->f:Ljj$c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljj$c;->g:Ljj$c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ljj$c;->h:Ljj$c;

    aput-object v2, v0, v1

    sput-object v0, Ljj$c;->j:[Ljj$c;

    .line 473
    new-array v0, v6, [[Ljj$c;

    new-array v1, v7, [Ljj$c;

    sget-object v2, Ljj$c;->a:Ljj$c;

    aput-object v2, v1, v3

    sget-object v2, Ljj$c;->b:Ljj$c;

    aput-object v2, v1, v4

    sget-object v2, Ljj$c;->c:Ljj$c;

    aput-object v2, v1, v5

    sget-object v2, Ljj$c;->d:Ljj$c;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v3, [Ljj$c;

    aput-object v1, v0, v4

    new-array v1, v7, [Ljj$c;

    sget-object v2, Ljj$c;->e:Ljj$c;

    aput-object v2, v1, v3

    sget-object v2, Ljj$c;->f:Ljj$c;

    aput-object v2, v1, v4

    sget-object v2, Ljj$c;->g:Ljj$c;

    aput-object v2, v1, v5

    sget-object v2, Ljj$c;->h:Ljj$c;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Ljj$c;->i:[[Ljj$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjj$1;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Ljj$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljj$q;ZZ)Ljj$c;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 481
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 482
    sget-object v1, Ljj$c;->i:[[Ljj$c;

    invoke-virtual {p0}, Ljj$q;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v1, v0

    .line 481
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$c;
    .locals 1

    .prologue
    .line 353
    const-class v0, Ljj$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$c;

    return-object v0
.end method

.method public static values()[Ljj$c;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Ljj$c;->j:[Ljj$c;

    invoke-virtual {v0}, [Ljj$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$c;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljj$n;Ljava/lang/Object;ILjj$l;)Ljj$l;
    .param p4    # Ljj$l;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$n",
            "<TK;TV;>;TK;I",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method a(Ljj$n;Ljj$l;Ljj$l;)Ljj$l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljj$n",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;",
            "Ljj$l",
            "<TK;TV;>;)",
            "Ljj$l",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 505
    invoke-interface {p2}, Ljj$l;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljj$l;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Ljj$c;->a(Ljj$n;Ljava/lang/Object;ILjj$l;)Ljj$l;

    move-result-object v0

    return-object v0
.end method

.method a(Ljj$l;Ljj$l;)V
    .locals 2
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
    .line 512
    invoke-interface {p1}, Ljj$l;->e()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Ljj$l;->a(J)V

    .line 514
    invoke-interface {p1}, Ljj$l;->g()Ljj$l;

    move-result-object v0

    invoke-static {v0, p2}, Ljj;->a(Ljj$l;Ljj$l;)V

    .line 515
    invoke-interface {p1}, Ljj$l;->f()Ljj$l;

    move-result-object v0

    invoke-static {p2, v0}, Ljj;->a(Ljj$l;Ljj$l;)V

    .line 517
    invoke-static {p1}, Ljj;->d(Ljj$l;)V

    .line 518
    return-void
.end method

.method b(Ljj$l;Ljj$l;)V
    .locals 1
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
    .line 524
    invoke-interface {p1}, Ljj$l;->i()Ljj$l;

    move-result-object v0

    invoke-static {v0, p2}, Ljj;->b(Ljj$l;Ljj$l;)V

    .line 525
    invoke-interface {p1}, Ljj$l;->h()Ljj$l;

    move-result-object v0

    invoke-static {p2, v0}, Ljj;->b(Ljj$l;Ljj$l;)V

    .line 527
    invoke-static {p1}, Ljj;->e(Ljj$l;)V

    .line 528
    return-void
.end method
