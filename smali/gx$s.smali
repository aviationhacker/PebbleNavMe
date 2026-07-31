.class public abstract enum Lgx$s;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgx$s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgx$s;

.field public static final enum b:Lgx$s;

.field public static final enum c:Lgx$s;

.field private static final synthetic d:[Lgx$s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    new-instance v0, Lgx$s$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Lgx$s$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$s;->a:Lgx$s;

    .line 397
    new-instance v0, Lgx$s$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lgx$s$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$s;->b:Lgx$s;

    .line 413
    new-instance v0, Lgx$s$3;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Lgx$s$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgx$s;->c:Lgx$s;

    .line 376
    const/4 v0, 0x3

    new-array v0, v0, [Lgx$s;

    sget-object v1, Lgx$s;->a:Lgx$s;

    aput-object v1, v0, v2

    sget-object v1, Lgx$s;->b:Lgx$s;

    aput-object v1, v0, v3

    sget-object v1, Lgx$s;->c:Lgx$s;

    aput-object v1, v0, v4

    sput-object v0, Lgx$s;->d:[Lgx$s;

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
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILgx$1;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Lgx$s;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgx$s;
    .locals 1

    .prologue
    .line 376
    const-class v0, Lgx$s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgx$s;

    return-object v0
.end method

.method public static values()[Lgx$s;
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lgx$s;->d:[Lgx$s;

    invoke-virtual {v0}, [Lgx$s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgx$s;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method abstract a(Lgx$q;Lgx$p;Ljava/lang/Object;I)Lgx$z;
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
            "<TK;TV;>;TV;I)",
            "Lgx$z",
            "<TK;TV;>;"
        }
    .end annotation
.end method
