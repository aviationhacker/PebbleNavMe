.class public abstract enum Ljj$q;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "q"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljj$q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ljj$q;

.field public static final enum b:Ljj$q;

.field public static final enum c:Ljj$q;

.field private static final synthetic d:[Ljj$q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 297
    new-instance v0, Ljj$q$1;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v2}, Ljj$q$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$q;->a:Ljj$q;

    .line 310
    new-instance v0, Ljj$q$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Ljj$q$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$q;->b:Ljj$q;

    .line 323
    new-instance v0, Ljj$q$3;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v4}, Ljj$q$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$q;->c:Ljj$q;

    .line 291
    const/4 v0, 0x3

    new-array v0, v0, [Ljj$q;

    sget-object v1, Ljj$q;->a:Ljj$q;

    aput-object v1, v0, v2

    sget-object v1, Ljj$q;->b:Ljj$q;

    aput-object v1, v0, v3

    sget-object v1, Ljj$q;->c:Ljj$q;

    aput-object v1, v0, v4

    sput-object v0, Ljj$q;->d:[Ljj$q;

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
    .line 291
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjj$1;)V
    .locals 0

    .prologue
    .line 291
    invoke-direct {p0, p1, p2}, Ljj$q;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$q;
    .locals 1

    .prologue
    .line 291
    const-class v0, Ljj$q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$q;

    return-object v0
.end method

.method public static values()[Ljj$q;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Ljj$q;->d:[Ljj$q;

    invoke-virtual {v0}, [Ljj$q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$q;

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

.method abstract a(Ljj$n;Ljj$l;Ljava/lang/Object;)Ljj$x;
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
            "<TK;TV;>;TV;)",
            "Ljj$x",
            "<TK;TV;>;"
        }
    .end annotation
.end method
