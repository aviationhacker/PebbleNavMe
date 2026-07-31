.class Landroid/support/v4/net/ConnectivityManagerCompat$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/net/ConnectivityManagerCompat$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/ConnectivityManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/ConnectivityManager;)Z
    .locals 1

    .prologue
    .line 62
    invoke-static {p1}, Lbt;->a(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method
