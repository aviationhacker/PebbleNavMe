.class public Landroid/support/v4/net/ConnectivityManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/net/ConnectivityManagerCompat$e;,
        Landroid/support/v4/net/ConnectivityManagerCompat$d;,
        Landroid/support/v4/net/ConnectivityManagerCompat$c;,
        Landroid/support/v4/net/ConnectivityManagerCompat$a;,
        Landroid/support/v4/net/ConnectivityManagerCompat$b;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/net/ConnectivityManagerCompat$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 85
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$e;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$e;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->a:Landroid/support/v4/net/ConnectivityManagerCompat$b;

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_1

    .line 87
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$d;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$d;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->a:Landroid/support/v4/net/ConnectivityManagerCompat$b;

    goto :goto_0

    .line 88
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 89
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$c;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$c;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->a:Landroid/support/v4/net/ConnectivityManagerCompat$b;

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Landroid/support/v4/net/ConnectivityManagerCompat$a;

    invoke-direct {v0}, Landroid/support/v4/net/ConnectivityManagerCompat$a;-><init>()V

    sput-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->a:Landroid/support/v4/net/ConnectivityManagerCompat$b;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getNetworkInfoFromBroadcast(Landroid/net/ConnectivityManager;Landroid/content/Intent;)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 114
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .prologue
    .line 103
    sget-object v0, Landroid/support/v4/net/ConnectivityManagerCompat;->a:Landroid/support/v4/net/ConnectivityManagerCompat$b;

    invoke-interface {v0, p0}, Landroid/support/v4/net/ConnectivityManagerCompat$b;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method
