.class public final enum Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALERT:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum ALERT_ENABLED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum DESTINATION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum DESTINATION_VER:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum DIRECTION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum ETA_DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum ETA_TIME:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum GPS_ACCURACY:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum HAVE_UUID:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum KEEP_ALIVE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum NAV_ICON:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum SPEED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field public static final enum TURN:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

.field private static final synthetic a:[Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "ALERT"

    invoke-direct {v0, v1, v3}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ALERT:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 5
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "DIRECTION"

    invoke-direct {v0, v1, v4}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DIRECTION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 6
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "DISTANCE"

    invoke-direct {v0, v1, v5}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 7
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "ETA_DISTANCE"

    invoke-direct {v0, v1, v6}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 8
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "ETA_TIME"

    invoke-direct {v0, v1, v7}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_TIME:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 9
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "TURN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->TURN:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 10
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "HAVE_UUID"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->HAVE_UUID:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 11
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "ALERT_ENABLED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ALERT_ENABLED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 12
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "SPEED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->SPEED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 13
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "GPS_ACCURACY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->GPS_ACCURACY:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 14
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "DESTINATION_VER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION_VER:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 15
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "DESTINATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 16
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "KEEP_ALIVE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->KEEP_ALIVE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 17
    new-instance v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    const-string v1, "NAV_ICON"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->NAV_ICON:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ALERT:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DIRECTION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_DISTANCE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ETA_TIME:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->TURN:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->HAVE_UUID:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->ALERT_ENABLED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->SPEED:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->GPS_ACCURACY:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION_VER:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->DESTINATION:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->KEEP_ALIVE:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->NAV_ICON:Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->a:[Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->a:[Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/listener/PebbleMessageManagerEntryType;

    return-object v0
.end method
