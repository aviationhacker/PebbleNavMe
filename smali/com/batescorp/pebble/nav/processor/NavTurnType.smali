.class public final enum Lcom/batescorp/pebble/nav/processor/NavTurnType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/processor/NavTurnType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LEFT:Lcom/batescorp/pebble/nav/processor/NavTurnType;

.field public static final enum NONE:Lcom/batescorp/pebble/nav/processor/NavTurnType;

.field public static final enum RIGHT:Lcom/batescorp/pebble/nav/processor/NavTurnType;

.field private static final synthetic a:[Lcom/batescorp/pebble/nav/processor/NavTurnType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;->LEFT:Lcom/batescorp/pebble/nav/processor/NavTurnType;

    .line 9
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/batescorp/pebble/nav/processor/NavTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;->RIGHT:Lcom/batescorp/pebble/nav/processor/NavTurnType;

    .line 10
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/batescorp/pebble/nav/processor/NavTurnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;->NONE:Lcom/batescorp/pebble/nav/processor/NavTurnType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/batescorp/pebble/nav/processor/NavTurnType;

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavTurnType;->LEFT:Lcom/batescorp/pebble/nav/processor/NavTurnType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavTurnType;->RIGHT:Lcom/batescorp/pebble/nav/processor/NavTurnType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavTurnType;->NONE:Lcom/batescorp/pebble/nav/processor/NavTurnType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;->a:[Lcom/batescorp/pebble/nav/processor/NavTurnType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavTurnType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/processor/NavTurnType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavTurnType;->a:[Lcom/batescorp/pebble/nav/processor/NavTurnType;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/processor/NavTurnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/processor/NavTurnType;

    return-object v0
.end method
