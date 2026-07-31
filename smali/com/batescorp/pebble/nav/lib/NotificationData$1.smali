.class final Lcom/batescorp/pebble/nav/lib/NotificationData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/lib/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/batescorp/pebble/nav/lib/NotificationData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/batescorp/pebble/nav/lib/NotificationData;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/batescorp/pebble/nav/lib/NotificationData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/batescorp/pebble/nav/lib/NotificationData;-><init>(Landroid/os/Parcel;Lcom/batescorp/pebble/nav/lib/NotificationData$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/batescorp/pebble/nav/lib/NotificationData;
    .locals 1

    .prologue
    .line 53
    new-array v0, p1, [Lcom/batescorp/pebble/nav/lib/NotificationData;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/batescorp/pebble/nav/lib/NotificationData$1;->a(Landroid/os/Parcel;)Lcom/batescorp/pebble/nav/lib/NotificationData;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/batescorp/pebble/nav/lib/NotificationData$1;->a(I)[Lcom/batescorp/pebble/nav/lib/NotificationData;

    move-result-object v0

    return-object v0
.end method
