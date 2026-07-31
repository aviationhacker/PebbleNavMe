.class public Lcom/batescorp/pebble/nav/service/CheckLicenseService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/lang/Boolean;

.field c:Ljava/lang/String;

.field d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

.field e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

.field f:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

.field private g:Lcom/android/vending/billing/IInAppBillingService;

.field private h:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    iput-boolean v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a:Z

    .line 24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->b:Ljava/lang/Boolean;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->c:Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$2;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService$2;-><init>(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->h:Landroid/content/ServiceConnection;

    .line 115
    new-instance v0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService$3;-><init>(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

    .line 152
    new-instance v0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;

    invoke-direct {v0, p0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;-><init>(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->f:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

    return-void
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->g:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    invoke-virtual {v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->dispose()V

    .line 60
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    .line 63
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    const-class v1, Lcom/batescorp/pebble/nav/service/NavProcessingService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 65
    const-string v1, "com.batescorp.pebble.nav.RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->h:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 45
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 51
    invoke-direct {p0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a()V

    .line 53
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->h:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->h:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 56
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 71
    const-string v0, "CheckLicenseService"

    const-string v1, "onStartCommand - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return v2

    .line 80
    :cond_0
    new-instance v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAzH/mZVNWNkh/1crQe67CKf8V9XDUPYKmDAYgFTYUcFKWsjsIWyoN7nVGZeK9knKR5ebh0cZHqSj7MGUxn8PzIKJmnEsYo78H/r8CC8eMMrfMuJ27txGpWLlgKlJSgRBZtJpcUAbjJQj+AoBQUuDG05OU0IWLdcus4cfWEWpyAnES/WFRtWPMLwQ8XWwnGyP312g199eQp3G4ol9XYyVZXcRASfKu8yTTK0WhHkFRyNoj8nuRGnDCiGzNyiTV4NBfUIDfUw6ZawAKf8GkJZ4KA94eOrfCftclHB5zlCWd0qKod4gjOCXTjVwaJ5mtXRW4PaPTdU2AIYCUhr52SGMgZQIDAQAB"

    invoke-direct {v0, p0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    .line 81
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    new-instance v1, Lcom/batescorp/pebble/nav/service/CheckLicenseService$1;

    invoke-direct {v1, p0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService$1;-><init>(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->startSetup(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;)V

    .line 97
    const-string v0, "CheckLicenseService"

    const-string v1, "onStartCommand - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
