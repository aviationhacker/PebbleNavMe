.class abstract enum Lgx$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgx$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgx$d;

.field public static final enum b:Lgx$d;

.field public static final enum c:Lgx$d;

.field public static final enum d:Lgx$d;

.field public static final enum e:Lgx$d;

.field public static final enum f:Lgx$d;

.field public static final enum g:Lgx$d;

.field public static final enum h:Lgx$d;

.field static final i:[Lgx$d;

.field private static final synthetic j:[Lgx$d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 447
    new-instance v0, Lgx$d$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v3}, Lgx$d$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->a:Lgx$d;

    .line 454
    new-instance v0, Lgx$d$2;

    const-string v1, "STRONG_ACCESS"

    invoke-direct {v0, v1, v4}, Lgx$d$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->b:Lgx$d;

    .line 469
    new-instance v0, Lgx$d$3;

    const-string v1, "STRONG_WRITE"

    invoke-direct {v0, v1, v5}, Lgx$d$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->c:Lgx$d;

    .line 484
    new-instance v0, Lgx$d$4;

    const-string v1, "STRONG_ACCESS_WRITE"

    invoke-direct {v0, v1, v6}, Lgx$d$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->d:Lgx$d;

    .line 501
    new-instance v0, Lgx$d$5;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v7}, Lgx$d$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->e:Lgx$d;

    .line 508
    new-instance v0, Lgx$d$6;

    const-string v1, "WEAK_ACCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lgx$d$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->f:Lgx$d;

    .line 523
    new-instance v0, Lgx$d$7;

    const-string v1, "WEAK_WRITE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lgx$d$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->g:Lgx$d;

    .line 538
    new-instance v0, Lgx$d$8;

    const-string v1, "WEAK_ACCESS_WRITE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lgx$d$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$d;->h:Lgx$d;

    .line 446
    const/16 v0, 0x8

    new-array v0, v0, [Lgx$d;

    sget-object v1, Lgx$d;->a:Lgx$d;

    aput-object v1, v0, v3

    sget-object v1, Lgx$d;->b:Lgx$d;

    aput-object v1, v0, v4

    sget-object v1, Lgx$d;->c:Lgx$d;

    aput-object v1, v0, v5

    sget-object v1, Lgx$d;->d:Lgx$d;

    aput-object v1, v0, v6

    sget-object v1, Lgx$d;->e:Lgx$d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lgx$d;->f:Lgx$d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lgx$d;->g:Lgx$d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lgx$d;->h:Lgx$d;

    aput-object v2, v0, v1

    sput-object v0, Lgx$d;->j:[Lgx$d;

    .line 565
    const/16 v0, 0x8

    new-array v0, v0, [Lgx$d;

    sget-object v1, Lgx$d;->a:Lgx$d;

    aput-object v1, v0, v3

    sget-object v1, Lgx$d;->b:Lgx$d;

    aput-object v1, v0, v4

    sget-object v1, Lgx$d;->c:Lgx$d;

    aput-object v1, v0, v5

    sget-object v1, Lgx$d;->d:Lgx$d;

    aput-object v1, v0, v6

    sget-object v1, Lgx$d;->e:Lgx$d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lgx$d;->f:Lgx$d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lgx$d;->g:Lgx$d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lgx$d;->h:Lgx$d;

    aput-object v2, v0, v1

    sput-object v0, Lgx$d;->i:[Lgx$d;

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
    .line 446
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILgx$1;)V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0, p1, p2}, Lgx$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lgx$s;ZZ)Lgx$d;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 572
    sget-object v1, Lgx$s;->c:Lgx$s;

    if-ne p0, v1, :cond_1

    const/4 v1, 0x4

    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v1, v2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 575
    sget-object v1, Lgx$d;->i:[Lgx$d;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v2, v0

    .line 572
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lgx$d;
    .locals 1

    .prologue
    .line 446
    const-class v0, Lgx$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgx$d;

    return-object v0
.end method

.method public static values()[Lgx$d;
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lgx$d;->j:[Lgx$d;

    invoke-virtual {v0}, [Lgx$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgx$d;

    return-object v0
.end method


# virtual methods
.method a(Lgx$q;Lgx$p;Lgx$p;)Lgx$p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lgx$q",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 598
    invoke-interface {p2}, Lgx$p;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lgx$p;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lgx$d;->a(Lgx$q;Ljava/lang/Object;ILgx$p;)Lgx$p;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lgx$q;Ljava/lang/Object;ILgx$p;)Lgx$p;
    .param p4    # Lgx$p;
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
            "Lgx$q",
            "<TK;TV;>;TK;I",
            "Lgx$p",
            "<TK;TV;>;)",
            "Lgx$p",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method a(Lgx$p;Lgx$p;)V
    .locals 2
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
    .line 605
    invoke-interface {p1}, Lgx$p;->e()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lgx$p;->a(J)V

    .line 607
    invoke-interface {p1}, Lgx$p;->g()Lgx$p;

    move-result-object v0

    invoke-static {v0, p2}, Lgx;->a(Lgx$p;Lgx$p;)V

    .line 608
    invoke-interface {p1}, Lgx$p;->f()Lgx$p;

    move-result-object v0

    invoke-static {p2, v0}, Lgx;->a(Lgx$p;Lgx$p;)V

    .line 610
    invoke-static {p1}, Lgx;->b(Lgx$p;)V

    .line 611
    return-void
.end method

.method b(Lgx$p;Lgx$p;)V
    .locals 2
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
    .line 617
    invoke-interface {p1}, Lgx$p;->h()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lgx$p;->b(J)V

    .line 619
    invoke-interface {p1}, Lgx$p;->j()Lgx$p;

    move-result-object v0

    invoke-static {v0, p2}, Lgx;->b(Lgx$p;Lgx$p;)V

    .line 620
    invoke-interface {p1}, Lgx$p;->i()Lgx$p;

    move-result-object v0

    invoke-static {p2, v0}, Lgx;->b(Lgx$p;Lgx$p;)V

    .line 622
    invoke-static {p1}, Lgx;->c(Lgx$p;)V

    .line 623
    return-void
.end method
