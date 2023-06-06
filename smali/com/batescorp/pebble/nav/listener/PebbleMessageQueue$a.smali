.class final enum Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

.field public static final enum b:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

.field public static final enum c:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

.field public static final enum d:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

.field private static final synthetic e:[Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    const-string v1, "BEGIN"

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    .line 143
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->b:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    .line 144
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    const-string v1, "END"

    invoke-direct {v0, v1, v4}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->c:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    .line 145
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    const-string v1, "TURN_DISTANCE"

    invoke-direct {v0, v1, v5}, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->d:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    .line 141
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->a:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->b:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->c:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->d:Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->e:[Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

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
    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->e:[Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/listener/PebbleMessageQueue$a;

    return-object v0
.end method
