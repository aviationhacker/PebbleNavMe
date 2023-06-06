.class public final enum Lcom/batescorp/pebble/nav/processor/NavHandlerResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/processor/NavHandlerResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FIRST_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field public static final enum FIRST_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field public static final enum FIRST_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field public static final enum GENERIC:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field public static final enum NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field public static final enum SECOND_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field public static final enum SECOND_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field public static final enum SECOND_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

.field private static final synthetic a:[Lcom/batescorp/pebble/nav/processor/NavHandlerResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "NOPT"

    invoke-direct {v0, v1, v3}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 9
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v4}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->GENERIC:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 10
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "FIRST_UNK"

    invoke-direct {v0, v1, v5}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 11
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "SECOND_UNK"

    invoke-direct {v0, v1, v6}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 12
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "FIRST_LEFT"

    invoke-direct {v0, v1, v7}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 13
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "SECOND_LEFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 14
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "FIRST_RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 15
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    const-string v1, "SECOND_RIGHT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->NOPT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->GENERIC:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_UNK:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_LEFT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->FIRST_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->SECOND_RIGHT:Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->a:[Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavHandlerResult;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/processor/NavHandlerResult;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->a:[Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/processor/NavHandlerResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/processor/NavHandlerResult;

    return-object v0
.end method
