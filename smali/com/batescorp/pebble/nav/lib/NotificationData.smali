.class public Lcom/batescorp/pebble/nav/lib/NotificationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/batescorp/pebble/nav/lib/NotificationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/batescorp/pebble/nav/lib/NotificationData$1;

    invoke-direct {v0}, Lcom/batescorp/pebble/nav/lib/NotificationData$1;-><init>()V

    sput-object v0, Lcom/batescorp/pebble/nav/lib/NotificationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/batescorp/pebble/nav/lib/NotificationHandler;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavHtmlDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->d:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->e:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lcom/batescorp/pebble/nav/lib/NotificationHandler;->getNavBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->fromBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->b:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->c:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->d:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->e:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->fromInt(I)Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/batescorp/pebble/nav/lib/NotificationData$1;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/batescorp/pebble/nav/lib/NotificationData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Lcom/batescorp/pebble/nav/lib/NotificationHandler;)Lcom/batescorp/pebble/nav/lib/NotificationData;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/batescorp/pebble/nav/lib/NotificationData;

    invoke-direct {v0, p0, p1}, Lcom/batescorp/pebble/nav/lib/NotificationData;-><init>(Landroid/content/Context;Lcom/batescorp/pebble/nav/lib/NotificationHandler;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getNavDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNavHtmlDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getNavImage()Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    return-object v0
.end method

.method public getNavTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getNavTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/NotificationData;->f:Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/processor/NavDirectionIcon;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return-void
.end method
