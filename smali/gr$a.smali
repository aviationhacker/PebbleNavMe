.class final enum Lgr$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lgr$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lgr$a;

.field public static final enum b:Lgr$a;

.field public static final enum c:Lgr$a;

.field public static final enum d:Lgr$a;

.field private static final synthetic e:[Lgr$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lgr$a;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lgr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgr$a;->a:Lgr$a;

    .line 38
    new-instance v0, Lgr$a;

    const-string v1, "NOT_READY"

    invoke-direct {v0, v1, v3}, Lgr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgr$a;->b:Lgr$a;

    .line 39
    new-instance v0, Lgr$a;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lgr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgr$a;->c:Lgr$a;

    .line 40
    new-instance v0, Lgr$a;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lgr$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgr$a;->d:Lgr$a;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lgr$a;

    sget-object v1, Lgr$a;->a:Lgr$a;

    aput-object v1, v0, v2

    sget-object v1, Lgr$a;->b:Lgr$a;

    aput-object v1, v0, v3

    sget-object v1, Lgr$a;->c:Lgr$a;

    aput-object v1, v0, v4

    sget-object v1, Lgr$a;->d:Lgr$a;

    aput-object v1, v0, v5

    sput-object v0, Lgr$a;->e:[Lgr$a;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgr$a;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lgr$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lgr$a;

    return-object v0
.end method

.method public static values()[Lgr$a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lgr$a;->e:[Lgr$a;

    invoke-virtual {v0}, [Lgr$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgr$a;

    return-object v0
.end method
