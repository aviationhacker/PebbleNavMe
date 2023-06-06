.class public Lcom/batescorp/pebble/nav/activity/DestinationValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private description:Ljava/lang/String;

.field private destination:Ljava/lang/String;

.field private navType:Lcom/batescorp/pebble/nav/processor/NavType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavType;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/batescorp/pebble/nav/activity/DestinationValue;->update(Ljava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavType;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationValue;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationValue;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public getNavType()Lcom/batescorp/pebble/nav/processor/NavType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/batescorp/pebble/nav/activity/DestinationValue;->navType:Lcom/batescorp/pebble/nav/processor/NavType;

    return-object v0
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Lcom/batescorp/pebble/nav/processor/NavType;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/batescorp/pebble/nav/activity/DestinationValue;->description:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/batescorp/pebble/nav/activity/DestinationValue;->destination:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/batescorp/pebble/nav/activity/DestinationValue;->navType:Lcom/batescorp/pebble/nav/processor/NavType;

    .line 19
    return-void
.end method
