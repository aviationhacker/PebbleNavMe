.class public final enum Lcom/batescorp/pebble/nav/processor/NavType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/batescorp/pebble/nav/processor/NavType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIKING:Lcom/batescorp/pebble/nav/processor/NavType;

.field public static final enum DRIVING:Lcom/batescorp/pebble/nav/processor/NavType;

.field public static final enum WALKING:Lcom/batescorp/pebble/nav/processor/NavType;

.field private static final synthetic c:[Lcom/batescorp/pebble/nav/processor/NavType;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavType;

    const-string v1, "DRIVING"

    const-string v2, "d"

    const v3, 0x7f020081

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/batescorp/pebble/nav/processor/NavType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavType;->DRIVING:Lcom/batescorp/pebble/nav/processor/NavType;

    .line 8
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavType;

    const-string v1, "WALKING"

    const-string v2, "w"

    const v3, 0x7f020082

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/batescorp/pebble/nav/processor/NavType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavType;->WALKING:Lcom/batescorp/pebble/nav/processor/NavType;

    .line 9
    new-instance v0, Lcom/batescorp/pebble/nav/processor/NavType;

    const-string v1, "BIKING"

    const-string v2, "b"

    const v3, 0x7f020080

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/batescorp/pebble/nav/processor/NavType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavType;->BIKING:Lcom/batescorp/pebble/nav/processor/NavType;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/batescorp/pebble/nav/processor/NavType;

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavType;->DRIVING:Lcom/batescorp/pebble/nav/processor/NavType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavType;->WALKING:Lcom/batescorp/pebble/nav/processor/NavType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/batescorp/pebble/nav/processor/NavType;->BIKING:Lcom/batescorp/pebble/nav/processor/NavType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/batescorp/pebble/nav/processor/NavType;->c:[Lcom/batescorp/pebble/nav/processor/NavType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p3, p0, Lcom/batescorp/pebble/nav/processor/NavType;->b:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/batescorp/pebble/nav/processor/NavType;->a:Ljava/lang/Integer;

    .line 17
    return-void
.end method

.method public static fromResourceId(Ljava/lang/Integer;)Lcom/batescorp/pebble/nav/processor/NavType;
    .locals 5

    .prologue
    .line 25
    invoke-static {}, Lcom/batescorp/pebble/nav/processor/NavType;->values()[Lcom/batescorp/pebble/nav/processor/NavType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 26
    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavType;->getResourceId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    :goto_1
    return-object v0

    .line 25
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavType;->DRIVING:Lcom/batescorp/pebble/nav/processor/NavType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/batescorp/pebble/nav/processor/NavType;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/batescorp/pebble/nav/processor/NavType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/batescorp/pebble/nav/processor/NavType;

    return-object v0
.end method

.method public static values()[Lcom/batescorp/pebble/nav/processor/NavType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/batescorp/pebble/nav/processor/NavType;->c:[Lcom/batescorp/pebble/nav/processor/NavType;

    invoke-virtual {v0}, [Lcom/batescorp/pebble/nav/processor/NavType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/batescorp/pebble/nav/processor/NavType;

    return-object v0
.end method


# virtual methods
.method public getGoogleMapMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavType;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/batescorp/pebble/nav/processor/NavType;->a:Ljava/lang/Integer;

    return-object v0
.end method
