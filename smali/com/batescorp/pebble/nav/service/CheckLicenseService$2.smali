.class Lcom/batescorp/pebble/nav/service/CheckLicenseService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batescorp/pebble/nav/service/CheckLicenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$2;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$2;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 112
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$2;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    .line 106
    return-void
.end method
