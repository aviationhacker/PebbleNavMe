.class final enum Lcom/batescorp/pebble/nav/service/NavProcessingService$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/NavProcessingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/service/NavProcessingService$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

.field public static final enum b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

.field private static final synthetic c:[Lcom/batescorp/pebble/nav/service/NavProcessingService$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 790
    new-instance v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    .line 791
    new-instance v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v3}, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    .line 789
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    sget-object v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->a:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->b:Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->c:[Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

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
    .line 789
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/service/NavProcessingService$a;
    .locals 1

    .prologue
    .line 789
    const-class v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/service/NavProcessingService$a;
    .locals 1

    .prologue
    .line 789
    sget-object v0, Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->c:[Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/service/NavProcessingService$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/service/NavProcessingService$a;

    return-object v0
.end method
