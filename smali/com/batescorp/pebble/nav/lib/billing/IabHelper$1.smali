.class Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->startSetup(Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

.field final synthetic b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;


# direct methods
.method constructor <init>(Lcom/batescorp/pebble/nav/lib/billing/IabHelper;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iput-object p2, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 219
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-boolean v0, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->d:Z

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const-string v1, "Billing service connected."

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 222
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-object v0, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const-string v2, "Checking for in-app billing 3 support."

    invoke-virtual {v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-object v1, v1, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "inapp"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 228
    if-eqz v1, :cond_4

    .line 229
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const-string v3, "Error checking for billing v3 support."

    invoke-direct {v2, v1, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;)V

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v1, :cond_3

    .line 252
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v2, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const/16 v3, -0x3e9

    const-string v4, "RemoteException while setting up in-app billing."

    invoke-direct {v2, v3, v4}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;)V

    .line 255
    :cond_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 236
    :cond_4
    :try_start_1
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In-app billing version 3 supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    iget-object v1, v1, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    const-string v3, "subs"

    invoke-interface {v1, v2, v0, v3}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 240
    if-nez v0, :cond_5

    .line 241
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const-string v1, "Subscriptions AVAILABLE."

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->e:Z

    .line 248
    :goto_1
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->a:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;

    new-instance v1, Lcom/batescorp/pebble/nav/lib/billing/IabResult;

    const-string v2, "Setup successful."

    invoke-direct {v1, v4, v2}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;)V

    goto/16 :goto_0

    .line 245
    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->c(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper$1;->b:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->i:Lcom/android/vending/billing/IInAppBillingService;

    .line 215
    return-void
.end method
