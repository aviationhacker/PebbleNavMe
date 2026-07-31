.class public final enum Lcom/batescorp/pebble/nav/processor/NavSpeedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/processor/NavSpeedType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum KPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

.field public static final enum MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

.field private static final synthetic a:[Lcom/batescorp/pebble/nav/processor/NavSpeedType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    const-string v1, "MPH"

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    .line 6
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    const-string v1, "KPH"

    invoke-direct {v0, v1, v3}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->KPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->MPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->KPH:Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->a:[Lcom/batescorp/pebble/nav/processor/NavSpeedType;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInt(I)Lcom/batescorp/pebble/nav/processor/NavSpeedType;
    .locals 5

    .prologue
    .line 10
    invoke-static {}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->values()[Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 11
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 15
    :goto_1
    return-object v0

    .line 10
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavSpeedType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/processor/NavSpeedType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavSpeedType;->a:[Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/processor/NavSpeedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/processor/NavSpeedType;

    return-object v0
.end method
