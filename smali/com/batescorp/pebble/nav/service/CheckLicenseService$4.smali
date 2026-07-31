.class Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;


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
    .line 153
    iput-object p1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/batescorp/pebble/nav/lib/billing/IabResult;Lcom/batescorp/pebble/nav/lib/billing/Inventory;)V
    .locals 4

    .prologue
    .line 157
    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "CheckLicenseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/batescorp/pebble/nav/lib/billing/IabResult;->getResponse()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->a(Lcom/batescorp/pebble/nav/service/CheckLicenseService;)V

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    const-string v1, "application_product_key"

    invoke-virtual {p2, v1}, Lcom/batescorp/pebble/nav/lib/billing/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->b:Ljava/lang/Boolean;

    .line 165
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    invoke-static {v0}, Lcom/batescorp/pebble/nav/processor/NavLicense;->getInstance(Landroid/content/ContextWrapper;)Lcom/batescorp/pebble/nav/processor/NavLicense;

    move-result-object v0

    iget-object v1, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v1, v1, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->b:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/batescorp/pebble/nav/processor/NavLicense;->updateLicenseCheck(Z)V

    .line 166
    const-string v0, "CheckLicenseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v2, v2, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->b:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v0, v0, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->d:Lcom/batescorp/pebble/nav/lib/billing/IabHelper;

    const/4 v1, 0x1

    const-string v2, "application_product_key"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/batescorp/pebble/nav/service/CheckLicenseService$4;->a:Lcom/batescorp/pebble/nav/service/CheckLicenseService;

    iget-object v3, v3, Lcom/batescorp/pebble/nav/service/CheckLicenseService;->e:Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/batescorp/pebble/nav/lib/billing/IabHelper;->queryInventoryAsync(ZLjava/util/List;Lcom/batescorp/pebble/nav/lib/billing/IabHelper$QueryInventoryFinishedListener;)V

    goto :goto_0
.end method
