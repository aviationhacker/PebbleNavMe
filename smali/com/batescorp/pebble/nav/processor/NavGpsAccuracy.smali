.class public final enum Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXCELLENT:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

.field public static final enum HIGH:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

.field public static final enum LOW:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

.field public static final enum MEDIUM:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

.field public static final enum UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

.field private static final synthetic a:[Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 6
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->LOW:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 7
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->MEDIUM:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 8
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v5}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->HIGH:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 9
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    const-string v1, "EXCELLENT"

    invoke-direct {v0, v1, v6}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->EXCELLENT:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->UNKNOWN:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->LOW:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->MEDIUM:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->HIGH:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->EXCELLENT:Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    aput-object v1, v0, v6

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->a:[Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

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

.method public static fromInt(I)Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;
    .locals 5

    .prologue
    .line 12
    invoke-static {}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->values()[Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 13
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 17
    :goto_1
    return-object v0

    .line 12
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->a:[Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/processor/NavGpsAccuracy;

    return-object v0
.end method
